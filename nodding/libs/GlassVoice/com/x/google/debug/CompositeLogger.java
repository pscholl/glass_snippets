package com.x.google.debug;

import java.util.Vector;

public class CompositeLogger
  implements Logger
{
  private final Vector loggers = new Vector(4);

  private boolean hasLoggableChild(int paramInt, String paramString1, String paramString2)
  {
    int i = this.loggers.size();
    for (int j = 0; j < i; j++)
    {
      ((Logger)this.loggers.elementAt(j));
      if (isLoggable(paramInt, paramString1, paramString2))
        return true;
    }
    return false;
  }

  public void add(Logger paramLogger)
  {
    if (paramLogger == null)
      try
      {
        throw new NullPointerException();
      }
      finally
      {
      }
    this.loggers.addElement(paramLogger);
  }

  public void flush()
  {
    try
    {
      int i = this.loggers.size();
      for (int j = 0; j < i; j++)
        ((Logger)this.loggers.elementAt(j)).flush();
      return;
    }
    finally
    {
    }
  }

  public boolean isLoggable(int paramInt, String paramString1, String paramString2)
  {
    try
    {
      boolean bool = hasLoggableChild(paramInt, paramString1, paramString2);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void log(Object paramObject, int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    try
    {
      int i = this.loggers.size();
      for (int j = 0; j < i; j++)
        ((Logger)this.loggers.elementAt(j)).log(paramObject, paramInt1, paramString1, paramString2, paramInt2);
      return;
    }
    finally
    {
    }
  }

  public void logThrowable(Object paramObject, Throwable paramThrowable, int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    try
    {
      int i = this.loggers.size();
      for (int j = 0; j < i; j++)
        ((Logger)this.loggers.elementAt(j)).logThrowable(paramObject, paramThrowable, paramInt1, paramString1, paramString2, paramInt2);
      return;
    }
    finally
    {
    }
  }

  public void logTimer(String paramString1, long paramLong, int paramInt1, String paramString2, String paramString3, int paramInt2)
  {
    try
    {
      int i = this.loggers.size();
      for (int j = 0; j < i; j++)
        ((Logger)this.loggers.elementAt(j)).logTimer(paramString1, paramLong, paramInt1, paramString2, paramString3, paramInt2);
      return;
    }
    finally
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.debug.CompositeLogger
 * JD-Core Version:    0.6.2
 */