package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Comparator;

@GwtCompatible
public final class SignedBytes
{
  public static final byte MAX_POWER_OF_TWO = 64;

  public static byte checkedCast(long paramLong)
  {
    byte b = (byte)(int)paramLong;
    if (b == paramLong);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(paramLong);
      Preconditions.checkArgument(bool, "Out of range: %s", arrayOfObject);
      return b;
    }
  }

  public static int compare(byte paramByte1, byte paramByte2)
  {
    return paramByte1 - paramByte2;
  }

  public static String join(String paramString, byte[] paramArrayOfByte)
  {
    Preconditions.checkNotNull(paramString);
    if (paramArrayOfByte.length == 0)
      return "";
    StringBuilder localStringBuilder = new StringBuilder(5 * paramArrayOfByte.length);
    localStringBuilder.append(paramArrayOfByte[0]);
    for (int i = 1; i < paramArrayOfByte.length; i++)
      localStringBuilder.append(paramString).append(paramArrayOfByte[i]);
    return localStringBuilder.toString();
  }

  public static Comparator<byte[]> lexicographicalComparator()
  {
    return LexicographicalComparator.INSTANCE;
  }

  public static byte max(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length > 0);
    byte b;
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      b = paramArrayOfByte[0];
      for (int i = 1; i < paramArrayOfByte.length; i++)
        if (paramArrayOfByte[i] > b)
          b = paramArrayOfByte[i];
    }
    return b;
  }

  public static byte min(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length > 0);
    byte b;
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      b = paramArrayOfByte[0];
      for (int i = 1; i < paramArrayOfByte.length; i++)
        if (paramArrayOfByte[i] < b)
          b = paramArrayOfByte[i];
    }
    return b;
  }

  public static byte saturatedCast(long paramLong)
  {
    if (paramLong > 127L)
      return 127;
    if (paramLong < -128L)
      return -128;
    return (byte)(int)paramLong;
  }

  private static enum LexicographicalComparator
    implements Comparator<byte[]>
  {
    static
    {
      LexicographicalComparator[] arrayOfLexicographicalComparator = new LexicographicalComparator[1];
      arrayOfLexicographicalComparator[0] = INSTANCE;
    }

    public int compare(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    {
      int i = Math.min(paramArrayOfByte1.length, paramArrayOfByte2.length);
      for (int j = 0; j < i; j++)
      {
        int k = SignedBytes.compare(paramArrayOfByte1[j], paramArrayOfByte2[j]);
        if (k != 0)
          return k;
      }
      return paramArrayOfByte1.length - paramArrayOfByte2.length;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.primitives.SignedBytes
 * JD-Core Version:    0.6.2
 */