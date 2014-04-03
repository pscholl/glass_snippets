package com.x.google.masf.services;

import com.x.google.common.Config;
import com.x.google.common.io.protocol.ProtoBuf;
import com.x.google.masf.MobileServiceMux;
import com.x.google.masf.protocol.PlainRequest;
import com.x.google.masf.protocol.Request;
import com.x.google.masf.protocol.Request.Listener;
import com.x.google.masf.protocol.Response;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

public class ExceptionLogService
  implements Request.Listener
{
  private static final int UPLOAD_ALL_THROWABLES = -1;
  private static int maxThrowablePerDay = -1;
  private static long resetThrowableCounterTimestamp;
  private static int throwableCounter;

  public static void log(String paramString, Throwable paramThrowable)
  {
    log(paramString, paramThrowable, false);
  }

  private static void log(String paramString, Throwable paramThrowable, boolean paramBoolean)
  {
    if (skipLog());
    ProtoBuf localProtoBuf;
    MobileServiceMux localMobileServiceMux;
    do
    {
      return;
      localProtoBuf = new ProtoBuf(LogserviceMessageTypes.LOG_EXCEPTION_PROTO);
      localProtoBuf.addLong(2, System.currentTimeMillis());
      if (paramString != null)
        localProtoBuf.addString(20, paramString);
      localProtoBuf.addString(21, paramThrowable.getClass().getName());
      if (paramThrowable.getMessage() != null)
        localProtoBuf.addString(22, paramThrowable.getMessage());
      if (Config.getInstance() != null)
      {
        String str = Config.getInstance().getStackTrace(paramThrowable);
        if (str != null)
          localProtoBuf.addString(23, str);
      }
      localMobileServiceMux = MobileServiceMux.getSingleton();
    }
    while (localMobileServiceMux == null);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      localProtoBuf.outputTo(localByteArrayOutputStream);
      PlainRequest localPlainRequest = new PlainRequest("g:log:ex", 1, localByteArrayOutputStream.toByteArray());
      localPlainRequest.setListener(new ExceptionLogService());
      localMobileServiceMux.submitRequest(localPlainRequest, paramBoolean);
      return;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException.toString());
    }
  }

  public static void logImmediate(String paramString, Throwable paramThrowable)
  {
    log(paramString, paramThrowable, true);
  }

  public static void setMaxUploadPerDay(int paramInt)
  {
    try
    {
      maxThrowablePerDay = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static boolean skipLog()
  {
    while (true)
    {
      boolean bool;
      try
      {
        int i = maxThrowablePerDay;
        bool = false;
        if (i == -1)
          return bool;
        long l = System.currentTimeMillis();
        if (l > resetThrowableCounterTimestamp)
        {
          resetThrowableCounterTimestamp = l;
          throwableCounter = 1;
          bool = false;
          continue;
        }
      }
      finally
      {
      }
      if (throwableCounter < maxThrowablePerDay)
      {
        throwableCounter = 1 + throwableCounter;
        bool = false;
      }
      else
      {
        bool = true;
      }
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
 * Qualified Name:     com.x.google.masf.services.ExceptionLogService
 * JD-Core Version:    0.6.2
 */