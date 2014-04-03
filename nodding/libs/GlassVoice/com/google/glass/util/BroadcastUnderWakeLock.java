package com.google.glass.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.UserHandle;
import com.google.glass.build.BuildHelper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import junit.framework.Assert;

public final class BroadcastUnderWakeLock
{
  private static final long WAKE_LOCK_TIMEOUT_MILLIS = 10000L;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  private static PowerManager getPowerManager(Context paramContext)
  {
    return (PowerManager)paramContext.getSystemService("power");
  }

  public static void sendBroadcastUnderWakeLock(Context paramContext, Intent paramIntent, String paramString)
  {
    logger.v("sendBroadcastUnderWakeLock called with intent=%s, name=%s", new Object[] { paramIntent, paramString });
    IntentSender.getInstance().sendOrderedBroadcast(paramContext, paramIntent, null, new WakeLockHoldingReceiver(paramContext, paramString), null, -1, null, null);
  }

  public static void sendBroadcastUnderWakeLockAsUser(Context paramContext, Intent paramIntent, UserHandle paramUserHandle, String paramString)
  {
    Assert.assertTrue(BuildHelper.isJellyBean());
    logger.v("sendBroadcastUnderWakeLock called with intent=%s, name=%s", new Object[] { paramIntent, paramString });
    IntentSender.getInstance().sendOrderedBroadcastAsUser(paramContext, paramIntent, paramUserHandle, null, new WakeLockHoldingReceiver(paramContext, paramString), null, -1, null, null);
  }

  private static class WakeLockHoldingReceiver extends BroadcastReceiver
  {
    private final PowerManager.WakeLock wakeLock;
    private final String wakeLockName;

    public WakeLockHoldingReceiver(Context paramContext, String paramString)
    {
      this.wakeLockName = paramString;
      this.wakeLock = BroadcastUnderWakeLock.getPowerManager(paramContext).newWakeLock(1, paramString);
      this.wakeLock.setReferenceCounted(false);
      acquireLock();
    }

    private void acquireLock()
    {
      FormattingLogger localFormattingLogger = BroadcastUnderWakeLock.logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.wakeLockName;
      localFormattingLogger.v("Acquiring broadcast wakelock: %s", arrayOfObject);
      this.wakeLock.acquire(10000L);
    }

    private void releaseLock()
    {
      try
      {
        FormattingLogger localFormattingLogger = BroadcastUnderWakeLock.logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.wakeLockName;
        localFormattingLogger.v("Releasing broadcast wakelock: %s", arrayOfObject);
        if (this.wakeLock.isHeld())
          this.wakeLock.release();
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public void onReceive(Context paramContext, Intent paramIntent)
    {
      releaseLock();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.BroadcastUnderWakeLock
 * JD-Core Version:    0.6.2
 */