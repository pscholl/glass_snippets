package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;

@GwtCompatible(emulated=true)
public final class Shorts
{
  public static final int BYTES = 2;
  public static final short MAX_POWER_OF_TWO = 16384;

  public static List<Short> asList(short[] paramArrayOfShort)
  {
    if (paramArrayOfShort.length == 0)
      return Collections.emptyList();
    return new ShortArrayAsList(paramArrayOfShort);
  }

  public static short checkedCast(long paramLong)
  {
    short s = (short)(int)paramLong;
    if (s == paramLong);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(paramLong);
      Preconditions.checkArgument(bool, "Out of range: %s", arrayOfObject);
      return s;
    }
  }

  public static int compare(short paramShort1, short paramShort2)
  {
    return paramShort1 - paramShort2;
  }

  public static short[] concat(short[][] paramArrayOfShort)
  {
    int i = 0;
    int j = paramArrayOfShort.length;
    for (int k = 0; k < j; k++)
      i += paramArrayOfShort[k].length;
    short[] arrayOfShort1 = new short[i];
    int m = 0;
    int n = paramArrayOfShort.length;
    for (int i1 = 0; i1 < n; i1++)
    {
      short[] arrayOfShort2 = paramArrayOfShort[i1];
      System.arraycopy(arrayOfShort2, 0, arrayOfShort1, m, arrayOfShort2.length);
      m += arrayOfShort2.length;
    }
    return arrayOfShort1;
  }

  public static boolean contains(short[] paramArrayOfShort, short paramShort)
  {
    int i = paramArrayOfShort.length;
    for (int j = 0; j < i; j++)
      if (paramArrayOfShort[j] == paramShort)
        return true;
    return false;
  }

  private static short[] copyOf(short[] paramArrayOfShort, int paramInt)
  {
    short[] arrayOfShort = new short[paramInt];
    System.arraycopy(paramArrayOfShort, 0, arrayOfShort, 0, Math.min(paramArrayOfShort.length, paramInt));
    return arrayOfShort;
  }

  public static short[] ensureCapacity(short[] paramArrayOfShort, int paramInt1, int paramInt2)
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
      if (paramArrayOfShort.length < paramInt1)
        paramArrayOfShort = copyOf(paramArrayOfShort, paramInt1 + paramInt2);
      return paramArrayOfShort;
      bool1 = false;
      break;
    }
  }

  @GwtIncompatible("doesn't work")
  public static short fromByteArray(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length >= 2);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramArrayOfByte.length);
      arrayOfObject[1] = Integer.valueOf(2);
      Preconditions.checkArgument(bool, "array too small: %s < %s", arrayOfObject);
      return fromBytes(paramArrayOfByte[0], paramArrayOfByte[1]);
    }
  }

  @GwtIncompatible("doesn't work")
  public static short fromBytes(byte paramByte1, byte paramByte2)
  {
    return (short)(paramByte1 << 8 | paramByte2 & 0xFF);
  }

  public static int hashCode(short paramShort)
  {
    return paramShort;
  }

  public static int indexOf(short[] paramArrayOfShort, short paramShort)
  {
    return indexOf(paramArrayOfShort, paramShort, 0, paramArrayOfShort.length);
  }

  private static int indexOf(short[] paramArrayOfShort, short paramShort, int paramInt1, int paramInt2)
  {
    for (int i = paramInt1; i < paramInt2; i++)
      if (paramArrayOfShort[i] == paramShort)
        return i;
    return -1;
  }

  public static int indexOf(short[] paramArrayOfShort1, short[] paramArrayOfShort2)
  {
    Preconditions.checkNotNull(paramArrayOfShort1, "array");
    Preconditions.checkNotNull(paramArrayOfShort2, "target");
    int i;
    if (paramArrayOfShort2.length == 0)
      i = 0;
    label74: 
    while (true)
    {
      return i;
      i = 0;
      if (i >= 1 + (paramArrayOfShort1.length - paramArrayOfShort2.length))
        break;
      for (int j = 0; ; j++)
      {
        if (j >= paramArrayOfShort2.length)
          break label74;
        if (paramArrayOfShort1[(i + j)] != paramArrayOfShort2[j])
        {
          i++;
          break;
        }
      }
    }
    return -1;
  }

  public static String join(String paramString, short[] paramArrayOfShort)
  {
    Preconditions.checkNotNull(paramString);
    if (paramArrayOfShort.length == 0)
      return "";
    StringBuilder localStringBuilder = new StringBuilder(6 * paramArrayOfShort.length);
    localStringBuilder.append(paramArrayOfShort[0]);
    for (int i = 1; i < paramArrayOfShort.length; i++)
      localStringBuilder.append(paramString).append(paramArrayOfShort[i]);
    return localStringBuilder.toString();
  }

  public static int lastIndexOf(short[] paramArrayOfShort, short paramShort)
  {
    return lastIndexOf(paramArrayOfShort, paramShort, 0, paramArrayOfShort.length);
  }

  private static int lastIndexOf(short[] paramArrayOfShort, short paramShort, int paramInt1, int paramInt2)
  {
    for (int i = paramInt2 - 1; i >= paramInt1; i--)
      if (paramArrayOfShort[i] == paramShort)
        return i;
    return -1;
  }

  public static Comparator<short[]> lexicographicalComparator()
  {
    return LexicographicalComparator.INSTANCE;
  }

  public static short max(short[] paramArrayOfShort)
  {
    if (paramArrayOfShort.length > 0);
    short s;
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      s = paramArrayOfShort[0];
      for (int i = 1; i < paramArrayOfShort.length; i++)
        if (paramArrayOfShort[i] > s)
          s = paramArrayOfShort[i];
    }
    return s;
  }

  public static short min(short[] paramArrayOfShort)
  {
    if (paramArrayOfShort.length > 0);
    short s;
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      s = paramArrayOfShort[0];
      for (int i = 1; i < paramArrayOfShort.length; i++)
        if (paramArrayOfShort[i] < s)
          s = paramArrayOfShort[i];
    }
    return s;
  }

  public static short saturatedCast(long paramLong)
  {
    if (paramLong > 32767L)
      return 32767;
    if (paramLong < -32768L)
      return -32768;
    return (short)(int)paramLong;
  }

  public static short[] toArray(Collection<? extends Number> paramCollection)
  {
    short[] arrayOfShort;
    if ((paramCollection instanceof ShortArrayAsList))
      arrayOfShort = ((ShortArrayAsList)paramCollection).toShortArray();
    while (true)
    {
      return arrayOfShort;
      Object[] arrayOfObject = paramCollection.toArray();
      int i = arrayOfObject.length;
      arrayOfShort = new short[i];
      for (int j = 0; j < i; j++)
        arrayOfShort[j] = ((Number)Preconditions.checkNotNull(arrayOfObject[j])).shortValue();
    }
  }

  @GwtIncompatible("doesn't work")
  public static byte[] toByteArray(short paramShort)
  {
    byte[] arrayOfByte = new byte[2];
    arrayOfByte[0] = ((byte)(paramShort >> 8));
    arrayOfByte[1] = ((byte)paramShort);
    return arrayOfByte;
  }

  private static enum LexicographicalComparator
    implements Comparator<short[]>
  {
    static
    {
      LexicographicalComparator[] arrayOfLexicographicalComparator = new LexicographicalComparator[1];
      arrayOfLexicographicalComparator[0] = INSTANCE;
    }

    public int compare(short[] paramArrayOfShort1, short[] paramArrayOfShort2)
    {
      int i = Math.min(paramArrayOfShort1.length, paramArrayOfShort2.length);
      for (int j = 0; j < i; j++)
      {
        int k = Shorts.compare(paramArrayOfShort1[j], paramArrayOfShort2[j]);
        if (k != 0)
          return k;
      }
      return paramArrayOfShort1.length - paramArrayOfShort2.length;
    }
  }

  @GwtCompatible
  private static class ShortArrayAsList extends AbstractList<Short>
    implements RandomAccess, Serializable
  {
    private static final long serialVersionUID;
    final short[] array;
    final int end;
    final int start;

    ShortArrayAsList(short[] paramArrayOfShort)
    {
      this(paramArrayOfShort, 0, paramArrayOfShort.length);
    }

    ShortArrayAsList(short[] paramArrayOfShort, int paramInt1, int paramInt2)
    {
      this.array = paramArrayOfShort;
      this.start = paramInt1;
      this.end = paramInt2;
    }

    public boolean contains(Object paramObject)
    {
      return ((paramObject instanceof Short)) && (Shorts.indexOf(this.array, ((Short)paramObject).shortValue(), this.start, this.end) != -1);
    }

    public boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof ShortArrayAsList))
          break;
        ShortArrayAsList localShortArrayAsList = (ShortArrayAsList)paramObject;
        int i = size();
        if (localShortArrayAsList.size() != i)
          return false;
        for (int j = 0; j < i; j++)
          if (this.array[(j + this.start)] != localShortArrayAsList.array[(j + localShortArrayAsList.start)])
            return false;
      }
      return super.equals(paramObject);
    }

    public Short get(int paramInt)
    {
      Preconditions.checkElementIndex(paramInt, size());
      return Short.valueOf(this.array[(paramInt + this.start)]);
    }

    public int hashCode()
    {
      int i = 1;
      for (int j = this.start; j < this.end; j++)
        i = i * 31 + Shorts.hashCode(this.array[j]);
      return i;
    }

    public int indexOf(Object paramObject)
    {
      if ((paramObject instanceof Short))
      {
        int i = Shorts.indexOf(this.array, ((Short)paramObject).shortValue(), this.start, this.end);
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
      if ((paramObject instanceof Short))
      {
        int i = Shorts.lastIndexOf(this.array, ((Short)paramObject).shortValue(), this.start, this.end);
        if (i >= 0)
          return i - this.start;
      }
      return -1;
    }

    public Short set(int paramInt, Short paramShort)
    {
      Preconditions.checkElementIndex(paramInt, size());
      short s = this.array[(paramInt + this.start)];
      this.array[(paramInt + this.start)] = ((Short)Preconditions.checkNotNull(paramShort)).shortValue();
      return Short.valueOf(s);
    }

    public int size()
    {
      return this.end - this.start;
    }

    public List<Short> subList(int paramInt1, int paramInt2)
    {
      Preconditions.checkPositionIndexes(paramInt1, paramInt2, size());
      if (paramInt1 == paramInt2)
        return Collections.emptyList();
      return new ShortArrayAsList(this.array, paramInt1 + this.start, paramInt2 + this.start);
    }

    short[] toShortArray()
    {
      int i = size();
      short[] arrayOfShort = new short[i];
      System.arraycopy(this.array, this.start, arrayOfShort, 0, i);
      return arrayOfShort;
    }

    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder(6 * size());
      localStringBuilder.append('[').append(this.array[this.start]);
      for (int i = 1 + this.start; i < this.end; i++)
        localStringBuilder.append(", ").append(this.array[i]);
      return ']';
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.primitives.Shorts
 * JD-Core Version:    0.6.2
 */