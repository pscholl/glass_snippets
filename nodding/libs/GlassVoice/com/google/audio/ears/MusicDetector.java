package com.google.audio.ears;

public class MusicDetector
{
  public static native void close();

  public static native boolean init(int paramInt);

  public static native float process(byte[] paramArrayOfByte, int paramInt);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.audio.ears.MusicDetector
 * JD-Core Version:    0.6.2
 */