package com.google.android.ears;

public class VorbisEncoder
{
  private long nativeContext;

  static
  {
    System.loadLibrary("vorbisencoder");
  }

  public native byte[] close();

  public native byte[] encodeData(byte[] paramArrayOfByte, int paramInt);

  public native byte[] init(int paramInt1, int paramInt2, float paramFloat);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.ears.VorbisEncoder
 * JD-Core Version:    0.6.2
 */