package com.google.glass.logging;

import android.text.TextUtils;
import com.google.common.annotations.VisibleForTesting;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Util
{

  @VisibleForTesting
  static final String CPU_INFO_FILE = "/proc/cpuinfo";
  private static final String CURRENT_FILE = "/sys/class/power_supply/twl6030_battery/current_now";
  private static final Pattern HARDWARE_VERSION_PATTERN = Pattern.compile("Revision\\s:\\s([0-9]+)");

  @VisibleForTesting
  static final LogDataLineParser<Long> SINGLE_LINE_LONG_PARSER;
  private static final String TAG = Util.class.getSimpleName();
  private static final String TEMPERATURE_FILE = "/sys/devices/platform/notle_pcb_sensor.0/temperature";
  public static final long UNKNOWN_LONG = -1L;
  private static final String VOLTAGE_FILE = "/sys/class/power_supply/twl6030_battery/voltage_now";

  static
  {
    SINGLE_LINE_LONG_PARSER = new LogDataLineParser()
    {
      public Long parse(String paramAnonymousString, Long paramAnonymousLong)
      {
        if (TextUtils.isEmpty(paramAnonymousString))
          return paramAnonymousLong;
        return Long.valueOf(Long.parseLong(paramAnonymousString));
      }
    };
  }

  public long getCpuCurrent()
  {
    return ((Long)readSystemFile("/sys/class/power_supply/twl6030_battery/current_now", SINGLE_LINE_LONG_PARSER, Long.valueOf(-1L))).longValue();
  }

  public long getCpuTemperature()
  {
    return ((Long)readSystemFile("/sys/devices/platform/notle_pcb_sensor.0/temperature", SINGLE_LINE_LONG_PARSER, Long.valueOf(-1L))).longValue();
  }

  public long getCpuVoltage()
  {
    long l = ((Long)readSystemFile("/sys/class/power_supply/twl6030_battery/voltage_now", SINGLE_LINE_LONG_PARSER, Long.valueOf(-1L))).longValue();
    for (int i = 0; (l < 0L) && (i < 10); i++)
      l = ((Long)readSystemFile("/sys/class/power_supply/twl6030_battery/voltage_now", SINGLE_LINE_LONG_PARSER, Long.valueOf(-1L))).longValue();
    return l;
  }

  public Integer getHardwareVersion()
  {
    return (Integer)readSystemFile("/proc/cpuinfo", new LogDataLineParser()
    {
      public Integer parse(String paramAnonymousString, Integer paramAnonymousInteger)
      {
        Matcher localMatcher = Util.HARDWARE_VERSION_PATTERN.matcher(paramAnonymousString);
        if (localMatcher.matches())
        {
          String str = localMatcher.group(1);
          try
          {
            Integer localInteger = Integer.valueOf(Integer.parseInt(str));
            return localInteger;
          }
          catch (NumberFormatException localNumberFormatException)
          {
            Log.e(Util.TAG, "Could not parse hardware version from: \"" + paramAnonymousString + "\"", new Object[0]);
            return paramAnonymousInteger;
          }
        }
        return null;
      }
    }
    , Integer.valueOf(7));
  }

  // ERROR //
  @VisibleForTesting
  <T> T readSystemFile(String paramString, LogDataLineParser<T> paramLogDataLineParser, T paramT)
  {
    // Byte code:
    //   0: new 94	java/io/File
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 97	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: astore 4
    //   10: aload 4
    //   12: invokevirtual 101	java/io/File:exists	()Z
    //   15: ifne +39 -> 54
    //   18: getstatic 38	com/google/glass/logging/Util:TAG	Ljava/lang/String;
    //   21: new 103	java/lang/StringBuilder
    //   24: dup
    //   25: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   28: ldc 106
    //   30: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: aload_1
    //   34: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: ldc 112
    //   39: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: iconst_0
    //   46: anewarray 4	java/lang/Object
    //   49: invokestatic 121	com/google/glass/logging/Log:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   52: aload_3
    //   53: areturn
    //   54: aload 4
    //   56: invokevirtual 124	java/io/File:canRead	()Z
    //   59: ifne +34 -> 93
    //   62: getstatic 38	com/google/glass/logging/Util:TAG	Ljava/lang/String;
    //   65: new 103	java/lang/StringBuilder
    //   68: dup
    //   69: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   72: ldc 126
    //   74: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: aload_1
    //   78: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: iconst_0
    //   85: anewarray 4	java/lang/Object
    //   88: invokestatic 121	com/google/glass/logging/Log:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   91: aload_3
    //   92: areturn
    //   93: aconst_null
    //   94: astore 5
    //   96: new 128	java/io/BufferedReader
    //   99: dup
    //   100: new 130	java/io/FileReader
    //   103: dup
    //   104: aload 4
    //   106: invokespecial 133	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   109: invokespecial 136	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   112: astore 6
    //   114: aload 6
    //   116: invokevirtual 139	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   119: astore 13
    //   121: aload 13
    //   123: ifnull +118 -> 241
    //   126: aload_2
    //   127: aload 13
    //   129: aload_3
    //   130: invokeinterface 145 3 0
    //   135: astore 14
    //   137: aload 14
    //   139: ifnull -25 -> 114
    //   142: aload 14
    //   144: aload_3
    //   145: invokevirtual 149	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   148: ifeq +41 -> 189
    //   151: getstatic 38	com/google/glass/logging/Util:TAG	Ljava/lang/String;
    //   154: new 103	java/lang/StringBuilder
    //   157: dup
    //   158: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   161: ldc 151
    //   163: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: aload_3
    //   167: invokevirtual 154	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   170: ldc 156
    //   172: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: aload_1
    //   176: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   182: iconst_0
    //   183: anewarray 4	java/lang/Object
    //   186: invokestatic 121	com/google/glass/logging/Log:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   189: aload 6
    //   191: ifnull +8 -> 199
    //   194: aload 6
    //   196: invokevirtual 159	java/io/BufferedReader:close	()V
    //   199: aload 14
    //   201: areturn
    //   202: astore 15
    //   204: getstatic 38	com/google/glass/logging/Util:TAG	Ljava/lang/String;
    //   207: new 103	java/lang/StringBuilder
    //   210: dup
    //   211: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   214: ldc 161
    //   216: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   219: aload_1
    //   220: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   226: iconst_1
    //   227: anewarray 4	java/lang/Object
    //   230: dup
    //   231: iconst_0
    //   232: aload 15
    //   234: aastore
    //   235: invokestatic 121	com/google/glass/logging/Log:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   238: goto -39 -> 199
    //   241: aload 6
    //   243: ifnull +306 -> 549
    //   246: aload 6
    //   248: invokevirtual 159	java/io/BufferedReader:close	()V
    //   251: aload_3
    //   252: areturn
    //   253: astore 16
    //   255: getstatic 38	com/google/glass/logging/Util:TAG	Ljava/lang/String;
    //   258: new 103	java/lang/StringBuilder
    //   261: dup
    //   262: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   265: ldc 161
    //   267: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: aload_1
    //   271: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   274: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   277: iconst_1
    //   278: anewarray 4	java/lang/Object
    //   281: dup
    //   282: iconst_0
    //   283: aload 16
    //   285: aastore
    //   286: invokestatic 121	com/google/glass/logging/Log:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   289: aload_3
    //   290: areturn
    //   291: astore 7
    //   293: getstatic 38	com/google/glass/logging/Util:TAG	Ljava/lang/String;
    //   296: new 103	java/lang/StringBuilder
    //   299: dup
    //   300: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   303: ldc 106
    //   305: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   308: aload_1
    //   309: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   312: ldc 112
    //   314: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   320: iconst_1
    //   321: anewarray 4	java/lang/Object
    //   324: dup
    //   325: iconst_0
    //   326: aload 7
    //   328: aastore
    //   329: invokestatic 121	com/google/glass/logging/Log:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   332: aload 5
    //   334: ifnull -282 -> 52
    //   337: aload 5
    //   339: invokevirtual 159	java/io/BufferedReader:close	()V
    //   342: aload_3
    //   343: areturn
    //   344: astore 10
    //   346: getstatic 38	com/google/glass/logging/Util:TAG	Ljava/lang/String;
    //   349: new 103	java/lang/StringBuilder
    //   352: dup
    //   353: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   356: ldc 161
    //   358: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   361: aload_1
    //   362: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   365: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   368: iconst_1
    //   369: anewarray 4	java/lang/Object
    //   372: dup
    //   373: iconst_0
    //   374: aload 10
    //   376: aastore
    //   377: invokestatic 121	com/google/glass/logging/Log:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   380: aload_3
    //   381: areturn
    //   382: astore 11
    //   384: getstatic 38	com/google/glass/logging/Util:TAG	Ljava/lang/String;
    //   387: new 103	java/lang/StringBuilder
    //   390: dup
    //   391: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   394: ldc 163
    //   396: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   399: aload_1
    //   400: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   403: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   406: iconst_1
    //   407: anewarray 4	java/lang/Object
    //   410: dup
    //   411: iconst_0
    //   412: aload 11
    //   414: aastore
    //   415: invokestatic 121	com/google/glass/logging/Log:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   418: aload 5
    //   420: ifnull -368 -> 52
    //   423: aload 5
    //   425: invokevirtual 159	java/io/BufferedReader:close	()V
    //   428: aload_3
    //   429: areturn
    //   430: astore 12
    //   432: getstatic 38	com/google/glass/logging/Util:TAG	Ljava/lang/String;
    //   435: new 103	java/lang/StringBuilder
    //   438: dup
    //   439: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   442: ldc 161
    //   444: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   447: aload_1
    //   448: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   451: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   454: iconst_1
    //   455: anewarray 4	java/lang/Object
    //   458: dup
    //   459: iconst_0
    //   460: aload 12
    //   462: aastore
    //   463: invokestatic 121	com/google/glass/logging/Log:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   466: aload_3
    //   467: areturn
    //   468: astore 8
    //   470: aload 5
    //   472: ifnull +8 -> 480
    //   475: aload 5
    //   477: invokevirtual 159	java/io/BufferedReader:close	()V
    //   480: aload 8
    //   482: athrow
    //   483: astore 9
    //   485: getstatic 38	com/google/glass/logging/Util:TAG	Ljava/lang/String;
    //   488: new 103	java/lang/StringBuilder
    //   491: dup
    //   492: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   495: ldc 161
    //   497: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   500: aload_1
    //   501: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   504: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   507: iconst_1
    //   508: anewarray 4	java/lang/Object
    //   511: dup
    //   512: iconst_0
    //   513: aload 9
    //   515: aastore
    //   516: invokestatic 121	com/google/glass/logging/Log:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   519: goto -39 -> 480
    //   522: astore 8
    //   524: aload 6
    //   526: astore 5
    //   528: goto -58 -> 470
    //   531: astore 11
    //   533: aload 6
    //   535: astore 5
    //   537: goto -153 -> 384
    //   540: astore 7
    //   542: aload 6
    //   544: astore 5
    //   546: goto -253 -> 293
    //   549: aload_3
    //   550: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   194	199	202	java/io/IOException
    //   246	251	253	java/io/IOException
    //   96	114	291	java/io/FileNotFoundException
    //   337	342	344	java/io/IOException
    //   96	114	382	java/io/IOException
    //   423	428	430	java/io/IOException
    //   96	114	468	finally
    //   293	332	468	finally
    //   384	418	468	finally
    //   475	480	483	java/io/IOException
    //   114	121	522	finally
    //   126	137	522	finally
    //   142	189	522	finally
    //   114	121	531	java/io/IOException
    //   126	137	531	java/io/IOException
    //   142	189	531	java/io/IOException
    //   114	121	540	java/io/FileNotFoundException
    //   126	137	540	java/io/FileNotFoundException
    //   142	189	540	java/io/FileNotFoundException
  }

  @VisibleForTesting
  static abstract interface LogDataLineParser<T>
  {
    public abstract T parse(String paramString, T paramT);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.Util
 * JD-Core Version:    0.6.2
 */