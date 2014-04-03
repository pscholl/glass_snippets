package com.x.google.debug;

public abstract interface Logger
{
  public abstract void flush();

  public abstract boolean isLoggable(int paramInt, String paramString1, String paramString2);

  public abstract void log(Object paramObject, int paramInt1, String paramString1, String paramString2, int paramInt2);

  public abstract void logThrowable(Object paramObject, Throwable paramThrowable, int paramInt1, String paramString1, String paramString2, int paramInt2);

  public abstract void logTimer(String paramString1, long paramLong, int paramInt1, String paramString2, String paramString3, int paramInt2);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.debug.Logger
 * JD-Core Version:    0.6.2
 */