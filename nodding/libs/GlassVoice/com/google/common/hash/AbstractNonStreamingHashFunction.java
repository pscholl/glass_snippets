package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.CharBuffer;
import java.nio.charset.Charset;

abstract class AbstractNonStreamingHashFunction
  implements HashFunction
{
  public HashCode hashBytes(byte[] paramArrayOfByte)
  {
    return hashBytes(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public HashCode hashInt(int paramInt)
  {
    return newHasher(4).putInt(paramInt).hash();
  }

  public HashCode hashLong(long paramLong)
  {
    return newHasher(8).putLong(paramLong).hash();
  }

  public <T> HashCode hashObject(T paramT, Funnel<? super T> paramFunnel)
  {
    return newHasher().putObject(paramT, paramFunnel).hash();
  }

  public HashCode hashString(CharSequence paramCharSequence)
  {
    int i = paramCharSequence.length();
    Hasher localHasher = newHasher(i * 2);
    for (int j = 0; j < i; j++)
      localHasher.putChar(paramCharSequence.charAt(j));
    return localHasher.hash();
  }

  public HashCode hashString(CharSequence paramCharSequence, Charset paramCharset)
  {
    return hashObject(paramCharset.encode(CharBuffer.wrap(paramCharSequence)), Funnels.byteBufferFunnel());
  }

  public Hasher newHasher()
  {
    return new BufferingHasher(32);
  }

  public Hasher newHasher(int paramInt)
  {
    if (paramInt >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      return new BufferingHasher(paramInt);
    }
  }

  private final class BufferingHasher extends AbstractHasher
  {
    static final int BOTTOM_BYTE = 255;
    final AbstractNonStreamingHashFunction.ExposedByteArrayOutputStream stream;

    BufferingHasher(int arg2)
    {
      int i;
      this.stream = new AbstractNonStreamingHashFunction.ExposedByteArrayOutputStream(i);
    }

    public HashCode hash()
    {
      return AbstractNonStreamingHashFunction.this.hashBytes(this.stream.byteArray(), 0, this.stream.length());
    }

    public Hasher putByte(byte paramByte)
    {
      this.stream.write(paramByte);
      return this;
    }

    public Hasher putBytes(byte[] paramArrayOfByte)
    {
      try
      {
        this.stream.write(paramArrayOfByte);
        return this;
      }
      catch (IOException localIOException)
      {
        throw Throwables.propagate(localIOException);
      }
    }

    public Hasher putBytes(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      this.stream.write(paramArrayOfByte, paramInt1, paramInt2);
      return this;
    }

    public Hasher putChar(char paramChar)
    {
      this.stream.write(paramChar & 0xFF);
      this.stream.write(0xFF & paramChar >>> '\b');
      return this;
    }

    public Hasher putInt(int paramInt)
    {
      this.stream.write(paramInt & 0xFF);
      this.stream.write(0xFF & paramInt >>> 8);
      this.stream.write(0xFF & paramInt >>> 16);
      this.stream.write(0xFF & paramInt >>> 24);
      return this;
    }

    public Hasher putLong(long paramLong)
    {
      for (int i = 0; i < 64; i += 8)
        this.stream.write((byte)(int)(0xFF & paramLong >>> i));
      return this;
    }

    public <T> Hasher putObject(T paramT, Funnel<? super T> paramFunnel)
    {
      paramFunnel.funnel(paramT, this);
      return this;
    }

    public Hasher putShort(short paramShort)
    {
      this.stream.write(paramShort & 0xFF);
      this.stream.write(0xFF & paramShort >>> 8);
      return this;
    }
  }

  private static final class ExposedByteArrayOutputStream extends ByteArrayOutputStream
  {
    ExposedByteArrayOutputStream(int paramInt)
    {
      super();
    }

    byte[] byteArray()
    {
      return this.buf;
    }

    int length()
    {
      return this.count;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.hash.AbstractNonStreamingHashFunction
 * JD-Core Version:    0.6.2
 */