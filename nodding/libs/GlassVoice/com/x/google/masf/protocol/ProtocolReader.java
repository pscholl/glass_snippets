package com.x.google.masf.protocol;

import com.x.google.masf.DelimitedInputStream;
import java.io.DataInputStream;
import java.io.IOException;

public class ProtocolReader
{
  private DataInputStream dataInputStream;
  private DelimitedInputStream delimitedInputStream;

  public ProtocolReader(DataInputStream paramDataInputStream)
    throws IOException
  {
    this.dataInputStream = paramDataInputStream;
    if (paramDataInputStream.readUnsignedShort() != 2)
      throw new IOException("Unrecognised protocol version");
  }

  public void close()
    throws IOException
  {
    if (this.delimitedInputStream != null)
      this.delimitedInputStream = null;
    this.dataInputStream.close();
    this.dataInputStream = null;
  }

  public Response getNextResponse()
    throws IOException
  {
    if (this.delimitedInputStream != null)
    {
      this.delimitedInputStream.waitForCompletion();
      this.delimitedInputStream = null;
    }
    int i = this.dataInputStream.readInt();
    int j = this.dataInputStream.readUnsignedShort();
    if (j == 33024)
    {
      this.delimitedInputStream = new DelimitedInputStream(this.dataInputStream, i);
      return new PlainResponse(this.delimitedInputStream);
    }
    if (j == 33025)
    {
      this.delimitedInputStream = new DelimitedInputStream(this.dataInputStream, i);
      return new MultipartResponse(this.delimitedInputStream);
    }
    this.dataInputStream.skipBytes(i);
    return null;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.protocol.ProtocolReader
 * JD-Core Version:    0.6.2
 */