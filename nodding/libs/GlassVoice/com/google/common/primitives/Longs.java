package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;

@GwtCompatible
public final class Longs
{
  public static final int BYTES = 8;
  public static final long MAX_POWER_OF_TWO = 4611686018427387904L;

  public static List<Long> asList(long[] paramArrayOfLong)
  {
    if (paramArrayOfLong.length == 0)
      return Collections.emptyList();
    return new LongArrayAsList(paramArrayOfLong);
  }

  public static int compare(long paramLong1, long paramLong2)
  {
    if (paramLong1 < paramLong2)
      return -1;
    if (paramLong1 > paramLong2)
      return 1;
    return 0;
  }

  public static long[] concat(long[][] paramArrayOfLong)
  {
    int i = 0;
    int j = paramArrayOfLong.length;
    for (int k = 0; k < j; k++)
      i += paramArrayOfLong[k].length;
    long[] arrayOfLong1 = new long[i];
    int m = 0;
    int n = paramArrayOfLong.length;
    for (int i1 = 0; i1 < n; i1++)
    {
      long[] arrayOfLong2 = paramArrayOfLong[i1];
      System.arraycopy(arrayOfLong2, 0, arrayOfLong1, m, arrayOfLong2.length);
      m += arrayOfLong2.length;
    }
    return arrayOfLong1;
  }

  public static boolean contains(long[] paramArrayOfLong, long paramLong)
  {
    int i = paramArrayOfLong.length;
    for (int j = 0; j < i; j++)
      if (paramArrayOfLong[j] == paramLong)
        return true;
    return false;
  }

  private static long[] copyOf(long[] paramArrayOfLong, int paramInt)
  {
    long[] arrayOfLong = new long[paramInt];
    System.arraycopy(paramArrayOfLong, 0, arrayOfLong, 0, Math.min(paramArrayOfLong.length, paramInt));
    return arrayOfLong;
  }

