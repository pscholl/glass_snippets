package com.google.glass.logging;

import android.net.TrafficStats;
import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class PerformanceUtil
{
  private static final String BATTERY_TEMPERATURE_FILE = "/sys/class/power_supply/bq27520-0/temp";
  private static final String BOARD_TEMPERATURE_FILE = "/sys/devices/platform/notle_pcb_sensor.0/temperature";
  private static final String CAPACITY_FILE_EVT2 = "/sys/class/power_supply/bq27520-0/capacity";
  private static final String CHARGE_FILE_EVT2 = "/sys/class/power_supply/bq27520-0/charge_now";
  private static final String CHARGE_WHEN_FULL_FILE_EVT2 = "/sys/class/power_supply/bq27520-0/charge_full";
  private static final String CPU_FREQUENCY_FILE = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq";
  private static final String CPU_FREQUENCY_SCALING_GOVERNOR_FILE = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor";
  private static final String CPU_FREQUENCY_TIME_FILE = "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state";
  private static final String CURRENT_FILE_EVT2 = "/sys/class/power_supply/bq27520-0/current_now";
  private static final String REPORTED_SOC_FILE_EVT2 = "/sys/class/power_supply/bq27520-0/capacity";
  private static final String TAG = PerformanceUtil.class.getSimpleName();
  private static final long UNKNOWN = -1L;

  public static long getBatteryCapacity()
  {
    return readLongValue("/sys/class/power_supply/bq27520-0/capacity");
  }

  public static long getBatteryChargeWhenFullUah()
  {
    return readLongValue("/sys/class/power_supply/bq27520-0/charge_full");
  }

  public static long getBatteryStateOfChargeUah()
  {
    return readLongValue("/sys/class/power_supply/bq27520-0/charge_now");
  }

  public static long getBatteryTemperature()
  {
    return 100L * readLongValue("/sys/class/power_supply/bq27520-0/temp");
  }

  public static long getBoardTemperature()
  {
    return readLongValue("/sys/devices/platform/notle_pcb_sensor.0/temperature");
  }

  public static int getFrequencyScalingGovernor()
  {
    String str = readStringValue("/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor").trim();
    if (TextUtils.isEmpty(str))
      return -1;
    try
    {
      int i = ScalingGovernor.valueOf(str.toUpperCase()).getId();
      return i;
    }
    catch (NullPointerException localNullPointerException)
    {
      Log.e(TAG, "Failed to convert name to ScalingGovernor: " + str);
      return -1;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      label34: break label34;
    }
  }

  public static void getFrequencyStats(Map<Long, Long> paramMap)
  {
    if (!readLongToLongMapFile("/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state", paramMap))
    {
      Log.e(TAG, "Failed to read time spent at different cpu frequencies from file:/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state");
      paramMap.clear();
    }
    while (true)
    {
      return;
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localEntry.setValue(Long.valueOf(10L * ((Long)localEntry.getValue()).longValue()));
      }
    }
  }

  public static long getReportedBatteryStateOfChargePercent()
  {
    return readLongValue("/sys/class/power_supply/bq27520-0/capacity");
  }

  public static long getTotalBytesSent()
  {
    return TrafficStats.getTotalTxBytes();
  }

  // ERROR //
  private static boolean readLongToLongMapFile(String paramString, Map<Long, Long> paramMap)
  {
    // Byte code:
    //   0: invokestatic 184	com/google/glass/predicates/Assert:assertNotUiThread	()V
    //   3: new 186	java/io/File
    //   6: dup
    //   7: aload_0
    //   8: invokespecial 189	java/io/File:<init>	(Ljava/lang/String;)V
    //   11: astore_2
    //   12: aload_2
    //   13: invokevirtual 192	java/io/File:exists	()Z
    //   16: ifne +31 -> 47
    //   19: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   22: new 98	java/lang/StringBuilder
    //   25: dup
    //   26: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   29: ldc 194
    //   31: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: aload_0
    //   35: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   41: invokestatic 114	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   44: pop
    //   45: iconst_0
    //   46: ireturn
    //   47: aload_2
    //   48: invokevirtual 197	java/io/File:canRead	()Z
    //   51: ifne +31 -> 82
    //   54: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   57: new 98	java/lang/StringBuilder
    //   60: dup
    //   61: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   64: ldc 199
    //   66: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: aload_0
    //   70: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   76: invokestatic 114	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   79: pop
    //   80: iconst_0
    //   81: ireturn
    //   82: aconst_null
    //   83: astore_3
    //   84: new 201	java/io/BufferedReader
    //   87: dup
    //   88: new 203	java/io/FileReader
    //   91: dup
    //   92: aload_2
    //   93: invokespecial 206	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   96: invokespecial 209	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   99: astore 4
    //   101: aload 4
    //   103: invokevirtual 212	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   106: astore 20
    //   108: aload 20
    //   110: ifnull +287 -> 397
    //   113: aload 20
    //   115: invokestatic 84	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   118: ifeq +73 -> 191
    //   121: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   124: new 98	java/lang/StringBuilder
    //   127: dup
    //   128: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   131: ldc 214
    //   133: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: aload_0
    //   137: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: invokestatic 114	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   146: pop
    //   147: aload 4
    //   149: ifnull -104 -> 45
    //   152: aload 4
    //   154: invokevirtual 217	java/io/BufferedReader:close	()V
    //   157: iconst_0
    //   158: ireturn
    //   159: astore 27
    //   161: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   164: new 98	java/lang/StringBuilder
    //   167: dup
    //   168: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   171: ldc 219
    //   173: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: aload_0
    //   177: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   183: aload 27
    //   185: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   188: pop
    //   189: iconst_0
    //   190: ireturn
    //   191: aload 20
    //   193: ldc 224
    //   195: invokevirtual 228	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   198: astore 21
    //   200: aload 21
    //   202: arraylength
    //   203: iconst_2
    //   204: if_icmpeq +83 -> 287
    //   207: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   210: new 98	java/lang/StringBuilder
    //   213: dup
    //   214: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   217: ldc 230
    //   219: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   222: aload_0
    //   223: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: ldc 232
    //   228: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   231: aload 20
    //   233: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   239: invokestatic 114	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   242: pop
    //   243: aload 4
    //   245: ifnull -200 -> 45
    //   248: aload 4
    //   250: invokevirtual 217	java/io/BufferedReader:close	()V
    //   253: iconst_0
    //   254: ireturn
    //   255: astore 24
    //   257: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   260: new 98	java/lang/StringBuilder
    //   263: dup
    //   264: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   267: ldc 219
    //   269: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: aload_0
    //   273: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   276: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   279: aload 24
    //   281: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   284: pop
    //   285: iconst_0
    //   286: ireturn
    //   287: aload_1
    //   288: aload 21
    //   290: iconst_0
    //   291: aaload
    //   292: invokestatic 235	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   295: invokestatic 162	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   298: aload 21
    //   300: iconst_1
    //   301: aaload
    //   302: invokestatic 235	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   305: invokestatic 162	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   308: invokeinterface 239 3 0
    //   313: pop
    //   314: goto -213 -> 101
    //   317: astore 16
    //   319: aload 4
    //   321: astore_3
    //   322: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   325: new 98	java/lang/StringBuilder
    //   328: dup
    //   329: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   332: ldc 241
    //   334: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   337: aload_0
    //   338: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   341: ldc 243
    //   343: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   346: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   349: aload 16
    //   351: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   354: pop
    //   355: aload_3
    //   356: ifnull -311 -> 45
    //   359: aload_3
    //   360: invokevirtual 217	java/io/BufferedReader:close	()V
    //   363: iconst_0
    //   364: ireturn
    //   365: astore 18
    //   367: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   370: new 98	java/lang/StringBuilder
    //   373: dup
    //   374: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   377: ldc 219
    //   379: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   382: aload_0
    //   383: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   386: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   389: aload 18
    //   391: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   394: pop
    //   395: iconst_0
    //   396: ireturn
    //   397: aload 4
    //   399: ifnull +8 -> 407
    //   402: aload 4
    //   404: invokevirtual 217	java/io/BufferedReader:close	()V
    //   407: iconst_1
    //   408: ireturn
    //   409: astore 29
    //   411: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   414: new 98	java/lang/StringBuilder
    //   417: dup
    //   418: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   421: ldc 219
    //   423: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   426: aload_0
    //   427: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   430: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   433: aload 29
    //   435: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   438: pop
    //   439: goto -32 -> 407
    //   442: astore 5
    //   444: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   447: new 98	java/lang/StringBuilder
    //   450: dup
    //   451: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   454: ldc 245
    //   456: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   459: aload_0
    //   460: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   463: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   466: aload 5
    //   468: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   471: pop
    //   472: aload_3
    //   473: ifnull -428 -> 45
    //   476: aload_3
    //   477: invokevirtual 217	java/io/BufferedReader:close	()V
    //   480: iconst_0
    //   481: ireturn
    //   482: astore 10
    //   484: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   487: new 98	java/lang/StringBuilder
    //   490: dup
    //   491: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   494: ldc 219
    //   496: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   499: aload_0
    //   500: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   503: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   506: aload 10
    //   508: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   511: pop
    //   512: iconst_0
    //   513: ireturn
    //   514: astore 12
    //   516: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   519: new 98	java/lang/StringBuilder
    //   522: dup
    //   523: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   526: ldc 247
    //   528: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   531: aload_0
    //   532: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   535: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   538: aload 12
    //   540: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   543: pop
    //   544: aload_3
    //   545: ifnull -500 -> 45
    //   548: aload_3
    //   549: invokevirtual 217	java/io/BufferedReader:close	()V
    //   552: iconst_0
    //   553: ireturn
    //   554: astore 14
    //   556: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   559: new 98	java/lang/StringBuilder
    //   562: dup
    //   563: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   566: ldc 219
    //   568: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   571: aload_0
    //   572: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   575: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   578: aload 14
    //   580: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   583: pop
    //   584: iconst_0
    //   585: ireturn
    //   586: astore 6
    //   588: aload_3
    //   589: ifnull +7 -> 596
    //   592: aload_3
    //   593: invokevirtual 217	java/io/BufferedReader:close	()V
    //   596: aload 6
    //   598: athrow
    //   599: astore 7
    //   601: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   604: new 98	java/lang/StringBuilder
    //   607: dup
    //   608: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   611: ldc 219
    //   613: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   616: aload_0
    //   617: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   620: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   623: aload 7
    //   625: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   628: pop
    //   629: goto -33 -> 596
    //   632: astore 6
    //   634: aload 4
    //   636: astore_3
    //   637: goto -49 -> 588
    //   640: astore 12
    //   642: aload 4
    //   644: astore_3
    //   645: goto -129 -> 516
    //   648: astore 5
    //   650: aload 4
    //   652: astore_3
    //   653: goto -209 -> 444
    //   656: astore 16
    //   658: aconst_null
    //   659: astore_3
    //   660: goto -338 -> 322
    //
    // Exception table:
    //   from	to	target	type
    //   152	157	159	java/io/IOException
    //   248	253	255	java/io/IOException
    //   101	108	317	java/io/FileNotFoundException
    //   113	147	317	java/io/FileNotFoundException
    //   191	243	317	java/io/FileNotFoundException
    //   287	314	317	java/io/FileNotFoundException
    //   359	363	365	java/io/IOException
    //   402	407	409	java/io/IOException
    //   84	101	442	java/io/IOException
    //   476	480	482	java/io/IOException
    //   84	101	514	java/lang/NumberFormatException
    //   548	552	554	java/io/IOException
    //   84	101	586	finally
    //   322	355	586	finally
    //   444	472	586	finally
    //   516	544	586	finally
    //   592	596	599	java/io/IOException
    //   101	108	632	finally
    //   113	147	632	finally
    //   191	243	632	finally
    //   287	314	632	finally
    //   101	108	640	java/lang/NumberFormatException
    //   113	147	640	java/lang/NumberFormatException
    //   191	243	640	java/lang/NumberFormatException
    //   287	314	640	java/lang/NumberFormatException
    //   101	108	648	java/io/IOException
    //   113	147	648	java/io/IOException
    //   191	243	648	java/io/IOException
    //   287	314	648	java/io/IOException
    //   84	101	656	java/io/FileNotFoundException
  }

  private static long readLongValue(String paramString)
  {
    String str = readStringValue(paramString);
    if (TextUtils.isEmpty(str))
      return -1L;
    try
    {
      long l = Long.parseLong(str);
      return l;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      Log.e(TAG, "Error reading the value as long from file: " + paramString, localNumberFormatException);
    }
    return -1L;
  }

  private static String readStringValue(String paramString)
  {
    return readSystemFile(paramString);
  }

  // ERROR //
  private static String readSystemFile(String paramString)
  {
    // Byte code:
    //   0: invokestatic 184	com/google/glass/predicates/Assert:assertNotUiThread	()V
    //   3: new 186	java/io/File
    //   6: dup
    //   7: aload_0
    //   8: invokespecial 189	java/io/File:<init>	(Ljava/lang/String;)V
    //   11: astore_1
    //   12: aload_1
    //   13: invokevirtual 192	java/io/File:exists	()Z
    //   16: ifne +35 -> 51
    //   19: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   22: new 98	java/lang/StringBuilder
    //   25: dup
    //   26: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   29: ldc 194
    //   31: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: aload_0
    //   35: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   41: invokestatic 114	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   44: pop
    //   45: aconst_null
    //   46: astore 15
    //   48: aload 15
    //   50: areturn
    //   51: aload_1
    //   52: invokevirtual 197	java/io/File:canRead	()Z
    //   55: ifne +31 -> 86
    //   58: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   61: new 98	java/lang/StringBuilder
    //   64: dup
    //   65: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   68: ldc 199
    //   70: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: aload_0
    //   74: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   80: invokestatic 114	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   83: pop
    //   84: aconst_null
    //   85: areturn
    //   86: aconst_null
    //   87: astore_2
    //   88: new 201	java/io/BufferedReader
    //   91: dup
    //   92: new 203	java/io/FileReader
    //   95: dup
    //   96: aload_1
    //   97: invokespecial 206	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   100: invokespecial 209	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   103: astore_3
    //   104: aload_3
    //   105: invokevirtual 212	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   108: astore 15
    //   110: aload 15
    //   112: invokestatic 84	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   115: ifeq +72 -> 187
    //   118: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   121: new 98	java/lang/StringBuilder
    //   124: dup
    //   125: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   128: ldc 214
    //   130: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: aload_0
    //   134: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   140: invokestatic 114	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   143: pop
    //   144: aload_3
    //   145: ifnull +7 -> 152
    //   148: aload_3
    //   149: invokevirtual 217	java/io/BufferedReader:close	()V
    //   152: aconst_null
    //   153: areturn
    //   154: astore 19
    //   156: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   159: new 98	java/lang/StringBuilder
    //   162: dup
    //   163: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   166: ldc 219
    //   168: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: aload_0
    //   172: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   178: aload 19
    //   180: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   183: pop
    //   184: goto -32 -> 152
    //   187: aload_3
    //   188: ifnull -140 -> 48
    //   191: aload_3
    //   192: invokevirtual 217	java/io/BufferedReader:close	()V
    //   195: aload 15
    //   197: areturn
    //   198: astore 16
    //   200: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   203: new 98	java/lang/StringBuilder
    //   206: dup
    //   207: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   210: ldc 219
    //   212: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   215: aload_0
    //   216: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   219: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   222: aload 16
    //   224: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   227: pop
    //   228: aload 15
    //   230: areturn
    //   231: astore 4
    //   233: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   236: new 98	java/lang/StringBuilder
    //   239: dup
    //   240: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   243: ldc 241
    //   245: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   248: aload_0
    //   249: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   252: ldc 243
    //   254: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   257: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   260: aload 4
    //   262: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   265: pop
    //   266: aload_2
    //   267: ifnull +7 -> 274
    //   270: aload_2
    //   271: invokevirtual 217	java/io/BufferedReader:close	()V
    //   274: aconst_null
    //   275: areturn
    //   276: astore 9
    //   278: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   281: new 98	java/lang/StringBuilder
    //   284: dup
    //   285: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   288: ldc 219
    //   290: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   293: aload_0
    //   294: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   297: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   300: aload 9
    //   302: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   305: pop
    //   306: goto -32 -> 274
    //   309: astore 11
    //   311: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   314: new 98	java/lang/StringBuilder
    //   317: dup
    //   318: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   321: ldc 245
    //   323: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   326: aload_0
    //   327: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   330: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   333: aload 11
    //   335: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   338: pop
    //   339: aload_2
    //   340: ifnull -66 -> 274
    //   343: aload_2
    //   344: invokevirtual 217	java/io/BufferedReader:close	()V
    //   347: goto -73 -> 274
    //   350: astore 13
    //   352: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   355: new 98	java/lang/StringBuilder
    //   358: dup
    //   359: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   362: ldc 219
    //   364: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   367: aload_0
    //   368: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   371: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   374: aload 13
    //   376: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   379: pop
    //   380: goto -106 -> 274
    //   383: astore 5
    //   385: aload_2
    //   386: ifnull +7 -> 393
    //   389: aload_2
    //   390: invokevirtual 217	java/io/BufferedReader:close	()V
    //   393: aload 5
    //   395: athrow
    //   396: astore 6
    //   398: getstatic 48	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   401: new 98	java/lang/StringBuilder
    //   404: dup
    //   405: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   408: ldc 219
    //   410: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   413: aload_0
    //   414: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   417: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   420: aload 6
    //   422: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   425: pop
    //   426: goto -33 -> 393
    //   429: astore 5
    //   431: aload_3
    //   432: astore_2
    //   433: goto -48 -> 385
    //   436: astore 11
    //   438: aload_3
    //   439: astore_2
    //   440: goto -129 -> 311
    //   443: astore 4
    //   445: aload_3
    //   446: astore_2
    //   447: goto -214 -> 233
    //
    // Exception table:
    //   from	to	target	type
    //   148	152	154	java/io/IOException
    //   191	195	198	java/io/IOException
    //   88	104	231	java/io/FileNotFoundException
    //   270	274	276	java/io/IOException
    //   88	104	309	java/io/IOException
    //   343	347	350	java/io/IOException
    //   88	104	383	finally
    //   233	266	383	finally
    //   311	339	383	finally
    //   389	393	396	java/io/IOException
    //   104	144	429	finally
    //   104	144	436	java/io/IOException
    //   104	144	443	java/io/FileNotFoundException
  }

  static enum ScalingGovernor
  {
    private final int id;

    static
    {
      CONSERVATIVE = new ScalingGovernor("CONSERVATIVE", 3, 3);
      PERFORMANCE = new ScalingGovernor("PERFORMANCE", 4, 4);
      HOTPLUG = new ScalingGovernor("HOTPLUG", 5, 5);
      USERSPACE = new ScalingGovernor("USERSPACE", 6, 6);
      ScalingGovernor[] arrayOfScalingGovernor = new ScalingGovernor[7];
      arrayOfScalingGovernor[0] = INTERACTIVE;
      arrayOfScalingGovernor[1] = ONDEMAND;
      arrayOfScalingGovernor[2] = POWERSAVE;
      arrayOfScalingGovernor[3] = CONSERVATIVE;
      arrayOfScalingGovernor[4] = PERFORMANCE;
      arrayOfScalingGovernor[5] = HOTPLUG;
      arrayOfScalingGovernor[6] = USERSPACE;
    }

    private ScalingGovernor(int paramInt)
    {
      this.id = paramInt;
    }

    public int getId()
    {
      return this.id;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.PerformanceUtil
 * JD-Core Version:    0.6.2
 */