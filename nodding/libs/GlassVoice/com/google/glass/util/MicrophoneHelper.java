package com.google.glass.util;

import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import com.google.glass.widget.OptionMenu.Item;

public final class MicrophoneHelper
{
  public static final String ACTION_MICROPHONE_STATE_CHANGED = "com.google.glass.action.MICROPHONE_STATE_CHANGED";
  public static final String ACTION_TOGGLE_MICROPHONE_MUTE = "com.google.glass.action.TOGGLE_MICROPHONE_MUTE";
  public static final String EXTRA_MICROPHONE_MUTED = "is_mute";
  public static final String MENU_ITEM_MUTE = "mute_id";
  public static final int OPTION_MENU_ITEM_STATE_MUTE = 0;
  public static final int OPTION_MENU_ITEM_STATE_UNMUTE = 1;

  private static void broadcastStateChanged(Context paramContext, boolean paramBoolean)
  {
    Intent localIntent = new Intent("com.google.glass.action.MICROPHONE_STATE_CHANGED");
    localIntent.putExtra("is_mute", paramBoolean);
    paramContext.sendBroadcast(localIntent);
  }

  public static boolean isMuted(Context paramContext)
  {
    return ((AudioManager)paramContext.getApplicationContext().getSystemService("audio")).isMicrophoneMute();
  }

  public static void mute(Context paramContext)
  {
    setMute(paramContext, true);
  }

  private static void setMute(Context paramContext, boolean paramBoolean)
  {
    ((AudioManager)paramContext.getApplicationContext().getSystemService("audio")).setMicrophoneMute(paramBoolean);
    broadcastStateChanged(paramContext, paramBoolean);
  }

  public static boolean toggleMute(Context paramContext)
  {
    if (isMuted(paramContext))
      unmute(paramContext);
    while (true)
    {
      return isMuted(paramContext);
      mute(paramContext);
    }
  }

  public static void unmute(Context paramContext)
  {
    setMute(paramContext, false);
  }

  public static void updateOptionMenuItem(Context paramContext, OptionMenu.Item paramItem)
  {
    if (isMuted(paramContext.getApplicationContext()))
    {
      paramItem.setCurrentState(1);
      return;
    }
    paramItem.setCurrentState(0);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.MicrophoneHelper
 * JD-Core Version:    0.6.2
 */