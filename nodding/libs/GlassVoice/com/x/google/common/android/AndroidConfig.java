package com.x.google.common.android;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.format.DateUtils;
import android.util.DisplayMetrics;
import com.x.google.common.Clock;
import com.x.google.common.Config;
import com.x.google.common.DateFormatter;
import com.x.google.common.I18n;
import com.x.google.common.graphics.FontFactory;
import com.x.google.common.graphics.android.AndroidAshmemImageFactory;
import com.x.google.common.graphics.android.AndroidFontFactory;
import com.x.google.common.graphics.android.AndroidImageFactory;
import com.x.google.common.io.Gunzipper;
import com.x.google.common.io.Gunzipper.GunzipInterface;
import com.x.google.common.io.InMemoryPersistentStore;
import com.x.google.common.io.PersistentStore;
import com.x.google.common.io.TcpConnectionFactory;
import com.x.google.common.io.android.AndroidFixedPersistentStore;
import com.x.google.common.io.android.AndroidHttpConnectionFactory;
import com.x.google.common.io.android.AndroidPersistentStore;
import com.x.google.common.io.android.AndroidTcpConnectionFactory;
import com.x.google.common.ui.NativeDateTimeFieldFactory;
import com.x.google.common.ui.NativeTextFieldFactory;
import com.x.google.common.util.text.TextUtil;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import java.util.zip.GZIPInputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;

