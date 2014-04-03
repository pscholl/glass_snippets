package com.google.glass.voice;

public abstract interface VoiceInputActivityHelper
{
  public static final String EXTRA_TRIGGER_METHOD = "trigger_method";
  public static final String EXTRA_TRIGGER_TIME = "trigger_time";
  public static final int TRIGGER_METHOD_ANNOTATION = 11;
  public static final int TRIGGER_METHOD_DID_YOU_MEAN = 13;
  public static final int TRIGGER_METHOD_FROM_QUERY = 14;
  public static final int TRIGGER_METHOD_MENU_TOUCH = 2;
  public static final int TRIGGER_METHOD_MENU_VOICE = 1;
  public static final int TRIGGER_METHOD_NOTIFICATION_VOICE = 10;
  public static final int TRIGGER_METHOD_PEOPLE_UI_SAY_HEY = 12;
  public static final int TRIGGER_METHOD_QR_CODE = 9;
  public static final int TRIGGER_METHOD_RETRY = 7;
  public static final int TRIGGER_METHOD_SOUND_SEARCH_SWIPE = 6;
  public static final int TRIGGER_METHOD_SOUND_SEARCH_VOICE = 5;
  public static final int TRIGGER_METHOD_TIMELINE_ITEM = 8;
  public static final int TRIGGER_METHOD_UNKNOWN = 0;
  public static final int TRIGGER_TIME_UNKNOWN = -1;
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.VoiceInputActivityHelper
 * JD-Core Version:    0.6.2
 */