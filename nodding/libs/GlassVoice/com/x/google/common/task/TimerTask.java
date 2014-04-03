package com.x.google.common.task;

import com.x.google.common.Clock;
import com.x.google.common.Config;

public class TimerTask extends Task
{
  public static final int REPEAT_FOREVER = -1;
  public static final long UNSET_VALUE = -1L;
  private int count = -1;
  private long deadline = -1L;
  private long delay = 0L;
  private boolean isFixedRate = false;
  private long period = -1L;
  private long scheduled = -1L;

  public TimerTask(TaskRunner paramTaskRunner)
  {
    this(paramTaskRunner, (Runnable)null);
  }

  public TimerTask(TaskRunner paramTaskRunner, Runnable paramRunnable)
  {
    this(paramTaskRunner, paramRunnable, null);
  }

  public TimerTask(TaskRunner paramTaskRunner, Runnable paramRunnable, String paramString)
  {
    super(paramTaskRunner, paramRunnable, paramString);
  }

  int cancelInternal()
  {
    try
    {
      int i;
      if (this.runner.cancelTaskInternal(this))
      {
        this.scheduled = -1L;
        i = this.count;
      }
      while (true)
      {
        return i;
        if (this.scheduled != -1L)
        {
          this.scheduled = -1L;
          i = this.count;
        }
        else
        {
          i = 0;
        }
      }
    }
    finally
    {
    }
  }

  public int getRepeatCount()
  {
    try
    {
      int i = this.count;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public long getScheduledTime()
  {
    try
    {
      long l = this.scheduled;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean isUnscheduled()
  {
    try
    {
      long l = this.scheduled;
      if (l == -1L)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  void runInternal()
  {
    while (true)
    {
      try
      {
        if (this.period == -1L)
        {
          this.scheduled = -1L;
          super.runInternal();
          this.runner.scheduleTask(this);
          return;
        }
        if (this.count > 0)
          this.count = (-1 + this.count);
        if (this.count == 0)
        {
          this.scheduled = -1L;
          continue;
        }
      }
      finally
      {
      }
      if (this.isFixedRate)
        this.scheduled += this.period;
      else
        this.scheduled = (Config.getInstance().getClock().currentTimeMillis() + this.period);
    }
  }

  public void schedule()
  {
    try
    {
      if (((this.count == -1) || (this.count > 0)) && (this.scheduled == -1L))
        if (this.deadline != -1L)
          break label70;
      label70: for (this.scheduled = (Config.getInstance().getClock().currentTimeMillis() + this.delay); ; this.scheduled = (this.deadline + this.delay))
      {
        this.runner.scheduleTask(this);
        return;
      }
    }
    finally
    {
    }
  }

  void scheduleInternal()
  {
    try
    {
      if (this.scheduled != -1L)
        this.runner.scheduleTimerTaskInternal(this);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setDeadline(long paramLong)
  {
    try
    {
      this.deadline = paramLong;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setDelay(long paramLong)
  {
    try
    {
      this.delay = paramLong;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setPeriod(long paramLong)
  {
    try
    {
      this.period = paramLong;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setRepeatCount(int paramInt)
  {
    try
    {
      this.count = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setRepeatFixedRate(boolean paramBoolean)
  {
    try
    {
      this.isFixedRate = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.task.TimerTask
 * JD-Core Version:    0.6.2
 */