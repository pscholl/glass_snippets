package com.google.glass.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Lists;
import com.google.glass.input.VoiceInputHelper;
import com.google.glass.input.VoiceListener.SimpleVoiceListener;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.util.SafeBroadcastReceiver;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.voice.menu.BasicVoiceMenuEnvironment;
import com.google.glass.voice.menu.OverscrollView;
import com.google.glass.voice.menu.VoiceMenu;
import com.google.glass.voice.menu.VoiceMenu.VoiceMenuListener;
import com.google.glass.voice.menu.VoiceMenuEnvironment.EntityCommand;
import com.google.glass.voice.menu.VoiceMenuEnvironment.EntityType;
import com.google.glass.voice.menu.VoiceMenuItem;
import com.google.glass.voiceclient.R.id;
import com.google.glass.voiceclient.R.layout;
import com.google.glass.voiceclient.R.style;
import com.google.glass.widget.SliderView;
import java.util.ArrayList;
import java.util.List;

public class VoiceMenuDialog extends Dialog
{
  private static final int PRIMARY_MENU = 0;
  private static final int SECONDARY_MENU = 1;
  private static final FormattingLogger connectivityReceiverLogger = FormattingLoggers.getLogger(logger, "connectivityReceiver");
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final GlassVoiceActivity activity;
  private final SafeBroadcastReceiver connectivityReceiver = new SafeBroadcastReceiver()
  {
    public FormattingLogger getLogger()
    {
      return VoiceMenuDialog.connectivityReceiverLogger;
    }

    public void onReceiveInternal(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      boolean bool = VoiceMenuDialog.this.voiceMenuEnvironment.isConnected();
      VoiceMenuDialog.this.voiceMenu.onConnectivityChanged(bool);
    }
  };
  private boolean dismissedByUser = true;
  private boolean hasFocus;
  private int menuShowing = 0;
  private boolean persistent = false;
  private VoiceConfig primaryVoiceConfig;
  private SliderView progressSlider;
  private boolean singleOptionPrimaryMenu;
  private final VoiceInputHelper voiceInputHelper;
  private VoiceMenu voiceMenu;
  private final DialogVoiceMenuEnvironment voiceMenuEnvironment;

  @VisibleForTesting
  VoiceMenuDialog(Context paramContext)
  {
    super(paramContext);
    this.activity = ((GlassVoiceActivity)paramContext);
    this.voiceInputHelper = createVoiceInputHelper(this.activity);
    this.voiceMenuEnvironment = new DialogVoiceMenuEnvironment(this.activity);
    this.voiceMenu = findVoiceMenu();
  }

  public VoiceMenuDialog(final GlassVoiceActivity paramGlassVoiceActivity)
  {
    super(paramGlassVoiceActivity, R.style.ContextualDialogTheme);
    setContentView(R.layout.voice_menu_dialog);
    this.activity = paramGlassVoiceActivity;
    this.voiceInputHelper = createVoiceInputHelper(paramGlassVoiceActivity);
    this.voiceMenuEnvironment = new DialogVoiceMenuEnvironment(paramGlassVoiceActivity);
    this.voiceMenu = findVoiceMenu();
    this.progressSlider = ((SliderView)findViewById(R.id.progress_slider));
    this.voiceMenu.setListener(this.voiceMenuEnvironment);
    setOnDismissListener(new DialogInterface.OnDismissListener()
    {
      public void onDismiss(DialogInterface paramAnonymousDialogInterface)
      {
        paramGlassVoiceActivity.onDismissVoiceMenu(VoiceMenuDialog.this.dismissedByUser);
      }
    });
  }

  private final VoiceInputHelper createVoiceInputHelper(final GlassVoiceActivity paramGlassVoiceActivity)
  {
    return new VoiceInputHelper(paramGlassVoiceActivity, new VoiceListener.SimpleVoiceListener()
    {
      public FormattingLogger getLogger()
      {
        return VoiceMenuDialog.logger;
      }

      public boolean isRunning()
      {
        return VoiceMenuDialog.this.isShowing();
      }

      public VoiceConfig onVoiceCommand(final VoiceCommand paramAnonymousVoiceCommand)
      {
        VoiceConfig localVoiceConfig;
        if (!VoiceMenuDialog.this.hasFocus)
        {
          getLogger().d("Ignoring voice command because we don't have window focus.", new Object[0]);
          localVoiceConfig = null;
        }
        do
        {
          return localVoiceConfig;
          localVoiceConfig = VoiceMenuDialog.this.voiceMenu.onVoiceCommand(paramAnonymousVoiceCommand);
        }
        while (localVoiceConfig == null);
        VoiceMenuDialog.this.voiceMenuEnvironment.postToUiThread(new Runnable()
        {
          public void run()
          {
            VoiceMenuDialog.3.this.val$activity.onVoiceMenuCommand(paramAnonymousVoiceCommand);
          }
        });
        return localVoiceConfig;
      }

      public void onVoiceServiceConnected()
      {
        VoiceMenuDialog.this.voiceInputHelper.setVoiceConfig(VoiceMenuDialog.this.primaryVoiceConfig);
      }
    }
    , VoiceInputHelper.newUserActivityObserver(paramGlassVoiceActivity));
  }

  public void dismiss(boolean paramBoolean)
  {
    this.dismissedByUser = paramBoolean;
    super.dismiss();
  }

