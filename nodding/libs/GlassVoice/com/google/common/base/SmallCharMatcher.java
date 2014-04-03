package com.google.common.base;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import java.util.BitSet;

@GwtIncompatible("no precomputation is done in GWT")
final class SmallCharMatcher extends CharMatcher.FastMatcher
{
  private static final int C1 = -862048943;
  private static final int C2 = 461845907;
  private static final double DESIRED_LOAD_FACTOR = 0.5D;
  static final int MAX_SIZE = 1023;
  private final boolean containsZero;
  private final long filter;
  private final char[] table;

  private SmallCharMatcher(char[] paramArrayOfChar, long paramLong, boolean paramBoolean, String paramString)
  {
    super(paramString);
    this.table = paramArrayOfChar;
    this.filter = paramLong;
    this.containsZero = paramBoolean;
  }

  private boolean checkFilter(int paramInt)
  {
    return 1L == (1L & this.filter >> paramInt);
  }

  @VisibleForTesting
  static int chooseTableSize(int paramInt)
  {
    int i;
    if (paramInt == 1)
      i = 2;
    while (true)
    {
      return i;
      i = Integer.highestOneBit(paramInt - 1) << 1;
      while (0.5D * i < paramInt)
        i <<= 1;
    }
  }

  @GwtIncompatible("java.util.BitSet")
  static CharMatcher from(BitSet paramBitSet, String paramString)
  {
    long l = 0L;
    int i = paramBitSet.cardinality();
    boolean bool = paramBitSet.get(0);
    char[] arrayOfChar = new char[chooseTableSize(i)];
    int j = -1 + arrayOfChar.length;
    int k = paramBitSet.nextSetBit(0);
    if (k != -1)
    {
      l |= 1L << k;
      for (int m = j & smear(k); ; m = j & m + 1)
        if (arrayOfChar[m] == 0)
        {
          arrayOfChar[m] = ((char)k);
          k = paramBitSet.nextSetBit(k + 1);
          break;
        }
    }
    return new SmallCharMatcher(arrayOfChar, l, bool, paramString);
  }

  static int smear(int paramInt)
  {
    return 461845907 * Integer.rotateLeft(-862048943 * paramInt, 15);
  }

  public boolean matches(char paramChar)
  {
    boolean bool2;
    if (paramChar == 0)
      bool2 = this.containsZero;
    boolean bool1;
    do
    {
      return bool2;
      bool1 = checkFilter(paramChar);
      bool2 = false;
    }
    while (!bool1);
    int i = -1 + this.table.length;
    int j = i & smear(paramChar);
    int k = j;
    do
    {
      int m = this.table[k];
      bool2 = false;
      if (m == 0)
        break;
      if (this.table[k] == paramChar)
        return true;
      k = i & k + 1;
    }
    while (k != j);
    return false;
  }

  @GwtIncompatible("java.util.BitSet")
  void setBits(BitSet paramBitSet)
  {
    if (this.containsZero)
      paramBitSet.set(0);
    for (int k : this.table)
      if (k != 0)
        paramBitSet.set(k);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.base.SmallCharMatcher
 * JD-Core Version:    0.6.2
 */