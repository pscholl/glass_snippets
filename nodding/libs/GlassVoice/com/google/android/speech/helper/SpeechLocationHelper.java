package com.google.android.speech.helper;

import javax.annotation.Nullable;

public abstract interface SpeechLocationHelper
{
  @Nullable
  public abstract String getXGeoLocation();

  public abstract boolean shouldSendLocation();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.helper.SpeechLocationHelper
 * JD-Core Version:    0.6.2
 */