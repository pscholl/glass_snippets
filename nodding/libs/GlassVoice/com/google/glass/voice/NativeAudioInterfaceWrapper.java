package com.google.glass.voice;

import com.google.glass.predicates.Assert;

public class NativeAudioInterfaceWrapper
{
  static
  {
    if (!Assert.isTest())
      System.loadLibrary("audio_voice_native");
  }

  public native void nativeClose();

  public native void nativeOpen();

  public native int nativeRead(byte[] paramArrayOfByte);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.NativeAudioInterfaceWrapper
 * JD-Core Version:    0.6.2
 */