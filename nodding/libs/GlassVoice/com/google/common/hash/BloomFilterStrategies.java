package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.common.math.LongMath;
import com.google.common.primitives.Ints;
import java.math.RoundingMode;
import java.util.Arrays;

 enum BloomFilterStrategies
  implements BloomFilter.Strategy
{
  static
  {
    BloomFilterStrategies[] arrayOfBloomFilterStrategies = new BloomFilterStrategies[1];
    arrayOfBloomFilterStrategies[0] = MURMUR128_MITZ_32;
  }

  static class BitArray
  {
    int bitCount;
    final long[] data;

    BitArray(long paramLong)
    {
      this(new long[Ints.checkedCast(LongMath.divide(paramLong, 64L, RoundingMode.CEILING))]);
    }

    BitArray(long[] paramArrayOfLong)
    {
      if (paramArrayOfLong.length > 0);
      int i;
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool, "data length is zero!");
        this.data = paramArrayOfLong;
        i = 0;
        int j = paramArrayOfLong.length;
        for (int k = 0; k < j; k++)
          i += Long.bitCount(paramArrayOfLong[k]);
      }
      this.bitCount = i;
    }

    int bitCount()
    {
      return this.bitCount;
    }

    BitArray copy()
    {
      return new BitArray((long[])this.data.clone());
    }

    public boolean equals(Object paramObject)
    {
      if ((paramObject instanceof BitArray))
      {
        BitArray localBitArray = (BitArray)paramObject;
        return Arrays.equals(this.data, localBitArray.data);
      }
      return false;
    }

    boolean get(int paramInt)
    {
      return (this.data[(paramInt >> 6)] & 1L << paramInt) != 0L;
    }

    public int hashCode()
    {
      return Arrays.hashCode(this.data);
    }

    boolean set(int paramInt)
    {
      if (!get(paramInt))
      {
        long[] arrayOfLong = this.data;
        int i = paramInt >> 6;
        arrayOfLong[i] |= 1L << paramInt;
        this.bitCount = (1 + this.bitCount);
        return true;
      }
      return false;
    }

    int size()
    {
      return 64 * this.data.length;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.hash.BloomFilterStrategies
 * JD-Core Version:    0.6.2
 */