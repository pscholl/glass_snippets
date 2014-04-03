package com.google.android.searchcommon.util;

import android.os.SystemClock;

public class StopWatch
{
  private long mStart = -1L;

  public StopWatch()
  {
  }

  public StopWatch(long paramLong)
  {
    this.mStart = paramLong;
  }

  public int getElapsedTime()
  {
    return (int)(SystemClock.elapsedRealtime() - this.mStart);
  }

  public boolean isStarted()
  {
    return this.mStart > 0L;
  }

  public void start()
  {
    this.mStart = SystemClock.elapsedRealtime();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.searchcommon.util.StopWatch
 * JD-Core Version:    0.6.2
 */