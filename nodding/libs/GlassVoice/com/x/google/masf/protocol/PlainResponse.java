package com.x.google.masf.protocol;

import com.x.google.masf.DelimitedInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

public class PlainResponse extends Response
{
  private EncodedPayload payload;

  public PlainResponse(DelimitedInputStream paramDelimitedInputStream)
    throws IOException
  {
    super(paramDelimitedInputStream);
    DataInputStream localDataInputStream = new DataInputStream(paramDelimitedInputStream);
    this.payload = new EncodedPayload(localDataInputStream.readUTF(), localDataInputStream.readInt(), paramDelimitedInputStream);
  }

  public InputStream getInputStream()
    throws IOException
  {
    return this.payload.getInputStream();
  }

  public int getStreamLength()
  {
    return this.payload.getStreamLength();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.protocol.PlainResponse
 * JD-Core Version:    0.6.2
 */