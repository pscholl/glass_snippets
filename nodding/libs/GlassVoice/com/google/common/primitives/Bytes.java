package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

@GwtCompatible
public final class Bytes
{
  public static List<Byte> asList(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length == 0)
      return Collections.emptyList();
    return new ByteArrayAsList(paramArrayOfByte);
  }

  public static byte[] concat(byte[][] paramArrayOfByte)
  {
    int i = 0;
    int j = paramArrayOfByte.length;
    for (int k = 0; k < j; k++)
      i += paramArrayOfByte[k].length;
    byte[] arrayOfByte1 = new byte[i];
    int m = 0;
    int n = paramArrayOfByte.length;
    for (int i1 = 0; i1 < n; i1++)
    {
      byte[] arrayOfByte2 = paramArrayOfByte[i1];
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, m, arrayOfByte2.length);
      m += arrayOfByte2.length;
    }
    return arrayOfByte1;
  }

  public static boolean contains(byte[] paramArrayOfByte, byte paramByte)
  {
    int i = paramArrayOfByte.length;
    for (int j = 0; j < i; j++)
      if (paramArrayOfByte[j] == paramByte)
        return true;
    return false;
  }

  private static byte[] copyOf(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, Math.min(paramArrayOfByte.length, paramInt));
    return arrayOfByte;
  }

  public static byte[] ensureCapacity(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    boolean bool1;
    if (paramInt1 >= 0)
    {
      bool1 = true;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(paramInt1);
      Preconditions.checkArgument(bool1, "Invalid minLength: %s", arrayOfObject1);
      if (paramInt2 < 0)
        break label79;
    }
    label79: for (boolean bool2 = true; ; bool2 = false)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(paramInt2);
      Preconditions.checkArgument(bool2, "Invalid padding: %s", arrayOfObject2);
      if (paramArrayOfByte.length < paramInt1)
        paramArrayOfByte = copyOf(paramArrayOfByte, paramInt1 + paramInt2);
      return paramArrayOfByte;
      bool1 = false;
      break;
    }
  }

  public static int hashCode(byte paramByte)
  {
    return paramByte;
  }

  public static int indexOf(byte[] paramArrayOfByte, byte paramByte)
  {
    return indexOf(paramArrayOfByte, paramByte, 0, paramArrayOfByte.length);
  }

  private static int indexOf(byte[] paramArrayOfByte, byte paramByte, int paramInt1, int paramInt2)
  {
    for (int i = paramInt1; i < paramInt2; i++)
      if (paramArrayOfByte[i] == paramByte)
        return i;
    return -1;
  }

  public static int indexOf(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    Preconditions.checkNotNull(paramArrayOfByte1, "array");
    Preconditions.checkNotNull(paramArrayOfByte2, "target");
    int i;
    if (paramArrayOfByte2.length == 0)
      i = 0;
    label74: 
    while (true)
    {
      return i;
      i = 0;
      if (i >= 1 + (paramArrayOfByte1.length - paramArrayOfByte2.length))
        break;
      for (int j = 0; ; j++)
      {
        if (j >= paramArrayOfByte2.length)
          break label74;
        if (paramArrayOfByte1[(i + j)] != paramArrayOfByte2[j])
        {
          i++;
          break;
        }
      }
    }
    return -1;
  }

  public static int lastIndexOf(byte[] paramArrayOfByte, byte paramByte)
  {
    return lastIndexOf(paramArrayOfByte, paramByte, 0, paramArrayOfByte.length);
  }

  private static int lastIndexOf(byte[] paramArrayOfByte, byte paramByte, int paramInt1, int paramInt2)
  {
    for (int i = paramInt2 - 1; i >= paramInt1; i--)
      if (paramArrayOfByte[i] == paramByte)
        return i;
    return -1;
  }

  public static byte[] toArray(Collection<? extends Number> paramCollection)
  {
    byte[] arrayOfByte;
    if ((paramCollection instanceof ByteArrayAsList))
      arrayOfByte = ((ByteArrayAsList)paramCollection).toByteArray();
    while (true)
    {
      return arrayOfByte;
      Object[] arrayOfObject = paramCollection.toArray();
      int i = arrayOfObject.length;
      arrayOfByte = new byte[i];
      for (int j = 0; j < i; j++)
        arrayOfByte[j] = ((Number)Preconditions.checkNotNull(arrayOfObject[j])).byteValue();
    }
  }

  @GwtCompatible
  private static class ByteArrayAsList extends AbstractList<Byte>
    implements RandomAccess, Serializable
  {
    private static final long serialVersionUID;
    final byte[] array;
    final int end;
    final int start;

    ByteArrayAsList(byte[] paramArrayOfByte)
    {
      this(paramArrayOfByte, 0, paramArrayOfByte.length);
    }

    ByteArrayAsList(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      this.array = paramArrayOfByte;
      this.start = paramInt1;
      this.end = paramInt2;
    }

    public boolean contains(Object paramObject)
    {
      return ((paramObject instanceof Byte)) && (Bytes.indexOf(this.array, ((Byte)paramObject).byteValue(), this.start, this.end) != -1);
    }

    public boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof ByteArrayAsList))
          break;
        ByteArrayAsList localByteArrayAsList = (ByteArrayAsList)paramObject;
        int i = size();
        if (localByteArrayAsList.size() != i)
          return false;
        for (int j = 0; j < i; j++)
          if (this.array[(j + this.start)] != localByteArrayAsList.array[(j + localByteArrayAsList.start)])
            return false;
      }
      return super.equals(paramObject);
    }

    public Byte get(int paramInt)
    {
      Preconditions.checkElementIndex(paramInt, size());
      return Byte.valueOf(this.array[(paramInt + this.start)]);
    }

    public int hashCode()
    {
      int i = 1;
      for (int j = this.start; j < this.end; j++)
        i = i * 31 + Bytes.hashCode(this.array[j]);
      return i;
    }

    public int indexOf(Object paramObject)
    {
      if ((paramObject instanceof Byte))
      {
        int i = Bytes.indexOf(this.array, ((Byte)paramObject).byteValue(), this.start, this.end);
        if (i >= 0)
          return i - this.start;
      }
      return -1;
    }

    public boolean isEmpty()
    {
      return false;
    }

    public int lastIndexOf(Object paramObject)
    {
      if ((paramObject instanceof Byte))
      {
        int i = Bytes.lastIndexOf(this.array, ((Byte)paramObject).byteValue(), this.start, this.end);
        if (i >= 0)
          return i - this.start;
      }
      return -1;
    }

    public Byte set(int paramInt, Byte paramByte)
    {
      Preconditions.checkElementIndex(paramInt, size());
      byte b = this.array[(paramInt + this.start)];
      this.array[(paramInt + this.start)] = ((Byte)Preconditions.checkNotNull(paramByte)).byteValue();
      return Byte.valueOf(b);
    }

    public int size()
    {
      return this.end - this.start;
    }

    public List<Byte> subList(int paramInt1, int paramInt2)
    {
      Preconditions.checkPositionIndexes(paramInt1, paramInt2, size());
      if (paramInt1 == paramInt2)
        return Collections.emptyList();
      return new ByteArrayAsList(this.array, paramInt1 + this.start, paramInt2 + this.start);
    }

    byte[] toByteArray()
    {
      int i = size();
      byte[] arrayOfByte = new byte[i];
      System.arraycopy(this.array, this.start, arrayOfByte, 0, i);
      return arrayOfByte;
    }

    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder(5 * size());
      localStringBuilder.append('[').append(this.array[this.start]);
      for (int i = 1 + this.start; i < this.end; i++)
        localStringBuilder.append(", ").append(this.array[i]);
      return ']';
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.primitives.Bytes
 * JD-Core Version:    0.6.2
 */