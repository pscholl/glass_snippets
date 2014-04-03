package com.x.google.common.io;

import java.io.IOException;
import java.io.InputStream;

public class BoundInputStream extends InputStream
{
  static final int BUF_SIZE = 4096;
  private InputStream base;
  private byte[] buf;
  private int bufPos;
  private int bufSize;
  private int remaining;

  public BoundInputStream(InputStream paramInputStream, int paramInt)
  {
    this.base = paramInputStream;
    this.remaining = paramInt;
    this.buf = new byte[Math.min(paramInt, 4096)];
  }

  private boolean checkBuf()
    throws IOException
  {
    if (this.remaining <= 0)
      return false;
    if (this.bufPos >= this.bufSize)
    {
      this.bufSize = this.base.read(this.buf, 0, Math.min(this.remaining, this.buf.length));
      if (this.bufSize <= 0)
      {
        this.remaining = 0;
        return false;
      }
      this.bufPos = 0;
    }
    return true;
  }

  public int available()
  {
    return this.bufSize - this.bufPos;
  }

  public int getRemaining()
  {
    return this.remaining;
  }

  public int read()
    throws IOException
  {
    if (!checkBuf())
      return -1;
    this.remaining = (-1 + this.remaining);
    byte[] arrayOfByte = this.buf;
    int i = this.bufPos;
    this.bufPos = (i + 1);
    return 0xFF & arrayOfByte[i];
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (!checkBuf())
      return -1;
    int i = Math.min(paramInt2, this.bufSize - this.bufPos);
    System.arraycopy(this.buf, this.bufPos, paramArrayOfByte, paramInt1, i);
    this.bufPos = (i + this.bufPos);
    this.remaining -= i;
    return i;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.BoundInputStream
 * JD-Core Version:    0.6.2
 */