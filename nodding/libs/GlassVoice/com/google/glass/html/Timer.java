package com.google.glass.html;

import android.os.SystemClock;
import com.google.glass.logging.Log;

class Timer
{
  private final long startTime = SystemClock.uptimeMillis();

  void log(String paramString1, String paramString2)
  {
    long l = SystemClock.uptimeMillis() - this.startTime;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString2;
    arrayOfObject[1] = Long.valueOf(l);
    Log.v(paramString1, "%s, %sms", arrayOfObject);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.html.Timer
 * JD-Core Version:    0.6.2
 */