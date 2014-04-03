package com.x.google.masf.services.resume;

import com.x.google.masf.InputStreamProvider;
import com.x.google.masf.protocol.PlainRequest;
import java.io.IOException;
import java.io.InputStream;

public class ResumablePlainRequest extends ResumableRequest
{
  private PlainRequest request;

  public ResumablePlainRequest(PlainRequest paramPlainRequest)
  {
    this.request = paramPlainRequest;
  }

  public ResumablePlainRequest(String paramString)
  {
    this(new PlainRequest(paramString));
  }

  public ResumablePlainRequest(String paramString, int paramInt)
  {
    this(new PlainRequest(paramString, paramInt));
  }

  public ResumablePlainRequest(String paramString, int paramInt, byte[] paramArrayOfByte)
  {
    this(new PlainRequest(paramString, paramInt, paramArrayOfByte));
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
 * Qualified Name:     com.x.google.masf.services.resume.ResumablePlainRequest
 * JD-Core Version:    0.6.2
 */