package com.google.common.hash;

import com.google.common.primitives.UnsignedBytes;
import java.io.Serializable;
import java.nio.ByteBuffer;

final class Murmur3_32HashFunction extends AbstractStreamingHashFunction
  implements Serializable
{
  private static final int C1 = -862048943;
  private static final int C2 = 461845907;
  private static final long serialVersionUID;
  private final int seed;

  Murmur3_32HashFunction(int paramInt)
  {
    this.seed = paramInt;
  }

  private static HashCode fmix(int paramInt1, int paramInt2)
  {
    int i = paramInt1 ^ paramInt2;
    int j = -2048144789 * (i ^ i >>> 16);
    int k = -1028477387 * (j ^ j >>> 13);
    return HashCodes.fromInt(k ^ k >>> 16);
  }

  private static int mixH1(int paramInt1, int paramInt2)
  {
    return -430675100 + 5 * Integer.rotateLeft(paramInt1 ^ paramInt2, 13);
  }

  private static int mixK1(int paramInt)
  {
    return 461845907 * Integer.rotateLeft(paramInt * -862048943, 15);
  }

  public int bits()
  {
    return 32;
  }

  public HashCode hashInt(int paramInt)
  {
    int i = mixK1(paramInt);
    return fmix(mixH1(this.seed, i), 4);
  }

  public HashCode hashLong(long paramLong)
  {
    int i = (int)paramLong;
    int j = (int)(paramLong >>> 32);
    int k = mixK1(i);
    return fmix(mixH1(mixH1(this.seed, k), mixK1(j)), 8);
  }

  public HashCode hashString(CharSequence paramCharSequence)
  {
    int i = this.seed;
    for (int j = 1; j < paramCharSequence.length(); j += 2)
      i = mixH1(i, mixK1(paramCharSequence.charAt(j - 1) | paramCharSequence.charAt(j) << '\020'));
    if ((0x1 & paramCharSequence.length()) == 1)
      i ^= mixK1(paramCharSequence.charAt(-1 + paramCharSequence.length()));
    return fmix(i, 2 * paramCharSequence.length());
  }

  public Hasher newHasher()
  {
    return new Murmur3_32Hasher(this.seed);
  }

  public String toString()
  {
    return "Hashing.murmur3_32(" + this.seed + ")";
  }

  private static final class Murmur3_32Hasher extends AbstractStreamingHashFunction.AbstractStreamingHasher
  {
    private static final int CHUNK_SIZE = 4;
    private int h1;
    private int length;

    Murmur3_32Hasher(int paramInt)
    {
      super();
      this.h1 = paramInt;
      this.length = 0;
    }

    public HashCode makeHash()
    {
      return Murmur3_32HashFunction.fmix(this.h1, this.length);
    }

    protected void process(ByteBuffer paramByteBuffer)
    {
      int i = Murmur3_32HashFunction.mixK1(paramByteBuffer.getInt());
      this.h1 = Murmur3_32HashFunction.mixH1(this.h1, i);
      this.length = (4 + this.length);
    }

    protected void processRemaining(ByteBuffer paramByteBuffer)
    {
      this.length += paramByteBuffer.remaining();
      int i = 0;
      for (int j = 0; paramByteBuffer.hasRemaining(); j += 8)
        i ^= UnsignedBytes.toInt(paramByteBuffer.get()) << j;
      this.h1 ^= Murmur3_32HashFunction.mixK1(i);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.hash.Murmur3_32HashFunction
 * JD-Core Version:    0.6.2
 */