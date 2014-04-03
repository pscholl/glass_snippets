package com.google.glass.voice;

import java.io.IOException;
import java.io.InputStream;

public final class ResampleInputStream extends InputStream
{
  private static final int FIR_LENGTH = 47;
  private byte[] buf;
  private int bufCount;
  private InputStream inputStream;
  private final ResampleInputStreamListener listener;
  private final int rateIn;
  private final int rateOut;

  static
  {
    System.loadLibrary("fir21");
  }

  public ResampleInputStream(ResampleInputStreamListener paramResampleInputStreamListener, InputStream paramInputStream, int paramInt1, int paramInt2)
  {
    if (paramInt1 != paramInt2 * 2)
      throw new IllegalArgumentException("Only support 2:1 resampling at the moment");
    this.inputStream = paramInputStream;
    this.rateIn = 2;
    this.rateOut = 1;
    this.listener = paramResampleInputStreamListener;
  }

  private static native void fir21(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2, int paramInt3);

  public int read()
  {
    throw new UnsupportedOperationException("Single-byte read not supported");
  }

  public int read(byte[] paramArrayOfByte)
    throws IOException
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    int i = -1;
    if (this.inputStream == null)
      throw new IllegalStateException("not open");
    int j = 2 * (47 + paramInt2 / 2 * this.rateIn / this.rateOut);
    if (this.buf == null)
      this.buf = new byte[j];
    while (true)
    {
      int k = 2 * ((-47 + this.bufCount / 2) * this.rateOut / this.rateIn);
      int n;
      if (k > 0)
        if (k < paramInt2)
        {
          n = k;
          label93: fir21(this.buf, 0, paramArrayOfByte, paramInt1, n / 2);
          int i1 = n * this.rateIn / this.rateOut;
          this.bufCount -= i1;
          this.bufCount = Math.min(this.buf.length - i1, this.bufCount);
          if (this.bufCount > 0)
            System.arraycopy(this.buf, i1, this.buf, 0, this.bufCount);
          if (this.listener != null)
            this.listener.onResampledAudioData(paramArrayOfByte, paramInt1, n);
          i = n;
        }
      int m;
      do
      {
        return i;
        if (j <= this.buf.length)
          break;
        byte[] arrayOfByte = new byte[j];
        System.arraycopy(this.buf, 0, arrayOfByte, 0, this.bufCount);
        this.buf = arrayOfByte;
        break;
        n = 2 * (paramInt2 / 2);
        break label93;
        m = this.inputStream.read(this.buf, this.bufCount, this.buf.length - this.bufCount);
      }
      while (m == i);
      this.bufCount = (m + this.bufCount);
    }
  }

  public static abstract interface ResampleInputStreamListener
  {
    public abstract void onResampledAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.ResampleInputStream
 * JD-Core Version:    0.6.2
 */