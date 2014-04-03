package com.google.glass.sync;

public abstract interface SyncStatusReporter
{
  public abstract void handleFail(int paramInt);

  public abstract void handleSuccess();

  public abstract boolean shouldRetry();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.sync.SyncStatusReporter
 * JD-Core Version:    0.6.2
 */