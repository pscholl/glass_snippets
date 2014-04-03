package com.x.google.common;

public abstract interface Clock
{
  public static final long INVALID_TIME = -9223372036854775808L;

  public abstract long currentTimeMillis();

  public abstract long relativeTimeMillis();

  public abstract long uptimeMillis();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.Clock
 * JD-Core Version:    0.6.2
 */