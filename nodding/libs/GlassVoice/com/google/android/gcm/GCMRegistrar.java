package com.google.android.gcm;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.os.Build.VERSION;
import android.util.Log;
import java.sql.Timestamp;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class GCMRegistrar
{
  private static final String BACKOFF_MS = "backoff_ms";
  private static final int DEFAULT_BACKOFF_MS = 3000;
  public static final long DEFAULT_ON_SERVER_LIFESPAN_MS = 604800000L;
  private static final String GSF_PACKAGE = "com.google.android.gsf";
  private static final String PREFERENCES = "com.google.android.gcm";
  private static final String PROPERTY_APP_VERSION = "appVersion";
  private static final String PROPERTY_ON_SERVER = "onServer";
  private static final String PROPERTY_ON_SERVER_EXPIRATION_TIME = "onServerExpirationTime";
  private static final String PROPERTY_ON_SERVER_LIFESPAN = "onServerLifeSpan";
  private static final String PROPERTY_REG_ID = "regId";
  private static final String TAG = "GCMRegistrar";
  private static GCMBroadcastReceiver sRetryReceiver;
  private static String sRetryReceiverClassName;

  private GCMRegistrar()
  {
    throw new UnsupportedOperationException();
  }

  public static void checkDevice(Context paramContext)
  {
    int i = Build.VERSION.SDK_INT;
    if (i < 8)
      throw new UnsupportedOperationException("Device must be at least API Level 8 (instead of " + i + ")");
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      localPackageManager.getPackageInfo("com.google.android.gsf", 0);
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    throw new UnsupportedOperationException("Device does not have package com.google.android.gsf");
  }

  // ERROR //
  public static void checkManifest(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 85	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   4: astore_1
    //   5: aload_0
    //   6: invokevirtual 97	android/content/Context:getPackageName	()Ljava/lang/String;
    //   9: astore_2
    //   10: new 60	java/lang/StringBuilder
    //   13: dup
    //   14: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   17: aload_2
    //   18: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   21: ldc 99
    //   23: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   29: astore_3
    //   30: aload_1
    //   31: aload_3
    //   32: sipush 4096
    //   35: invokevirtual 103	android/content/pm/PackageManager:getPermissionInfo	(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    //   38: pop
    //   39: aload_1
    //   40: aload_2
    //   41: iconst_2
    //   42: invokevirtual 91	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   45: astore 7
    //   47: aload 7
    //   49: getfield 109	android/content/pm/PackageInfo:receivers	[Landroid/content/pm/ActivityInfo;
    //   52: astore 8
    //   54: aload 8
    //   56: ifnull +9 -> 65
    //   59: aload 8
    //   61: arraylength
    //   62: ifne +88 -> 150
    //   65: new 111	java/lang/IllegalStateException
    //   68: dup
    //   69: new 60	java/lang/StringBuilder
    //   72: dup
    //   73: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   76: ldc 113
    //   78: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: aload_2
    //   82: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   88: invokespecial 114	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   91: athrow
    //   92: astore 4
    //   94: new 111	java/lang/IllegalStateException
    //   97: dup
    //   98: new 60	java/lang/StringBuilder
    //   101: dup
    //   102: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   105: ldc 116
    //   107: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: aload_3
    //   111: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   117: invokespecial 114	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   120: athrow
    //   121: astore 6
    //   123: new 111	java/lang/IllegalStateException
    //   126: dup
    //   127: new 60	java/lang/StringBuilder
    //   130: dup
    //   131: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   134: ldc 118
    //   136: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: aload_2
    //   140: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   146: invokespecial 114	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   149: athrow
    //   150: ldc 39
    //   152: iconst_2
    //   153: invokestatic 124	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   156: ifeq +39 -> 195
    //   159: ldc 39
    //   161: new 60	java/lang/StringBuilder
    //   164: dup
    //   165: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   168: ldc 126
    //   170: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: aload_2
    //   174: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: ldc 128
    //   179: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: aload 8
    //   184: arraylength
    //   185: invokevirtual 70	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   188: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   191: invokestatic 132	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   194: pop
    //   195: new 134	java/util/HashSet
    //   198: dup
    //   199: invokespecial 135	java/util/HashSet:<init>	()V
    //   202: astore 9
    //   204: aload 8
    //   206: arraylength
    //   207: istore 10
    //   209: iconst_0
    //   210: istore 11
    //   212: iload 11
    //   214: iload 10
    //   216: if_icmpge +42 -> 258
    //   219: aload 8
    //   221: iload 11
    //   223: aaload
    //   224: astore 12
    //   226: ldc 137
    //   228: aload 12
    //   230: getfield 142	android/content/pm/ActivityInfo:permission	Ljava/lang/String;
    //   233: invokevirtual 148	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   236: ifeq +16 -> 252
    //   239: aload 9
    //   241: aload 12
    //   243: getfield 151	android/content/pm/ActivityInfo:name	Ljava/lang/String;
    //   246: invokeinterface 156 2 0
    //   251: pop
    //   252: iinc 11 1
    //   255: goto -43 -> 212
    //   258: aload 9
    //   260: invokeinterface 160 1 0
    //   265: ifeq +13 -> 278
    //   268: new 111	java/lang/IllegalStateException
    //   271: dup
    //   272: ldc 162
    //   274: invokespecial 114	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   277: athrow
    //   278: aload_0
    //   279: aload 9
    //   281: ldc 164
    //   283: invokestatic 168	com/google/android/gcm/GCMRegistrar:checkReceiver	(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V
    //   286: aload_0
    //   287: aload 9
    //   289: ldc 170
    //   291: invokestatic 168	com/google/android/gcm/GCMRegistrar:checkReceiver	(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V
    //   294: return
    //
    // Exception table:
    //   from	to	target	type
    //   30	39	92	android/content/pm/PackageManager$NameNotFoundException
    //   39	47	121	android/content/pm/PackageManager$NameNotFoundException
  }

  private static void checkReceiver(Context paramContext, Set<String> paramSet, String paramString)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    String str1 = paramContext.getPackageName();
    Intent localIntent = new Intent(paramString);
    localIntent.setPackage(str1);
    List localList = localPackageManager.queryBroadcastReceivers(localIntent, 32);
    if (localList.isEmpty())
      throw new IllegalStateException("No receivers for action " + paramString);
    if (Log.isLoggable("GCMRegistrar", 2))
      Log.v("GCMRegistrar", "Found " + localList.size() + " receivers for action " + paramString);
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      String str2 = ((ResolveInfo)localIterator.next()).activityInfo.name;
      if (!paramSet.contains(str2))
        throw new IllegalStateException("Receiver " + str2 + " is not set with permission " + "com.google.android.c2dm.permission.SEND");
    }
  }

  static String clearRegistrationId(Context paramContext)
  {
    return setRegistrationId(paramContext, "");
  }

  private static int getAppVersion(Context paramContext)
  {
    try
    {
      int i = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      throw new RuntimeException("Coult not get package name: " + localNameNotFoundException);
    }
  }

  static int getBackoff(Context paramContext)
  {
    return getGCMPreferences(paramContext).getInt("backoff_ms", 3000);
  }

  static String getFlatSenderIds(String[] paramArrayOfString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0))
      throw new IllegalArgumentException("No senderIds");
    StringBuilder localStringBuilder = new StringBuilder(paramArrayOfString[0]);
    for (int i = 1; i < paramArrayOfString.length; i++)
      localStringBuilder.append(',').append(paramArrayOfString[i]);
    return localStringBuilder.toString();
  }

  private static SharedPreferences getGCMPreferences(Context paramContext)
  {
    return paramContext.getSharedPreferences("com.google.android.gcm", 0);
  }

  public static long getRegisterOnServerLifespan(Context paramContext)
  {
    return getGCMPreferences(paramContext).getLong("onServerLifeSpan", 604800000L);
  }

  public static String getRegistrationId(Context paramContext)
  {
    SharedPreferences localSharedPreferences = getGCMPreferences(paramContext);
    String str = localSharedPreferences.getString("regId", "");
    int i = localSharedPreferences.getInt("appVersion", -2147483648);
    int j = getAppVersion(paramContext);
    if ((i != -2147483648) && (i != j))
    {
      Log.v("GCMRegistrar", "App version changed from " + i + " to " + j + "; resetting registration id");
      clearRegistrationId(paramContext);
      str = "";
    }
    return str;
  }

  static void internalRegister(Context paramContext, String[] paramArrayOfString)
  {
    String str = getFlatSenderIds(paramArrayOfString);
    Log.v("GCMRegistrar", "Registering app " + paramContext.getPackageName() + " of senders " + str);
    Intent localIntent = new Intent("com.google.android.c2dm.intent.REGISTER");
    localIntent.setPackage("com.google.android.gsf");
    localIntent.putExtra("app", PendingIntent.getBroadcast(paramContext, 0, new Intent(), 0));
    localIntent.putExtra("sender", str);
    paramContext.startService(localIntent);
  }

  static void internalUnregister(Context paramContext)
  {
    Log.v("GCMRegistrar", "Unregistering app " + paramContext.getPackageName());
    Intent localIntent = new Intent("com.google.android.c2dm.intent.UNREGISTER");
    localIntent.setPackage("com.google.android.gsf");
    localIntent.putExtra("app", PendingIntent.getBroadcast(paramContext, 0, new Intent(), 0));
    paramContext.startService(localIntent);
  }

  public static boolean isRegistered(Context paramContext)
  {
    return getRegistrationId(paramContext).length() > 0;
  }

  public static boolean isRegisteredOnServer(Context paramContext)
  {
    SharedPreferences localSharedPreferences = getGCMPreferences(paramContext);
    boolean bool = localSharedPreferences.getBoolean("onServer", false);
    Log.v("GCMRegistrar", "Is registered on server: " + bool);
    if (bool)
    {
      long l = localSharedPreferences.getLong("onServerExpirationTime", -1L);
      if (System.currentTimeMillis() > l)
      {
        Log.v("GCMRegistrar", "flag expired on: " + new Timestamp(l));
        bool = false;
      }
    }
    return bool;
  }

  public static void onDestroy(Context paramContext)
  {
    try
    {
      if (sRetryReceiver != null)
      {
        Log.v("GCMRegistrar", "Unregistering receiver");
        paramContext.unregisterReceiver(sRetryReceiver);
        sRetryReceiver = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void register(Context paramContext, String[] paramArrayOfString)
  {
    resetBackoff(paramContext);
    internalRegister(paramContext, paramArrayOfString);
  }

  static void resetBackoff(Context paramContext)
  {
    Log.d("GCMRegistrar", "resetting backoff for " + paramContext.getPackageName());
    setBackoff(paramContext, 3000);
  }

  static void setBackoff(Context paramContext, int paramInt)
  {
    SharedPreferences.Editor localEditor = getGCMPreferences(paramContext).edit();
    localEditor.putInt("backoff_ms", paramInt);
    localEditor.commit();
  }

  public static void setRegisterOnServerLifespan(Context paramContext, long paramLong)
  {
    SharedPreferences.Editor localEditor = getGCMPreferences(paramContext).edit();
    localEditor.putLong("onServerLifeSpan", paramLong);
    localEditor.commit();
  }

  public static void setRegisteredOnServer(Context paramContext, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = getGCMPreferences(paramContext).edit();
    localEditor.putBoolean("onServer", paramBoolean);
    long l = getRegisterOnServerLifespan(paramContext) + System.currentTimeMillis();
    Log.v("GCMRegistrar", "Setting registeredOnServer status as " + paramBoolean + " until " + new Timestamp(l));
    localEditor.putLong("onServerExpirationTime", l);
    localEditor.commit();
  }

  static String setRegistrationId(Context paramContext, String paramString)
  {
    SharedPreferences localSharedPreferences = getGCMPreferences(paramContext);
    String str = localSharedPreferences.getString("regId", "");
    int i = getAppVersion(paramContext);
    Log.v("GCMRegistrar", "Saving regId on app version " + i);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    localEditor.putString("regId", paramString);
    localEditor.putInt("appVersion", i);
    localEditor.commit();
    return str;
  }

  static void setRetryBroadcastReceiver(Context paramContext)
  {
    try
    {
      if (sRetryReceiver == null)
      {
        if (sRetryReceiverClassName != null)
          break label107;
        Log.e("GCMRegistrar", "internal error: retry receiver class not set yet");
        sRetryReceiver = new GCMBroadcastReceiver();
      }
      while (true)
      {
        String str1 = paramContext.getPackageName();
        IntentFilter localIntentFilter = new IntentFilter("com.google.android.gcm.intent.RETRY");
        localIntentFilter.addCategory(str1);
        String str2 = str1 + ".permission.C2D_MESSAGE";
        Log.v("GCMRegistrar", "Registering receiver");
        paramContext.registerReceiver(sRetryReceiver, localIntentFilter, str2, null);
        return;
        try
        {
          label107: sRetryReceiver = (GCMBroadcastReceiver)Class.forName(sRetryReceiverClassName).newInstance();
        }
        catch (Exception localException)
        {
          Log.e("GCMRegistrar", "Could not create instance of " + sRetryReceiverClassName + ". Using " + GCMBroadcastReceiver.class.getName() + " directly.");
          sRetryReceiver = new GCMBroadcastReceiver();
        }
      }
    }
    finally
    {
    }
  }

  static void setRetryReceiverClassName(String paramString)
  {
    Log.v("GCMRegistrar", "Setting the name of retry receiver class to " + paramString);
    sRetryReceiverClassName = paramString;
  }

  public static void unregister(Context paramContext)
  {
    resetBackoff(paramContext);
    internalUnregister(paramContext);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.gcm.GCMRegistrar
 * JD-Core Version:    0.6.2
 */