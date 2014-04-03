package com.x.google.common.async;

import com.x.google.common.task.AbstractTask;

public abstract class AbstractRequest
  implements AsyncRequest
{
  private Exception exception;
  private int state;
  private AbstractTask task;

  protected AbstractRequest()
  {
    reset();
  }

  private void setException(Exception paramException)
  {
    try
    {
      this.exception = paramException;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void setState(int paramInt)
  {
    try
    {
      this.state = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void checkCompleted()
  {
    try
    {
      if (this.state != 2)
        throw new IllegalStateException("state != STATE_COMPLETED");
    }
    finally
    {
    }
  }

  public void close()
  {
    try
    {
      notifyClosed();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public Exception getException()
  {
    try
    {
      Exception localException = this.exception;
      return localException;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int getState()
  {
    try
    {
      int i = this.state;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean hasException()
  {
    try
    {
      Exception localException = this.exception;
      if (localException != null)
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

  public boolean isCompletedOrException()
  {
    try
    {
      if (this.state != 2)
      {
        int i = this.state;
        if (i != 3);
      }
      else
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

  public boolean isInitialized()
  {
    try
    {
      int i = this.state;
      if (i == 0)
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

  public boolean isRunning()
  {
    int i = 1;
    try
    {
      int j = this.state;
      if (j == i)
        return i;
      i = 0;
    }
    finally
    {
    }
  }

  protected void notifyClosed()
  {
    try
    {
      setState(4);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void notifyCompleted()
  {
    try
    {
      setState(2);
      scheduleTask();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void notifyException(Exception paramException)
  {
    try
    {
      setState(3);
      setException(paramException);
      scheduleTask();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void notifyProgress()
  {
    try
    {
      scheduleTask();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void notifyRunning()
  {
    try
    {
      setState(1);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void reset()
  {
    try
    {
      this.state = 0;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void scheduleTask()
  {
    try
    {
      if (this.task != null)
        this.task.schedule();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void setTask(AbstractTask paramAbstractTask)
  {
    try
    {
      this.task = paramAbstractTask;
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
 * Qualified Name:     com.x.google.common.async.AbstractRequest
 * JD-Core Version:    0.6.2
 */