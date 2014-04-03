package com.google.glass.util;

import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.io.BufferedReader;
import java.io.IOException;

public class CommandOutputCollector
{
  private static final String[] SYSTEM_LOG_COMMAND = { "logcat", "-d", "-v", "threadtime" };
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  // ERROR //
  public static String[] collectOutput(String[] paramArrayOfString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aconst_null
    //   3: astore_2
    //   4: invokestatic 43	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   7: aload_0
    //   8: invokevirtual 47	java/lang/Runtime:exec	([Ljava/lang/String;)Ljava/lang/Process;
    //   11: astore 9
    //   13: new 49	java/io/BufferedReader
    //   16: dup
    //   17: new 51	java/io/InputStreamReader
    //   20: dup
    //   21: aload 9
    //   23: invokevirtual 57	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   26: invokespecial 60	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   29: invokespecial 63	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   32: astore 10
    //   34: new 49	java/io/BufferedReader
    //   37: dup
    //   38: new 51	java/io/InputStreamReader
    //   41: dup
    //   42: aload 9
    //   44: invokevirtual 66	java/lang/Process:getErrorStream	()Ljava/io/InputStream;
    //   47: invokespecial 60	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   50: invokespecial 63	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   53: astore 11
    //   55: iconst_2
    //   56: anewarray 20	java/lang/String
    //   59: astore 12
    //   61: aload 12
    //   63: iconst_0
    //   64: aload 10
    //   66: invokestatic 70	com/google/glass/util/CommandOutputCollector:readStream	(Ljava/io/BufferedReader;)Ljava/lang/StringBuilder;
    //   69: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   72: aastore
    //   73: aload 12
    //   75: iconst_1
    //   76: aload 11
    //   78: invokestatic 70	com/google/glass/util/CommandOutputCollector:readStream	(Ljava/io/BufferedReader;)Ljava/lang/StringBuilder;
    //   81: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: aastore
    //   85: aload 10
    //   87: ifnull +8 -> 95
    //   90: aload 10
    //   92: invokevirtual 79	java/io/BufferedReader:close	()V
    //   95: aload 11
    //   97: ifnull +8 -> 105
    //   100: aload 11
    //   102: invokevirtual 79	java/io/BufferedReader:close	()V
    //   105: aload 12
    //   107: areturn
    //   108: astore 14
    //   110: getstatic 18	com/google/glass/util/CommandOutputCollector:logger	Lcom/google/glass/logging/FormattingLogger;
    //   113: aload 14
    //   115: ldc 81
    //   117: iconst_0
    //   118: anewarray 4	java/lang/Object
    //   121: invokeinterface 87 4 0
    //   126: goto -31 -> 95
    //   129: astore 13
    //   131: getstatic 18	com/google/glass/util/CommandOutputCollector:logger	Lcom/google/glass/logging/FormattingLogger;
    //   134: aload 13
    //   136: ldc 89
    //   138: iconst_0
    //   139: anewarray 4	java/lang/Object
    //   142: invokeinterface 87 4 0
    //   147: goto -42 -> 105
    //   150: astore 6
    //   152: getstatic 18	com/google/glass/util/CommandOutputCollector:logger	Lcom/google/glass/logging/FormattingLogger;
    //   155: aload 6
    //   157: ldc 91
    //   159: iconst_0
    //   160: anewarray 4	java/lang/Object
    //   163: invokeinterface 87 4 0
    //   168: aload_1
    //   169: ifnull +7 -> 176
    //   172: aload_1
    //   173: invokevirtual 79	java/io/BufferedReader:close	()V
    //   176: aload_2
    //   177: ifnull +7 -> 184
    //   180: aload_2
    //   181: invokevirtual 79	java/io/BufferedReader:close	()V
    //   184: aconst_null
    //   185: areturn
    //   186: astore 8
    //   188: getstatic 18	com/google/glass/util/CommandOutputCollector:logger	Lcom/google/glass/logging/FormattingLogger;
    //   191: aload 8
    //   193: ldc 81
    //   195: iconst_0
    //   196: anewarray 4	java/lang/Object
    //   199: invokeinterface 87 4 0
    //   204: goto -28 -> 176
    //   207: astore 7
    //   209: getstatic 18	com/google/glass/util/CommandOutputCollector:logger	Lcom/google/glass/logging/FormattingLogger;
    //   212: aload 7
    //   214: ldc 89
    //   216: iconst_0
    //   217: anewarray 4	java/lang/Object
    //   220: invokeinterface 87 4 0
    //   225: goto -41 -> 184
    //   228: astore_3
    //   229: aload_1
    //   230: ifnull +7 -> 237
    //   233: aload_1
    //   234: invokevirtual 79	java/io/BufferedReader:close	()V
    //   237: aload_2
    //   238: ifnull +7 -> 245
    //   241: aload_2
    //   242: invokevirtual 79	java/io/BufferedReader:close	()V
    //   245: aload_3
    //   246: athrow
    //   247: astore 5
    //   249: getstatic 18	com/google/glass/util/CommandOutputCollector:logger	Lcom/google/glass/logging/FormattingLogger;
    //   252: aload 5
    //   254: ldc 81
    //   256: iconst_0
    //   257: anewarray 4	java/lang/Object
    //   260: invokeinterface 87 4 0
    //   265: goto -28 -> 237
    //   268: astore 4
    //   270: getstatic 18	com/google/glass/util/CommandOutputCollector:logger	Lcom/google/glass/logging/FormattingLogger;
    //   273: aload 4
    //   275: ldc 89
    //   277: iconst_0
    //   278: anewarray 4	java/lang/Object
    //   281: invokeinterface 87 4 0
    //   286: goto -41 -> 245
    //   289: astore_3
    //   290: aload 10
    //   292: astore_1
    //   293: aconst_null
    //   294: astore_2
    //   295: goto -66 -> 229
    //   298: astore_3
    //   299: aload 11
    //   301: astore_2
    //   302: aload 10
    //   304: astore_1
    //   305: goto -76 -> 229
    //   308: astore 6
    //   310: aload 10
    //   312: astore_1
    //   313: aconst_null
    //   314: astore_2
    //   315: goto -163 -> 152
    //   318: astore 6
    //   320: aload 11
    //   322: astore_2
    //   323: aload 10
    //   325: astore_1
    //   326: goto -174 -> 152
    //
    // Exception table:
    //   from	to	target	type
    //   90	95	108	java/io/IOException
    //   100	105	129	java/io/IOException
    //   4	34	150	java/io/IOException
    //   172	176	186	java/io/IOException
    //   180	184	207	java/io/IOException
    //   4	34	228	finally
    //   152	168	228	finally
    //   233	237	247	java/io/IOException
    //   241	245	268	java/io/IOException
    //   34	55	289	finally
    //   55	85	298	finally
    //   34	55	308	java/io/IOException
    //   55	85	318	java/io/IOException
  }

  public static String getLogcat()
  {
    String[] arrayOfString = collectOutput(SYSTEM_LOG_COMMAND);
    if ((arrayOfString != null) && (arrayOfString.length > 0))
      return arrayOfString[0];
    return "";
  }

  private static StringBuilder readStream(BufferedReader paramBufferedReader)
    throws IOException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    while (true)
    {
      String str = paramBufferedReader.readLine();
      if (str == null)
        break;
      localStringBuilder.append(str);
      localStringBuilder.append(System.getProperty("line.separator"));
    }
    return localStringBuilder;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.CommandOutputCollector
 * JD-Core Version:    0.6.2
 */