  public static long[] ensureCapacity(long[] paramArrayOfLong, int paramInt1, int paramInt2)
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
      if (paramArrayOfLong.length < paramInt1)
        paramArrayOfLong = copyOf(paramArrayOfLong, paramInt1 + paramInt2);
      return paramArrayOfLong;
      bool1 = false;
      break;
    }
  }

  public static long fromByteArray(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length >= 8);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramArrayOfByte.length);
      arrayOfObject[1] = Integer.valueOf(8);
      Preconditions.checkArgument(bool, "array too small: %s < %s", arrayOfObject);
      return fromBytes(paramArrayOfByte[0], paramArrayOfByte[1], paramArrayOfByte[2], paramArrayOfByte[3], paramArrayOfByte[4], paramArrayOfByte[5], paramArrayOfByte[6], paramArrayOfByte[7]);
    }
  }

  public static long fromBytes(byte paramByte1, byte paramByte2, byte paramByte3, byte paramByte4, byte paramByte5, byte paramByte6, byte paramByte7, byte paramByte8)
  {
    return (0xFF & paramByte1) << 56 | (0xFF & paramByte2) << 48 | (0xFF & paramByte3) << 40 | (0xFF & paramByte4) << 32 | (0xFF & paramByte5) << 24 | (0xFF & paramByte6) << 16 | (0xFF & paramByte7) << 8 | 0xFF & paramByte8;
  }

  public static int hashCode(long paramLong)
  {
    return (int)(paramLong ^ paramLong >>> 32);
  }

  public static int indexOf(long[] paramArrayOfLong, long paramLong)
  {
    return indexOf(paramArrayOfLong, paramLong, 0, paramArrayOfLong.length);
  }

  private static int indexOf(long[] paramArrayOfLong, long paramLong, int paramInt1, int paramInt2)
  {
    for (int i = paramInt1; i < paramInt2; i++)
      if (paramArrayOfLong[i] == paramLong)
        return i;
    return -1;
  }

  public static int indexOf(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    Preconditions.checkNotNull(paramArrayOfLong1, "array");
    Preconditions.checkNotNull(paramArrayOfLong2, "target");
    int i;
    if (paramArrayOfLong2.length == 0)
      i = 0;
    label75: 
    while (true)
    {
      return i;
      i = 0;
      if (i >= 1 + (paramArrayOfLong1.length - paramArrayOfLong2.length))
        break;
      for (int j = 0; ; j++)
      {
        if (j >= paramArrayOfLong2.length)
          break label75;
        if (paramArrayOfLong1[(i + j)] != paramArrayOfLong2[j])
        {
          i++;
          break;
        }
      }
    }
    return -1;
  }

  public static String join(String paramString, long[] paramArrayOfLong)
  {
    Preconditions.checkNotNull(paramString);
    if (paramArrayOfLong.length == 0)
      return "";
    StringBuilder localStringBuilder = new StringBuilder(10 * paramArrayOfLong.length);
    localStringBuilder.append(paramArrayOfLong[0]);
    for (int i = 1; i < paramArrayOfLong.length; i++)
      localStringBuilder.append(paramString).append(paramArrayOfLong[i]);
    return localStringBuilder.toString();
  }

  public static int lastIndexOf(long[] paramArrayOfLong, long paramLong)
  {
    return lastIndexOf(paramArrayOfLong, paramLong, 0, paramArrayOfLong.length);
  }

  private static int lastIndexOf(long[] paramArrayOfLong, long paramLong, int paramInt1, int paramInt2)
  {
    for (int i = paramInt2 - 1; i >= paramInt1; i--)
      if (paramArrayOfLong[i] == paramLong)
        return i;
    return -1;
  }

  public static Comparator<long[]> lexicographicalComparator()
  {
    return LexicographicalComparator.INSTANCE;
  }

  public static long max(long[] paramArrayOfLong)
  {
    if (paramArrayOfLong.length > 0);
    long l;
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      l = paramArrayOfLong[0];
      for (int i = 1; i < paramArrayOfLong.length; i++)
        if (paramArrayOfLong[i] > l)
          l = paramArrayOfLong[i];
    }
    return l;
  }

  public static long min(long[] paramArrayOfLong)
  {
    if (paramArrayOfLong.length > 0);
    long l;
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      l = paramArrayOfLong[0];
      for (int i = 1; i < paramArrayOfLong.length; i++)
        if (paramArrayOfLong[i] < l)
          l = paramArrayOfLong[i];
    }
    return l;
  }

  public static long[] toArray(Collection<? extends Number> paramCollection)
  {
    long[] arrayOfLong;
    if ((paramCollection instanceof LongArrayAsList))
      arrayOfLong = ((LongArrayAsList)paramCollection).toLongArray();
    while (true)
    {
      return arrayOfLong;
      Object[] arrayOfObject = paramCollection.toArray();
      int i = arrayOfObject.length;
      arrayOfLong = new long[i];
      for (int j = 0; j < i; j++)
        arrayOfLong[j] = ((Number)Preconditions.checkNotNull(arrayOfObject[j])).longValue();
    }
  }

  public static byte[] toByteArray(long paramLong)
  {
    byte[] arrayOfByte = new byte[8];
    for (int i = 7; i >= 0; i--)
    {
      arrayOfByte[i] = ((byte)(int)(0xFF & paramLong));
      paramLong >>= 8;
    }
    return arrayOfByte;
  }

  @Beta
  public static Long tryParse(String paramString)
  {
    int i = 1;
    if (((String)Preconditions.checkNotNull(paramString)).length() == 0)
      return null;
    int j;
    if (paramString.charAt(0) == '-')
    {
      j = i;
      if (j == 0)
        break label48;
    }
    while (true)
    {
      if (i != paramString.length())
        break label53;
      return null;
      j = 0;
      break;
      label48: i = 0;
    }
    label53: int k = i + 1;
    int m = '\0*0' + paramString.charAt(i);
    if ((m < 0) || (m > 9))
      return null;
    long l1 = -m;
    int i1;
    for (int n = k; n < paramString.length(); n = i1)
    {
      i1 = n + 1;
      int i2 = '\0*0' + paramString.charAt(n);
      if ((i2 < 0) || (i2 > 9) || (l1 < -922337203685477580L))
        return null;
      long l2 = l1 * 10L;
      if (l2 < -9223372036854775808L + i2)
        return null;
      l1 = l2 - i2;
    }
    if (j != 0)
      return Long.valueOf(l1);
    if (l1 == -9223372036854775808L)
      return null;
    return Long.valueOf(-l1);
  }

  private static enum LexicographicalComparator
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
      {
        int k = Longs.compare(paramArrayOfLong1[j], paramArrayOfLong2[j]);
        if (k != 0)
          return k;
      }
      return paramArrayOfLong1.length - paramArrayOfLong2.length;
    }
  }

  @GwtCompatible
  private static class LongArrayAsList extends AbstractList<Long>
    implements RandomAccess, Serializable
  {
    private static final long serialVersionUID;
    final long[] array;
    final int end;
    final int start;

    LongArrayAsList(long[] paramArrayOfLong)
    {
      this(paramArrayOfLong, 0, paramArrayOfLong.length);
    }

    LongArrayAsList(long[] paramArrayOfLong, int paramInt1, int paramInt2)
    {
      this.array = paramArrayOfLong;
      this.start = paramInt1;
      this.end = paramInt2;
    }

    public boolean contains(Object paramObject)
    {
      return ((paramObject instanceof Long)) && (Longs.indexOf(this.array, ((Long)paramObject).longValue(), this.start, this.end) != -1);
    }

    public boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof LongArrayAsList))
          break;
        LongArrayAsList localLongArrayAsList = (LongArrayAsList)paramObject;
        int i = size();
        if (localLongArrayAsList.size() != i)
          return false;
        for (int j = 0; j < i; j++)
          if (this.array[(j + this.start)] != localLongArrayAsList.array[(j + localLongArrayAsList.start)])
            return false;
      }
      return super.equals(paramObject);
    }

    public Long get(int paramInt)
    {
      Preconditions.checkElementIndex(paramInt, size());
      return Long.valueOf(this.array[(paramInt + this.start)]);
    }

    public int hashCode()
    {
      int i = 1;
      for (int j = this.start; j < this.end; j++)
        i = i * 31 + Longs.hashCode(this.array[j]);
      return i;
    }

    public int indexOf(Object paramObject)
    {
      if ((paramObject instanceof Long))
      {
        int i = Longs.indexOf(this.array, ((Long)paramObject).longValue(), this.start, this.end);
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
      if ((paramObject instanceof Long))
      {
        int i = Longs.lastIndexOf(this.array, ((Long)paramObject).longValue(), this.start, this.end);
        if (i >= 0)
          return i - this.start;
      }
      return -1;
    }

    public Long set(int paramInt, Long paramLong)
    {
      Preconditions.checkElementIndex(paramInt, size());
      long l = this.array[(paramInt + this.start)];
      this.array[(paramInt + this.start)] = ((Long)Preconditions.checkNotNull(paramLong)).longValue();
      return Long.valueOf(l);
    }

    public int size()
    {
      return this.end - this.start;
    }

    public List<Long> subList(int paramInt1, int paramInt2)
    {
      Preconditions.checkPositionIndexes(paramInt1, paramInt2, size());
      if (paramInt1 == paramInt2)
        return Collections.emptyList();
      return new LongArrayAsList(this.array, paramInt1 + this.start, paramInt2 + this.start);
    }

    long[] toLongArray()
    {
      int i = size();
      long[] arrayOfLong = new long[i];
      System.arraycopy(this.array, this.start, arrayOfLong, 0, i);
      return arrayOfLong;
    }

    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder(10 * size());
      localStringBuilder.append('[').append(this.array[this.start]);
      for (int i = 1 + this.start; i < this.end; i++)
        localStringBuilder.append(", ").append(this.array[i]);
      return ']';
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.primitives.Longs
 * JD-Core Version:    0.6.2
 */