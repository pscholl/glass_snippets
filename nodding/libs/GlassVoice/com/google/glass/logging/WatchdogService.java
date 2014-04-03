package com.google.glass.logging;

import android.app.IntentService;
import android.content.Intent;

public class WatchdogService extends IntentService
{
  private static final String TAG = WatchdogService.class.getSimpleName();
  private Watchdog watchdog;

  public WatchdogService()
  {
    super(TAG);
  }

  public void onCreate()
  {
    super.onCreate();
    this.watchdog = new Watchdog(this);
  }

  protected void onHandleIntent(Intent paramIntent)
  {
    if (this.watchdog != null)
      this.watchdog.watch();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.WatchdogService
 * JD-Core Version:    0.6.2
 */