package com.google.glass.voice.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Lists;
import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassError;
import com.google.glass.app.GlassVoiceActivity;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.sound.SoundManager.SoundCompletionListener;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public abstract class VoiceMenuItem
{
  private static final int NO_CONTEXT_ICON_ID;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private SoundManager.SoundId customTriggerSound;
  private boolean hasSubMenu;
  private boolean hasTriggered;
  protected final List<Requirement> requirements;
  private boolean voicePendingAfterTrigger;

  public VoiceMenuItem()
  {
    this(Collections.emptyList());
  }

  public VoiceMenuItem(List<Requirement> paramList)
  {
    this.requirements = paramList;
    this.hasTriggered = false;
  }

  private void playTriggerSounds(final VoiceMenuEnvironment paramVoiceMenuEnvironment, boolean paramBoolean)
  {
    final ArrayList localArrayList = Lists.newArrayListWithExpectedSize(2);
    if (!paramBoolean)
      localArrayList.add(SoundManager.SoundId.TAP);
    if ((this.voicePendingAfterTrigger) && ((!this.hasSubMenu) || ((this.hasSubMenu) && (paramBoolean))))
      localArrayList.add(SoundManager.SoundId.VOICE_PENDING);
    while (true)
    {
      if (localArrayList.size() > 0)
        paramVoiceMenuEnvironment.playSound((SoundManager.SoundId)localArrayList.get(0), new SoundManager.SoundCompletionListener()
        {
          int currentSoundIndex = 0;

          private void playNextSound()
          {
            this.currentSoundIndex = (1 + this.currentSoundIndex);
            if (this.currentSoundIndex >= localArrayList.size())
              return;
            paramVoiceMenuEnvironment.playSound((SoundManager.SoundId)localArrayList.get(this.currentSoundIndex), this);
          }

          public void onSoundDone(SoundManager.SoundId paramAnonymousSoundId)
          {
            playNextSound();
          }

          public void onSoundFailed(SoundManager.SoundId paramAnonymousSoundId, int paramAnonymousInt)
          {
            playNextSound();
          }
        });
      return;
      if (this.customTriggerSound != null)
        localArrayList.add(this.customTriggerSound);
      else if (paramBoolean)
        localArrayList.add(SoundManager.SoundId.VOICE_COMPLETED);
    }
  }

  private void preserveConfigAcrossTransition(VoiceMenuEnvironment paramVoiceMenuEnvironment)
  {
    GlassActivity localGlassActivity = paramVoiceMenuEnvironment.getContext();
    if (!(localGlassActivity instanceof GlassVoiceActivity))
    {
      logger.e("Menu item invoked by voice outside of GlassVoiceActivity, cannot preserve config!", new Object[0]);
      return;
    }
    ((GlassVoiceActivity)localGlassActivity).setPreserveConfigOnPause(true);
  }

  public Drawable getContextIconDrawable(Context paramContext)
  {
    if (getContextIconId() == 0)
      return null;
    return paramContext.getResources().getDrawable(getContextIconId());
  }

  protected int getContextIconId()
  {
    return 0;
  }

  public String getContextLabel(Context paramContext)
  {
    return getLabel(paramContext);
  }

  public GlassError getError(VoiceMenuEnvironment paramVoiceMenuEnvironment)
  {
    Iterator localIterator = this.requirements.iterator();
    while (localIterator.hasNext())
    {
      Requirement localRequirement = (Requirement)localIterator.next();
      if (!localRequirement.isSatisfied(paramVoiceMenuEnvironment))
        return localRequirement.getError(paramVoiceMenuEnvironment);
    }
    return null;
  }

  public abstract String getLabel(Context paramContext);

  public abstract VoiceConfig getNextVoiceConfig();

  public boolean isEnabled(VoiceMenuEnvironment paramVoiceMenuEnvironment)
  {
    Iterator localIterator = this.requirements.iterator();
    while (localIterator.hasNext())
      if (!((Requirement)localIterator.next()).isSatisfied(paramVoiceMenuEnvironment))
        return false;
    return true;
  }

  public abstract boolean matches(VoiceCommand paramVoiceCommand);

  @VisibleForTesting
  public abstract void onTrigger(VoiceMenuEnvironment paramVoiceMenuEnvironment, boolean paramBoolean);

  public void reset()
  {
    this.hasTriggered = false;
  }

  public VoiceMenuItem setCustomTriggerSound(SoundManager.SoundId paramSoundId)
  {
    if (this.voicePendingAfterTrigger)
      throw new IllegalStateException("Cannot use custom trigger sound if voice is pending after trigger");
    this.customTriggerSound = paramSoundId;
    return this;
  }

  public VoiceMenuItem setHasSubMenu(boolean paramBoolean)
  {
    this.hasSubMenu = paramBoolean;
    return this;
  }

  public VoiceMenuItem setVoicePendingAfterTrigger(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.customTriggerSound != null))
      throw new IllegalStateException("Cannot accept voice after trigger if custom trigger sound is defined");
    this.voicePendingAfterTrigger = paramBoolean;
    return this;
  }

  public abstract String toString();

  public VoiceConfig trigger(final VoiceMenuEnvironment paramVoiceMenuEnvironment, final boolean paramBoolean)
  {
    if (this.hasTriggered)
      return null;
    if (!isEnabled(paramVoiceMenuEnvironment))
    {
      paramVoiceMenuEnvironment.showError(getError(paramVoiceMenuEnvironment));
      return VoiceConfig.OFF;
    }
    this.hasTriggered = true;
    playTriggerSounds(paramVoiceMenuEnvironment, paramBoolean);
    paramVoiceMenuEnvironment.postToUiThread(new Runnable()
    {
      public void run()
      {
        VoiceMenuItem.this.onTrigger(paramVoiceMenuEnvironment, paramBoolean);
      }
    });
    if ((paramBoolean) && (this.voicePendingAfterTrigger))
      preserveConfigAcrossTransition(paramVoiceMenuEnvironment);
    return getNextVoiceConfig();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.menu.VoiceMenuItem
 * JD-Core Version:    0.6.2
 */