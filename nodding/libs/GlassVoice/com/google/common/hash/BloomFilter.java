package com.google.common.hash;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import java.io.Serializable;
import javax.annotation.Nullable;

@Beta
public final class BloomFilter<T>
  implements Predicate<T>, Serializable
{
  private final BloomFilterStrategies.BitArray bits;
  private final Funnel<T> funnel;
  private final int numHashFunctions;
  private final Strategy strategy;

  private BloomFilter(BloomFilterStrategies.BitArray paramBitArray, int paramInt, Funnel<T> paramFunnel, Strategy paramStrategy)
  {
    boolean bool1;
    if (paramInt > 0)
    {
      bool1 = true;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(paramInt);
      Preconditions.checkArgument(bool1, "numHashFunctions (%s) must be > 0", arrayOfObject1);
      if (paramInt > 255)
        break label113;
    }
    label113: for (boolean bool2 = true; ; bool2 = false)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(paramInt);
      Preconditions.checkArgument(bool2, "numHashFunctions (%s) must be <= 255", arrayOfObject2);
      this.bits = ((BloomFilterStrategies.BitArray)Preconditions.checkNotNull(paramBitArray));
      this.numHashFunctions = paramInt;
      this.funnel = ((Funnel)Preconditions.checkNotNull(paramFunnel));
      this.strategy = ((Strategy)Preconditions.checkNotNull(paramStrategy));
      return;
      bool1 = false;
      break;
    }
  }

  public static <T> BloomFilter<T> create(Funnel<T> paramFunnel, int paramInt)
  {
    return create(paramFunnel, paramInt, 0.03D);
  }

  public static <T> BloomFilter<T> create(Funnel<T> paramFunnel, int paramInt, double paramDouble)
  {
    Preconditions.checkNotNull(paramFunnel);
    boolean bool1;
    if (paramInt >= 0)
      bool1 = true;
    while (true)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(paramInt);
      Preconditions.checkArgument(bool1, "Expected insertions (%s) must be >= 0", arrayOfObject1);
      boolean bool2;
      label44: boolean bool3;
      long l;
      int i;
      if (paramDouble > 0.0D)
      {
        bool2 = true;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Double.valueOf(paramDouble);
        Preconditions.checkArgument(bool2, "False positive probability (%s) must be > 0.0", arrayOfObject2);
        if (paramDouble >= 1.0D)
          break label161;
        bool3 = true;
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Double.valueOf(paramDouble);
        Preconditions.checkArgument(bool3, "False positive probability (%s) must be < 1.0", arrayOfObject3);
        if (paramInt == 0)
          paramInt = 1;
        l = optimalNumOfBits(paramInt, paramDouble);
        i = optimalNumOfHashFunctions(paramInt, l);
      }
      try
      {
        BloomFilter localBloomFilter = new BloomFilter(new BloomFilterStrategies.BitArray(l), i, paramFunnel, BloomFilterStrategies.MURMUR128_MITZ_32);
        return localBloomFilter;
        bool1 = false;
        continue;
        bool2 = false;
        break label44;
        label161: bool3 = false;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        throw new IllegalArgumentException("Could not create BloomFilter of " + l + " bits", localIllegalArgumentException);
      }
    }
  }

  @VisibleForTesting
  static long optimalNumOfBits(long paramLong, double paramDouble)
  {
    if (paramDouble == 0.0D)
      paramDouble = 4.9E-324D;
    return ()(-paramLong * Math.log(paramDouble) / (Math.log(2.0D) * Math.log(2.0D)));
  }

  @VisibleForTesting
  static int optimalNumOfHashFunctions(long paramLong1, long paramLong2)
  {
    return Math.max(1, (int)Math.round(paramLong2 / paramLong1 * Math.log(2.0D)));
  }

  private Object writeReplace()
  {
    return new SerialForm(this);
  }

  public boolean apply(T paramT)
  {
    return mightContain(paramT);
  }

  public BloomFilter<T> copy()
  {
    return new BloomFilter(this.bits.copy(), this.numHashFunctions, this.funnel, this.strategy);
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this);
    BloomFilter localBloomFilter;
    do
    {
      return true;
      if (!(paramObject instanceof BloomFilter))
        break;
      localBloomFilter = (BloomFilter)paramObject;
    }
    while ((this.numHashFunctions == localBloomFilter.numHashFunctions) && (this.funnel.equals(localBloomFilter.funnel)) && (this.bits.equals(localBloomFilter.bits)) && (this.strategy.equals(localBloomFilter.strategy)));
    return false;
    return false;
  }

  @Deprecated
  public double expectedFalsePositiveProbability()
  {
    return expectedFpp();
  }

  public double expectedFpp()
  {
    return Math.pow(this.bits.bitCount() / this.bits.size(), this.numHashFunctions);
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(this.numHashFunctions);
    arrayOfObject[1] = this.funnel;
    arrayOfObject[2] = this.strategy;
    arrayOfObject[3] = this.bits;
    return Objects.hashCode(arrayOfObject);
  }

  public boolean mightContain(T paramT)
  {
    return this.strategy.mightContain(paramT, this.funnel, this.numHashFunctions, this.bits);
  }

  public boolean put(T paramT)
  {
    return this.strategy.put(paramT, this.funnel, this.numHashFunctions, this.bits);
  }

  private static class SerialForm<T>
    implements Serializable
  {
    private static final long serialVersionUID = 1L;
    final long[] data;
    final Funnel<T> funnel;
    final int numHashFunctions;
    final BloomFilter.Strategy strategy;

    SerialForm(BloomFilter<T> paramBloomFilter)
    {
      this.data = paramBloomFilter.bits.data;
      this.numHashFunctions = paramBloomFilter.numHashFunctions;
      this.funnel = paramBloomFilter.funnel;
      this.strategy = paramBloomFilter.strategy;
    }

    Object readResolve()
    {
      return new BloomFilter(new BloomFilterStrategies.BitArray(this.data), this.numHashFunctions, this.funnel, this.strategy, null);
    }
  }

  static abstract interface Strategy extends Serializable
  {
    public abstract <T> boolean mightContain(T paramT, Funnel<? super T> paramFunnel, int paramInt, BloomFilterStrategies.BitArray paramBitArray);

    public abstract int ordinal();

    public abstract <T> boolean put(T paramT, Funnel<? super T> paramFunnel, int paramInt, BloomFilterStrategies.BitArray paramBitArray);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.hash.BloomFilter
 * JD-Core Version:    0.6.2
 */