package com.google.glass.sound;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;

public class VolumeHelper
{
  private static final int DEFAULT_VALUE_BCT = 9;
  private static final int DEFAULT_VALUE_EARBUD = 9;
  private static final String EXTRA_HEADSET_STATE = "state";
  public static final int HEADSET_STATE_PLUGGED = 1;
  public static final int HEADSET_STATE_UNPLUGGED = 0;
  private static final int NUM_VALUES_BCT = 10;
  private static final int NUM_VALUES_EARBUDS = 19;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final AudioManager audioManager;

  public VolumeHelper(Context paramContext, AudioManager paramAudioManager)
  {
    this.audioManager = paramAudioManager;
  }

  public static int getHeadsetState(Context paramContext)
  {
    return getHeadsetState(paramContext.registerReceiver(null, new IntentFilter("android.intent.action.HEADSET_PLUG")));
  }

  public static int getHeadsetState(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      logger.d("Defaulting to headset state: 0", new Object[0]);
      return 0;
    }
    int i = paramIntent.getIntExtra("state", 0);
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(i);
    localFormattingLogger.d("Determined headset state: %s", arrayOfObject);
    return i;
  }

  public static int getNumVolumeValues(int paramInt)
  {
    if (paramInt == 1)
      return 19;
    return 10;
  }

  public int readAudioVolume(int paramInt)
  {
    try
    {
      int j = Integer.parseInt(this.audioManager.getParameters("earbuds_volume"));
      FormattingLogger localFormattingLogger2 = logger;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(j);
      localFormattingLogger2.d("Read volume from HAL: %s", arrayOfObject2);
      return j;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      if (paramInt != 1);
    }
    for (int i = 9; ; i = 9)
    {
      FormattingLogger localFormattingLogger1 = logger;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(i);
      localFormattingLogger1.w(localNumberFormatException, "Could not read HAL volume, defaulting to: %s", arrayOfObject1);
      return i;
    }
  }

  public void writeAudioVolume(int paramInt1, int paramInt2)
  {
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt2);
    localFormattingLogger.d("Writing volume to HAL: %s", arrayOfObject);
    this.audioManager.setParameters("earbuds_volume=" + paramInt2);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.sound.VolumeHelper
 * JD-Core Version:    0.6.2
 */