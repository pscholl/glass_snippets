package com.google.common.io;

import com.google.common.base.Preconditions;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;

public abstract class ByteSink
{
  public CharSink asCharSink(Charset paramCharset)
  {
    return new AsCharSink(paramCharset, null);
  }

  public BufferedOutputStream openBufferedStream()
    throws IOException
  {
    OutputStream localOutputStream = openStream();
    if ((localOutputStream instanceof BufferedOutputStream))
      return (BufferedOutputStream)localOutputStream;
    return new BufferedOutputStream(localOutputStream);
  }

  public abstract OutputStream openStream()
    throws IOException;

  public void write(byte[] paramArrayOfByte)
    throws IOException
  {
    Preconditions.checkNotNull(paramArrayOfByte);
    Closer localCloser = Closer.create();
    try
    {
      ((OutputStream)localCloser.register(openStream())).write(paramArrayOfByte);
      return;
    }
    catch (Throwable localThrowable)
    {
      throw localCloser.rethrow(localThrowable);
    }
    finally
    {
      localCloser.close();
    }
  }

  public long writeFrom(InputStream paramInputStream)
    throws IOException
  {
    Preconditions.checkNotNull(paramInputStream);
    Closer localCloser = Closer.create();
    try
    {
      long l = ByteStreams.copy(paramInputStream, (OutputStream)localCloser.register(openStream()));
      return l;
    }
    catch (Throwable localThrowable)
    {
      throw localCloser.rethrow(localThrowable);
    }
    finally
    {
      localCloser.close();
    }
  }

  private final class AsCharSink extends CharSink
  {
    private final Charset charset;

    private AsCharSink(Charset arg2)
    {
      Object localObject;
      this.charset = ((Charset)Preconditions.checkNotNull(localObject));
    }

    public Writer openStream()
      throws IOException
    {
      return new OutputStreamWriter(ByteSink.this.openStream(), this.charset);
    }

    public String toString()
    {
      return ByteSink.this.toString() + ".asCharSink(" + this.charset + ")";
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.io.ByteSink
 * JD-Core Version:    0.6.2
 */