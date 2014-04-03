package com.x.google.common.media;

public abstract interface AudioPlayer
{
  public static final String PERMISSION_EXCEPTION_MESSAGE = "AP";
  public static final int PLAYING = 3;
  public static final int READY = 2;
  public static final int STOP = 4;
  public static final int UNREALIZED;

  public abstract void destroy();

  public abstract int getStatus();

  public abstract boolean prepare(String paramString);

  public abstract void startAudio();

  public abstract void stopAudio();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.media.AudioPlayer
 * JD-Core Version:    0.6.2
 */