package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.math.BigInteger;
import java.util.Comparator;

@Beta
@GwtCompatible
public final class UnsignedLongs
{
  public static final long MAX_VALUE = -1L;
  private static final int[] maxSafeDigits;
  private static final long[] maxValueDivs = new long[37];
  private static final int[] maxValueMods = new int[37];

  static
  {
    maxSafeDigits = new int[37];
    BigInteger localBigInteger = new BigInteger("10000000000000000", 16);
    for (int i = 2; i <= 36; i++)
    {
      maxValueDivs[i] = divide(-1L, i);
      maxValueMods[i] = ((int)remainder(-1L, i));
      maxSafeDigits[i] = (-1 + localBigInteger.toString(i).length());
    }
  }

  public static int compare(long paramLong1, long paramLong2)
  {
    return Longs.compare(flip(paramLong1), flip(paramLong2));
  }

  public static long decode(String paramString)
  {
    ParseRequest localParseRequest = ParseRequest.fromString(paramString);
    try
    {
      long l = parseUnsignedLong(localParseRequest.rawValue, localParseRequest.radix);
      return l;
    }
    catch (NumberFormatException localNumberFormatException1)
    {
      NumberFormatException localNumberFormatException2 = new NumberFormatException("Error parsing value: " + paramString);
      localNumberFormatException2.initCause(localNumberFormatException1);
      throw localNumberFormatException2;
    }
  }

  public static long divide(long paramLong1, long paramLong2)
  {
    int i = 1;
    if (paramLong2 < 0L)
    {
      if (compare(paramLong1, paramLong2) < 0)
        return 0L;
      return 1L;
    }
    if (paramLong1 >= 0L)
      return paramLong1 / paramLong2;
    long l = (paramLong1 >>> i) / paramLong2 << i;
    if (compare(paramLong1 - l * paramLong2, paramLong2) >= 0);
    while (true)
    {
      return l + i;
      i = 0;
    }
  }

  private static long flip(long paramLong)
  {
    return 0x0 ^ paramLong;
  }

  public static String join(String paramString, long[] paramArrayOfLong)
  {
    Preconditions.checkNotNull(paramString);
    if (paramArrayOfLong.length == 0)
      return "";
    StringBuilder localStringBuilder = new StringBuilder(5 * paramArrayOfLong.length);
    localStringBuilder.append(toString(paramArrayOfLong[0]));
    for (int i = 1; i < paramArrayOfLong.length; i++)
      localStringBuilder.append(paramString).append(toString(paramArrayOfLong[i]));
    return localStringBuilder.toString();
  }

  public static Comparator<long[]> lexicographicalComparator()
  {
    return LexicographicalComparator.INSTANCE;
  }

  public static long max(long[] paramArrayOfLong)
  {
    if (paramArrayOfLong.length > 0);
    long l1;
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      l1 = flip(paramArrayOfLong[0]);
      for (int i = 1; i < paramArrayOfLong.length; i++)
      {
        long l2 = flip(paramArrayOfLong[i]);
        if (l2 > l1)
          l1 = l2;
      }
    }
    return flip(l1);
  }

  public static long min(long[] paramArrayOfLong)
  {
    if (paramArrayOfLong.length > 0);
    long l1;
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      l1 = flip(paramArrayOfLong[0]);
      for (int i = 1; i < paramArrayOfLong.length; i++)
      {
        long l2 = flip(paramArrayOfLong[i]);
        if (l2 < l1)
          l1 = l2;
      }
    }
    return flip(l1);
  }

  private static boolean overflowInParse(long paramLong, int paramInt1, int paramInt2)
  {
    boolean bool = true;
    if (paramLong >= 0L)
    {
      if (paramLong >= maxValueDivs[paramInt2])
        break label25;
      bool = false;
    }
    label25: 
    while ((paramLong > maxValueDivs[paramInt2]) || (paramInt1 > maxValueMods[paramInt2]))
      return bool;
    return false;
  }

  public static long parseUnsignedLong(String paramString)
  {
    return parseUnsignedLong(paramString, 10);
  }

  public static long parseUnsignedLong(String paramString, int paramInt)
  {
    Preconditions.checkNotNull(paramString);
    if (paramString.length() == 0)
      throw new NumberFormatException("empty string");
    if ((paramInt < 2) || (paramInt > 36))
      throw new NumberFormatException("illegal radix: " + paramInt);
    int i = -1 + maxSafeDigits[paramInt];
    long l = 0L;
    for (int j = 0; j < paramString.length(); j++)
    {
      int k = Character.digit(paramString.charAt(j), paramInt);
      if (k == -1)
        throw new NumberFormatException(paramString);
      if ((j > i) && (overflowInParse(l, k, paramInt)))
        throw new NumberFormatException("Too large for unsigned long: " + paramString);
      l = l * paramInt + k;
    }
    return l;
  }

  public static long remainder(long paramLong1, long paramLong2)
  {
    if (paramLong2 < 0L)
    {
      if (compare(paramLong1, paramLong2) < 0)
        return paramLong1;
      return paramLong1 - paramLong2;
    }
    if (paramLong1 >= 0L)
      return paramLong1 % paramLong2;
    long l = paramLong1 - paramLong2 * ((paramLong1 >>> 1) / paramLong2 << 1);
    if (compare(l, paramLong2) >= 0);
    while (true)
    {
      return l - paramLong2;
      paramLong2 = 0L;
    }
  }

  public static String toString(long paramLong)
  {
    return toString(paramLong, 10);
  }

  public static String toString(long paramLong, int paramInt)
  {
    if ((paramInt >= 2) && (paramInt <= 36));
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      Preconditions.checkArgument(bool, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX", arrayOfObject);
      if (paramLong != 0L)
        break;
      return "0";
    }
    char[] arrayOfChar = new char[64];
    int i = arrayOfChar.length;
    long l1;
    if (paramLong < 0L)
    {
      l1 = divide(paramLong, paramInt);
      long l2 = paramLong - l1 * paramInt;
      i--;
      arrayOfChar[i] = Character.forDigit((int)l2, paramInt);
    }
    for (paramLong = l1; paramLong > 0L; paramLong /= paramInt)
    {
      i--;
      arrayOfChar[i] = Character.forDigit((int)(paramLong % paramInt), paramInt);
    }
    return new String(arrayOfChar, i, arrayOfChar.length - i);
  }

  static enum LexicographicalComparator
    implements Comparator<long[]>
  {
    static
    {
      LexicographicalComparator[] arrayOfLexicographicalComparator = new LexicographicalComparator[1];
      arrayOfLexicographicalComparator[0] = INSTANCE;
    }

    public int compare(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
    {
      int i = Math.min(paramArrayOfLong1.length, paramArrayOfLong2.length);
      for (int j = 0; j < i; j++)
        if (paramArrayOfLong1[j] != paramArrayOfLong2[j])
          return UnsignedLongs.compare(paramArrayOfLong1[j], paramArrayOfLong2[j]);
      return paramArrayOfLong1.length - paramArrayOfLong2.length;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.primitives.UnsignedLongs
 * JD-Core Version:    0.6.2
 */