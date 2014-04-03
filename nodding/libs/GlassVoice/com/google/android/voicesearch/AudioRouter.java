package com.google.android.voicesearch;

public abstract interface AudioRouter
{
  public abstract int getAudioStream();

  public abstract void setHandsFreeMode(boolean paramBoolean);

  public abstract void setHeadsetEnabled(boolean paramBoolean);

  public abstract boolean shouldUseScoForAllAudio();

  public abstract boolean start();

  public abstract boolean startListening();

  public abstract void stop();

  public abstract void stopListening();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.voicesearch.AudioRouter
 * JD-Core Version:    0.6.2
 */