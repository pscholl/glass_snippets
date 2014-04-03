package com.google.glass.companion;

import android.content.Context;
import android.text.TextUtils;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.io.Serializable;

public abstract class CompanionInputBoxResponseHandler
  implements Serializable
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  // ERROR //
  @com.google.common.annotations.VisibleForTesting
  static <T extends CompanionInputBoxResponseHandler> T fromBytes(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: new 28	java/io/ByteArrayInputStream
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 31	java/io/ByteArrayInputStream:<init>	([B)V
    //   8: astore_1
    //   9: aconst_null
    //   10: astore_2
    //   11: new 33	java/io/ObjectInputStream
    //   14: dup
    //   15: aload_1
    //   16: invokespecial 36	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   19: astore_3
    //   20: aload_3
    //   21: invokevirtual 40	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   24: checkcast 2	com/google/glass/companion/CompanionInputBoxResponseHandler
    //   27: astore 6
    //   29: aload_1
    //   30: ldc 2
    //   32: invokevirtual 46	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   35: ldc 48
    //   37: invokestatic 54	com/google/glass/util/Util:close	(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V
    //   40: aload_3
    //   41: ldc 2
    //   43: invokevirtual 46	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   46: ldc 48
    //   48: invokestatic 54	com/google/glass/util/Util:close	(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V
    //   51: aload 6
    //   53: areturn
    //   54: astore 4
    //   56: getstatic 18	com/google/glass/companion/CompanionInputBoxResponseHandler:logger	Lcom/google/glass/logging/FormattingLogger;
    //   59: aload 4
    //   61: ldc 56
    //   63: iconst_0
    //   64: anewarray 4	java/lang/Object
    //   67: invokeinterface 62 4 0
    //   72: aload_1
    //   73: ldc 2
    //   75: invokevirtual 46	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   78: ldc 48
    //   80: invokestatic 54	com/google/glass/util/Util:close	(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V
    //   83: aload_2
    //   84: ldc 2
    //   86: invokevirtual 46	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   89: ldc 48
    //   91: invokestatic 54	com/google/glass/util/Util:close	(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V
    //   94: aconst_null
    //   95: areturn
    //   96: astore 5
    //   98: aload_1
    //   99: ldc 2
    //   101: invokevirtual 46	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   104: ldc 48
    //   106: invokestatic 54	com/google/glass/util/Util:close	(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V
    //   109: aload_2
    //   110: ldc 2
    //   112: invokevirtual 46	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   115: ldc 48
    //   117: invokestatic 54	com/google/glass/util/Util:close	(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V
    //   120: aload 5
    //   122: athrow
    //   123: astore 5
    //   125: aload_3
    //   126: astore_2
    //   127: goto -29 -> 98
    //   130: astore 4
    //   132: aload_3
    //   133: astore_2
    //   134: goto -78 -> 56
    //
    // Exception table:
    //   from	to	target	type
    //   11	20	54	java/lang/Exception
    //   11	20	96	finally
    //   56	72	96	finally
    //   20	29	123	finally
    //   20	29	130	java/lang/Exception
  }

  public static <T extends CompanionInputBoxResponseHandler> T handleResponse(Context paramContext, Proto.InputBoxResponse paramInputBoxResponse)
  {
    CompanionInputBoxResponseHandler localCompanionInputBoxResponseHandler = fromBytes(paramInputBoxResponse.handlerObject);
    if (localCompanionInputBoxResponseHandler != null)
    {
      if (!TextUtils.isEmpty(paramInputBoxResponse.response))
      {
        localCompanionInputBoxResponseHandler.handleTextTyped(paramContext, paramInputBoxResponse.response);
        return localCompanionInputBoxResponseHandler;
      }
      localCompanionInputBoxResponseHandler.handleCancelled(paramContext);
      return localCompanionInputBoxResponseHandler;
    }
    logger.w("Cannot get a handler from the response", new Object[0]);
    return localCompanionInputBoxResponseHandler;
  }

  protected abstract void handleCancelled(Context paramContext);

  protected abstract void handleTextTyped(Context paramContext, String paramString);

  // ERROR //
  public byte[] toBytes()
  {
    // Byte code:
    //   0: new 102	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 103	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_1
    //   8: aconst_null
    //   9: astore_2
    //   10: new 105	java/io/ObjectOutputStream
    //   13: dup
    //   14: aload_1
    //   15: invokespecial 108	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   18: astore_3
    //   19: aload_3
    //   20: aload_0
    //   21: invokevirtual 112	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   24: aload_1
    //   25: invokevirtual 115	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   28: astore 6
    //   30: aload_3
    //   31: aload_0
    //   32: invokevirtual 119	java/lang/Object:getClass	()Ljava/lang/Class;
    //   35: invokevirtual 46	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   38: ldc 48
    //   40: invokestatic 54	com/google/glass/util/Util:close	(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V
    //   43: aload_1
    //   44: aload_0
    //   45: invokevirtual 119	java/lang/Object:getClass	()Ljava/lang/Class;
    //   48: invokevirtual 46	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   51: ldc 48
    //   53: invokestatic 54	com/google/glass/util/Util:close	(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V
    //   56: aload 6
    //   58: areturn
    //   59: astore 4
    //   61: getstatic 18	com/google/glass/companion/CompanionInputBoxResponseHandler:logger	Lcom/google/glass/logging/FormattingLogger;
    //   64: aload 4
    //   66: ldc 48
    //   68: iconst_0
    //   69: anewarray 4	java/lang/Object
    //   72: invokeinterface 62 4 0
    //   77: aload_2
    //   78: aload_0
    //   79: invokevirtual 119	java/lang/Object:getClass	()Ljava/lang/Class;
    //   82: invokevirtual 46	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   85: ldc 48
    //   87: invokestatic 54	com/google/glass/util/Util:close	(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V
    //   90: aload_1
    //   91: aload_0
    //   92: invokevirtual 119	java/lang/Object:getClass	()Ljava/lang/Class;
    //   95: invokevirtual 46	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   98: ldc 48
    //   100: invokestatic 54	com/google/glass/util/Util:close	(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V
    //   103: aconst_null
    //   104: areturn
    //   105: astore 5
    //   107: aload_2
    //   108: aload_0
    //   109: invokevirtual 119	java/lang/Object:getClass	()Ljava/lang/Class;
    //   112: invokevirtual 46	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   115: ldc 48
    //   117: invokestatic 54	com/google/glass/util/Util:close	(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V
    //   120: aload_1
    //   121: aload_0
    //   122: invokevirtual 119	java/lang/Object:getClass	()Ljava/lang/Class;
    //   125: invokevirtual 46	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   128: ldc 48
    //   130: invokestatic 54	com/google/glass/util/Util:close	(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V
    //   133: aload 5
    //   135: athrow
    //   136: astore 5
    //   138: aload_3
    //   139: astore_2
    //   140: goto -33 -> 107
    //   143: astore 4
    //   145: aload_3
    //   146: astore_2
    //   147: goto -86 -> 61
    //
    // Exception table:
    //   from	to	target	type
    //   10	19	59	java/io/IOException
    //   10	19	105	finally
    //   61	77	105	finally
    //   19	30	136	finally
    //   19	30	143	java/io/IOException
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.companion.CompanionInputBoxResponseHandler
 * JD-Core Version:    0.6.2
 */