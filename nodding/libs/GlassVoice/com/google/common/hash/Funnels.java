package com.google.common.hash;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.io.OutputStream;
import java.nio.ByteBuffer;

@Beta
public final class Funnels
{
  public static OutputStream asOutputStream(PrimitiveSink paramPrimitiveSink)
  {
    return new SinkAsStream(paramPrimitiveSink);
  }

  public static Funnel<byte[]> byteArrayFunnel()
  {
    return ByteArrayFunnel.INSTANCE;
  }

  static Funnel<ByteBuffer> byteBufferFunnel()
  {
    return ByteBufferFunnel.INSTANCE;
  }

  public static Funnel<Integer> integerFunnel()
  {
    return IntegerFunnel.INSTANCE;
  }

  public static Funnel<Long> longFunnel()
  {
    return LongFunnel.INSTANCE;
  }

  public static Funnel<CharSequence> stringFunnel()
  {
    return StringFunnel.INSTANCE;
  }

  private static enum ByteArrayFunnel
    implements Funnel<byte[]>
  {
    static
    {
      ByteArrayFunnel[] arrayOfByteArrayFunnel = new ByteArrayFunnel[1];
      arrayOfByteArrayFunnel[0] = INSTANCE;
    }

    public void funnel(byte[] paramArrayOfByte, PrimitiveSink paramPrimitiveSink)
    {
      paramPrimitiveSink.putBytes(paramArrayOfByte);
    }

    public String toString()
    {
      return "Funnels.byteArrayFunnel()";
    }
  }

  private static enum ByteBufferFunnel
    implements Funnel<ByteBuffer>
  {
    static
    {
      ByteBufferFunnel[] arrayOfByteBufferFunnel = new ByteBufferFunnel[1];
      arrayOfByteBufferFunnel[0] = INSTANCE;
    }

    public void funnel(ByteBuffer paramByteBuffer, PrimitiveSink paramPrimitiveSink)
    {
      if (paramByteBuffer.hasArray())
      {
        paramPrimitiveSink.putBytes(paramByteBuffer.array(), paramByteBuffer.arrayOffset() + paramByteBuffer.position(), paramByteBuffer.remaining());
        return;
      }
      int i = paramByteBuffer.position();
      while (paramByteBuffer.hasRemaining())
        paramPrimitiveSink.putByte(paramByteBuffer.get());
      paramByteBuffer.position(i);
    }
  }

  private static enum IntegerFunnel
    implements Funnel<Integer>
  {
    static
    {
      IntegerFunnel[] arrayOfIntegerFunnel = new IntegerFunnel[1];
      arrayOfIntegerFunnel[0] = INSTANCE;
    }

    public void funnel(Integer paramInteger, PrimitiveSink paramPrimitiveSink)
    {
      paramPrimitiveSink.putInt(paramInteger.intValue());
    }

    public String toString()
    {
      return "Funnels.integerFunnel()";
    }
  }

  private static enum LongFunnel
    implements Funnel<Long>
  {
    static
    {
      LongFunnel[] arrayOfLongFunnel = new LongFunnel[1];
      arrayOfLongFunnel[0] = INSTANCE;
    }

    public void funnel(Long paramLong, PrimitiveSink paramPrimitiveSink)
    {
      paramPrimitiveSink.putLong(paramLong.longValue());
    }

    public String toString()
    {
      return "Funnels.longFunnel()";
    }
  }

  private static class SinkAsStream extends OutputStream
  {
    final PrimitiveSink sink;

    SinkAsStream(PrimitiveSink paramPrimitiveSink)
    {
      this.sink = ((PrimitiveSink)Preconditions.checkNotNull(paramPrimitiveSink));
    }

    public String toString()
    {
      return "Funnels.asOutputStream(" + this.sink + ")";
    }

    public void write(int paramInt)
    {
      this.sink.putByte((byte)paramInt);
    }

    public void write(byte[] paramArrayOfByte)
    {
      this.sink.putBytes(paramArrayOfByte);
    }

    public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      this.sink.putBytes(paramArrayOfByte, paramInt1, paramInt2);
    }
  }

  private static enum StringFunnel
    implements Funnel<CharSequence>
  {
    static
    {
      StringFunnel[] arrayOfStringFunnel = new StringFunnel[1];
      arrayOfStringFunnel[0] = INSTANCE;
    }

    public void funnel(CharSequence paramCharSequence, PrimitiveSink paramPrimitiveSink)
    {
      paramPrimitiveSink.putString(paramCharSequence);
    }

    public String toString()
    {
      return "Funnels.stringFunnel()";
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.hash.Funnels
 * JD-Core Version:    0.6.2
 */