package com.x.google.masf.services;

import com.x.google.common.io.protocol.ProtoBuf;
import com.x.google.common.io.protocol.ProtoBufType;
import com.x.google.masf.MobileServiceMux;
import com.x.google.masf.protocol.PlainRequest;
import com.x.google.masf.protocol.Request;
import com.x.google.masf.protocol.Request.Listener;
import com.x.google.masf.protocol.Response;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

public class UnstructuredLogService
  implements Request.Listener
{
  private static final Request.Listener DUMMY_LISTENER = new UnstructuredLogService();

  public static void log(long paramLong, String paramString1, String paramString2)
  {
    log(paramLong, paramString1, paramString2, DUMMY_LISTENER);
  }

  public static void log(long paramLong, String paramString1, String paramString2, Request.Listener paramListener)
  {
    log(paramLong, paramString1, paramString2.getBytes(), paramListener);
  }

  public static void log(long paramLong, String paramString, byte[] paramArrayOfByte)
  {
    log(paramLong, paramString, paramArrayOfByte, DUMMY_LISTENER);
  }

  public static void log(long paramLong, String paramString, byte[] paramArrayOfByte, Request.Listener paramListener)
  {
    MobileServiceMux localMobileServiceMux = MobileServiceMux.getSingleton();
    ProtoBuf localProtoBuf2;
    ByteArrayOutputStream localByteArrayOutputStream;
    if (localMobileServiceMux != null)
    {
      ProtoBuf localProtoBuf1 = new ProtoBuf((ProtoBufType)LogserviceMessageTypes.LOG_DATA_PROTO.getData(2));
      localProtoBuf1.setLong(3, paramLong);
      localProtoBuf1.setString(4, paramString);
      localProtoBuf1.setBytes(5, paramArrayOfByte);
      localProtoBuf2 = new ProtoBuf(LogserviceMessageTypes.LOG_DATA_PROTO);
      localProtoBuf2.insertProtoBuf(2, 0, localProtoBuf1);
      localByteArrayOutputStream = new ByteArrayOutputStream();
    }
    try
    {
      localProtoBuf2.outputTo(localByteArrayOutputStream);
      PlainRequest localPlainRequest = new PlainRequest("g:log:u", 1, localByteArrayOutputStream.toByteArray());
      localPlainRequest.setListener(paramListener);
      localMobileServiceMux.submitRequest(localPlainRequest, false);
      return;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException.toString());
    }
  }

  public void requestCompleted(Request paramRequest, Response paramResponse)
  {
  }

  public void requestFailed(Request paramRequest, Exception paramException)
  {
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.UnstructuredLogService
 * JD-Core Version:    0.6.2
 */