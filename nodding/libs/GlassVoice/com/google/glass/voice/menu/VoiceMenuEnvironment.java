package com.google.glass.voice.menu;

import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassError;
import com.google.glass.sound.SoundManager.SoundCompletionListener;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.voice.VoiceConfig;

public abstract interface VoiceMenuEnvironment
{
  public abstract GlassActivity getContext();

  public abstract boolean isConnected();

  public abstract void logUserEvent(UserEventAction paramUserEventAction, String paramString);

  public abstract void playSound(SoundManager.SoundId paramSoundId);

  public abstract void playSound(SoundManager.SoundId paramSoundId, SoundManager.SoundCompletionListener paramSoundCompletionListener);

  public abstract void postToUiThread(Runnable paramRunnable);

  public abstract void selectMenuItem(VoiceMenuItem paramVoiceMenuItem, Runnable paramRunnable);

  public abstract void selectSecondaryMenuItem(VoiceMenuItem paramVoiceMenuItem, long paramLong, Runnable paramRunnable);

  public abstract void selectSecondaryMenuItem(VoiceMenuItem paramVoiceMenuItem, Runnable paramRunnable);

  @Deprecated
  public abstract void setVoiceConfig(VoiceConfig paramVoiceConfig);

  public abstract void showAppsList(VoiceMenuItem paramVoiceMenuItem, int paramInt, String paramString);

  public abstract void showError(GlassError paramGlassError);

  public abstract void showPeopleList(VoiceMenuItem paramVoiceMenuItem, EntityType paramEntityType, EntityCommand paramEntityCommand);

  public abstract void showProgressBar();

  public static enum EntityCommand
  {
    static
    {
      CALL = new EntityCommand("CALL", 1);
      MESSAGE = new EntityCommand("MESSAGE", 2);
      SHARE = new EntityCommand("SHARE", 3);
      EntityCommand[] arrayOfEntityCommand = new EntityCommand[4];
      arrayOfEntityCommand[0] = VIDEO_CALL;
      arrayOfEntityCommand[1] = CALL;
      arrayOfEntityCommand[2] = MESSAGE;
      arrayOfEntityCommand[3] = SHARE;
    }
  }

  public static enum EntityType
  {
    static
    {
      PHOTO = new EntityType("PHOTO", 2);
      VIDEO = new EntityType("VIDEO", 3);
      EntityType[] arrayOfEntityType = new EntityType[4];
      arrayOfEntityType[0] = GENERAL;
      arrayOfEntityType[1] = PLUS;
      arrayOfEntityType[2] = PHOTO;
      arrayOfEntityType[3] = VIDEO;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.menu.VoiceMenuEnvironment
 * JD-Core Version:    0.6.2
 */