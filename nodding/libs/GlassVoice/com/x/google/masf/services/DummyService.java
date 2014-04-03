package com.x.google.masf.services;

import com.x.google.common.io.protocol.ProtoBuf;
import com.x.google.masf.MobileServiceMux;
import com.x.google.masf.protocol.PlainRequest;
import com.x.google.masf.protocol.Request;
import com.x.google.masf.protocol.Request.Listener;
import com.x.google.masf.protocol.Response;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintStream;

public class DummyService
  implements Request.Listener
{
  private static final int REQUEST_DUMMY_INT = 42;
  private static final String REQUEST_DUMMY_STRING = "wibble";

  public static void dummy()
  {
    ProtoBuf localProtoBuf = new ProtoBuf(DummyStubbyServerMessageTypes.DUMMY_STUBBY_SERVER_REQUEST);
    localProtoBuf.addInt(1, 42);
    localProtoBuf.addBytes(2, "wibble".getBytes());
    MobileServiceMux localMobileServiceMux = MobileServiceMux.getSingleton();
    if (localMobileServiceMux == null)
      return;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      localProtoBuf.outputTo(localByteArrayOutputStream);
      PlainRequest localPlainRequest = new PlainRequest("g:dummy/doCall", 1, localByteArrayOutputStream.toByteArray());
      localPlainRequest.setListener(new DummyService());
      localMobileServiceMux.submitRequest(localPlainRequest, true);
      return;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException.toString());
    }
  }

  public void requestCompleted(Request paramRequest, Response paramResponse)
  {
    System.out.println("DummyService.requestComplete(): " + paramResponse.getStatusCode());
  }

  public void requestFailed(Request paramRequest, Exception paramException)
  {
    System.out.println("DummyService.requestException(): " + paramRequest + " " + paramException);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.DummyService
 * JD-Core Version:    0.6.2
 */