package com.x.google.common.android;

import android.os.SystemClock;
import com.x.google.common.Clock;

public class AndroidClock
  implements Clock
{
  public long currentTimeMillis()
  {
    return System.currentTimeMillis();
  }

  public long relativeTimeMillis()
  {
    return SystemClock.elapsedRealtime();
  }

  public long uptimeMillis()
  {
    return SystemClock.elapsedRealtime();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.android.AndroidClock
 * JD-Core Version:    0.6.2
 */