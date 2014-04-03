package com.google.common.io;

import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import javax.annotation.Nullable;

final class MultiInputStream extends InputStream
{
  private InputStream in;
  private Iterator<? extends InputSupplier<? extends InputStream>> it;

  public MultiInputStream(Iterator<? extends InputSupplier<? extends InputStream>> paramIterator)
    throws IOException
  {
    this.it = ((Iterator)Preconditions.checkNotNull(paramIterator));
    advance();
  }

  private void advance()
    throws IOException
  {
    close();
    if (this.it.hasNext())
      this.in = ((InputStream)((InputSupplier)this.it.next()).getInput());
  }

  public int available()
    throws IOException
  {
    if (this.in == null)
      return 0;
    return this.in.available();
  }

  public void close()
    throws IOException
  {
    if (this.in != null);
    try
    {
      this.in.close();
      return;
    }
    finally
    {
      this.in = null;
    }
  }

  public boolean markSupported()
  {
    return false;
  }

  public int read()
    throws IOException
  {
    int i;
    if (this.in == null)
      i = -1;
    do
    {
      return i;
      i = this.in.read();
    }
    while (i != -1);
    advance();
    return read();
  }

  public int read(@Nullable byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    int i;
    if (this.in == null)
      i = -1;
    do
    {
      return i;
      i = this.in.read(paramArrayOfByte, paramInt1, paramInt2);
    }
    while (i != -1);
    advance();
    return read(paramArrayOfByte, paramInt1, paramInt2);
  }

  public long skip(long paramLong)
    throws IOException
  {
    long l;
    if ((this.in == null) || (paramLong <= 0L))
      l = 0L;
    do
    {
      return l;
      l = this.in.skip(paramLong);
    }
    while (l != 0L);
    if (read() == -1)
      return 0L;
    return 1L + this.in.skip(paramLong - 1L);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.io.MultiInputStream
 * JD-Core Version:    0.6.2
 */