package com.x.google.common.lang;

public abstract interface ThreadFactory
{
  public abstract Thread createThread(String paramString, Runnable paramRunnable);

  public abstract void debug();

  public abstract int getCreatedCount();

  public abstract int getRunningCount();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.lang.ThreadFactory
 * JD-Core Version:    0.6.2
 */