package com.google.android.speech.embedded;

import javax.annotation.Nullable;

public abstract interface Greco3ModeSelector
{
  @Nullable
  public abstract Greco3Mode getFallbackMode(Greco3Mode paramGreco3Mode, Greco3Grammar paramGreco3Grammar);

  @Nullable
  public abstract Greco3Mode getMode(Greco3Mode paramGreco3Mode, Greco3Grammar paramGreco3Grammar);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.embedded.Greco3ModeSelector
 * JD-Core Version:    0.6.2
 */