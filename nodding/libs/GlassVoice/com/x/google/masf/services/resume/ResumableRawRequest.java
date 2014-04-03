package com.x.google.masf.services.resume;

import com.x.google.masf.ByteArrayInputStreamProvider;
import com.x.google.masf.InputStreamProvider;
import java.io.IOException;
import java.io.InputStream;

public class ResumableRawRequest extends ResumableRequest
{
  private InputStreamProvider inputStreamProvider;

  public ResumableRawRequest(InputStreamProvider paramInputStreamProvider)
  {
    this.inputStreamProvider = paramInputStreamProvider;
  }

  public ResumableRawRequest(byte[] paramArrayOfByte)
  {
    this.inputStreamProvider = new ByteArrayInputStreamProvider(paramArrayOfByte);
  }

  public void dispose()
  {
    this.inputStreamProvider.dispose();
  }

  public InputStream getInputStream()
    throws IOException
  {
    return this.inputStreamProvider.getInputStream();
  }

  public int getStreamLength()
    throws IOException
  {
    return this.inputStreamProvider.getStreamLength();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.resume.ResumableRawRequest
 * JD-Core Version:    0.6.2
 */