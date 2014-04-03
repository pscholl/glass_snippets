package com.google.glass.util;

import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class FileHelper
{
  private static final int READ_FILE_CHUNK_SIZE = 8192;
  private static final ThreadLocal<SimpleDateFormat> TIMESTAMP_FORMAT = new ThreadLocal()
  {
    protected SimpleDateFormat initialValue()
    {
      return new SimpleDateFormat("yyyyMMdd_HHmmss_SSS");
    }
  };
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  // ERROR //
  public static void copyResourcesToFiles(android.content.Context paramContext, String paramString, java.util.Map<java.lang.Integer, String> paramMap)
  {
    // Byte code:
    //   0: new 36	java/io/File
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 39	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: astore_3
    //   9: aload_3
    //   10: invokevirtual 43	java/io/File:exists	()Z
    //   13: ifne +28 -> 41
    //   16: aload_3
    //   17: invokevirtual 46	java/io/File:mkdir	()Z
    //   20: ifne +21 -> 41
    //   23: getstatic 22	com/google/glass/util/FileHelper:logger	Lcom/google/glass/logging/FormattingLogger;
    //   26: ldc 48
    //   28: iconst_1
    //   29: anewarray 4	java/lang/Object
    //   32: dup
    //   33: iconst_0
    //   34: aload_1
    //   35: aastore
    //   36: invokeinterface 54 3 0
    //   41: sipush 1024
    //   44: newarray byte
    //   46: astore 4
    //   48: aload_2
    //   49: invokeinterface 60 1 0
    //   54: invokeinterface 66 1 0
    //   59: astore 5
    //   61: aload 5
    //   63: invokeinterface 71 1 0
    //   68: ifeq +235 -> 303
    //   71: aload 5
    //   73: invokeinterface 75 1 0
    //   78: checkcast 77	java/util/Map$Entry
    //   81: astore 6
    //   83: new 79	java/lang/StringBuilder
    //   86: dup
    //   87: invokespecial 80	java/lang/StringBuilder:<init>	()V
    //   90: aload_1
    //   91: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: aload 6
    //   96: invokeinterface 87 1 0
    //   101: checkcast 89	java/lang/String
    //   104: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   110: astore 7
    //   112: aload 6
    //   114: invokeinterface 96 1 0
    //   119: checkcast 98	java/lang/Integer
    //   122: invokevirtual 102	java/lang/Integer:intValue	()I
    //   125: istore 8
    //   127: aconst_null
    //   128: astore 9
    //   130: aconst_null
    //   131: astore 10
    //   133: new 104	java/io/BufferedInputStream
    //   136: dup
    //   137: aload_0
    //   138: invokevirtual 110	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   141: iload 8
    //   143: invokevirtual 116	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   146: invokespecial 119	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   149: astore 11
    //   151: new 121	java/io/FileOutputStream
    //   154: dup
    //   155: aload 7
    //   157: invokespecial 122	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   160: astore 12
    //   162: aload 11
    //   164: aload 4
    //   166: invokevirtual 126	java/io/BufferedInputStream:read	([B)I
    //   169: istore 19
    //   171: iload 19
    //   173: iflt +9 -> 182
    //   176: iload 19
    //   178: iconst_m1
    //   179: if_icmpne +47 -> 226
    //   182: aload 11
    //   184: ifnull +8 -> 192
    //   187: aload 11
    //   189: invokevirtual 129	java/io/BufferedInputStream:close	()V
    //   192: aload 12
    //   194: ifnull -133 -> 61
    //   197: aload 12
    //   199: invokevirtual 130	java/io/FileOutputStream:close	()V
    //   202: goto -141 -> 61
    //   205: astore 20
    //   207: getstatic 22	com/google/glass/util/FileHelper:logger	Lcom/google/glass/logging/FormattingLogger;
    //   210: aload 20
    //   212: ldc 132
    //   214: iconst_0
    //   215: anewarray 4	java/lang/Object
    //   218: invokeinterface 136 4 0
    //   223: goto -162 -> 61
    //   226: aload 12
    //   228: aload 4
    //   230: iconst_0
    //   231: iload 19
    //   233: invokevirtual 140	java/io/FileOutputStream:write	([BII)V
    //   236: goto -74 -> 162
    //   239: astore 16
    //   241: aload 12
    //   243: astore 10
    //   245: aload 11
    //   247: astore 9
    //   249: getstatic 22	com/google/glass/util/FileHelper:logger	Lcom/google/glass/logging/FormattingLogger;
    //   252: aload 16
    //   254: new 79	java/lang/StringBuilder
    //   257: dup
    //   258: invokespecial 80	java/lang/StringBuilder:<init>	()V
    //   261: ldc 142
    //   263: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   266: aload 7
    //   268: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   271: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   274: iconst_0
    //   275: anewarray 4	java/lang/Object
    //   278: invokeinterface 144 4 0
    //   283: aload 9
    //   285: ifnull +8 -> 293
    //   288: aload 9
    //   290: invokevirtual 129	java/io/BufferedInputStream:close	()V
    //   293: aload 10
    //   295: ifnull +8 -> 303
    //   298: aload 10
    //   300: invokevirtual 130	java/io/FileOutputStream:close	()V
    //   303: return
    //   304: astore 21
    //   306: getstatic 22	com/google/glass/util/FileHelper:logger	Lcom/google/glass/logging/FormattingLogger;
    //   309: aload 21
    //   311: ldc 146
    //   313: iconst_0
    //   314: anewarray 4	java/lang/Object
    //   317: invokeinterface 136 4 0
    //   322: goto -130 -> 192
    //   325: astore 18
    //   327: getstatic 22	com/google/glass/util/FileHelper:logger	Lcom/google/glass/logging/FormattingLogger;
    //   330: aload 18
    //   332: ldc 146
    //   334: iconst_0
    //   335: anewarray 4	java/lang/Object
    //   338: invokeinterface 136 4 0
    //   343: goto -50 -> 293
    //   346: astore 17
    //   348: getstatic 22	com/google/glass/util/FileHelper:logger	Lcom/google/glass/logging/FormattingLogger;
    //   351: aload 17
    //   353: ldc 132
    //   355: iconst_0
    //   356: anewarray 4	java/lang/Object
    //   359: invokeinterface 136 4 0
    //   364: return
    //   365: astore 13
    //   367: aload 9
    //   369: ifnull +8 -> 377
    //   372: aload 9
    //   374: invokevirtual 129	java/io/BufferedInputStream:close	()V
    //   377: aload 10
    //   379: ifnull +8 -> 387
    //   382: aload 10
    //   384: invokevirtual 130	java/io/FileOutputStream:close	()V
    //   387: aload 13
    //   389: athrow
    //   390: astore 15
    //   392: getstatic 22	com/google/glass/util/FileHelper:logger	Lcom/google/glass/logging/FormattingLogger;
    //   395: aload 15
    //   397: ldc 146
    //   399: iconst_0
    //   400: anewarray 4	java/lang/Object
    //   403: invokeinterface 136 4 0
    //   408: goto -31 -> 377
    //   411: astore 14
    //   413: getstatic 22	com/google/glass/util/FileHelper:logger	Lcom/google/glass/logging/FormattingLogger;
    //   416: aload 14
    //   418: ldc 132
    //   420: iconst_0
    //   421: anewarray 4	java/lang/Object
    //   424: invokeinterface 136 4 0
    //   429: goto -42 -> 387
    //   432: astore 13
    //   434: aload 11
    //   436: astore 9
    //   438: aconst_null
    //   439: astore 10
    //   441: goto -74 -> 367
    //   444: astore 13
    //   446: aload 12
    //   448: astore 10
    //   450: aload 11
    //   452: astore 9
    //   454: goto -87 -> 367
    //   457: astore 16
    //   459: aconst_null
    //   460: astore 10
    //   462: aconst_null
    //   463: astore 9
    //   465: goto -216 -> 249
    //   468: astore 16
    //   470: aload 11
    //   472: astore 9
    //   474: aconst_null
    //   475: astore 10
    //   477: goto -228 -> 249
    //
    // Exception table:
    //   from	to	target	type
    //   197	202	205	java/io/IOException
    //   162	171	239	java/io/IOException
    //   226	236	239	java/io/IOException
    //   187	192	304	java/io/IOException
    //   288	293	325	java/io/IOException
    //   298	303	346	java/io/IOException
    //   133	151	365	finally
    //   249	283	365	finally
    //   372	377	390	java/io/IOException
    //   382	387	411	java/io/IOException
    //   151	162	432	finally
    //   162	171	444	finally
    //   226	236	444	finally
    //   133	151	457	java/io/IOException
    //   151	162	468	java/io/IOException
  }

  public static String formatTimestamp(long paramLong)
  {
    return formatTimestamp(new Date(paramLong));
  }

  public static String formatTimestamp(Date paramDate)
  {
    return ((SimpleDateFormat)TIMESTAMP_FORMAT.get()).format(paramDate);
  }

  public static int read(File paramFile, byte[] paramArrayOfByte, Condition paramCondition)
    throws IOException
  {
    Assert.assertNotUiThread();
    FileInputStream localFileInputStream = new FileInputStream(paramFile);
    int i = 0;
    try
    {
      int j = (int)paramFile.length();
      do
      {
        int k = localFileInputStream.read(paramArrayOfByte, i, Math.min(8192, j - i));
        if (k < 0)
          break;
        i += k;
        if (paramCondition != null)
        {
          boolean bool = paramCondition.get();
          if (bool)
            try
            {
              localFileInputStream.close();
              return 0;
            }
            catch (IOException localIOException3)
            {
              logger.w(localIOException3, "Error closing file.", new Object[0]);
              return 0;
            }
        }
      }
      while (i != j);
      try
      {
        localFileInputStream.close();
        return i;
      }
      catch (IOException localIOException2)
      {
        while (true)
          logger.w(localIOException2, "Error closing file.", new Object[0]);
      }
    }
    finally
    {
    }
    try
    {
      localFileInputStream.close();
      throw localObject;
    }
    catch (IOException localIOException1)
    {
      while (true)
        logger.w(localIOException1, "Error closing file.", new Object[0]);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.FileHelper
 * JD-Core Version:    0.6.2
 */