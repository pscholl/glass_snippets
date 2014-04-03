package com.google.common.primitives;

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
public final class Booleans
{
  public static List<Boolean> asList(boolean[] paramArrayOfBoolean)
  {
    if (paramArrayOfBoolean.length == 0)
      return Collections.emptyList();
    return new BooleanArrayAsList(paramArrayOfBoolean);
  }

  public static int compare(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1 == paramBoolean2)
      return 0;
    if (paramBoolean1)
      return 1;
    return -1;
  }

  public static boolean[] concat(boolean[][] paramArrayOfBoolean)
  {
    int i = 0;
    int j = paramArrayOfBoolean.length;
    for (int k = 0; k < j; k++)
      i += paramArrayOfBoolean[k].length;
    boolean[] arrayOfBoolean1 = new boolean[i];
    int m = 0;
    int n = paramArrayOfBoolean.length;
    for (int i1 = 0; i1 < n; i1++)
    {
      boolean[] arrayOfBoolean2 = paramArrayOfBoolean[i1];
      System.arraycopy(arrayOfBoolean2, 0, arrayOfBoolean1, m, arrayOfBoolean2.length);
      m += arrayOfBoolean2.length;
    }
    return arrayOfBoolean1;
  }

  public static boolean contains(boolean[] paramArrayOfBoolean, boolean paramBoolean)
  {
    int i = paramArrayOfBoolean.length;
    for (int j = 0; j < i; j++)
      if (paramArrayOfBoolean[j] == paramBoolean)
        return true;
    return false;
  }

  private static boolean[] copyOf(boolean[] paramArrayOfBoolean, int paramInt)
  {
    boolean[] arrayOfBoolean = new boolean[paramInt];
    System.arraycopy(paramArrayOfBoolean, 0, arrayOfBoolean, 0, Math.min(paramArrayOfBoolean.length, paramInt));
    return arrayOfBoolean;
  }

  public static boolean[] ensureCapacity(boolean[] paramArrayOfBoolean, int paramInt1, int paramInt2)
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
      if (paramArrayOfBoolean.length < paramInt1)
        paramArrayOfBoolean = copyOf(paramArrayOfBoolean, paramInt1 + paramInt2);
      return paramArrayOfBoolean;
      bool1 = false;
      break;
    }
  }

  public static int hashCode(boolean paramBoolean)
  {
    if (paramBoolean)
      return 1231;
    return 1237;
  }

  public static int indexOf(boolean[] paramArrayOfBoolean, boolean paramBoolean)
  {
    return indexOf(paramArrayOfBoolean, paramBoolean, 0, paramArrayOfBoolean.length);
  }

  private static int indexOf(boolean[] paramArrayOfBoolean, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    for (int i = paramInt1; i < paramInt2; i++)
      if (paramArrayOfBoolean[i] == paramBoolean)
        return i;
    return -1;
  }

  public static int indexOf(boolean[] paramArrayOfBoolean1, boolean[] paramArrayOfBoolean2)
  {
    Preconditions.checkNotNull(paramArrayOfBoolean1, "array");
    Preconditions.checkNotNull(paramArrayOfBoolean2, "target");
    int i;
    if (paramArrayOfBoolean2.length == 0)
      i = 0;
    label74: 
    while (true)
    {
      return i;
      i = 0;
      if (i >= 1 + (paramArrayOfBoolean1.length - paramArrayOfBoolean2.length))
        break;
      for (int j = 0; ; j++)
      {
        if (j >= paramArrayOfBoolean2.length)
          break label74;
        if (paramArrayOfBoolean1[(i + j)] != paramArrayOfBoolean2[j])
        {
          i++;
          break;
        }
      }
    }
    return -1;
  }

  public static String join(String paramString, boolean[] paramArrayOfBoolean)
  {
    Preconditions.checkNotNull(paramString);
    if (paramArrayOfBoolean.length == 0)
      return "";
    StringBuilder localStringBuilder = new StringBuilder(7 * paramArrayOfBoolean.length);
    localStringBuilder.append(paramArrayOfBoolean[0]);
    for (int i = 1; i < paramArrayOfBoolean.length; i++)
      localStringBuilder.append(paramString).append(paramArrayOfBoolean[i]);
    return localStringBuilder.toString();
  }

  public static int lastIndexOf(boolean[] paramArrayOfBoolean, boolean paramBoolean)
  {
    return lastIndexOf(paramArrayOfBoolean, paramBoolean, 0, paramArrayOfBoolean.length);
  }

  private static int lastIndexOf(boolean[] paramArrayOfBoolean, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    for (int i = paramInt2 - 1; i >= paramInt1; i--)
      if (paramArrayOfBoolean[i] == paramBoolean)
        return i;
    return -1;
  }

  public static Comparator<boolean[]> lexicographicalComparator()
  {
    return LexicographicalComparator.INSTANCE;
  }

  public static boolean[] toArray(Collection<Boolean> paramCollection)
  {
    boolean[] arrayOfBoolean;
    if ((paramCollection instanceof BooleanArrayAsList))
      arrayOfBoolean = ((BooleanArrayAsList)paramCollection).toBooleanArray();
    while (true)
    {
      return arrayOfBoolean;
      Object[] arrayOfObject = paramCollection.toArray();
      int i = arrayOfObject.length;
      arrayOfBoolean = new boolean[i];
      for (int j = 0; j < i; j++)
        arrayOfBoolean[j] = ((Boolean)Preconditions.checkNotNull(arrayOfObject[j])).booleanValue();
    }
  }

  @GwtCompatible
  private static class BooleanArrayAsList extends AbstractList<Boolean>
    implements RandomAccess, Serializable
  {
    private static final long serialVersionUID;
    final boolean[] array;
    final int end;
    final int start;

    BooleanArrayAsList(boolean[] paramArrayOfBoolean)
    {
      this(paramArrayOfBoolean, 0, paramArrayOfBoolean.length);
    }

    BooleanArrayAsList(boolean[] paramArrayOfBoolean, int paramInt1, int paramInt2)
    {
      this.array = paramArrayOfBoolean;
      this.start = paramInt1;
      this.end = paramInt2;
    }

    public boolean contains(Object paramObject)
    {
      return ((paramObject instanceof Boolean)) && (Booleans.indexOf(this.array, ((Boolean)paramObject).booleanValue(), this.start, this.end) != -1);
    }

    public boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof BooleanArrayAsList))
          break;
        BooleanArrayAsList localBooleanArrayAsList = (BooleanArrayAsList)paramObject;
        int i = size();
        if (localBooleanArrayAsList.size() != i)
          return false;
        for (int j = 0; j < i; j++)
          if (this.array[(j + this.start)] != localBooleanArrayAsList.array[(j + localBooleanArrayAsList.start)])
            return false;
      }
      return super.equals(paramObject);
    }

    public Boolean get(int paramInt)
    {
      Preconditions.checkElementIndex(paramInt, size());
      return Boolean.valueOf(this.array[(paramInt + this.start)]);
    }

    public int hashCode()
    {
      int i = 1;
      for (int j = this.start; j < this.end; j++)
        i = i * 31 + Booleans.hashCode(this.array[j]);
      return i;
    }

    public int indexOf(Object paramObject)
    {
      if ((paramObject instanceof Boolean))
      {
        int i = Booleans.indexOf(this.array, ((Boolean)paramObject).booleanValue(), this.start, this.end);
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
      if ((paramObject instanceof Boolean))
      {
        int i = Booleans.lastIndexOf(this.array, ((Boolean)paramObject).booleanValue(), this.start, this.end);
        if (i >= 0)
          return i - this.start;
      }
      return -1;
    }

    public Boolean set(int paramInt, Boolean paramBoolean)
    {
      Preconditions.checkElementIndex(paramInt, size());
      int i = this.array[(paramInt + this.start)];
      this.array[(paramInt + this.start)] = ((Boolean)Preconditions.checkNotNull(paramBoolean)).booleanValue();
      return Boolean.valueOf(i);
    }

    public int size()
    {
      return this.end - this.start;
    }

    public List<Boolean> subList(int paramInt1, int paramInt2)
    {
      Preconditions.checkPositionIndexes(paramInt1, paramInt2, size());
      if (paramInt1 == paramInt2)
        return Collections.emptyList();
      return new BooleanArrayAsList(this.array, paramInt1 + this.start, paramInt2 + this.start);
    }

    boolean[] toBooleanArray()
    {
      int i = size();
      boolean[] arrayOfBoolean = new boolean[i];
      System.arraycopy(this.array, this.start, arrayOfBoolean, 0, i);
      return arrayOfBoolean;
    }

    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder(7 * size());
      String str1;
      int i;
      if (this.array[this.start] != 0)
      {
        str1 = "[true";
        localStringBuilder.append(str1);
        i = 1 + this.start;
        label44: if (i >= this.end)
          break label93;
        if (this.array[i] == 0)
          break label86;
      }
      label86: for (String str2 = ", true"; ; str2 = ", false")
      {
        localStringBuilder.append(str2);
        i++;
        break label44;
        str1 = "[false";
        break;
      }
      label93: return ']';
    }
  }

  private static enum LexicographicalComparator
    implements Comparator<boolean[]>
  {
    static
    {
      LexicographicalComparator[] arrayOfLexicographicalComparator = new LexicographicalComparator[1];
      arrayOfLexicographicalComparator[0] = INSTANCE;
    }

    public int compare(boolean[] paramArrayOfBoolean1, boolean[] paramArrayOfBoolean2)
    {
      int i = Math.min(paramArrayOfBoolean1.length, paramArrayOfBoolean2.length);
      for (int j = 0; j < i; j++)
      {
        int k = Booleans.compare(paramArrayOfBoolean1[j], paramArrayOfBoolean2[j]);
        if (k != 0)
          return k;
      }
      return paramArrayOfBoolean1.length - paramArrayOfBoolean2.length;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.primitives.Booleans
 * JD-Core Version:    0.6.2
 */