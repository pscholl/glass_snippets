package com.google.common.hash;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import java.security.MessageDigest;
import javax.annotation.Nullable;

@Beta
public abstract class HashCode
{
  private static final char[] hexDigits = "0123456789abcdef".toCharArray();

  public abstract byte[] asBytes();

  public abstract int asInt();

  public abstract long asLong();

  public abstract int bits();

  public boolean equals(@Nullable Object paramObject)
  {
    if ((paramObject instanceof HashCode))
    {
      HashCode localHashCode = (HashCode)paramObject;
      return MessageDigest.isEqual(asBytes(), localHashCode.asBytes());
    }
    return false;
  }

  public int hashCode()
  {
    return asInt();
  }

  public abstract long padToLong();

  public String toString()
  {
    byte[] arrayOfByte = asBytes();
    StringBuilder localStringBuilder = new StringBuilder(2 * arrayOfByte.length);
    int i = arrayOfByte.length;
    for (int j = 0; j < i; j++)
    {
      int k = arrayOfByte[j];
      localStringBuilder.append(hexDigits[(0xF & k >> 4)]).append(hexDigits[(k & 0xF)]);
    }
    return localStringBuilder.toString();
  }

  public int writeBytesTo(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = asBytes();
    int[] arrayOfInt = new int[2];
    arrayOfInt[0] = paramInt2;
    arrayOfInt[1] = arrayOfByte.length;
    int i = Ints.min(arrayOfInt);
    Preconditions.checkPositionIndexes(paramInt1, paramInt1 + i, paramArrayOfByte.length);
    System.arraycopy(arrayOfByte, 0, paramArrayOfByte, paramInt1, i);
    return i;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.hash.HashCode
 * JD-Core Version:    0.6.2
 */