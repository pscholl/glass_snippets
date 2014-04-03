package com.google.glass.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.widget.ImageView;

import com.google.common.annotations.VisibleForTesting;
import com.google.glass.input.VoiceInputHelper;
import com.google.glass.input.VoiceListener;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.net.NetworkUtil;
import com.google.glass.predicates.Assert;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.voice.GuardHintAnimator;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.voice.menu.VoiceMenuEnvironment;
import com.google.glass.voice.menu.VoiceMenuEnvironment.EntityCommand;
import com.google.glass.voice.menu.VoiceMenuEnvironment.EntityType;
import com.google.glass.voice.menu.VoiceMenuItem;
import com.google.glass.voice.network.IVoiceInputCallback;
import com.google.glass.widget.MessageDialog;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.TypophileTextView;

import java.util.Arrays;
import java.util.List;

public abstract class GlassVoiceActivity extends GlassActivity
  implements VoiceListener
{
  private GuardHintAnimator guardHintAnimator;
  private boolean isRunning = false;
  private boolean preserveConfigOnPause;

  @VisibleForTesting
  VoiceInputHelper voiceInputHelper;
  private VoiceMenuDialog voiceMenuDialog;

  private void attachVoiceListener()
  {
    if (shouldAllowVoiceInput())
      this.voiceInputHelper.addVoiceServiceListener();
  }

  public static GlassVoiceActivity from(Context paramContext)
  {
    if (paramContext == null)
      return null;
    if ((paramContext instanceof GlassVoiceActivity))
      return (GlassVoiceActivity)paramContext;
    if ((paramContext instanceof ContextWrapper))
      return from(((ContextWrapper)paramContext).getBaseContext());
    return null;
  }

  private void removeVoiceListener()
  {
    if (shouldAllowVoiceInput())
      this.voiceInputHelper.removeVoiceServiceListener();
  }

  @VisibleForTesting
  public boolean areOrientationSensorsStarted()
  {
    return super.areOrientationSensorsStarted();
  }

  public void attachVoiceInputCallback(IVoiceInputCallback paramIVoiceInputCallback)
  {
    this.voiceInputHelper.attachVoiceInputCallback(paramIVoiceInputCallback);
  }

  public void closeVoiceMenu()
  {
    if (this.voiceMenuDialog != null)
    {
      this.voiceMenuDialog.dismiss(false);
      this.voiceMenuDialog = null;
    }
  }

  @VisibleForTesting
  VoiceMenuDialog createVoiceMenuDialog()
  {
    return new VoiceMenuDialog(this);
  }

  public void detachVoiceInputCallback()
  {
    this.voiceInputHelper.detachVoiceInputCallback();
  }

  public void endpointNetworkRecognizer()
  {
    this.voiceInputHelper.endpointNetworkRecognizer();
  }

  public VoiceConfig getInitialVoiceConfig()
  {
    return VoiceConfig.OFF;
  }

  public VoiceConfig getVoiceConfig()
  {
    return this.voiceInputHelper.getVoiceConfig();
  }

  protected Bundle getVoiceServiceExtras()
  {
    return new Bundle();
  }

  public boolean isRunning()
  {
    return this.isRunning;
  }

  public boolean isVoiceMenuShowing()
  {
    return (this.voiceMenuDialog != null) && (this.voiceMenuDialog.isShowing());
  }

  public boolean isVoiceServiceBound()
  {
    return this.voiceInputHelper.isVoiceServiceBound();
  }

  public void listenForGuardPhrase(ImageView paramImageView, TypophileTextView paramTypophileTextView)
  {
    getLogger().d("Listening for guard phrase.", new Object[0]);
    setVoiceConfig(VoiceConfig.GUARD);
    if (this.guardHintAnimator == null)
      this.guardHintAnimator = new GuardHintAnimator(paramImageView, paramTypophileTextView, this);
    this.guardHintAnimator.animateIn();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FormattingLogger localFormattingLogger = getLogger();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = identityHashCode();
    localFormattingLogger.v("onCreate: %s", arrayOfObject);
    this.voiceInputHelper = new VoiceInputHelper(this, new DelegatingVoiceListener(this)
    {
      public VoiceConfig onVoiceCommand(VoiceCommand paramAnonymousVoiceCommand)
      {
        if ((!GlassVoiceActivity.this.hasWindowFocus()) && (!GlassVoiceActivity.this.isMessageShowing()))
        {
          getLogger().d("Ignoring voice command because we don't have window focus.", new Object[0]);
          return null;
        }
        return super.onVoiceCommand(paramAnonymousVoiceCommand);
      }
    }
    , VoiceInputHelper.newUserActivityObserver(this), getVoiceServiceExtras());
  }

  protected void onDismissVoiceMenu(boolean paramBoolean)
  {
    if (paramBoolean)
      getSoundManager().playSound(SoundManager.SoundId.DISMISS);
    stopOrientationSensors();
    if (this.isRunning)
      setVoiceConfig(getInitialVoiceConfig());
  }

  public void onOptionsMenuClosed(OptionMenu paramOptionMenu)
  {
    setVoiceConfig(getInitialVoiceConfig());
    super.onOptionsMenuClosed(paramOptionMenu);
  }

  protected void onPause()
  {
    this.isRunning = false;
    super.onPause();
    FormattingLogger localFormattingLogger = getLogger();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = identityHashCode();
    localFormattingLogger.v("onPause: %s", arrayOfObject);
    if (isVoiceMenuShowing())
    {
      if (!this.voiceMenuDialog.isPersistent())
        closeVoiceMenu();
      this.preserveConfigOnPause = true;
    }
    while (true)
    {
      if (!this.preserveConfigOnPause)
        setVoiceConfig(VoiceConfig.OFF);
      if (areOrientationSensorsStarted())
      {
        getLogger().w("Orientation sensors still running in onPause! Stopping them.", new Object[0]);
        stopOrientationSensors();
      }
      return;
    }
  }

  public void onPrepareVoiceMenu(VoiceMenuDialog paramVoiceMenuDialog)
  {
  }

  public void onPrepareVoiceSubmenu(VoiceMenuItem paramVoiceMenuItem, int paramInt, String paramString, List<VoiceMenuItem> paramList)
  {
  }

  public void onPrepareVoiceSubmenu(VoiceMenuItem paramVoiceMenuItem, VoiceMenuEnvironment.EntityType paramEntityType, VoiceMenuEnvironment.EntityCommand paramEntityCommand, List<VoiceMenuItem> paramList)
  {
  }

  public boolean onResampledAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return false;
  }

  protected void onResume()
  {
    this.isRunning = true;
    super.onResume();
    FormattingLogger localFormattingLogger = getLogger();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = identityHashCode();
    localFormattingLogger.v("onResume: %s", arrayOfObject);
    this.preserveConfigOnPause = false;
    if (isVoiceServiceBound())
      onVoiceServiceConnected();
  }

  protected void onStart()
  {
    super.onStart();
    FormattingLogger localFormattingLogger = getLogger();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = identityHashCode();
    localFormattingLogger.v("onStart: %s", arrayOfObject);
    attachVoiceListener();
  }

  protected void onStop()
  {
    super.onStop();
    FormattingLogger localFormattingLogger = getLogger();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = identityHashCode();
    localFormattingLogger.v("onStop: %s", arrayOfObject);
    removeVoiceListener();
  }

  public boolean onVerticalHeadScroll(float paramFloat)
  {
    if (isVoiceMenuShowing())
    {
      this.voiceMenuDialog.onVerticalHeadScroll(paramFloat);
      return true;
    }
    return super.onVerticalHeadScroll(paramFloat);
  }

  public boolean onVoiceAmplitudeChanged(double paramDouble)
  {
    return false;
  }

  public VoiceConfig onVoiceCommand(VoiceCommand paramVoiceCommand)
  {
    return null;
  }

  public void onVoiceConfigChanged(VoiceConfig paramVoiceConfig, boolean paramBoolean)
  {
  }

  public void onVoiceMenuCommand(VoiceCommand paramVoiceCommand)
  {
  }

  public void onVoiceServiceConnected()
  {
    getLogger().d("Voice Service Connected", new Object[0]);
    if (!this.isRunning)
    {
      getLogger().d("Not applying initial voice config because we are paused.", new Object[0]);
      removeVoiceListener();
    }
    do
    {
      this.voiceInputHelper.setWantAudioData(shouldProvideAudioData());
      NetworkUtil.checkNetwork();
    }
    while (isVoiceMenuShowing());
    setVoiceConfig(getInitialVoiceConfig());
  }

  public void onVoiceServiceDisconnected()
  {
  }

  public void openOptionsMenu()
  {
    setVoiceConfig(VoiceConfig.OFF);
    super.openOptionsMenu();
  }

  public void openVoiceMenu(VoiceConfig paramVoiceConfig, List<? extends VoiceMenuItem> paramList)
  {
    setVoiceConfig(paramVoiceConfig);
    if (isVoiceMenuShowing())
      closeVoiceMenu();
    this.voiceMenuDialog = createVoiceMenuDialog();
    this.voiceMenuDialog.setPrimaryItems(paramList);
    this.voiceMenuDialog.setPrimaryVoiceConfig(paramVoiceConfig);
    onPrepareVoiceMenu(this.voiceMenuDialog);
    this.voiceMenuDialog.show();
    startOrientationSensors();
  }

  public void openVoiceMenu(VoiceConfig paramVoiceConfig, VoiceMenuItem[] paramArrayOfVoiceMenuItem)
  {
    openVoiceMenu(paramVoiceConfig, Arrays.asList(paramArrayOfVoiceMenuItem));
  }

  public VoiceInputHelper overrideVoiceInputHelper(VoiceInputHelper paramVoiceInputHelper)
  {
    Assert.assertIsTest();
    VoiceInputHelper localVoiceInputHelper = this.voiceInputHelper;
    this.voiceInputHelper = paramVoiceInputHelper;
    return localVoiceInputHelper;
  }

  public void setPreserveConfigOnPause(boolean paramBoolean)
  {
    this.preserveConfigOnPause = paramBoolean;
  }

  public void setVoiceConfig(VoiceConfig paramVoiceConfig)
  {
    this.voiceInputHelper.setVoiceConfig(paramVoiceConfig);
  }

  protected boolean shouldAllowVoiceInput()
  {
    return true;
  }

  public boolean shouldProvideAudioData()
  {
    return false;
  }

  public void showError(MessageDialog paramMessageDialog)
  {
    closeVoiceMenu();
    setVoiceConfig(VoiceConfig.OFF);
    super.showError(paramMessageDialog);
  }

  public void stopListeningForGuardPhrase(ImageView paramImageView, TypophileTextView paramTypophileTextView)
  {
    getLogger().d("Stopping listening for guard phrase.", new Object[0]);
    setVoiceConfig(VoiceConfig.OFF);
    if (this.guardHintAnimator == null)
      this.guardHintAnimator = new GuardHintAnimator(paramImageView, paramTypophileTextView, this);
    this.guardHintAnimator.animateOut();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.app.GlassVoiceActivity
 * JD-Core Version:    0.6.2
 */