public class AndroidConfig extends Config
  implements DateFormatter
{
  public static final String LOCALE_SEPARATOR = " ";
  public static final String SUPPORTED_LOCALES = "en";
  private static Context stringResourceContext;
  private static Thread uiThread;
  private final Clock clock = new AndroidClock();
  protected AndroidHttpConnectionFactory connectionFactory;
  protected final Context context;
  protected FontFactory fontFactory;
  protected AndroidImageFactory imageFactory;
  protected PersistentStore persistentStore;
  private final int pixelsPerInch;
  protected TcpConnectionFactory tcpConnFactory;

  public AndroidConfig(Context paramContext)
  {
    this(paramContext, null);
  }

  public AndroidConfig(Context paramContext, String paramString)
  {
    this.context = paramContext;
    uiThread = Thread.currentThread();
    setConfig(this);
    init();
    USE_NATIVE_COMMANDS = true;
    USE_NATIVE_MENUS = true;
    KEY_BACK = 4;
    if (paramContext != null);
    for (this.pixelsPerInch = paramContext.getResources().getDisplayMetrics().densityDpi; ; this.pixelsPerInch = 160)
    {
      initPortabilityFields(paramString);
      initLocale(Locale.getDefault());
      return;
    }
  }

  public static String androidString(int paramInt)
  {
    return stringResourceContext.getString(paramInt).replace('|', '\001');
  }

  public static String getBestUiLocale(String paramString, String[] paramArrayOfString)
  {
    String str1 = getRemoteStringLocale(paramString, paramArrayOfString);
    String str2 = I18n.getCountry(paramString);
    if ((TextUtil.isEmpty(I18n.getCountry(str1))) && (!TextUtil.isEmpty(str2)))
      str1 = str1 + "_" + str2;
    return str1;
  }

  public static String getPlatformID()
  {
    String str1 = Build.MANUFACTURER;
    String str2 = Build.DEVICE;
    String str3 = Build.MODEL;
    return "android:" + str1.replace('-', '_') + "-" + str2.replace('-', '_') + "-" + str3.replace('-', '_');
  }

  public static String getRemoteStringLocale(String paramString)
  {
    return I18n.getBestLocaleMatch(paramString, getSupportedLocales());
  }

  private static String getRemoteStringLocale(String paramString, String[] paramArrayOfString)
  {
    return I18n.getBestLocaleMatch(paramString, paramArrayOfString);
  }

  // ERROR //
  private String getSetting(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 47	com/x/google/common/android/AndroidConfig:context	Landroid/content/Context;
    //   6: invokevirtual 178	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   9: ldc 180
    //   11: invokestatic 186	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   14: iconst_1
    //   15: anewarray 114	java/lang/String
    //   18: dup
    //   19: iconst_0
    //   20: ldc 188
    //   22: aastore
    //   23: new 137	java/lang/StringBuilder
    //   26: dup
    //   27: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   30: ldc 190
    //   32: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: aload_1
    //   36: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: ldc 192
    //   41: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   47: aconst_null
    //   48: aconst_null
    //   49: invokevirtual 198	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   52: astore 6
    //   54: aload 6
    //   56: ifnull +100 -> 156
    //   59: aload 6
    //   61: invokeinterface 204 1 0
    //   66: ifeq +90 -> 156
    //   69: aload 6
    //   71: aload 6
    //   73: ldc 188
    //   75: invokeinterface 208 2 0
    //   80: invokeinterface 209 2 0
    //   85: astore 9
    //   87: aload 9
    //   89: astore 7
    //   91: aload 6
    //   93: ifnull +10 -> 103
    //   96: aload 6
    //   98: invokeinterface 212 1 0
    //   103: aload 7
    //   105: areturn
    //   106: astore 4
    //   108: aconst_null
    //   109: astore 5
    //   111: aload 5
    //   113: ifnull +41 -> 154
    //   116: aload 5
    //   118: invokeinterface 212 1 0
    //   123: aconst_null
    //   124: areturn
    //   125: astore_3
    //   126: aload_2
    //   127: ifnull +9 -> 136
    //   130: aload_2
    //   131: invokeinterface 212 1 0
    //   136: aload_3
    //   137: athrow
    //   138: astore_3
    //   139: aload 6
    //   141: astore_2
    //   142: goto -16 -> 126
    //   145: astore 8
    //   147: aload 6
    //   149: astore 5
    //   151: goto -40 -> 111
    //   154: aconst_null
    //   155: areturn
    //   156: aconst_null
    //   157: astore 7
    //   159: goto -68 -> 91
    //
    // Exception table:
    //   from	to	target	type
    //   2	54	106	java/lang/Throwable
    //   2	54	125	finally
    //   59	87	138	finally
    //   59	87	145	java/lang/Throwable
  }

  private static String[] getSupportedLocales()
  {
    return TextUtil.split("en", " ");
  }

  public void assertNotOnUiThread()
  {
  }

  public void assertOnUiThread()
  {
  }

  public void configurationChanged(Configuration paramConfiguration)
  {
    initLocale(paramConfiguration.locale);
  }

  public String formatRelativeTime(long paramLong1, long paramLong2)
  {
    return DateUtils.getRelativeTimeSpanString(paramLong1, paramLong2, 60000L).toString();
  }

  public String getAppProperty(String paramString)
  {
    return null;
  }

  public Clock getClock()
  {
    return this.clock;
  }

  public AndroidHttpConnectionFactory getConnectionFactory()
  {
    return this.connectionFactory;
  }

  public Context getContext()
  {
    return this.context;
  }

  public DateFormatter getDateFormatter()
  {
    return this;
  }

  protected String getDistributionChannelInternal()
  {
    String str1 = getSetting("maps_client_id");
    String str2;
    if (TextUtil.isEmpty(str1))
    {
      str2 = getSetting("client_id");
      if (TextUtil.isEmpty(str2))
        str1 = "Web";
    }
    else
    {
      return str1;
    }
    return "gmm-" + str2;
  }

  public FontFactory getFontFactory()
  {
    return this.fontFactory;
  }

  public int getGameAction(Object paramObject, int paramInt)
  {
    return 0;
  }

  public AndroidImageFactory getImageFactory()
  {
    return this.imageFactory;
  }

  public InputStream getInflaterInputStream(InputStream paramInputStream)
    throws IOException
  {
    return new InflaterInputStream(paramInputStream, new Inflater(true));
  }

  public LocationManager getLocationManager()
  {
    return (LocationManager)this.context.getSystemService("location");
  }

  public int getMinTouchablePixels()
  {
    return 34;
  }

  public NativeDateTimeFieldFactory getNativeDateTimeFieldFactory()
  {
    throw new UnsupportedOperationException("Native DateTime Fields not used on Android.");
  }

  public NativeTextFieldFactory getNativeTextFieldFactory()
  {
    throw new UnsupportedOperationException("Native Text Fields not used on Android.");
  }

  public String getNetworkType()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)this.context.getSystemService("connectivity")).getActiveNetworkInfo();
    if (localNetworkInfo != null)
      switch (localNetworkInfo.getType())
      {
      default:
      case 1:
      case 0:
      }
    while (true)
    {
      return "Unknown";
      return "WiFi";
      switch (((TelephonyManager)this.context.getSystemService("phone")).getNetworkType())
      {
      default:
      case 1:
      case 3:
      case 2:
      }
    }
    return "GPRS";
    return "UMTS";
    return "EDGE";
  }

  public PersistentStore getPersistentStore()
  {
    return this.persistentStore;
  }

  public int getPixelsPerInch()
  {
    return this.pixelsPerInch;
  }

  public double getScreenDensityScale()
  {
    return this.context.getResources().getDisplayMetrics().density;
  }

  public TcpConnectionFactory getTcpConnectionFactory()
  {
    try
    {
      if (this.tcpConnFactory == null)
        this.tcpConnFactory = new AndroidTcpConnectionFactory(this.context);
      TcpConnectionFactory localTcpConnectionFactory = this.tcpConnFactory;
      return localTcpConnectionFactory;
    }
    finally
    {
    }
  }

  public String getVersion()
  {
    return "0.0.0";
  }

  public void initLocale(Locale paramLocale)
  {
    String str = paramLocale.toString();
    getI18n().setSystemLocale(str);
    getI18n().setUiLocale(getBestUiLocale(str, getSupportedLocales()));
  }

  protected void initPortabilityFields(String paramString)
  {
    if (this.context == null)
      this.persistentStore = new InMemoryPersistentStore();
    while (true)
    {
      this.connectionFactory = new AndroidHttpConnectionFactory(this.context);
      this.fontFactory = new AndroidFontFactory();
      this.imageFactory = new AndroidAshmemImageFactory(this.context);
      return;
      if (paramString != null)
        this.persistentStore = new AndroidFixedPersistentStore(paramString);
      else
        this.persistentStore = new AndroidPersistentStore(this.context);
    }
  }

  public boolean isFire(Object paramObject, int paramInt)
  {
    return false;
  }

  public void setFontFactory(FontFactory paramFontFactory)
  {
    this.fontFactory = paramFontFactory;
  }

  public void setStringResourceContext(Context paramContext)
  {
    stringResourceContext = paramContext;
  }

  protected void setupGzipper()
  {
    Gunzipper.setImplementation(new Gunzipper.GunzipInterface()
    {
      public InputStream gunzip(InputStream paramAnonymousInputStream)
        throws IOException
      {
        return new GZIPInputStream(paramAnonymousInputStream);
      }
    });
  }

  public boolean supportsDistinctMultiTouch()
  {
    return this.context.getPackageManager().hasSystemFeature("android.hardware.touchscreen.multitouch.distinct");
  }

  public boolean supportsTranslucency()
  {
    return true;
  }

  protected boolean testSupportsJpeg()
  {
    return true;
  }

  public boolean useNativeTextButtons()
  {
    return true;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.android.AndroidConfig
 * JD-Core Version:    0.6.2
 */