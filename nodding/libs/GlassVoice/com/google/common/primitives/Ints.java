package com.google.common.primitives;

import com.google.common.annotations.Beta;
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
import javax.annotation.CheckForNull;

@GwtCompatible(emulated=true)
public final class Ints
{
  public static final int BYTES = 4;
  public static final int MAX_POWER_OF_TWO = 1073741824;

  public static List<Integer> asList(int[] paramArrayOfInt)
  {
    if (paramArrayOfInt.length == 0)
      return Collections.emptyList();
    return new IntArrayAsList(paramArrayOfInt);
  }

  public static int checkedCast(long paramLong)
  {
    int i = (int)paramLong;
    if (i == paramLong);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(paramLong);
      Preconditions.checkArgument(bool, "Out of range: %s", arrayOfObject);
      return i;
    }
  }

  public static int compare(int paramInt1, int paramInt2)
  {
    if (paramInt1 < paramInt2)
      return -1;
    if (paramInt1 > paramInt2)
      return 1;
    return 0;
  }

  public static int[] concat(int[][] paramArrayOfInt)
  {
    int i = 0;
    int j = paramArrayOfInt.length;
    for (int k = 0; k < j; k++)
      i += paramArrayOfInt[k].length;
    int[] arrayOfInt1 = new int[i];
    int m = 0;
    int n = paramArrayOfInt.length;
    for (int i1 = 0; i1 < n; i1++)
    {
      int[] arrayOfInt2 = paramArrayOfInt[i1];
      System.arraycopy(arrayOfInt2, 0, arrayOfInt1, m, arrayOfInt2.length);
      m += arrayOfInt2.length;
    }
    return arrayOfInt1;
  }

  public static boolean contains(int[] paramArrayOfInt, int paramInt)
  {
    int i = paramArrayOfInt.length;
    for (int j = 0; j < i; j++)
      if (paramArrayOfInt[j] == paramInt)
        return true;
    return false;
  }

  private static int[] copyOf(int[] paramArrayOfInt, int paramInt)
  {
    int[] arrayOfInt = new int[paramInt];
    System.arraycopy(paramArrayOfInt, 0, arrayOfInt, 0, Math.min(paramArrayOfInt.length, paramInt));
    return arrayOfInt;
  }

  public static int[] ensureCapacity(int[] paramArrayOfInt, int paramInt1, int paramInt2)
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
      if (paramArrayOfInt.length < paramInt1)
        paramArrayOfInt = copyOf(paramArrayOfInt, paramInt1 + paramInt2);
      return paramArrayOfInt;
      bool1 = false;
      break;
    }
  }

  @GwtIncompatible("doesn't work")
  public static int fromByteArray(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length >= 4);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramArrayOfByte.length);
      arrayOfObject[1] = Integer.valueOf(4);
      Preconditions.checkArgument(bool, "array too small: %s < %s", arrayOfObject);
      return fromBytes(paramArrayOfByte[0], paramArrayOfByte[1], paramArrayOfByte[2], paramArrayOfByte[3]);
    }
  }

  @GwtIncompatible("doesn't work")
  public static int fromBytes(byte paramByte1, byte paramByte2, byte paramByte3, byte paramByte4)
  {
    return paramByte1 << 24 | (paramByte2 & 0xFF) << 16 | (paramByte3 & 0xFF) << 8 | paramByte4 & 0xFF;
  }

  public static int hashCode(int paramInt)
  {
    return paramInt;
  }

  public static int indexOf(int[] paramArrayOfInt, int paramInt)
  {
    return indexOf(paramArrayOfInt, paramInt, 0, paramArrayOfInt.length);
  }

  private static int indexOf(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3)
  {
    for (int i = paramInt2; i < paramInt3; i++)
      if (paramArrayOfInt[i] == paramInt1)
        return i;
    return -1;
  }

  public static int indexOf(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    Preconditions.checkNotNull(paramArrayOfInt1, "array");
    Preconditions.checkNotNull(paramArrayOfInt2, "target");
    int i;
    if (paramArrayOfInt2.length == 0)
      i = 0;
    label74: 
    while (true)
    {
      return i;
      i = 0;
      if (i >= 1 + (paramArrayOfInt1.length - paramArrayOfInt2.length))
        break;
      for (int j = 0; ; j++)
      {
        if (j >= paramArrayOfInt2.length)
          break label74;
        if (paramArrayOfInt1[(i + j)] != paramArrayOfInt2[j])
        {
          i++;
          break;
        }
      }
    }
    return -1;
  }

  public static String join(String paramString, int[] paramArrayOfInt)
  {
    Preconditions.checkNotNull(paramString);
    if (paramArrayOfInt.length == 0)
      return "";
    StringBuilder localStringBuilder = new StringBuilder(5 * paramArrayOfInt.length);
    localStringBuilder.append(paramArrayOfInt[0]);
    for (int i = 1; i < paramArrayOfInt.length; i++)
      localStringBuilder.append(paramString).append(paramArrayOfInt[i]);
    return localStringBuilder.toString();
  }

  public static int lastIndexOf(int[] paramArrayOfInt, int paramInt)
  {
    return lastIndexOf(paramArrayOfInt, paramInt, 0, paramArrayOfInt.length);
  }

  private static int lastIndexOf(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3)
  {
    for (int i = paramInt3 - 1; i >= paramInt2; i--)
      if (paramArrayOfInt[i] == paramInt1)
        return i;
    return -1;
  }

  public static Comparator<int[]> lexicographicalComparator()
  {
    return LexicographicalComparator.INSTANCE;
  }

  public static int max(int[] paramArrayOfInt)
  {
    if (paramArrayOfInt.length > 0);
    int i;
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      i = paramArrayOfInt[0];
      for (int j = 1; j < paramArrayOfInt.length; j++)
        if (paramArrayOfInt[j] > i)
          i = paramArrayOfInt[j];
    }
    return i;
  }

  public static int min(int[] paramArrayOfInt)
  {
    if (paramArrayOfInt.length > 0);
    int i;
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      i = paramArrayOfInt[0];
      for (int j = 1; j < paramArrayOfInt.length; j++)
        if (paramArrayOfInt[j] < i)
          i = paramArrayOfInt[j];
    }
    return i;
  }

  public static int saturatedCast(long paramLong)
  {
    if (paramLong > 2147483647L)
      return 2147483647;
    if (paramLong < -2147483648L)
      return -2147483648;
    return (int)paramLong;
  }

  public static int[] toArray(Collection<? extends Number> paramCollection)
  {
    int[] arrayOfInt;
    if ((paramCollection instanceof IntArrayAsList))
      arrayOfInt = ((IntArrayAsList)paramCollection).toIntArray();
    while (true)
    {
      return arrayOfInt;
      Object[] arrayOfObject = paramCollection.toArray();
      int i = arrayOfObject.length;
      arrayOfInt = new int[i];
      for (int j = 0; j < i; j++)
        arrayOfInt[j] = ((Number)Preconditions.checkNotNull(arrayOfObject[j])).intValue();
    }
  }

  @GwtIncompatible("doesn't work")
  public static byte[] toByteArray(int paramInt)
  {
    byte[] arrayOfByte = new byte[4];
    arrayOfByte[0] = ((byte)(paramInt >> 24));
    arrayOfByte[1] = ((byte)(paramInt >> 16));
    arrayOfByte[2] = ((byte)(paramInt >> 8));
    arrayOfByte[3] = ((byte)paramInt);
    return arrayOfByte;
  }

  @CheckForNull
  @Beta
  @GwtIncompatible("TODO")
  public static Integer tryParse(String paramString)
  {
    return AndroidInteger.tryParse(paramString, 10);
  }

  @GwtCompatible
  private static class IntArrayAsList extends AbstractList<Integer>
    implements RandomAccess, Serializable
  {
    private static final long serialVersionUID;
    final int[] array;
    final int end;
    final int start;

    IntArrayAsList(int[] paramArrayOfInt)
    {
      this(paramArrayOfInt, 0, paramArrayOfInt.length);
    }

    IntArrayAsList(int[] paramArrayOfInt, int paramInt1, int paramInt2)
    {
      this.array = paramArrayOfInt;
      this.start = paramInt1;
      this.end = paramInt2;
    }

    public boolean contains(Object paramObject)
    {
      return ((paramObject instanceof Integer)) && (Ints.indexOf(this.array, ((Integer)paramObject).intValue(), this.start, this.end) != -1);
    }

    public boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof IntArrayAsList))
          break;
        IntArrayAsList localIntArrayAsList = (IntArrayAsList)paramObject;
        int i = size();
        if (localIntArrayAsList.size() != i)
          return false;
        for (int j = 0; j < i; j++)
          if (this.array[(j + this.start)] != localIntArrayAsList.array[(j + localIntArrayAsList.start)])
            return false;
      }
      return super.equals(paramObject);
    }

    public Integer get(int paramInt)
    {
      Preconditions.checkElementIndex(paramInt, size());
      return Integer.valueOf(this.array[(paramInt + this.start)]);
    }

    public int hashCode()
    {
      int i = 1;
      for (int j = this.start; j < this.end; j++)
        i = i * 31 + Ints.hashCode(this.array[j]);
      return i;
    }

    public int indexOf(Object paramObject)
    {
      if ((paramObject instanceof Integer))
      {
        int i = Ints.indexOf(this.array, ((Integer)paramObject).intValue(), this.start, this.end);
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
      if ((paramObject instanceof Integer))
      {
        int i = Ints.lastIndexOf(this.array, ((Integer)paramObject).intValue(), this.start, this.end);
        if (i >= 0)
          return i - this.start;
      }
      return -1;
    }

    public Integer set(int paramInt, Integer paramInteger)
    {
      Preconditions.checkElementIndex(paramInt, size());
      int i = this.array[(paramInt + this.start)];
      this.array[(paramInt + this.start)] = ((Integer)Preconditions.checkNotNull(paramInteger)).intValue();
      return Integer.valueOf(i);
    }

    public int size()
    {
      return this.end - this.start;
    }

    public List<Integer> subList(int paramInt1, int paramInt2)
    {
      Preconditions.checkPositionIndexes(paramInt1, paramInt2, size());
      if (paramInt1 == paramInt2)
        return Collections.emptyList();
      return new IntArrayAsList(this.array, paramInt1 + this.start, paramInt2 + this.start);
    }

    int[] toIntArray()
    {
      int i = size();
      int[] arrayOfInt = new int[i];
      System.arraycopy(this.array, this.start, arrayOfInt, 0, i);
      return arrayOfInt;
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

  private static enum LexicographicalComparator
    implements Comparator<int[]>
  {
    static
    {
      LexicographicalComparator[] arrayOfLexicographicalComparator = new LexicographicalComparator[1];
      arrayOfLexicographicalComparator[0] = INSTANCE;
    }

    public int compare(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
    {
      int i = Math.min(paramArrayOfInt1.length, paramArrayOfInt2.length);
      for (int j = 0; j < i; j++)
      {
        int k = Ints.compare(paramArrayOfInt1[j], paramArrayOfInt2[j]);
        if (k != 0)
          return k;
      }
      return paramArrayOfInt1.length - paramArrayOfInt2.length;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.primitives.Ints
 * JD-Core Version:    0.6.2
 */