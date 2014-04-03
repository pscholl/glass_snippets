package com.google.android.speech.logger;

public abstract interface SpeechEvent
{
  public static final int CONTACT_INFO = 13;
  public static final int CREATE_VOICE_RECOGNIZE_REQUEST_END = 7;
  public static final int CREATE_VOICE_RECOGNIZE_REQUEST_START = 6;
  public static final int FETCH_CONTACTS_BEGIN = 1;
  public static final int FETCH_CONTACTS_END = 2;
  public static final int FIRST_PACKET = 5;
  public static final int GRAMMAR_COMPILATION_CONTACTS_COUNT = 14;
  public static final int NETWORK_SEND_AUDIO_DATA = 4;
  public static final int NEW_RECOGNITION_ID = 3;
  public static final int START_COMMAND_RECOGNITION = 12;
  public static final int START_CONTACT_RECOGNITION = 11;
  public static final int START_SOUND_SEARCH_RECOGNITION = 10;
  public static final int START_TEXT_SEARCH = 9;
  public static final int START_VOICE_RECOGNITION = 8;
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.logger.SpeechEvent
 * JD-Core Version:    0.6.2
 */