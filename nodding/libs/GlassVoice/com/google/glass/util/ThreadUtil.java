package com.google.glass.util;

public final class ThreadUtil
{
  public static void throwIfInterrupted()
    throws InterruptedException
  {
    if (Thread.interrupted())
      throw new InterruptedException();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.ThreadUtil
 * JD-Core Version:    0.6.2
 */