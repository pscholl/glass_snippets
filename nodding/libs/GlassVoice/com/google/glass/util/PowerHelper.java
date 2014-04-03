package com.google.glass.util;

import android.content.Context;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.SystemClock;

public class PowerHelper
{
  private static final String TAG = PowerHelper.class.getSimpleName();
  private final PowerManager powerManager;
  private final PowerManager.WakeLock wakeLock;

  public PowerHelper(Context paramContext)
  {
    this.powerManager = ((PowerManager)paramContext.getSystemService("power"));
    this.wakeLock = this.powerManager.newWakeLock(268435482, TAG);
    this.wakeLock.setReferenceCounted(false);
  }

  public void dontStayAwake()
  {
    synchronized (this.wakeLock)
    {
      if (this.wakeLock.isHeld())
        this.wakeLock.release();
      return;
    }
  }

  public void goToSleep()
  {
    dontStayAwake();
    this.powerManager.goToSleep(SystemClock.uptimeMillis());
  }

  public boolean isScreenOn()
  {
    return this.powerManager.isScreenOn();
  }

  public boolean isStayingAwake()
  {
    synchronized (this.wakeLock)
    {
      boolean bool = this.wakeLock.isHeld();
      return bool;
    }
  }

  public void stayAwake()
  {
    synchronized (this.wakeLock)
    {
      this.wakeLock.acquire();
      return;
    }
  }

  public void stayAwake(long paramLong)
  {
    synchronized (this.wakeLock)
    {
      this.wakeLock.acquire(paramLong);
      return;
    }
  }

  public void userActivity()
  {
    this.powerManager.userActivity(SystemClock.uptimeMillis(), false);
  }

  public void wakeUp()
  {
    synchronized (this.wakeLock)
    {
      stayAwake();
      try
      {
        userActivity();
        dontStayAwake();
        return;
      }
      finally
      {
        localObject2 = finally;
        dontStayAwake();
        throw localObject2;
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.PowerHelper
 * JD-Core Version:    0.6.2
 */