  @VisibleForTesting
  VoiceMenu findVoiceMenu()
  {
    return (VoiceMenu)findViewById(R.id.voice_menu);
  }

  public VoiceMenu getVoiceMenu()
  {
    return this.voiceMenu;
  }

  public boolean isPersistent()
  {
    return this.persistent;
  }

  public void onBackPressed()
  {
    switch (this.menuShowing)
    {
    default:
      return;
    case 0:
      super.onBackPressed();
      return;
    case 1:
    }
    if (this.singleOptionPrimaryMenu)
    {
      super.onBackPressed();
      return;
    }
    this.voiceInputHelper.setVoiceConfig(this.primaryVoiceConfig);
    this.voiceMenu.animateBackToPrimaryMenu();
    this.menuShowing = 0;
    GlassApplication.from(getContext()).getSoundManager().playSound(SoundManager.SoundId.DISMISS);
  }

  protected void onStart()
  {
    super.onStart();
    this.connectivityReceiver.register(this.activity, new String[] { "android.net.conn.CONNECTIVITY_CHANGE" });
    this.voiceInputHelper.addVoiceServiceListener();
  }

  protected void onStop()
  {
    this.voiceMenu.onDismissed();
    this.voiceInputHelper.removeVoiceServiceListener();
    this.connectivityReceiver.unregister(this.activity);
    super.onStop();
  }

  public void onVerticalHeadScroll(float paramFloat)
  {
    float f = paramFloat / 45.0F;
    this.voiceMenu.getVisibleScrollView().scrollByItem(f);
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    this.hasFocus = paramBoolean;
    super.onWindowFocusChanged(paramBoolean);
  }

  public void setPersistent(boolean paramBoolean)
  {
    this.persistent = paramBoolean;
  }

  public void setPrimaryItems(List<? extends VoiceMenuItem> paramList)
  {
    int i = 1;
    this.voiceMenu.setPrimaryMenuItems(paramList);
    if (paramList.size() == i);
    while (true)
    {
      this.singleOptionPrimaryMenu = i;
      return;
      i = 0;
    }
  }

  public void setPrimaryVoiceConfig(VoiceConfig paramVoiceConfig)
  {
    this.primaryVoiceConfig = paramVoiceConfig;
  }

  public void show()
  {
    this.voiceMenu.setShouldHighlightSelectedItem(false);
    this.voiceMenu.showPrimaryMenu();
    super.show();
  }

  class DialogVoiceMenuEnvironment extends BasicVoiceMenuEnvironment
    implements VoiceMenu.VoiceMenuListener
  {
    public DialogVoiceMenuEnvironment(GlassVoiceActivity arg2)
    {
      super();
    }

    public void onError(GlassError paramGlassError)
    {
      paramGlassError.show(VoiceMenuDialog.this.activity);
    }

    public void onShowSecondaryMenu()
    {
      VoiceMenuDialog.this.voiceMenu.getVisibleScrollView().setShouldHighlightSelectedItem(false);
      VoiceMenuDialog.access$202(VoiceMenuDialog.this, 1);
    }

    public void selectMenuItem(VoiceMenuItem paramVoiceMenuItem, Runnable paramRunnable)
    {
      VoiceMenuDialog.this.voiceMenu.selectMenuItem(paramVoiceMenuItem, paramRunnable);
    }

    public void selectSecondaryMenuItem(VoiceMenuItem paramVoiceMenuItem, long paramLong, Runnable paramRunnable)
    {
      VoiceMenuDialog.this.voiceMenu.selectSecondaryMenuItem(paramVoiceMenuItem, paramLong, paramRunnable);
    }

    public void selectSecondaryMenuItem(VoiceMenuItem paramVoiceMenuItem, Runnable paramRunnable)
    {
      VoiceMenuDialog.this.voiceMenu.selectSecondaryMenuItem(paramVoiceMenuItem, 0L, paramRunnable);
    }

    public void showAppsList(VoiceMenuItem paramVoiceMenuItem, int paramInt, String paramString)
    {
      ArrayList localArrayList = Lists.newArrayList();
      VoiceMenuDialog.this.activity.onPrepareVoiceSubmenu(paramVoiceMenuItem, paramInt, paramString, localArrayList);
      if (localArrayList.isEmpty())
        return;
      VoiceMenuDialog.this.voiceMenu.selectMenuItem(paramVoiceMenuItem, localArrayList);
    }

    public void showPeopleList(VoiceMenuItem paramVoiceMenuItem, VoiceMenuEnvironment.EntityType paramEntityType, VoiceMenuEnvironment.EntityCommand paramEntityCommand)
    {
      ArrayList localArrayList = Lists.newArrayList();
      VoiceMenuDialog.this.activity.onPrepareVoiceSubmenu(paramVoiceMenuItem, paramEntityType, paramEntityCommand, localArrayList);
      if (localArrayList.isEmpty())
        return;
      VoiceMenuDialog.this.voiceMenu.selectMenuItem(paramVoiceMenuItem, localArrayList);
    }

    public void showProgressBar()
    {
      VoiceMenuDialog.this.progressSlider.setVisibility(0);
      VoiceMenuDialog.this.progressSlider.startIndeterminate();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.app.VoiceMenuDialog
 * JD-Core Version:    0.6.2
 */