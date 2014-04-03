package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.math.BigInteger;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

@GwtCompatible(serializable=true)
public final class UnsignedLong extends Number
  implements Comparable<UnsignedLong>, Serializable
{
  public static final UnsignedLong MAX_VALUE = new UnsignedLong(-1L);
  public static final UnsignedLong ONE;
  private static final long UNSIGNED_MASK = 9223372036854775807L;
  public static final UnsignedLong ZERO = new UnsignedLong(0L);
  private final long value;

  static
  {
    ONE = new UnsignedLong(1L);
  }

  private UnsignedLong(long paramLong)
  {
    this.value = paramLong;
  }

  @Deprecated
  @Beta
  public static UnsignedLong asUnsigned(long paramLong)
  {
    return fromLongBits(paramLong);
  }

  public static UnsignedLong fromLongBits(long paramLong)
  {
    return new UnsignedLong(paramLong);
  }

  public static UnsignedLong valueOf(long paramLong)
  {
    if (paramLong >= 0L);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(paramLong);
      Preconditions.checkArgument(bool, "value (%s) is outside the range for an unsigned long value", arrayOfObject);
      return fromLongBits(paramLong);
    }
  }

  public static UnsignedLong valueOf(String paramString)
  {
    return valueOf(paramString, 10);
  }

  public static UnsignedLong valueOf(String paramString, int paramInt)
  {
    return fromLongBits(UnsignedLongs.parseUnsignedLong(paramString, paramInt));
  }

  public static UnsignedLong valueOf(BigInteger paramBigInteger)
  {
    Preconditions.checkNotNull(paramBigInteger);
    if ((paramBigInteger.signum() >= 0) && (paramBigInteger.bitLength() <= 64));
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "value (%s) is outside the range for an unsigned long value", new Object[] { paramBigInteger });
      return fromLongBits(paramBigInteger.longValue());
    }
  }

  @Deprecated
  @Beta
  public UnsignedLong add(UnsignedLong paramUnsignedLong)
  {
    return plus(paramUnsignedLong);
  }

  public BigInteger bigIntegerValue()
  {
    BigInteger localBigInteger = BigInteger.valueOf(0xFFFFFFFF & this.value);
    if (this.value < 0L)
      localBigInteger = localBigInteger.setBit(63);
    return localBigInteger;
  }

  public int compareTo(UnsignedLong paramUnsignedLong)
  {
    Preconditions.checkNotNull(paramUnsignedLong);
    return UnsignedLongs.compare(this.value, paramUnsignedLong.value);
  }

  @Deprecated
  @Beta
  public UnsignedLong divide(UnsignedLong paramUnsignedLong)
  {
    return dividedBy(paramUnsignedLong);
  }

  @CheckReturnValue
  public UnsignedLong dividedBy(UnsignedLong paramUnsignedLong)
  {
    return fromLongBits(UnsignedLongs.divide(this.value, ((UnsignedLong)Preconditions.checkNotNull(paramUnsignedLong)).value));
  }

  public double doubleValue()
  {
    double d = 0xFFFFFFFF & this.value;
    if (this.value < 0L)
      d += 9.223372036854776E+18D;
    return d;
  }

  public boolean equals(@Nullable Object paramObject)
  {
    boolean bool1 = paramObject instanceof UnsignedLong;
    boolean bool2 = false;
    if (bool1)
    {
      UnsignedLong localUnsignedLong = (UnsignedLong)paramObject;
      boolean bool3 = this.value < localUnsignedLong.value;
      bool2 = false;
      if (!bool3)
        bool2 = true;
    }
    return bool2;
  }

  public float floatValue()
  {
    float f = (float)(0xFFFFFFFF & this.value);
    if (this.value < 0L)
      f += 9.223372E+18F;
    return f;
  }

  public int hashCode()
  {
    return Longs.hashCode(this.value);
  }

  public int intValue()
  {
    return (int)this.value;
  }

  public long longValue()
  {
    return this.value;
  }

  public UnsignedLong minus(UnsignedLong paramUnsignedLong)
  {
    return fromLongBits(this.value - ((UnsignedLong)Preconditions.checkNotNull(paramUnsignedLong)).value);
  }

  @CheckReturnValue
  public UnsignedLong mod(UnsignedLong paramUnsignedLong)
  {
    return fromLongBits(UnsignedLongs.remainder(this.value, ((UnsignedLong)Preconditions.checkNotNull(paramUnsignedLong)).value));
  }

  @Deprecated
  @Beta
  public UnsignedLong multiply(UnsignedLong paramUnsignedLong)
  {
    return times(paramUnsignedLong);
  }

  public UnsignedLong plus(UnsignedLong paramUnsignedLong)
  {
    return fromLongBits(this.value + ((UnsignedLong)Preconditions.checkNotNull(paramUnsignedLong)).value);
  }

  @Deprecated
  @Beta
  public UnsignedLong remainder(UnsignedLong paramUnsignedLong)
  {
    return mod(paramUnsignedLong);
  }

  @Deprecated
  @Beta
  public UnsignedLong subtract(UnsignedLong paramUnsignedLong)
  {
    return minus(paramUnsignedLong);
  }

  @CheckReturnValue
  public UnsignedLong times(UnsignedLong paramUnsignedLong)
  {
    return fromLongBits(this.value * ((UnsignedLong)Preconditions.checkNotNull(paramUnsignedLong)).value);
  }

  public String toString()
  {
    return UnsignedLongs.toString(this.value);
  }

  public String toString(int paramInt)
  {
    return UnsignedLongs.toString(this.value, paramInt);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.primitives.UnsignedLong
 * JD-Core Version:    0.6.2
 */