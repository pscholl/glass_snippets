package com.google.common.io;

import com.google.common.annotations.Beta;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.Nullable;

@Beta
public final class CountingInputStream extends FilterInputStream
{
  private long count;
  private long mark = -1L;

  public CountingInputStream(@Nullable InputStream paramInputStream)
  {
    super(paramInputStream);
  }

  public long getCount()
  {
    return this.count;
  }

  public void mark(int paramInt)
  {
    try
    {
      this.in.mark(paramInt);
      this.mark = this.count;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int read()
    throws IOException
  {
    int i = this.in.read();
    if (i != -1)
      this.count = (1L + this.count);
    return i;
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    int i = this.in.read(paramArrayOfByte, paramInt1, paramInt2);
    if (i != -1)
      this.count += i;
    return i;
  }

  public void reset()
    throws IOException
  {
    try
    {
      if (!this.in.markSupported())
        throw new IOException("Mark not supported");
    }
    finally
    {
    }
    if (this.mark == -1L)
      throw new IOException("Mark not set");
    this.in.reset();
    this.count = this.mark;
  }

  public long skip(long paramLong)
    throws IOException
  {
    long l = this.in.skip(paramLong);
    this.count = (l + this.count);
    return l;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.io.CountingInputStream
 * JD-Core Version:    0.6.2
 */