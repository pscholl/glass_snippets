package com.google.glass.util;

public class ArrayUtils
{
  public static boolean isEmpty(byte[] paramArrayOfByte)
  {
    return (paramArrayOfByte == null) || (paramArrayOfByte.length == 0);
  }

  public static boolean isEmpty(Object[] paramArrayOfObject)
  {
    return (paramArrayOfObject == null) || (paramArrayOfObject.length == 0);
  }

  public static int length(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      return 0;
    return paramArrayOfByte.length;
  }

  public static int length(Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject == null)
      return 0;
    return paramArrayOfObject.length;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.ArrayUtils
 * JD-Core Version:    0.6.2
 */