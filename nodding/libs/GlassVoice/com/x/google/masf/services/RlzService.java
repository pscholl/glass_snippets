package com.x.google.masf.services;

import com.x.google.common.Config;
import com.x.google.common.StaticUtil;
import com.x.google.common.io.PersistentStore;
import com.x.google.masf.protocol.Request;
import com.x.google.masf.protocol.Request.Listener;
import com.x.google.masf.protocol.Response;
import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.IOException;

public class RlzService
{
  static final String RLZ_PREFERENCE = "Rlz";
  private static final String RLZ_SERVICE_URI = "g:rlz";
  private static boolean rlzRequested = false;
  private static String theRlz = "";

  public static String getRlz()
  {
    try
    {
      if (theRlz.equals(""))
        theRlz = loadRlzFromStore();
      if (theRlz.equals(""))
        updateRlz();
      String str = theRlz;
      return str;
    }
    finally
    {
    }
  }

  public static String loadRlzFromStore()
  {
    try
    {
      DataInput localDataInput = StaticUtil.readPreferenceAsDataInput("Rlz");
      if (localDataInput != null);
      while (true)
      {
        try
        {
          String str2 = localDataInput.readUTF();
          str1 = str2;
          return str1;
        }
        catch (IOException localIOException)
        {
          Config.getInstance().getPersistentStore().setPreference("Rlz", null);
        }
        String str1 = "";
      }
    }
    finally
    {
    }
  }

  public static void setRlz(String paramString)
  {
    try
    {
      theRlz = paramString;
      rlzRequested = false;
      writeRlzToStore(paramString);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  public static void updateRlz()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 18	com/x/google/masf/services/RlzService:rlzRequested	Z
    //   6: ifne +100 -> 106
    //   9: invokestatic 79	com/x/google/masf/MobileServiceMux:getSingleton	()Lcom/x/google/masf/MobileServiceMux;
    //   12: astore_1
    //   13: aload_1
    //   14: ifnull +92 -> 106
    //   17: getstatic 22	com/x/google/masf/services/RlzService:theRlz	Ljava/lang/String;
    //   20: astore_2
    //   21: aload_2
    //   22: ldc 20
    //   24: invokevirtual 33	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   27: ifeq +7 -> 34
    //   30: invokestatic 36	com/x/google/masf/services/RlzService:loadRlzFromStore	()Ljava/lang/String;
    //   33: astore_2
    //   34: new 81	java/io/ByteArrayOutputStream
    //   37: dup
    //   38: invokespecial 82	java/io/ByteArrayOutputStream:<init>	()V
    //   41: astore_3
    //   42: new 84	java/io/DataOutputStream
    //   45: dup
    //   46: aload_3
    //   47: invokespecial 87	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   50: astore 4
    //   52: aload 4
    //   54: aload_2
    //   55: invokevirtual 90	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   58: aload 4
    //   60: invokevirtual 93	java/io/DataOutputStream:close	()V
    //   63: aload_3
    //   64: invokevirtual 94	java/io/ByteArrayOutputStream:close	()V
    //   67: new 96	com/x/google/masf/protocol/PlainRequest
    //   70: dup
    //   71: ldc 11
    //   73: iconst_0
    //   74: aload_3
    //   75: invokevirtual 100	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   78: invokespecial 103	com/x/google/masf/protocol/PlainRequest:<init>	(Ljava/lang/String;I[B)V
    //   81: astore 6
    //   83: aload 6
    //   85: new 105	com/x/google/masf/services/RlzService$1
    //   88: dup
    //   89: invokespecial 106	com/x/google/masf/services/RlzService$1:<init>	()V
    //   92: invokevirtual 112	com/x/google/masf/protocol/Request:setListener	(Lcom/x/google/masf/protocol/Request$Listener;)V
    //   95: aload_1
    //   96: aload 6
    //   98: iconst_1
    //   99: invokevirtual 116	com/x/google/masf/MobileServiceMux:submitRequest	(Lcom/x/google/masf/protocol/Request;Z)V
    //   102: iconst_1
    //   103: putstatic 18	com/x/google/masf/services/RlzService:rlzRequested	Z
    //   106: ldc 2
    //   108: monitorexit
    //   109: return
    //   110: astore_0
    //   111: ldc 2
    //   113: monitorexit
    //   114: aload_0
    //   115: athrow
    //   116: astore 5
    //   118: goto -12 -> 106
    //
    // Exception table:
    //   from	to	target	type
    //   3	13	110	finally
    //   17	34	110	finally
    //   34	52	110	finally
    //   52	67	110	finally
    //   67	106	110	finally
    //   52	67	116	java/io/IOException
  }

  public static void writeRlzToStore(String paramString)
  {
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      new DataOutputStream(localByteArrayOutputStream).writeUTF(paramString);
      PersistentStore localPersistentStore = Config.getInstance().getPersistentStore();
      localPersistentStore.setPreference("Rlz", localByteArrayOutputStream.toByteArray());
      localPersistentStore.savePreferences();
      return;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException.toString());
    }
    finally
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.RlzService
 * JD-Core Version:    0.6.2
 */