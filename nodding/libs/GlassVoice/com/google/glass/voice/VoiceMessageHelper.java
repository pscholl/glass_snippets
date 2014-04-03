package com.google.glass.voice;

import android.content.Intent;

public final class VoiceMessageHelper
  implements VoiceInputActivityHelper
{
  public static final String ACTION_SEND_VOICE_MESSAGE = "com.google.glass.ACTION_SEND_VOICE_MESSAGE";
  public static final String EXTRA_MESSAGE_TYPE = "MESSAGE_TYPE";
  public static final String EXTRA_REPLY_ALL = "REPLY_ALL";
  public static final String EXTRA_REPLY_TO_ID = "REPLY_TO_ID";
  public static final String EXTRA_TO_ID = "TO_ID";
  public static final String EXTRA_TO_NAME = "TO_NAME";
  public static final int MESSAGE_TYPE_EMAIL = 1;
  public static final int MESSAGE_TYPE_GLASSWARE = 3;
  public static final int MESSAGE_TYPE_SMS = 2;
  public static final int MESSAGE_TYPE_UNKNOWN = -1;

  public static Intent createSendMessageIntent(int paramInt1, int paramInt2, String paramString1, String paramString2)
  {
    Intent localIntent = new Intent("com.google.glass.ACTION_SEND_VOICE_MESSAGE");
    localIntent.putExtra("trigger_method", paramInt1);
    localIntent.putExtra("MESSAGE_TYPE", paramInt2);
    localIntent.putExtra("TO_ID", paramString1);
    localIntent.putExtra("TO_NAME", paramString2);
    localIntent.putExtra("should_finish_turn_screen_off", true);
    return localIntent;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.VoiceMessageHelper
 * JD-Core Version:    0.6.2
 */