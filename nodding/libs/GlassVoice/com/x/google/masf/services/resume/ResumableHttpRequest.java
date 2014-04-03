package com.x.google.masf.services.resume;

import com.x.google.masf.InputStreamProvider;
import com.x.google.masf.protocol.BodyPart;
import com.x.google.masf.protocol.HttpRequest;
import java.io.IOException;
import java.io.InputStream;

public class ResumableHttpRequest extends ResumableRequest
{
  private HttpRequest request;

  public ResumableHttpRequest(HttpRequest paramHttpRequest)
  {
    this.request = paramHttpRequest;
  }

  public ResumableHttpRequest(String paramString)
  {
    this(new HttpRequest(paramString));
  }

  public ResumableHttpRequest(String paramString, int paramInt)
  {
    this(new HttpRequest(paramString, paramInt));
  }

  public ResumableHttpRequest(String paramString, int paramInt, byte[] paramArrayOfByte)
  {
    this(new HttpRequest(paramString, paramInt, paramArrayOfByte));
  }

  public void addBodyPart(BodyPart paramBodyPart)
  {
    this.request.addBodyPart(paramBodyPart);
  }

  public void dispose()
  {
    this.request.dispose();
  }

  public InputStream getInputStream()
    throws IOException
  {
    return this.request.getInputStream();
  }

  public byte[] getPayload()
    throws IOException
  {
    return this.request.getPayload();
  }

  public int getStreamLength()
    throws IOException
  {
    return this.request.getStreamLength();
  }

  public void setConnectionProperty(String paramString1, String paramString2)
  {
    this.request.setConnectionProperty(paramString1, paramString2);
  }

  public void setMethod(String paramString)
  {
    this.request.setMethod(paramString);
  }

  public void setPayload(InputStreamProvider paramInputStreamProvider)
  {
    this.request.setPayload(paramInputStreamProvider);
  }

  public void setPayload(byte[] paramArrayOfByte)
  {
    this.request.setPayload(paramArrayOfByte);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.resume.ResumableHttpRequest
 * JD-Core Version:    0.6.2
 */