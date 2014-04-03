package com.x.google.common;

public final class ParseHexUtil
{
  public static final int FIRST_BIT_OF_HEX = 8;
  public static final int HEX_RADIX = 16;
  public static final int INT_MIN = -2147483648;
  public static final long LONG_MASK_LOW_32_BITS = 4294967295L;
  public static final long LONG_MIN = -9223372036854775808L;
  public static final int MASKING = 7;
  public static final int MAX_INT_HEX_LEN = 8;
  public static final int MAX_LONG_HEX_LEN = 16;

  private static boolean isFirstBitSet(String paramString, int paramInt)
  {
    int i = paramString.length();
    boolean bool = false;
    if (i == paramInt)
    {
      int j = Integer.parseInt(String.valueOf(paramString.charAt(0)), 16);
      bool = false;
      if (j > 7)
        bool = true;
    }
    return bool;
  }

  private static String maskFirstBit(String paramString)
    throws NumberFormatException
  {
    int i = Integer.parseInt(String.valueOf(paramString.charAt(0)), 16);
    return String.valueOf(i - 8) + paramString.substring(1);
  }

  public static int parseHexInt(String paramString)
    throws NumberFormatException
  {
    if (isFirstBitSet(paramString, 8))
      return -2147483648 + Integer.parseInt(maskFirstBit(paramString), 16);
    return Integer.parseInt(paramString, 16);
  }

  public static long parseHexLong(String paramString)
    throws NumberFormatException
  {
    if (isFirstBitSet(paramString, 16))
      return -9223372036854775808L + Long.parseLong(maskFirstBit(paramString), 16);
    return Long.parseLong(paramString, 16);
  }

  public static String toString(long paramLong)
  {
    String str1 = Long.toString(0xFFFFFFFF & paramLong >> 32, 16);
    String str2 = Long.toString(0xFFFFFFFF & paramLong, 16);
    if (Long.parseLong(str1, 16) == 0L)
      str1 = "";
    while (true)
    {
      return str1 + str2;
      if (str2.length() < 8)
      {
        StringBuffer localStringBuffer = new StringBuffer(8);
        int i = 8 - str2.length();
        for (int j = 0; j < i; j++)
          localStringBuffer.append("0");
        localStringBuffer.append(str2);
        str2 = localStringBuffer.toString();
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.ParseHexUtil
 * JD-Core Version:    0.6.2
 */