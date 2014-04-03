package com.x.google.masf;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

public class ByteArrayInputStreamProvider
  implements InputStreamProvider
{
  private byte[] data;

  public ByteArrayInputStreamProvider(byte[] paramArrayOfByte)
  {
    this.data = paramArrayOfByte;
  }

  public void dispose()
  {
  }

  public InputStream getInputStream()
  {
    return new ByteArrayInputStream(this.data);
  }

  public int getStreamLength()
  {
    return this.data.length;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.ByteArrayInputStreamProvider
 * JD-Core Version:    0.6.2
 */