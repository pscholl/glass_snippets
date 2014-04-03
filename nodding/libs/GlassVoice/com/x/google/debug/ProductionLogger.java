package com.x.google.debug;

import com.x.google.common.Log;

public class ProductionLogger extends SimpleLogger
{
  public void log(Object paramObject, int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    if (paramInt1 == 7)
    {
      logThrowable(paramObject, new Throwable(), paramInt1, paramString1, paramString2, paramInt2);
      return;
    }
    super.log(paramObject, paramInt1, paramString1, paramString2, paramInt2);
  }

  public void log(String paramString)
  {
  }

  public void logThrowable(Object paramObject, Throwable paramThrowable, int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    Log.logThrowable(paramObject.toString(), paramThrowable);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.debug.ProductionLogger
 * JD-Core Version:    0.6.2
 */