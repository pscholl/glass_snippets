package com.x.google.masf.services;

import com.x.google.masf.ServiceCallback;

public class AsyncResult
{
  private ServiceCallback closure;
  private boolean done;
  private Object result;

  public AsyncResult(ServiceCallback paramServiceCallback)
  {
    this.closure = paramServiceCallback;
  }

  public Object get()
  {
    try
    {
      while (true)
      {
        boolean bool = this.done;
        if (bool)
          break;
        try
        {
          wait();
        }
        catch (InterruptedException localInterruptedException)
        {
        }
      }
      Object localObject2 = this.result;
      return localObject2;
    }
    finally
    {
    }
  }

  public Object get(long paramLong)
    throws InterruptedException
  {
    try
    {
      if (!this.done)
        wait(paramLong);
      Object localObject2 = this.result;
      return localObject2;
    }
    finally
    {
    }
  }

  public boolean isDone()
  {
    try
    {
      boolean bool = this.done;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setResult(Object paramObject)
  {
    try
    {
      this.result = paramObject;
      this.done = true;
      if (this.closure != null)
        this.closure.onRequestComplete(paramObject);
      notifyAll();
      return;
    }
    finally
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.AsyncResult
 * JD-Core Version:    0.6.2
 */