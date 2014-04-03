package com.x.google.debug;

import java.io.PrintStream;

public class StderrLogger extends SimpleLogger
{
  public void flush()
  {
    System.err.flush();
  }

  public void log(String paramString)
  {
    System.err.println(paramString);
  }

  public void logThrowable(Object paramObject, Throwable paramThrowable, int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    if (isLoggable(paramInt1, paramString1, paramString2))
    {
      super.logThrowable(paramObject, paramThrowable, paramInt1, paramString1, paramString2, paramInt2);
      if (paramThrowable != null)
        paramThrowable.printStackTrace();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.debug.StderrLogger
 * JD-Core Version:    0.6.2
 */