package com.google.glass.companion;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.net.NetworkUtil;
import java.util.Date;

public class DebugConnectivityChecker extends BroadcastReceiver
{
  private static final long DELAY_MS = 30000L;
  private static final long INITIAL_DELAY_MS = 5000L;
  private static final String LOG_FILENAME = "connectivity.log";
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private static PingTask pingTask;
  private static PowerManager.WakeLock wakeLock;

  public static void start(Context paramContext)
  {
    logger.w("Starting companion connection debug.", new Object[0]);
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, new Intent(paramContext, DebugConnectivityChecker.class), 0);
    paramContext.deleteFile("connectivity.log");
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    localAlarmManager.cancel(localPendingIntent);
    localAlarmManager.setRepeating(0, 5000L + System.currentTimeMillis(), 30000L, localPendingIntent);
  }

  public static void stop(Context paramContext)
  {
    logger.w("Stopping companion connection debug.", new Object[0]);
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, new Intent(paramContext, DebugConnectivityChecker.class), 0);
    ((AlarmManager)paramContext.getSystemService("alarm")).cancel(localPendingIntent);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (wakeLock == null)
      wakeLock = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, "");
    if (pingTask != null)
    {
      pingTask.cancel(false);
      wakeLock.release();
    }
    logger.w("Acquiring wakelock for companion connection debug.", new Object[0]);
    wakeLock.acquire();
    pingTask = new PingTask(paramContext);
    pingTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
  }

  private class PingTask extends AsyncTask<Void, Void, Void>
  {
    private final ConnectivityManager connMan;
    private final Context context;

    public PingTask(Context arg2)
    {
      Object localObject;
      this.context = localObject;
      this.connMan = ((ConnectivityManager)localObject.getSystemService("connectivity"));
    }

    // ERROR //
    private void writeLog(String paramString)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_2
      //   2: aload_0
      //   3: getfield 20	com/google/glass/companion/DebugConnectivityChecker$PingTask:context	Landroid/content/Context;
      //   6: ldc 38
      //   8: ldc 39
      //   10: invokevirtual 43	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
      //   13: astore_2
      //   14: aload_2
      //   15: aload_1
      //   16: invokevirtual 49	java/lang/String:getBytes	()[B
      //   19: invokevirtual 55	java/io/FileOutputStream:write	([B)V
      //   22: aload_2
      //   23: ldc 57
      //   25: invokevirtual 49	java/lang/String:getBytes	()[B
      //   28: invokevirtual 55	java/io/FileOutputStream:write	([B)V
      //   31: aload_2
      //   32: ifnull +7 -> 39
      //   35: aload_2
      //   36: invokevirtual 60	java/io/FileOutputStream:close	()V
      //   39: return
      //   40: astore 5
      //   42: invokestatic 66	com/google/glass/companion/DebugConnectivityChecker:access$000	()Lcom/google/glass/logging/FormattingLogger;
      //   45: aload 5
      //   47: ldc 68
      //   49: iconst_0
      //   50: anewarray 70	java/lang/Object
      //   53: invokeinterface 76 4 0
      //   58: aload_2
      //   59: ifnull -20 -> 39
      //   62: aload_2
      //   63: invokevirtual 60	java/io/FileOutputStream:close	()V
      //   66: return
      //   67: astore 6
      //   69: return
      //   70: astore_3
      //   71: aload_2
      //   72: ifnull +7 -> 79
      //   75: aload_2
      //   76: invokevirtual 60	java/io/FileOutputStream:close	()V
      //   79: aload_3
      //   80: athrow
      //   81: astore 7
      //   83: return
      //   84: astore 4
      //   86: goto -7 -> 79
      //
      // Exception table:
      //   from	to	target	type
      //   2	31	40	java/io/IOException
      //   62	66	67	java/io/IOException
      //   2	31	70	finally
      //   42	58	70	finally
      //   35	39	81	java/io/IOException
      //   75	79	84	java/io/IOException
    }

    protected Void doInBackground(Void[] paramArrayOfVoid)
    {
      Date localDate = new Date();
      long l1 = System.nanoTime();
      String str1 = localDate.getTime() / 1000L + " ";
      String str2;
      long l2;
      if (this.connMan.getActiveNetworkInfo() != null)
      {
        str2 = str1 + this.connMan.getActiveNetworkInfo().getType() + " ";
        if (!NetworkUtil.pingGoogle(this.context))
          break label180;
        l2 = (System.nanoTime() - l1) / 1000000L;
      }
      label180: for (String str3 = str2 + "1 " + l2; ; str3 = str2 + "0 0")
      {
        DebugConnectivityChecker.logger.d(str3, new Object[0]);
        writeLog(str3);
        return null;
        str2 = str1 + "-1 ";
        break;
      }
    }

    protected void onPostExecute(Void paramVoid)
    {
      DebugConnectivityChecker.wakeLock.release();
      DebugConnectivityChecker.access$202(null);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.companion.DebugConnectivityChecker
 * JD-Core Version:    0.6.2
 */