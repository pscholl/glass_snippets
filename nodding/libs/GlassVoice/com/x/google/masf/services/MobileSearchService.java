package com.x.google.masf.services;

import com.x.google.masf.MobileServiceMux;
import com.x.google.masf.protocol.PlainRequest;
import com.x.google.masf.protocol.Request;
import com.x.google.masf.protocol.Request.Listener;
import com.x.google.masf.protocol.Response;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class MobileSearchService
  implements Request.Listener
{
  private static final String OUTPUT_ENCODING_XML = "xml";
  private static final String OUTPUT_PARAM = "output";
  private static final String QUERY_PARAM = "q";
  private static final String SEARCH_URL = "http://www.google.com/m/search";
  String output = "xml";
  String query = null;

  private InputStream debugBufferAndDumpStreamToLog(InputStream paramInputStream, int paramInt)
    throws IOException
  {
    return paramInputStream;
  }

  public byte[] getRequestBytes()
  {
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
      localDataOutputStream.writeUTF("GET");
      localDataOutputStream.writeByte(0);
      byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  public void makeRequest(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer("http://www.google.com/m/search");
    localStringBuffer.append("?");
    localStringBuffer.append("output");
    localStringBuffer.append("=");
    localStringBuffer.append(this.output);
    localStringBuffer.append("&");
    localStringBuffer.append("q");
    localStringBuffer.append("=");
    localStringBuffer.append(paramString);
    PlainRequest localPlainRequest = new PlainRequest(localStringBuffer.toString(), 0, getRequestBytes());
    localPlainRequest.setListener(this);
    MobileServiceMux.getSingleton().submitRequest(localPlainRequest, true);
  }

  public void requestCompleted(Request paramRequest, Response paramResponse)
  {
    try
    {
      debugBufferAndDumpStreamToLog(paramResponse.getInputStream(), paramResponse.getStreamLength());
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  public void requestFailed(Request paramRequest, Exception paramException)
  {
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.MobileSearchService
 * JD-Core Version:    0.6.2
 */