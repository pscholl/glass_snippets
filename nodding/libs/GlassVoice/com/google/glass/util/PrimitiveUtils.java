package com.google.glass.util;

public class PrimitiveUtils
{
  public static boolean safeBoolean(Boolean paramBoolean)
  {
    if (paramBoolean == null)
      return false;
    return paramBoolean.booleanValue();
  }

  public static double safeDouble(Double paramDouble)
  {
    if (paramDouble == null)
      return 0.0D;
    return paramDouble.doubleValue();
  }

  public static float safeFloat(Float paramFloat)
  {
    if (paramFloat == null)
      return 0.0F;
    return paramFloat.floatValue();
  }

  public static int safeInt(Integer paramInteger)
  {
    if (paramInteger == null)
      return 0;
    return paramInteger.intValue();
  }

  public static long safeLong(Long paramLong)
  {
    if (paramLong == null)
      return 0L;
    return paramLong.longValue();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.PrimitiveUtils
 * JD-Core Version:    0.6.2
 */