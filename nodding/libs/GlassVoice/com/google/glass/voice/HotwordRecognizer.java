package com.google.glass.voice;

import java.nio.ByteBuffer;

public abstract interface HotwordRecognizer
{
  public abstract void activate();

  public abstract void deactivate();

  public abstract void destroy();

  public abstract VoiceCommand stringToCommand(String paramString);

  public abstract HotwordResult writeAudio(ByteBuffer paramByteBuffer, long paramLong);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.HotwordRecognizer
 * JD-Core Version:    0.6.2
 */