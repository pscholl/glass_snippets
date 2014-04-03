package com.google.glass.util;

import android.os.SystemClock;

public abstract interface Clock
{
  public abstract long currentTimeMillis();

  public abstract long elapsedRealtime();

  public abstract long uptimeMillis();

  public static class Impl
    implements Clock
  {
    public long currentTimeMillis()
    {
      return System.currentTimeMillis();
    }

    public long elapsedRealtime()
    {
      return SystemClock.elapsedRealtime();
    }

    public long uptimeMillis()
    {
      return SystemClock.uptimeMillis();
    }
  }

  public static class SettableClock
    implements Clock
  {
    private long currentTimeMillis;
    private long elapsedRealtime;
    private long uptimeMillis;

    public long currentTimeMillis()
    {
      return this.currentTimeMillis;
    }

    public long elapsedRealtime()
    {
      return this.elapsedRealtime;
    }

    public void incrementTime(long paramLong)
    {
      this.uptimeMillis = (paramLong + this.uptimeMillis);
      this.currentTimeMillis = (paramLong + this.currentTimeMillis);
      this.elapsedRealtime = (paramLong + this.elapsedRealtime);
    }

    public void setElapsedRealtime(long paramLong)
    {
      this.elapsedRealtime = paramLong;
    }

    public void setTime(long paramLong1, long paramLong2)
    {
      this.uptimeMillis = paramLong1;
      this.currentTimeMillis = paramLong2;
    }

    public String toString()
    {
      return "[uptimeMillis=" + this.uptimeMillis + ", currentTimeMillis=" + this.currentTimeMillis + ", elapsedRealtime=" + this.elapsedRealtime + "]";
    }

    public long uptimeMillis()
    {
      return this.uptimeMillis;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.Clock
 * JD-Core Version:    0.6.2
 */