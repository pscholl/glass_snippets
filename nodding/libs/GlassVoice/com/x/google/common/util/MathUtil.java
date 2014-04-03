package com.x.google.common.util;

public final class MathUtil
{
  private static final long MAX_LONG_ROOT = 3037000499L;
  public static final int TRIG_MULTIPLIER = 250;
  private static final byte[] sinArray = { 0, 4, 9, 13, 17, 22, 26, 30, 35, 39, 43, 48, 52, 56, 60, 65, 69, 73, 77, 81, 86, 90, 94, 98, 102, 106, 110, 113, 117, 121, 125, -127, -124, -120, -116, -113, -109, -106, -102, -99, -95, -92, -89, -86, -82, -79, -76, -73, -70, -67, -64, -62, -59, -56, -54, -51, -49, -46, -44, -42, -39, -37, -35, -33, -31, -29, -28, -26, -24, -23, -21, -20, -18, -17, -16, -15, -13, -12, -11, -11, -10, -9, -8, -8, -7, -7, -7, -6, -6, -6, -6 };

  public static double atan(double paramDouble)
  {
    return Math.atan(paramDouble);
  }

  public static double atan2(double paramDouble1, double paramDouble2)
  {
    return Math.atan2(paramDouble1, paramDouble2);
  }

  public static int ceiledDivision(int paramInt1, int paramInt2)
  {
    if (paramInt1 >= 0)
      return (-1 + (paramInt1 + paramInt2)) / paramInt2;
    return paramInt1 / paramInt2;
  }

  public static int ceiledLog(int paramInt)
  {
    int i;
    if (paramInt < 1)
      i = -1;
    while (true)
    {
      return i;
      i = 0;
      int j = paramInt - 1;
      while (j != 0)
      {
        i++;
        j >>= 1;
      }
    }
  }

  public static int cos(int paramInt)
  {
    int i = normalizeAngle(paramInt, 360);
    if (i < 90)
      return 0xFF & sinArray[(90 - i)];
    if (i < 180)
      return -(0xFF & sinArray[(i - 90)]);
    if (i < 270)
      return -(0xFF & sinArray[(270 - i)]);
    return 0xFF & sinArray[(i - 270)];
  }

  public static double normalizeAbsoluteAngle(double paramDouble)
  {
    if (paramDouble >= 360.0D)
      paramDouble -= 360.0D;
    while (paramDouble >= 0.0D)
      return paramDouble;
    return paramDouble + 360.0D;
  }

  public static float normalizeAbsoluteAngle(float paramFloat)
  {
    if (paramFloat >= 360.0F)
      paramFloat -= 360.0F;
    while (paramFloat >= 0.0F)
      return paramFloat;
    return paramFloat + 360.0F;
  }

  public static int normalizeAbsoluteAngle(int paramInt)
  {
    if (paramInt >= 360)
      paramInt -= 360;
    while (paramInt >= 0)
      return paramInt;
    return paramInt + 360;
  }

  private static int normalizeAngle(int paramInt1, int paramInt2)
  {
    int i = paramInt1 % paramInt2;
    if (i < 0)
      i += paramInt2;
    return i;
  }

  public static double normalizeRelativeAngle(double paramDouble)
  {
    if (paramDouble >= 180.0D)
      paramDouble -= 360.0D;
    while (paramDouble >= -180.0D)
      return paramDouble;
    return paramDouble + 360.0D;
  }

  public static float normalizeRelativeAngle(float paramFloat)
  {
    if (paramFloat >= 180.0F)
      paramFloat -= 360.0F;
    while (paramFloat >= -180.0F)
      return paramFloat;
    return paramFloat + 360.0F;
  }

  public static int normalizeRelativeAngle(int paramInt)
  {
    if (paramInt >= 180)
      paramInt -= 360;
    while (paramInt >= -180)
      return paramInt;
    return paramInt + 360;
  }

  public static long power(long paramLong1, long paramLong2)
  {
    if (paramLong2 == 0L)
      return 1L;
    if (paramLong2 % 2L == 0L)
      return power(paramLong1 * paramLong1, paramLong2 / 2L);
    return paramLong1 * power(paramLong1 * paramLong1, paramLong2 / 2L);
  }

  public static int round(double paramDouble)
  {
    if (paramDouble < 0.0D);
    for (double d = paramDouble - 0.5D; ; d = paramDouble + 0.5D)
      return (int)d;
  }

  public static int roundUp(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
      return (paramInt1 - (paramInt2 - 1)) / paramInt2;
    return (paramInt1 + (paramInt2 - 1)) / paramInt2;
  }

  public static int roundedDivision(int paramInt1, int paramInt2)
  {
    return (paramInt1 + paramInt2 / 2) / paramInt2;
  }

  public static int sin(int paramInt)
  {
    int i = normalizeAngle(paramInt, 360);
    if (i < 90)
      return 0xFF & sinArray[i];
    if (i < 180)
      return 0xFF & sinArray[(180 - i)];
    if (i < 270)
      return -(0xFF & sinArray[(i - 180)]);
    return -(0xFF & sinArray[(360 - i)]);
  }

  public static int squareRoot(int paramInt)
  {
    int i = 0;
    if (paramInt <= 0)
      return i;
    i = 2 + (paramInt >> 15);
    int j = 0;
    while (true)
    {
      if (j >= 32)
        break label44;
      int k = i + paramInt / i >> 1;
      if (i == k)
        break;
      j++;
      i = k;
    }
    while (true)
      label44: if (i > paramInt / i)
      {
        i--;
      }
      else
      {
        if (i * i > -1 + (paramInt - i * 2))
          break;
        i++;
      }
  }

  public static long squareRoot(long paramLong1, long paramLong2, long paramLong3)
  {
    long l3;
    if (paramLong1 > 9223372030926249001L)
      l3 = 3037000499L;
    long l2;
    label112: 
    do
    {
      return l3;
      long l1 = Math.min(paramLong3, 3037000499L);
      l2 = paramLong2 + l1 >> 1;
      l3 = paramLong2;
      if (l1 - l3 > 1L)
      {
        long l4 = paramLong1 - l2 * l2;
        long l5;
        if (l4 > 0L)
          l5 = 1L + (l2 + l1) >> 1;
        while (true)
        {
          l3 = l2;
          l2 = l5;
          break;
          if (l4 >= 0L)
            break label112;
          l5 = l2 + l3 >> 1;
          l1 = l2;
          l2 = l3;
        }
      }
    }
    while (l2 * l2 != paramLong1);
    return l2;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.util.MathUtil
 * JD-Core Version:    0.6.2
 */