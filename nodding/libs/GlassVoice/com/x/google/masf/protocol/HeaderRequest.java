package com.x.google.masf.protocol;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class HeaderRequest extends Request
{
  private String acceptEncodings;
  private byte[] block;
  private String clientVersion;

  public HeaderRequest(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(paramString1);
    localStringBuffer.append(',');
    localStringBuffer.append(paramString2);
    localStringBuffer.append(',');
    localStringBuffer.append(paramString3);
    localStringBuffer.append(',');
    localStringBuffer.append(paramString4);
    localStringBuffer.append(',');
    localStringBuffer.append("en_US");
    this.clientVersion = localStringBuffer.toString();
    this.acceptEncodings = paramString5;
  }

  private byte[] generateBlock(long paramLong)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    localDataOutputStream.writeShort(2);
    localDataOutputStream.writeByte(0);
    localDataOutputStream.writeUTF(this.clientVersion);
    localDataOutputStream.writeLong(paramLong);
    localDataOutputStream.writeUTF(this.acceptEncodings);
    localDataOutputStream.close();
    localByteArrayOutputStream.close();
    return localByteArrayOutputStream.toByteArray();
  }

  // ERROR //
  private byte[] getBlock()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 72	com/x/google/masf/protocol/HeaderRequest:block	[B
    //   6: astore_2
    //   7: aload_0
    //   8: monitorexit
    //   9: aload_2
    //   10: ifnonnull +38 -> 48
    //   13: invokestatic 78	com/x/google/masf/services/CookieService:getInstance	()Lcom/x/google/masf/services/CookieService;
    //   16: invokevirtual 82	com/x/google/masf/services/CookieService:getCookie	()J
    //   19: lstore_3
    //   20: aload_0
    //   21: lload_3
    //   22: invokespecial 84	com/x/google/masf/protocol/HeaderRequest:generateBlock	(J)[B
    //   25: astore_2
    //   26: aload_0
    //   27: monitorenter
    //   28: aload_0
    //   29: getfield 72	com/x/google/masf/protocol/HeaderRequest:block	[B
    //   32: ifnonnull +23 -> 55
    //   35: lload_3
    //   36: lconst_0
    //   37: lcmp
    //   38: ifeq +8 -> 46
    //   41: aload_0
    //   42: aload_2
    //   43: putfield 72	com/x/google/masf/protocol/HeaderRequest:block	[B
    //   46: aload_0
    //   47: monitorexit
    //   48: aload_2
    //   49: areturn
    //   50: astore_1
    //   51: aload_0
    //   52: monitorexit
    //   53: aload_1
    //   54: athrow
    //   55: aload_0
    //   56: getfield 72	com/x/google/masf/protocol/HeaderRequest:block	[B
    //   59: astore_2
    //   60: goto -14 -> 46
    //   63: astore 5
    //   65: aload_0
    //   66: monitorexit
    //   67: aload 5
    //   69: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   2	9	50	finally
    //   51	53	50	finally
    //   28	35	63	finally
    //   41	46	63	finally
    //   46	48	63	finally
    //   55	60	63	finally
    //   65	67	63	finally
  }

  public void dispose()
  {
  }

  public InputStream getInputStream()
    throws IOException
  {
    return new ByteArrayInputStream(getBlock());
  }

  public long getRetryTimeout()
  {
    throw new RuntimeException();
  }

  public int getStreamLength()
    throws IOException
  {
    return getBlock().length;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.protocol.HeaderRequest
 * JD-Core Version:    0.6.2
 */