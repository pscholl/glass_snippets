package com.google.common.hash;

import com.google.common.primitives.UnsignedBytes;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

final class Murmur3_128HashFunction extends AbstractStreamingHashFunction
  implements Serializable
{
  private static final long serialVersionUID;
  private final int seed;

  Murmur3_128HashFunction(int paramInt)
  {
    this.seed = paramInt;
  }

  public int bits()
  {
    return 128;
  }

  public Hasher newHasher()
  {
    return new Murmur3_128Hasher(this.seed);
  }

  public String toString()
  {
    return "Hashing.murmur3_128(" + this.seed + ")";
  }

  private static final class Murmur3_128Hasher extends AbstractStreamingHashFunction.AbstractStreamingHasher
  {
    private static final long C1 = -8663945395140668459L;
    private static final long C2 = 5545529020109919103L;
    private static final int CHUNK_SIZE = 16;
    private long h1;
    private long h2;
    private int length;

    Murmur3_128Hasher(int paramInt)
    {
      super();
      this.h1 = paramInt;
      this.h2 = paramInt;
      this.length = 0;
    }

    private void bmix64(long paramLong1, long paramLong2)
    {
      this.h1 ^= mixK1(paramLong1);
      this.h1 = Long.rotateLeft(this.h1, 27);
      this.h1 += this.h2;
      this.h1 = (1390208809L + 5L * this.h1);
      this.h2 ^= mixK2(paramLong2);
      this.h2 = Long.rotateLeft(this.h2, 31);
      this.h2 += this.h1;
      this.h2 = (944331445L + 5L * this.h2);
    }

    private static long fmix64(long paramLong)
    {
      long l1 = -49064778989728563L * (paramLong ^ paramLong >>> 33);
      long l2 = -4265267296055464877L * (l1 ^ l1 >>> 33);
      return l2 ^ l2 >>> 33;
    }

    private static long mixK1(long paramLong)
    {
      return 5545529020109919103L * Long.rotateLeft(paramLong * -8663945395140668459L, 31);
    }

    private static long mixK2(long paramLong)
    {
      return -8663945395140668459L * Long.rotateLeft(paramLong * 5545529020109919103L, 33);
    }

    public HashCode makeHash()
    {
      this.h1 ^= this.length;
      this.h2 ^= this.length;
      this.h1 += this.h2;
      this.h2 += this.h1;
      this.h1 = fmix64(this.h1);
      this.h2 = fmix64(this.h2);
      this.h1 += this.h2;
      this.h2 += this.h1;
      return HashCodes.fromBytesNoCopy(ByteBuffer.wrap(new byte[16]).order(ByteOrder.LITTLE_ENDIAN).putLong(this.h1).putLong(this.h2).array());
    }

    protected void process(ByteBuffer paramByteBuffer)
    {
      bmix64(paramByteBuffer.getLong(), paramByteBuffer.getLong());
      this.length = (16 + this.length);
    }

    protected void processRemaining(ByteBuffer paramByteBuffer)
    {
      long l1 = 0L;
      long l2 = 0L;
      this.length += paramByteBuffer.remaining();
      switch (paramByteBuffer.remaining())
      {
      default:
        throw new AssertionError("Should never get here.");
      case 15:
        l2 ^= UnsignedBytes.toInt(paramByteBuffer.get(14)) << 48;
      case 14:
        l2 ^= UnsignedBytes.toInt(paramByteBuffer.get(13)) << 40;
      case 13:
        l2 ^= UnsignedBytes.toInt(paramByteBuffer.get(12)) << 32;
      case 12:
        l2 ^= UnsignedBytes.toInt(paramByteBuffer.get(11)) << 24;
      case 11:
        l2 ^= UnsignedBytes.toInt(paramByteBuffer.get(10)) << 16;
      case 10:
        l2 ^= UnsignedBytes.toInt(paramByteBuffer.get(9)) << 8;
      case 9:
        l2 ^= UnsignedBytes.toInt(paramByteBuffer.get(8));
      case 8:
      case 7:
      case 6:
      case 5:
      case 4:
      case 3:
      case 2:
      case 1:
      }
      for (long l3 = l1 ^ paramByteBuffer.getLong(); ; l3 = l1 ^ UnsignedBytes.toInt(paramByteBuffer.get(0)))
      {
        this.h1 ^= mixK1(l3);
        this.h2 ^= mixK2(l2);
        return;
        l1 ^= UnsignedBytes.toInt(paramByteBuffer.get(6)) << 48;
        l1 ^= UnsignedBytes.toInt(paramByteBuffer.get(5)) << 40;
        l1 ^= UnsignedBytes.toInt(paramByteBuffer.get(4)) << 32;
        l1 ^= UnsignedBytes.toInt(paramByteBuffer.get(3)) << 24;
        l1 ^= UnsignedBytes.toInt(paramByteBuffer.get(2)) << 16;
        l1 ^= UnsignedBytes.toInt(paramByteBuffer.get(1)) << 8;
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.hash.Murmur3_128HashFunction
 * JD-Core Version:    0.6.2
 */