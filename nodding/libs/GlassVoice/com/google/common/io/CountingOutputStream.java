package com.google.common.io;

import com.google.common.annotations.Beta;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import javax.annotation.Nullable;

@Beta
public final class CountingOutputStream extends FilterOutputStream
{
  private long count;

  public CountingOutputStream(@Nullable OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }

  public long getCount()
  {
    return this.count;
  }

  public void write(int paramInt)
    throws IOException
  {
    this.out.write(paramInt);
    this.count = (1L + this.count);
  }

  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    this.out.write(paramArrayOfByte, paramInt1, paramInt2);
    this.count += paramInt2;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.io.CountingOutputStream
 * JD-Core Version:    0.6.2
 */