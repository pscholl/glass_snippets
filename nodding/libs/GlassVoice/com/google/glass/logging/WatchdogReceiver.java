package com.google.glass.logging;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.util.Log;

public class WatchdogReceiver extends BroadcastReceiver
{
  private static final String TAG = WatchdogReceiver.class.getSimpleName();
  private static final long WATCHDOG_INTERVAL = 300000L;

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Log.d(TAG, "Received intent: " + paramIntent);
    Intent localIntent = new Intent();
    localIntent.setClassName("com.google.glass.logging", "com.google.glass.logging.WatchdogService");
    PendingIntent localPendingIntent = PendingIntent.getService(paramContext, 0, localIntent, 134217728);
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    localAlarmManager.cancel(localPendingIntent);
    localAlarmManager.setRepeating(3, SystemClock.elapsedRealtime(), 300000L, localPendingIntent);
    Log.d(TAG, "Have set a repeating alarm for watchdog.");
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.WatchdogReceiver
 * JD-Core Version:    0.6.2
 */