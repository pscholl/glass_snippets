package com.google.glass.util;

import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.concurrent.atomic.AtomicLong;

public class FileSaver
{
  private static final int COPY_SAVER_BUFFER_SIZE = 1048576;
  private static final long MOCK_MODIFIED_TIME_STEP_MS = 1000L;
  private static final String TAG = FileSaver.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private static FileSaver sharedInstance;
  private final File dir;
  private AtomicLong mockModifiedTimeForTest;

  public FileSaver(String paramString)
  {
    this.dir = new File(paramString);
    if (!this.dir.exists())
    {
      FormattingLogger localFormattingLogger1 = logger;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = this.dir;
      localFormattingLogger1.w("Directory told to manage, %s, does not exist -- making it!", arrayOfObject1);
      if (!this.dir.mkdirs())
      {
        FormattingLogger localFormattingLogger2 = logger;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = this.dir;
        localFormattingLogger2.e("Error creating directory: %s", arrayOfObject2);
      }
    }
  }

  // ERROR //
  private static long copyWithChannels(File paramFile, java.io.FileOutputStream paramFileOutputStream)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 79	java/io/FileInputStream
    //   5: dup
    //   6: aload_0
    //   7: invokespecial 82	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   10: astore_3
    //   11: aload_3
    //   12: invokevirtual 86	java/io/FileInputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   15: astore 5
    //   17: aload_1
    //   18: invokevirtual 89	java/io/FileOutputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   21: aload 5
    //   23: lconst_0
    //   24: aload 5
    //   26: invokevirtual 95	java/nio/channels/FileChannel:size	()J
    //   29: invokevirtual 99	java/nio/channels/FileChannel:transferFrom	(Ljava/nio/channels/ReadableByteChannel;JJ)J
    //   32: lstore 6
    //   34: aload_3
    //   35: ifnull +7 -> 42
    //   38: aload_3
    //   39: invokevirtual 102	java/io/FileInputStream:close	()V
    //   42: lload 6
    //   44: lreturn
    //   45: astore 4
    //   47: aload_2
    //   48: ifnull +7 -> 55
    //   51: aload_2
    //   52: invokevirtual 102	java/io/FileInputStream:close	()V
    //   55: aload 4
    //   57: athrow
    //   58: astore 4
    //   60: aload_3
    //   61: astore_2
    //   62: goto -15 -> 47
    //
    // Exception table:
    //   from	to	target	type
    //   2	11	45	finally
    //   11	34	58	finally
  }

  public static FileSaver getSharedInstance()
  {
    return sharedInstance;
  }

  public static Saver newSaver(File paramFile)
  {
    return new Saver()
    {
      public long getEstimatedSizeBytes()
      {
        return this.val$fileToSave.length();
      }

      // ERROR //
      public void save(OutputStream paramAnonymousOutputStream)
        throws IOException
      {
        // Byte code:
        //   0: lconst_0
        //   1: lstore_2
        //   2: aload_1
        //   3: instanceof 33
        //   6: ifeq +62 -> 68
        //   9: aload_0
        //   10: getfield 17	com/google/glass/util/FileSaver$2:val$fileToSave	Ljava/io/File;
        //   13: aload_1
        //   14: checkcast 33	java/io/FileOutputStream
        //   17: invokestatic 37	com/google/glass/util/FileSaver:access$000	(Ljava/io/File;Ljava/io/FileOutputStream;)J
        //   20: lstore_2
        //   21: new 39	java/lang/StringBuilder
        //   24: dup
        //   25: invokespecial 40	java/lang/StringBuilder:<init>	()V
        //   28: invokestatic 44	com/google/glass/util/FileSaver:access$100	()Ljava/lang/String;
        //   31: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   34: ldc 50
        //   36: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   39: invokevirtual 53	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   42: astore 9
        //   44: iconst_1
        //   45: anewarray 4	java/lang/Object
        //   48: astore 10
        //   50: aload 10
        //   52: iconst_0
        //   53: lload_2
        //   54: invokestatic 59	java/lang/Long:valueOf	(J)Ljava/lang/Long;
        //   57: aastore
        //   58: aload 9
        //   60: ldc 61
        //   62: aload 10
        //   64: invokestatic 67	com/google/glass/logging/Log:v	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
        //   67: return
        //   68: aconst_null
        //   69: astore 4
        //   71: new 69	java/io/FileInputStream
        //   74: dup
        //   75: aload_0
        //   76: getfield 17	com/google/glass/util/FileSaver$2:val$fileToSave	Ljava/io/File;
        //   79: invokespecial 71	java/io/FileInputStream:<init>	(Ljava/io/File;)V
        //   82: astore 5
        //   84: ldc 72
        //   86: newarray byte
        //   88: astore 7
        //   90: aload 5
        //   92: aload 7
        //   94: iconst_0
        //   95: ldc 72
        //   97: invokevirtual 78	java/io/InputStream:read	([BII)I
        //   100: istore 8
        //   102: iload 8
        //   104: iconst_m1
        //   105: if_icmpeq +21 -> 126
        //   108: aload_1
        //   109: aload 7
        //   111: iconst_0
        //   112: iload 8
        //   114: invokevirtual 84	java/io/OutputStream:write	([BII)V
        //   117: lload_2
        //   118: iload 8
        //   120: i2l
        //   121: ladd
        //   122: lstore_2
        //   123: goto -33 -> 90
        //   126: aload 5
        //   128: ifnull -107 -> 21
        //   131: aload 5
        //   133: invokevirtual 87	java/io/InputStream:close	()V
        //   136: goto -115 -> 21
        //   139: astore 6
        //   141: aload 4
        //   143: ifnull +8 -> 151
        //   146: aload 4
        //   148: invokevirtual 87	java/io/InputStream:close	()V
        //   151: aload 6
        //   153: athrow
        //   154: astore 6
        //   156: aload 5
        //   158: astore 4
        //   160: goto -19 -> 141
        //
        // Exception table:
        //   from	to	target	type
        //   71	84	139	finally
        //   84	90	154	finally
        //   90	102	154	finally
        //   108	117	154	finally
      }
    };
  }

  public static Saver newSaver(byte[] paramArrayOfByte)
  {
    return new Saver()
    {
      public long getEstimatedSizeBytes()
      {
        return this.val$content.length;
      }

      public void save(OutputStream paramAnonymousOutputStream)
        throws IOException
      {
        paramAnonymousOutputStream.write(this.val$content);
      }
    };
  }

  public static void setSharedInstance(FileSaver paramFileSaver)
  {
    sharedInstance = paramFileSaver;
  }

  public void disableMockModifiedTimeForTest()
  {
    this.mockModifiedTimeForTest = null;
  }

  public void enableMockModifiedTimeForTest()
  {
    this.mockModifiedTimeForTest = new AtomicLong(0L);
  }

  public long getModifiedTime()
  {
    long l = System.currentTimeMillis();
    if (this.mockModifiedTimeForTest != null)
      l = this.mockModifiedTimeForTest.getAndAdd(1000L);
    return l;
  }

  public String getPath(String paramString)
  {
    return this.dir.getAbsolutePath() + File.separator + paramString;
  }

  // ERROR //
  public boolean write(Saver paramSaver, String paramString)
  {
    // Byte code:
    //   0: new 45	java/io/File
    //   3: dup
    //   4: aload_2
    //   5: invokespecial 47	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: astore_3
    //   9: aconst_null
    //   10: astore 4
    //   12: aload_0
    //   13: invokevirtual 160	com/google/glass/util/FileSaver:getModifiedTime	()J
    //   16: lstore 5
    //   18: new 88	java/io/FileOutputStream
    //   21: dup
    //   22: aload_3
    //   23: invokespecial 161	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   26: astore 7
    //   28: aload_1
    //   29: aload 7
    //   31: invokeinterface 167 2 0
    //   36: aload_3
    //   37: lload 5
    //   39: invokevirtual 171	java/io/File:setLastModified	(J)Z
    //   42: pop
    //   43: getstatic 39	com/google/glass/util/FileSaver:logger	Lcom/google/glass/logging/FormattingLogger;
    //   46: astore 15
    //   48: iconst_2
    //   49: anewarray 4	java/lang/Object
    //   52: astore 16
    //   54: aload 16
    //   56: iconst_0
    //   57: aload_3
    //   58: invokevirtual 146	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   61: aastore
    //   62: aload 16
    //   64: iconst_1
    //   65: lload 5
    //   67: invokestatic 177	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   70: aastore
    //   71: aload 15
    //   73: ldc 179
    //   75: aload 16
    //   77: invokeinterface 182 3 0
    //   82: iconst_1
    //   83: istore 11
    //   85: aload 7
    //   87: ifnull +8 -> 95
    //   90: aload 7
    //   92: invokevirtual 183	java/io/FileOutputStream:close	()V
    //   95: iload 11
    //   97: ifne +8 -> 105
    //   100: aload_3
    //   101: invokevirtual 186	java/io/File:delete	()Z
    //   104: pop
    //   105: iload 11
    //   107: ireturn
    //   108: astore 17
    //   110: getstatic 39	com/google/glass/util/FileSaver:logger	Lcom/google/glass/logging/FormattingLogger;
    //   113: aload 17
    //   115: ldc 188
    //   117: iconst_0
    //   118: anewarray 4	java/lang/Object
    //   121: invokeinterface 191 4 0
    //   126: iconst_0
    //   127: istore 11
    //   129: goto -34 -> 95
    //   132: astore 8
    //   134: getstatic 39	com/google/glass/util/FileSaver:logger	Lcom/google/glass/logging/FormattingLogger;
    //   137: aload 8
    //   139: ldc 193
    //   141: iconst_0
    //   142: anewarray 4	java/lang/Object
    //   145: invokeinterface 191 4 0
    //   150: iconst_0
    //   151: istore 11
    //   153: aload 4
    //   155: ifnull -60 -> 95
    //   158: aload 4
    //   160: invokevirtual 183	java/io/FileOutputStream:close	()V
    //   163: iconst_0
    //   164: istore 11
    //   166: goto -71 -> 95
    //   169: astore 12
    //   171: getstatic 39	com/google/glass/util/FileSaver:logger	Lcom/google/glass/logging/FormattingLogger;
    //   174: aload 12
    //   176: ldc 188
    //   178: iconst_0
    //   179: anewarray 4	java/lang/Object
    //   182: invokeinterface 191 4 0
    //   187: iconst_0
    //   188: istore 11
    //   190: goto -95 -> 95
    //   193: astore 9
    //   195: aload 4
    //   197: ifnull +8 -> 205
    //   200: aload 4
    //   202: invokevirtual 183	java/io/FileOutputStream:close	()V
    //   205: aload 9
    //   207: athrow
    //   208: astore 10
    //   210: getstatic 39	com/google/glass/util/FileSaver:logger	Lcom/google/glass/logging/FormattingLogger;
    //   213: aload 10
    //   215: ldc 188
    //   217: iconst_0
    //   218: anewarray 4	java/lang/Object
    //   221: invokeinterface 191 4 0
    //   226: goto -21 -> 205
    //   229: astore 9
    //   231: aload 7
    //   233: astore 4
    //   235: goto -40 -> 195
    //   238: astore 8
    //   240: aload 7
    //   242: astore 4
    //   244: goto -110 -> 134
    //
    // Exception table:
    //   from	to	target	type
    //   90	95	108	java/io/IOException
    //   18	28	132	java/io/IOException
    //   158	163	169	java/io/IOException
    //   18	28	193	finally
    //   134	150	193	finally
    //   200	205	208	java/io/IOException
    //   28	82	229	finally
    //   28	82	238	java/io/IOException
  }

  public static abstract interface Saver
  {
    public abstract long getEstimatedSizeBytes();

    public abstract void save(OutputStream paramOutputStream)
      throws IOException;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.FileSaver
 * JD-Core Version:    0.6.2
 */