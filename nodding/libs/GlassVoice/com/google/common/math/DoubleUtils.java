package com.google.common.math;

import com.google.common.base.Preconditions;
import java.math.BigInteger;

final class DoubleUtils
{
  static final int EXPONENT_BIAS = 1023;
  static final long EXPONENT_MASK = 9218868437227405312L;
  static final long IMPLICIT_BIT = 4503599627370496L;
  static final int MAX_EXPONENT = 1023;
  static final int MIN_EXPONENT = -1022;
  private static final long ONE_BITS = 0L;
  static final int SIGNIFICAND_BITS = 52;
  static final long SIGNIFICAND_MASK = 4503599627370495L;
  static final long SIGN_MASK = -9223372036854775808L;

  static double bigToDouble(BigInteger paramBigInteger)
  {
    BigInteger localBigInteger = paramBigInteger.abs();
    int i = -1 + localBigInteger.bitLength();
    if (i < 63)
      return paramBigInteger.longValue();
    if (i > 1023)
      return (1.0D / 0.0D) * paramBigInteger.signum();
    int j = -1 + (i - 52);
    long l1 = localBigInteger.shiftRight(j).longValue();
    long l2 = 0xFFFFFFFF & l1 >> 1;
    int k;
    if (((1L & l1) != 0L) && (((1L & l2) != 0L) || (localBigInteger.getLowestSetBit() < j)))
    {
      k = 1;
      if (k == 0)
        break label140;
    }
    label140: for (long l3 = l2 + 1L; ; l3 = l2)
    {
      return Double.longBitsToDouble(l3 + (i + 1023 << 52) | 0x0 & paramBigInteger.signum());
      k = 0;
      break;
    }
  }

  static double copySign(double paramDouble1, double paramDouble2)
  {
    return Double.longBitsToDouble(0xFFFFFFFF & Double.doubleToRawLongBits(paramDouble1) | 0x0 & Double.doubleToRawLongBits(paramDouble2));
  }

  static double ensureNonNegative(double paramDouble)
  {
    if (!Double.isNaN(paramDouble));
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      if (paramDouble <= 0.0D)
        break;
      return paramDouble;
    }
    return 0.0D;
  }

  static int getExponent(double paramDouble)
  {
    return -1023 + (int)((0x0 & Double.doubleToRawLongBits(paramDouble)) >>> 52);
  }

  static long getSignificand(double paramDouble)
  {
    Preconditions.checkArgument(isFinite(paramDouble), "not a normal value");
    int i = getExponent(paramDouble);
    long l = 0xFFFFFFFF & Double.doubleToRawLongBits(paramDouble);
    if (i == -1023)
      return l << 1;
    return 0x0 | l;
  }

  static boolean isFinite(double paramDouble)
  {
    return getExponent(paramDouble) <= 1023;
  }

  static boolean isNormal(double paramDouble)
  {
    return getExponent(paramDouble) >= -1022;
  }

  static double nextDown(double paramDouble)
  {
    return -nextUp(-paramDouble);
  }

  static double nextUp(double paramDouble)
  {
    if (Double.isNaN(paramDouble));
    do
    {
      return paramDouble;
      if (paramDouble == 0.0D)
        return 4.9E-324D;
    }
    while (paramDouble == (1.0D / 0.0D));
    long l = Double.doubleToRawLongBits(paramDouble);
    return Double.longBitsToDouble(l + (1L | l >> 63));
  }

  static double scaleNormalize(double paramDouble)
  {
    return Double.longBitsToDouble(0xFFFFFFFF & Double.doubleToRawLongBits(paramDouble) | ONE_BITS);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.math.DoubleUtils
 * JD-Core Version:    0.6.2
 */