package com.google.common.math;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.List;

@GwtCompatible(emulated=true)
public final class BigIntegerMath
{
  private static final double LN_10 = 0.0D;
  private static final double LN_2 = 0.0D;

  @VisibleForTesting
  static final BigInteger SQRT2_PRECOMPUTED_BITS = new BigInteger("16a09e667f3bcc908b2fb1366ea957d3e3adec17512775099da2f590b0667322a", 16);

  @VisibleForTesting
  static final int SQRT2_PRECOMPUTE_THRESHOLD = 256;

  public static BigInteger binomial(int paramInt1, int paramInt2)
  {
    MathPreconditions.checkNonNegative("n", paramInt1);
    MathPreconditions.checkNonNegative("k", paramInt2);
    if (paramInt2 <= paramInt1);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt2);
      arrayOfObject[1] = Integer.valueOf(paramInt1);
      Preconditions.checkArgument(bool, "k (%s) > n (%s)", arrayOfObject);
      int i = paramInt1 >> 1;
      if (paramInt2 > i)
        paramInt2 = paramInt1 - paramInt2;
      int j = LongMath.biggestBinomials.length;
      if ((paramInt2 >= j) || (paramInt1 > LongMath.biggestBinomials[paramInt2]))
        break;
      return BigInteger.valueOf(LongMath.binomial(paramInt1, paramInt2));
    }
    BigInteger localBigInteger = BigInteger.ONE;
    long l1 = paramInt1;
    long l2 = 1L;
    int k = LongMath.log2(paramInt1, RoundingMode.CEILING);
    int m = k;
    int n = 1;
    if (n < paramInt2)
    {
      int i1 = paramInt1 - n;
      int i2 = n + 1;
      if (m + k >= 63)
      {
        localBigInteger = localBigInteger.multiply(BigInteger.valueOf(l1)).divide(BigInteger.valueOf(l2));
        l1 = i1;
        l2 = i2;
        m = k;
      }
      while (true)
      {
        n++;
        break;
        l1 *= i1;
        l2 *= i2;
        m += k;
      }
    }
    return localBigInteger.multiply(BigInteger.valueOf(l1)).divide(BigInteger.valueOf(l2));
  }

  @GwtIncompatible("TODO")
  public static BigInteger divide(BigInteger paramBigInteger1, BigInteger paramBigInteger2, RoundingMode paramRoundingMode)
  {
    return new BigDecimal(paramBigInteger1).divide(new BigDecimal(paramBigInteger2), 0, paramRoundingMode).toBigIntegerExact();
  }

  public static BigInteger factorial(int paramInt)
  {
    MathPreconditions.checkNonNegative("n", paramInt);
    if (paramInt < LongMath.factorials.length)
      return BigInteger.valueOf(LongMath.factorials[paramInt]);
    ArrayList localArrayList = new ArrayList(IntMath.divide(paramInt * IntMath.log2(paramInt, RoundingMode.CEILING), 64, RoundingMode.CEILING));
    int i = LongMath.factorials.length;
    long l1 = LongMath.factorials[(i - 1)];
    int j = Long.numberOfTrailingZeros(l1);
    long l2 = l1 >> j;
    int k = 1 + LongMath.log2(l2, RoundingMode.FLOOR);
    int m = 1 + LongMath.log2(i, RoundingMode.FLOOR);
    int n = 1 << m - 1;
    for (long l3 = i; l3 <= paramInt; l3 += 1L)
    {
      if ((l3 & n) != 0L)
      {
        n <<= 1;
        m++;
      }
      int i1 = Long.numberOfTrailingZeros(l3);
      long l4 = l3 >> i1;
      j += i1;
      if (k + (m - i1) >= 64)
      {
        localArrayList.add(BigInteger.valueOf(l2));
        l2 = 1L;
      }
      l2 *= l4;
      k = 1 + LongMath.log2(l2, RoundingMode.FLOOR);
    }
    if (l2 > 1L)
      localArrayList.add(BigInteger.valueOf(l2));
    return listProduct(localArrayList).shiftLeft(j);
  }

  @GwtIncompatible("TODO")
  static boolean fitsInLong(BigInteger paramBigInteger)
  {
    return paramBigInteger.bitLength() <= 63;
  }

  public static boolean isPowerOfTwo(BigInteger paramBigInteger)
  {
    Preconditions.checkNotNull(paramBigInteger);
    return (paramBigInteger.signum() > 0) && (paramBigInteger.getLowestSetBit() == -1 + paramBigInteger.bitLength());
  }

  static BigInteger listProduct(List<BigInteger> paramList)
  {
    return listProduct(paramList, 0, paramList.size());
  }

  static BigInteger listProduct(List<BigInteger> paramList, int paramInt1, int paramInt2)
  {
    switch (paramInt2 - paramInt1)
    {
    default:
      int i = paramInt2 + paramInt1 >>> 1;
      return listProduct(paramList, paramInt1, i).multiply(listProduct(paramList, i, paramInt2));
    case 0:
      return BigInteger.ONE;
    case 1:
      return (BigInteger)paramList.get(paramInt1);
    case 2:
      return ((BigInteger)paramList.get(paramInt1)).multiply((BigInteger)paramList.get(paramInt1 + 1));
    case 3:
    }
    return ((BigInteger)paramList.get(paramInt1)).multiply((BigInteger)paramList.get(paramInt1 + 1)).multiply((BigInteger)paramList.get(paramInt1 + 2));
  }

  @GwtIncompatible("TODO")
  public static int log10(BigInteger paramBigInteger, RoundingMode paramRoundingMode)
  {
    MathPreconditions.checkPositive("x", paramBigInteger);
    int m;
    if (fitsInLong(paramBigInteger))
      m = LongMath.log10(paramBigInteger.longValue(), paramRoundingMode);
    Object localObject2;
    do
    {
      do
      {
        return m;
        int i = (int)(log2(paramBigInteger, RoundingMode.FLOOR) * LN_2 / LN_10);
        Object localObject1 = BigInteger.TEN.pow(i);
        int j = ((BigInteger)localObject1).compareTo(paramBigInteger);
        int n;
        if (j > 0)
        {
          do
          {
            i--;
            localObject1 = ((BigInteger)localObject1).divide(BigInteger.TEN);
            j = ((BigInteger)localObject1).compareTo(paramBigInteger);
          }
          while (j > 0);
          m = i;
          localObject2 = localObject1;
          n = j;
        }
        switch (1.$SwitchMap$java$math$RoundingMode[paramRoundingMode.ordinal()])
        {
        case 2:
        case 3:
        default:
          throw new AssertionError();
          BigInteger localBigInteger = BigInteger.TEN.multiply((BigInteger)localObject1);
          for (int k = localBigInteger.compareTo(paramBigInteger); k <= 0; k = localBigInteger.compareTo(paramBigInteger))
          {
            i++;
            localObject1 = localBigInteger;
            j = k;
            localBigInteger = BigInteger.TEN.multiply((BigInteger)localObject1);
          }
        case 1:
          if (n == 0);
          for (boolean bool = true; ; bool = false)
          {
            MathPreconditions.checkRoundingUnnecessary(bool);
            return m;
          }
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        }
      }
      while (localObject2.equals(paramBigInteger));
      return m + 1;
    }
    while (paramBigInteger.pow(2).compareTo(localObject2.pow(2).multiply(BigInteger.TEN)) <= 0);
    return m + 1;
  }

  public static int log2(BigInteger paramBigInteger, RoundingMode paramRoundingMode)
  {
    MathPreconditions.checkPositive("x", (BigInteger)Preconditions.checkNotNull(paramBigInteger));
    int i = -1 + paramBigInteger.bitLength();
    switch (1.$SwitchMap$java$math$RoundingMode[paramRoundingMode.ordinal()])
    {
    default:
      throw new AssertionError();
    case 1:
      MathPreconditions.checkRoundingUnnecessary(isPowerOfTwo(paramBigInteger));
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    }
    do
    {
      do
      {
        do
          return i;
        while (isPowerOfTwo(paramBigInteger));
        return i + 1;
        if (i >= 256)
          break;
      }
      while (paramBigInteger.compareTo(SQRT2_PRECOMPUTED_BITS.shiftRight(256 - i)) <= 0);
      return i + 1;
    }
    while (-1 + paramBigInteger.pow(2).bitLength() < 1 + i * 2);
    return i + 1;
  }

  @GwtIncompatible("TODO")
  public static BigInteger sqrt(BigInteger paramBigInteger, RoundingMode paramRoundingMode)
  {
    MathPreconditions.checkNonNegative("x", paramBigInteger);
    BigInteger localBigInteger;
    if (fitsInLong(paramBigInteger))
      localBigInteger = BigInteger.valueOf(LongMath.sqrt(paramBigInteger.longValue(), paramRoundingMode));
    do
    {
      do
      {
        return localBigInteger;
        localBigInteger = sqrtFloor(paramBigInteger);
        switch (1.$SwitchMap$java$math$RoundingMode[paramRoundingMode.ordinal()])
        {
        case 2:
        case 3:
        default:
          throw new AssertionError();
        case 1:
          MathPreconditions.checkRoundingUnnecessary(localBigInteger.pow(2).equals(paramBigInteger));
          return localBigInteger;
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        }
      }
      while (localBigInteger.pow(2).equals(paramBigInteger));
      return localBigInteger.add(BigInteger.ONE);
    }
    while (localBigInteger.pow(2).add(localBigInteger).compareTo(paramBigInteger) >= 0);
    return localBigInteger.add(BigInteger.ONE);
  }

  @GwtIncompatible("TODO")
  private static BigInteger sqrtApproxWithDoubles(BigInteger paramBigInteger)
  {
    return DoubleMath.roundToBigInteger(Math.sqrt(DoubleUtils.bigToDouble(paramBigInteger)), RoundingMode.HALF_EVEN);
  }

  @GwtIncompatible("TODO")
  private static BigInteger sqrtFloor(BigInteger paramBigInteger)
  {
    int i = log2(paramBigInteger, RoundingMode.FLOOR);
    if (i < 1023);
    BigInteger localBigInteger2;
    int j;
    for (BigInteger localBigInteger1 = sqrtApproxWithDoubles(paramBigInteger); ; localBigInteger1 = sqrtApproxWithDoubles(paramBigInteger.shiftRight(j)).shiftLeft(j >> 1))
    {
      localBigInteger2 = localBigInteger1.add(paramBigInteger.divide(localBigInteger1)).shiftRight(1);
      if (!localBigInteger1.equals(localBigInteger2))
        break;
      return localBigInteger1;
      j = 0xFFFFFFFE & i - 52;
    }
    BigInteger localBigInteger3;
    do
    {
      localBigInteger3 = localBigInteger2;
      localBigInteger2 = localBigInteger3.add(paramBigInteger.divide(localBigInteger3)).shiftRight(1);
    }
    while (localBigInteger2.compareTo(localBigInteger3) < 0);
    return localBigInteger3;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.math.BigIntegerMath
 * JD-Core Version:    0.6.2
 */