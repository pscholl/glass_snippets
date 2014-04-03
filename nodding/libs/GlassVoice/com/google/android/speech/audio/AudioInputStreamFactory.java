package com.google.android.speech.audio;

import java.io.IOException;
import java.io.InputStream;

public abstract interface AudioInputStreamFactory
{
  public abstract InputStream createInputStream()
    throws IOException;
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.audio.AudioInputStreamFactory
 * JD-Core Version:    0.6.2
 */