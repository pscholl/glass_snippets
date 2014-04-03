package com.x.google.common.task;

import com.x.google.common.Clock;
import com.x.google.common.Config;

public class NoRepeatRunnable
  implements Runnable
{
  private static final long BLACKOUT_UI = 500L;
  private long blackoutPeriod;
  private long blackoutTimestap;
  private Runnable runnable;

  public NoRepeatRunnable(Runnable paramRunnable, long paramLong)
  {
    this.blackoutPeriod = paramLong;
    this.runnable = paramRunnable;
  }

  public static final NoRepeatRunnable createNoDobuleClick(Runnable paramRunnable)
  {
    return new NoRepeatRunnable(paramRunnable, 500L);
  }

  public void run()
  {
    long l = Config.getInstance().getClock().currentTimeMillis();
    if ((this.blackoutTimestap > 0L) && (l < this.blackoutTimestap))
      return;
    this.blackoutTimestap = (l + this.blackoutPeriod);
    this.runnable.run();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.task.NoRepeatRunnable
 * JD-Core Version:    0.6.2
 */