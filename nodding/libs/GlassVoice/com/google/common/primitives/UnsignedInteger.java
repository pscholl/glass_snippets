package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.math.BigInteger;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
public final class UnsignedInteger extends Number
  implements Comparable<UnsignedInteger>
{
  public static final UnsignedInteger MAX_VALUE = asUnsigned(-1);
  public static final UnsignedInteger ONE;
  public static final UnsignedInteger ZERO = asUnsigned(0);
  private final int value;

  static
  {
    ONE = asUnsigned(1);
  }

  private UnsignedInteger(int paramInt)
  {
    this.value = (paramInt & 0xFFFFFFFF);
  }

  @Deprecated
  @Beta
  public static UnsignedInteger asUnsigned(int paramInt)
  {
    return fromIntBits(paramInt);
  }

  public static UnsignedInteger fromIntBits(int paramInt)
  {
    return new UnsignedInteger(paramInt);
  }

  public static UnsignedInteger valueOf(long paramLong)
  {
    if ((0xFFFFFFFF & paramLong) == paramLong);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(paramLong);
      Preconditions.checkArgument(bool, "value (%s) is outside the range for an unsigned integer value", arrayOfObject);
      return fromIntBits((int)paramLong);
    }
  }

  public static UnsignedInteger valueOf(String paramString)
  {
    return valueOf(paramString, 10);
  }

  public static UnsignedInteger valueOf(String paramString, int paramInt)
  {
    return fromIntBits(UnsignedInts.parseUnsignedInt(paramString, paramInt));
  }

  public static UnsignedInteger valueOf(BigInteger paramBigInteger)
  {
    Preconditions.checkNotNull(paramBigInteger);
    if ((paramBigInteger.signum() >= 0) && (paramBigInteger.bitLength() <= 32));
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "value (%s) is outside the range for an unsigned integer value", new Object[] { paramBigInteger });
      return fromIntBits(paramBigInteger.intValue());
    }
  }

  @Deprecated
  @Beta
  public UnsignedInteger add(UnsignedInteger paramUnsignedInteger)
  {
    return plus(paramUnsignedInteger);
  }

  public BigInteger bigIntegerValue()
  {
    return BigInteger.valueOf(longValue());
  }

  public int compareTo(UnsignedInteger paramUnsignedInteger)
  {
    Preconditions.checkNotNull(paramUnsignedInteger);
    return UnsignedInts.compare(this.value, paramUnsignedInteger.value);
  }

  @Deprecated
  @Beta
  public UnsignedInteger divide(UnsignedInteger paramUnsignedInteger)
  {
    return dividedBy(paramUnsignedInteger);
  }

  @CheckReturnValue
  public UnsignedInteger dividedBy(UnsignedInteger paramUnsignedInteger)
  {
    return fromIntBits(UnsignedInts.divide(this.value, ((UnsignedInteger)Preconditions.checkNotNull(paramUnsignedInteger)).value));
  }

  public double doubleValue()
  {
    return longValue();
  }

  public boolean equals(@Nullable Object paramObject)
  {
    boolean bool1 = paramObject instanceof UnsignedInteger;
    boolean bool2 = false;
    if (bool1)
    {
      UnsignedInteger localUnsignedInteger = (UnsignedInteger)paramObject;
      int i = this.value;
      int j = localUnsignedInteger.value;
      bool2 = false;
      if (i == j)
        bool2 = true;
    }
    return bool2;
  }

  public float floatValue()
  {
    return (float)longValue();
  }

  public int hashCode()
  {
    return this.value;
  }

  public int intValue()
  {
    return this.value;
  }

  public long longValue()
  {
    return UnsignedInts.toLong(this.value);
  }

  @CheckReturnValue
  public UnsignedInteger minus(UnsignedInteger paramUnsignedInteger)
  {
    return fromIntBits(this.value - ((UnsignedInteger)Preconditions.checkNotNull(paramUnsignedInteger)).value);
  }

  @CheckReturnValue
  public UnsignedInteger mod(UnsignedInteger paramUnsignedInteger)
  {
    return fromIntBits(UnsignedInts.remainder(this.value, ((UnsignedInteger)Preconditions.checkNotNull(paramUnsignedInteger)).value));
  }

  @Deprecated
  @Beta
  @GwtIncompatible("Does not truncate correctly")
  public UnsignedInteger multiply(UnsignedInteger paramUnsignedInteger)
  {
    return times(paramUnsignedInteger);
  }

  @CheckReturnValue
  public UnsignedInteger plus(UnsignedInteger paramUnsignedInteger)
  {
    return fromIntBits(this.value + ((UnsignedInteger)Preconditions.checkNotNull(paramUnsignedInteger)).value);
  }

  @Deprecated
  @Beta
  public UnsignedInteger remainder(UnsignedInteger paramUnsignedInteger)
  {
    return mod(paramUnsignedInteger);
  }

  @Deprecated
  @Beta
  public UnsignedInteger subtract(UnsignedInteger paramUnsignedInteger)
  {
    return minus(paramUnsignedInteger);
  }

  @CheckReturnValue
  @GwtIncompatible("Does not truncate correctly")
  public UnsignedInteger times(UnsignedInteger paramUnsignedInteger)
  {
    return fromIntBits(this.value * ((UnsignedInteger)Preconditions.checkNotNull(paramUnsignedInteger)).value);
  }

  public String toString()
  {
    return toString(10);
  }

  public String toString(int paramInt)
  {
    return UnsignedInts.toString(this.value, paramInt);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.primitives.UnsignedInteger
 * JD-Core Version:    0.6.2
 */