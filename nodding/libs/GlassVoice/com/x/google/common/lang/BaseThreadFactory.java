package com.x.google.common.lang;

public class BaseThreadFactory
  implements ThreadFactory
{
  private int created = 0;
  private int running = 0;

  private void decrementRunningCount()
  {
    try
    {
      this.running = (-1 + this.running);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void incrementCreatedCount()
  {
    try
    {
      this.created = (1 + this.created);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void incrementRunningCount()
  {
    try
    {
      this.running = (1 + this.running);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public Thread createThread(String paramString, Runnable paramRunnable)
  {
    return new ThreadImpl(paramString, paramRunnable);
  }

  public void debug()
  {
  }

  public int getCreatedCount()
  {
    try
    {
      int i = this.created;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int getRunningCount()
  {
    try
    {
      int i = this.running;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected class ThreadImpl extends Thread
  {
    private String name;
    private Runnable runnable;

    public ThreadImpl(String paramRunnable, Runnable arg3)
    {
      BaseThreadFactory.this.incrementCreatedCount();
      this.name = paramRunnable;
      Object localObject;
      this.runnable = localObject;
    }

    public void run()
    {
      try
      {
        BaseThreadFactory.this.incrementRunningCount();
        this.runnable.run();
        return;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        return;
      }
      finally
      {
        BaseThreadFactory.this.decrementRunningCount();
      }
    }

    public String toString()
    {
      return "Thread[" + this.name + "," + getPriority() + "]";
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.lang.BaseThreadFactory
 * JD-Core Version:    0.6.2
 */