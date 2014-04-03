package com.google.android.gcm;

import android.app.AlarmManager;
import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.SystemClock;
import android.util.Log;
import java.util.Random;
import java.util.concurrent.TimeUnit;

public abstract class GCMBaseIntentService extends IntentService
{
  private static final String EXTRA_TOKEN = "token";
  private static final Object LOCK = GCMBaseIntentService.class;
  private static final int MAX_BACKOFF_MS = 0;
  public static final String TAG = "GCMBaseIntentService";
  private static final String TOKEN = Long.toBinaryString(sRandom.nextLong());
  private static final String WAKELOCK_KEY = "GCM_LIB";
  private static int sCounter = 0;
  private static final Random sRandom = new Random();
  private static PowerManager.WakeLock sWakeLock;
  private final String[] mSenderIds;

  protected GCMBaseIntentService()
  {
    this(getName("DynamicSenderIds"), null);
  }

  private GCMBaseIntentService(String paramString, String[] paramArrayOfString)
  {
    super(paramString);
    this.mSenderIds = paramArrayOfString;
  }

  protected GCMBaseIntentService(String[] paramArrayOfString)
  {
    this(getName(paramArrayOfString), paramArrayOfString);
  }

  private static String getName(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder().append("GCMIntentService-").append(paramString).append("-");
    int i = 1 + sCounter;
    sCounter = i;
    String str = i;
    Log.v("GCMBaseIntentService", "Intent service name: " + str);
    return str;
  }

  private static String getName(String[] paramArrayOfString)
  {
    return getName(GCMRegistrar.getFlatSenderIds(paramArrayOfString));
  }

  private void handleRegistration(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getStringExtra("registration_id");
    String str2 = paramIntent.getStringExtra("error");
    String str3 = paramIntent.getStringExtra("unregistered");
    Log.d("GCMBaseIntentService", "handleRegistration: registrationId = " + str1 + ", error = " + str2 + ", unregistered = " + str3);
    if (str1 != null)
    {
      GCMRegistrar.resetBackoff(paramContext);
      GCMRegistrar.setRegistrationId(paramContext, str1);
      onRegistered(paramContext, str1);
    }
    int i;
    do
    {
      return;
      if (str3 != null)
      {
        GCMRegistrar.resetBackoff(paramContext);
        onUnregistered(paramContext, GCMRegistrar.clearRegistrationId(paramContext));
        return;
      }
      Log.d("GCMBaseIntentService", "Registration error: " + str2);
      if (!"SERVICE_NOT_AVAILABLE".equals(str2))
        break label296;
      if (!onRecoverableError(paramContext, str2))
        break;
      i = GCMRegistrar.getBackoff(paramContext);
      int j = i / 2 + sRandom.nextInt(i);
      Log.d("GCMBaseIntentService", "Scheduling registration retry, backoff = " + j + " (" + i + ")");
      Intent localIntent = new Intent("com.google.android.gcm.intent.RETRY");
      localIntent.putExtra("token", TOKEN);
      PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, localIntent, 0);
      ((AlarmManager)paramContext.getSystemService("alarm")).set(3, SystemClock.elapsedRealtime() + j, localPendingIntent);
    }
    while (i >= MAX_BACKOFF_MS);
    GCMRegistrar.setBackoff(paramContext, i * 2);
    return;
    Log.d("GCMBaseIntentService", "Not retrying failed operation");
    return;
    label296: onError(paramContext, str2);
  }

  static void runIntentInService(Context paramContext, Intent paramIntent, String paramString)
  {
    synchronized (LOCK)
    {
      if (sWakeLock == null)
        sWakeLock = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, "GCM_LIB");
      Log.v("GCMBaseIntentService", "Acquiring wakelock");
      sWakeLock.acquire();
      paramIntent.setClassName(paramContext, paramString);
      paramContext.startService(paramIntent);
      return;
    }
  }

  protected String[] getSenderIds(Context paramContext)
  {
    if (this.mSenderIds == null)
      throw new IllegalStateException("sender id not set on constructor");
    return this.mSenderIds;
  }

  protected void onDeletedMessages(Context paramContext, int paramInt)
  {
  }

  protected abstract void onError(Context paramContext, String paramString);

  public final void onHandleIntent(Intent paramIntent)
  {
    try
    {
      localContext = getApplicationContext();
      str1 = paramIntent.getAction();
      if (str1.equals("com.google.android.c2dm.intent.REGISTRATION"))
      {
        GCMRegistrar.setRetryBroadcastReceiver(localContext);
        handleRegistration(localContext, paramIntent);
      }
    }
    finally
    {
      while (true)
      {
        Context localContext;
        String str1;
        String str3;
        synchronized (LOCK)
        {
          if (sWakeLock != null)
          {
            Log.v("GCMBaseIntentService", "Releasing wakelock");
            sWakeLock.release();
            return;
            if (str1.equals("com.google.android.c2dm.intent.RECEIVE"))
            {
              str3 = paramIntent.getStringExtra("message_type");
              if (str3 != null)
                if (str3.equals("deleted_messages"))
                {
                  String str4 = paramIntent.getStringExtra("total_deleted");
                  if (str4 == null)
                    continue;
                  try
                  {
                    int i = Integer.parseInt(str4);
                    Log.v("GCMBaseIntentService", "Received deleted messages notification: " + i);
                    onDeletedMessages(localContext, i);
                  }
                  catch (NumberFormatException localNumberFormatException)
                  {
                    Log.e("GCMBaseIntentService", "GCM returned invalid number of deleted messages: " + str4);
                  }
                  continue;
                  localObject1 = finally;
                }
            }
          }
        }
        synchronized (LOCK)
        {
          if (sWakeLock != null)
          {
            Log.v("GCMBaseIntentService", "Releasing wakelock");
            sWakeLock.release();
            throw localObject1;
            Log.e("GCMBaseIntentService", "Received unknown special message: " + str3);
            continue;
            onMessage(localContext, paramIntent);
            continue;
            if (!str1.equals("com.google.android.gcm.intent.RETRY"))
              continue;
            String str2 = paramIntent.getStringExtra("token");
            if (!TOKEN.equals(str2))
            {
              Log.e("GCMBaseIntentService", "Received invalid token: " + str2);
              while (true)
              {
                synchronized (LOCK)
                {
                  if (sWakeLock != null)
                  {
                    Log.v("GCMBaseIntentService", "Releasing wakelock");
                    sWakeLock.release();
                    return;
                  }
                }
                Log.e("GCMBaseIntentService", "Wakelock reference is null");
              }
            }
            if (GCMRegistrar.isRegistered(localContext))
            {
              GCMRegistrar.internalUnregister(localContext);
              continue;
            }
            GCMRegistrar.internalRegister(localContext, getSenderIds(localContext));
            continue;
            Log.e("GCMBaseIntentService", "Wakelock reference is null");
            continue;
            localObject5 = finally;
            throw localObject5;
          }
          Log.e("GCMBaseIntentService", "Wakelock reference is null");
        }
      }
    }
  }

  protected abstract void onMessage(Context paramContext, Intent paramIntent);

  protected boolean onRecoverableError(Context paramContext, String paramString)
  {
    return true;
  }

  protected abstract void onRegistered(Context paramContext, String paramString);

  protected abstract void onUnregistered(Context paramContext, String paramString);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.gcm.GCMBaseIntentService
 * JD-Core Version:    0.6.2
 */