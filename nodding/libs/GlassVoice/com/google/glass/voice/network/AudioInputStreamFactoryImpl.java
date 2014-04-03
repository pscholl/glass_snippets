package com.google.glass.voice.network;

import com.google.android.speech.audio.AudioInputStreamFactory;
import java.io.InputStream;

public class AudioInputStreamFactoryImpl
  implements AudioInputStreamFactory
{
  protected InputStream inputStream;

  public InputStream createInputStream()
  {
    if (this.inputStream == null)
      throw new IllegalStateException("InputStream not set.");
    return this.inputStream;
  }

  public final void setInputStream(InputStream paramInputStream)
  {
    this.inputStream = paramInputStream;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.AudioInputStreamFactoryImpl
 * JD-Core Version:    0.6.2
 */