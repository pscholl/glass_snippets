package com.x.google.masf.protocol;

import com.x.google.debug.LogSource;
import com.x.google.masf.DelimitedInputStream;
import com.x.google.masf.InputStreamProvider;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

public abstract class Response extends Block
  implements InputStreamProvider
{
  private static LogSource logger = LogSource.getLogSource(Response.class);
  protected DelimitedInputStream delimitedInputStream;
  private int statusCode;

  public Response(int paramInt1, int paramInt2)
  {
    setId(paramInt1);
    this.statusCode = paramInt2;
  }

  public Response(DelimitedInputStream paramDelimitedInputStream)
    throws IOException
  {
    this.delimitedInputStream = paramDelimitedInputStream;
    DataInputStream localDataInputStream = new DataInputStream(paramDelimitedInputStream);
    try
    {
      setId(localDataInputStream.readUnsignedShort());
      this.statusCode = localDataInputStream.readUnsignedShort();
      logger.info("Read id " + getId() + ", status code " + this.statusCode);
      return;
    }
    catch (IOException localIOException)
    {
      logger.info("Response() - IOException when reading block payload", localIOException);
      throw localIOException;
    }
  }

  public void bufferAndDetach()
  {
    if (this.delimitedInputStream != null)
      this.delimitedInputStream.bufferAndDetach();
  }

  public void dispose()
  {
  }

  public abstract InputStream getInputStream()
    throws IOException;

  public int getStatusCode()
  {
    return this.statusCode;
  }

  public abstract int getStreamLength()
    throws IOException;
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.protocol.Response
 * JD-Core Version:    0.6.2
 */