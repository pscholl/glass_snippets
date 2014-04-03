package com.google.common.hash;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.primitives.UnsignedInts;
import java.io.Serializable;

@Beta
public final class HashCodes
{
  public static HashCode fromBytes(byte[] paramArrayOfByte)
  {
    int i = 1;
    if (paramArrayOfByte.length >= i);
    while (true)
    {
      Preconditions.checkArgument(i, "A HashCode must contain at least 1 byte.");
      return fromBytesNoCopy((byte[])paramArrayOfByte.clone());
      int j = 0;
    }
  }

  static HashCode fromBytesNoCopy(byte[] paramArrayOfByte)
  {
    return new BytesHashCode(paramArrayOfByte);
  }

  public static HashCode fromInt(int paramInt)
  {
    return new IntHashCode(paramInt);
  }

  public static HashCode fromLong(long paramLong)
  {
    return new LongHashCode(paramLong);
  }

  private static final class BytesHashCode extends HashCode
    implements Serializable
  {
    private static final long serialVersionUID;
    final byte[] bytes;

    BytesHashCode(byte[] paramArrayOfByte)
    {
      this.bytes = ((byte[])Preconditions.checkNotNull(paramArrayOfByte));
    }

    public byte[] asBytes()
    {
      return (byte[])this.bytes.clone();
    }

    public int asInt()
    {
      if (this.bytes.length >= 4);
      for (boolean bool = true; ; bool = false)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(this.bytes.length);
        Preconditions.checkState(bool, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", arrayOfObject);
        return 0xFF & this.bytes[0] | (0xFF & this.bytes[1]) << 8 | (0xFF & this.bytes[2]) << 16 | (0xFF & this.bytes[3]) << 24;
      }
    }

    public long asLong()
    {
      if (this.bytes.length >= 8);
      for (boolean bool = true; ; bool = false)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(this.bytes.length);
        Preconditions.checkState(bool, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes).", arrayOfObject);
        return 0xFF & this.bytes[0] | (0xFF & this.bytes[1]) << 8 | (0xFF & this.bytes[2]) << 16 | (0xFF & this.bytes[3]) << 24 | (0xFF & this.bytes[4]) << 32 | (0xFF & this.bytes[5]) << 40 | (0xFF & this.bytes[6]) << 48 | (0xFF & this.bytes[7]) << 56;
      }
    }

    public int bits()
    {
      return 8 * this.bytes.length;
    }

    public int hashCode()
    {
      int i;
      if (this.bytes.length >= 4)
        i = asInt();
      while (true)
      {
        return i;
        i = 0xFF & this.bytes[0];
        for (int j = 1; j < this.bytes.length; j++)
          i |= (0xFF & this.bytes[j]) << j * 8;
      }
    }

    public long padToLong()
    {
      if (this.bytes.length < 8)
        return UnsignedInts.toLong(asInt());
      return asLong();
    }
  }

  private static final class IntHashCode extends HashCode
    implements Serializable
  {
    private static final long serialVersionUID;
    final int hash;

    IntHashCode(int paramInt)
    {
      this.hash = paramInt;
    }

    public byte[] asBytes()
    {
      byte[] arrayOfByte = new byte[4];
      arrayOfByte[0] = ((byte)this.hash);
      arrayOfByte[1] = ((byte)(this.hash >> 8));
      arrayOfByte[2] = ((byte)(this.hash >> 16));
      arrayOfByte[3] = ((byte)(this.hash >> 24));
      return arrayOfByte;
    }

    public int asInt()
    {
      return this.hash;
    }

    public long asLong()
    {
      throw new IllegalStateException("this HashCode only has 32 bits; cannot create a long");
    }

    public int bits()
    {
      return 32;
    }

    public long padToLong()
    {
      return UnsignedInts.toLong(this.hash);
    }
  }

  private static final class LongHashCode extends HashCode
    implements Serializable
  {
    private static final long serialVersionUID;
    final long hash;

    LongHashCode(long paramLong)
    {
      this.hash = paramLong;
    }

    public byte[] asBytes()
    {
      byte[] arrayOfByte = new byte[8];
      arrayOfByte[0] = ((byte)(int)this.hash);
      arrayOfByte[1] = ((byte)(int)(this.hash >> 8));
      arrayOfByte[2] = ((byte)(int)(this.hash >> 16));
      arrayOfByte[3] = ((byte)(int)(this.hash >> 24));
      arrayOfByte[4] = ((byte)(int)(this.hash >> 32));
      arrayOfByte[5] = ((byte)(int)(this.hash >> 40));
      arrayOfByte[6] = ((byte)(int)(this.hash >> 48));
      arrayOfByte[7] = ((byte)(int)(this.hash >> 56));
      return arrayOfByte;
    }

    public int asInt()
    {
      return (int)this.hash;
    }

    public long asLong()
    {
      return this.hash;
    }

    public int bits()
    {
      return 64;
    }

    public long padToLong()
    {
      return this.hash;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.hash.HashCodes
 * JD-Core Version:    0.6.2
 */