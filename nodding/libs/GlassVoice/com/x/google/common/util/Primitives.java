package com.x.google.common.util;

public class Primitives
{
  private static PrimitiveConverter converter;

  static
  {
    resetConverter();
  }

  static void injectConverter(PrimitiveConverter paramPrimitiveConverter)
  {
    converter = paramPrimitiveConverter;
  }

  static void resetConverter()
  {
    converter = new J2meConverter(null);
  }

  public static Integer toInteger(int paramInt)
  {
    return converter.toInteger(paramInt);
  }

  public static Long toLong(long paramLong)
  {
    return converter.toLong(paramLong);
  }

  private static class J2meConverter extends Primitives.PrimitiveConverter
  {
    private Integer[] SMALL_INTS;
    private Long[] SMALL_LONGS;

    private J2meConverter()
    {
      Long[] arrayOfLong = new Long[16];
      arrayOfLong[0] = new Long(0L);
      arrayOfLong[1] = new Long(1L);
      arrayOfLong[2] = new Long(2L);
      arrayOfLong[3] = new Long(3L);
      arrayOfLong[4] = new Long(4L);
      arrayOfLong[5] = new Long(5L);
      arrayOfLong[6] = new Long(6L);
      arrayOfLong[7] = new Long(7L);
      arrayOfLong[8] = new Long(8L);
      arrayOfLong[9] = new Long(9L);
      arrayOfLong[10] = new Long(10L);
      arrayOfLong[11] = new Long(11L);
      arrayOfLong[12] = new Long(12L);
      arrayOfLong[13] = new Long(13L);
      arrayOfLong[14] = new Long(14L);
      arrayOfLong[15] = new Long(15L);
      this.SMALL_LONGS = arrayOfLong;
      Integer[] arrayOfInteger = new Integer[16];
      arrayOfInteger[0] = new Integer(0);
      arrayOfInteger[1] = new Integer(1);
      arrayOfInteger[2] = new Integer(2);
      arrayOfInteger[3] = new Integer(3);
      arrayOfInteger[4] = new Integer(4);
      arrayOfInteger[5] = new Integer(5);
      arrayOfInteger[6] = new Integer(6);
      arrayOfInteger[7] = new Integer(7);
      arrayOfInteger[8] = new Integer(8);
      arrayOfInteger[9] = new Integer(9);
      arrayOfInteger[10] = new Integer(10);
      arrayOfInteger[11] = new Integer(11);
      arrayOfInteger[12] = new Integer(12);
      arrayOfInteger[13] = new Integer(13);
      arrayOfInteger[14] = new Integer(14);
      arrayOfInteger[15] = new Integer(15);
      this.SMALL_INTS = arrayOfInteger;
    }

    public Integer toInteger(int paramInt)
    {
      if ((paramInt >= 0) && (paramInt < this.SMALL_INTS.length))
        return this.SMALL_INTS[paramInt];
      return new Integer(paramInt);
    }

    public Long toLong(long paramLong)
    {
      if ((paramLong >= 0L) && (paramLong < this.SMALL_LONGS.length))
        return this.SMALL_LONGS[((int)paramLong)];
      return new Long(paramLong);
    }
  }

  public static abstract class PrimitiveConverter
  {
    public abstract Integer toInteger(int paramInt);

    public abstract Long toLong(long paramLong);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.util.Primitives
 * JD-Core Version:    0.6.2
 */