package com.x.google.common.util;

import java.util.Random;
import java.util.Vector;

public class ArrayUtil
{
  public static Vector asVector(Object[] paramArrayOfObject)
  {
    Vector localVector = new Vector(paramArrayOfObject.length);
    for (int i = 0; i < paramArrayOfObject.length; i++)
      localVector.addElement(paramArrayOfObject[i]);
    return localVector;
  }

  public static int binarySearch(long[] paramArrayOfLong, int paramInt1, int paramInt2, long paramLong)
    throws IllegalArgumentException, ArrayIndexOutOfBoundsException
  {
    if (paramInt1 > paramInt2)
      throw new IllegalArgumentException("fromIndex: " + paramInt1 + " is greater than toIndex: " + paramInt2);
    if (paramInt1 < 0)
      throw new ArrayIndexOutOfBoundsException("fromIndex: " + paramInt1 + " is less than 0");
    if (paramInt2 > paramArrayOfLong.length)
      throw new ArrayIndexOutOfBoundsException("toIndex: " + paramInt2 + " is greater than a.length: " + paramArrayOfLong.length);
    while (true)
    {
      if (j < i)
      {
        k = (j + i) / 2;
        int i1;
        if (paramLong < paramArrayOfLong[k])
          i1 = j;
        while (true)
        {
          j = i1;
          i = k;
          break;
          if (paramLong <= paramArrayOfLong[k])
            break label197;
          int m = k + 1;
          int n = i;
          i1 = m;
          k = n;
        }
      }
      int k = -(j + 1);
      label197: return k;
      int i = paramInt2;
      int j = paramInt1;
    }
  }

  public static int binarySearch(Object[] paramArrayOfObject, int paramInt1, int paramInt2, Object paramObject, Comparator paramComparator)
    throws IllegalArgumentException, ArrayIndexOutOfBoundsException
  {
    if (paramInt1 > paramInt2)
      throw new IllegalArgumentException("fromIndex: " + paramInt1 + " is greater than toIndex: " + paramInt2);
    if (paramInt1 < 0)
      throw new ArrayIndexOutOfBoundsException("fromIndex: " + paramInt1 + " is less than 0");
    if (paramInt2 > paramArrayOfObject.length)
      throw new ArrayIndexOutOfBoundsException("toIndex: " + paramInt2 + " is greater than array.length: " + paramArrayOfObject.length);
    while (true)
    {
      if (j < i)
      {
        k = (j + i) / 2;
        int m = paramComparator.compare(paramObject, paramArrayOfObject[k]);
        int i2;
        if (m < 0)
          i2 = j;
        while (true)
        {
          j = i2;
          i = k;
          break;
          if (m <= 0)
            break label203;
          int n = k + 1;
          int i1 = i;
          i2 = n;
          k = i1;
        }
      }
      int k = -(j + 1);
      label203: return k;
      int i = paramInt2;
      int j = paramInt1;
    }
  }

  public static int binarySearch(Object[] paramArrayOfObject, Object paramObject, Comparator paramComparator)
  {
    return binarySearch(paramArrayOfObject, 0, paramArrayOfObject.length, paramObject, paramComparator);
  }

  public static void copyIntoVector(Vector paramVector1, int paramInt, Vector paramVector2)
  {
    int i = paramInt;
    try
    {
      while (i < paramVector1.size())
      {
        paramVector2.insertElementAt(paramVector1.elementAt(i), i - paramInt);
        i++;
      }
      return;
    }
    finally
    {
    }
  }

  private static boolean equals(Object paramObject1, Object paramObject2)
  {
    if (((paramObject1 instanceof byte[])) && ((paramObject2 instanceof byte[])))
      return equals((byte[])paramObject1, (byte[])paramObject2);
    if (((paramObject1 instanceof Object[])) && ((paramObject2 instanceof Object[])))
      return equals((Object[])paramObject1, (Object[])paramObject2);
    if (((paramObject1 instanceof Vector)) && ((paramObject2 instanceof Vector)))
      return equals((Vector)paramObject1, (Vector)paramObject2);
    if (paramObject1 == null)
      return paramObject2 == null;
    return paramObject1.equals(paramObject2);
  }

  public static boolean equals(Vector paramVector1, Vector paramVector2)
  {
    if (paramVector1 == paramVector2);
    while (true)
    {
      return true;
      if ((paramVector1 == null) || (paramVector2 == null))
        return false;
      if (paramVector1.size() != paramVector2.size())
        return false;
      int i = paramVector1.size();
      for (int j = 0; j < i; j++)
        if (!equals(paramVector1.elementAt(j), paramVector2.elementAt(j)))
          return false;
    }
  }

  public static boolean equals(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    boolean bool;
    if (paramArrayOfByte1 == paramArrayOfByte2)
      bool = true;
    int i;
    int j;
    do
    {
      do
      {
        do
        {
          return bool;
          bool = false;
        }
        while (paramArrayOfByte1 == null);
        bool = false;
      }
      while (paramArrayOfByte2 == null);
      i = paramArrayOfByte1.length;
      j = paramArrayOfByte2.length;
      bool = false;
    }
    while (i != j);
    for (int k = 0; ; k++)
    {
      if (k >= paramArrayOfByte1.length)
        break label73;
      int m = paramArrayOfByte1[k];
      int n = paramArrayOfByte2[k];
      bool = false;
      if (m != n)
        break;
    }
    label73: return true;
  }

  public static boolean equals(Object[] paramArrayOfObject1, Object[] paramArrayOfObject2)
  {
    boolean bool1;
    if (paramArrayOfObject1 == paramArrayOfObject2)
      bool1 = true;
    int i;
    int j;
    do
    {
      do
      {
        do
        {
          return bool1;
          bool1 = false;
        }
        while (paramArrayOfObject1 == null);
        bool1 = false;
      }
      while (paramArrayOfObject2 == null);
      i = paramArrayOfObject1.length;
      j = paramArrayOfObject2.length;
      bool1 = false;
    }
    while (i != j);
    for (int k = 0; ; k++)
    {
      if (k >= paramArrayOfObject1.length)
        break label72;
      boolean bool2 = equals(paramArrayOfObject1[k], paramArrayOfObject2[k]);
      bool1 = false;
      if (!bool2)
        break;
    }
    label72: return true;
  }

  public static void fill(int[] paramArrayOfInt, int paramInt)
  {
    fill(paramArrayOfInt, paramInt, 0, paramArrayOfInt.length);
  }

  public static void fill(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramInt2 + paramInt3;
    while (paramInt2 < i)
    {
      paramArrayOfInt[paramInt2] = paramInt1;
      paramInt2++;
    }
  }

  public static void fill(boolean[] paramArrayOfBoolean, boolean paramBoolean)
  {
    for (int i = 0; i < paramArrayOfBoolean.length; i++)
      paramArrayOfBoolean[i] = paramBoolean;
  }

  public static long getNthElement(long[] paramArrayOfLong, int paramInt)
  {
    int i = paramArrayOfLong.length;
    if ((paramInt >= i) || (paramInt < 0))
      throw new IllegalArgumentException(paramInt + " invalid for: " + i);
    Random localRandom = new Random();
    Object localObject1 = new long[i];
    Object localObject2 = new long[i];
    while (true)
    {
      long l1 = paramArrayOfLong[Math.abs(localRandom.nextInt() % i)];
      int j = 0;
      int k = 0;
      int m = 0;
      int n = 0;
      if (m < i)
      {
        long l2 = paramArrayOfLong[m];
        int i4;
        int i3;
        if (l2 < l1)
        {
          i4 = k + 1;
          localObject1[k] = l2;
          i3 = j;
        }
        while (true)
        {
          m++;
          j = i3;
          k = i4;
          break;
          if (l2 > l1)
          {
            int i5 = n + 1;
            localObject2[n] = l2;
            n = i5;
            i4 = k;
            i3 = j;
          }
          else
          {
            int i1 = j + 1;
            int i2 = k;
            i3 = i1;
            i4 = i2;
          }
        }
      }
      if (paramInt < k)
      {
        long[] arrayOfLong2 = new long[k];
        paramArrayOfLong = (long[])localObject1;
        localObject1 = arrayOfLong2;
        i = k;
      }
      else
      {
        if (paramInt < k + j)
          return l1;
        long[] arrayOfLong1 = new long[n];
        paramInt -= k + j;
        paramArrayOfLong = (long[])localObject2;
        localObject2 = arrayOfLong1;
        i = n;
      }
    }
  }

  public static int indexOf(int[] paramArrayOfInt, int paramInt)
  {
    return indexOf(paramArrayOfInt, paramInt, 0);
  }

  public static int indexOf(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    while (paramInt2 < paramArrayOfInt.length)
    {
      if (paramArrayOfInt[paramInt2] == paramInt1)
        return paramInt2;
      paramInt2++;
    }
    return -1;
  }

  public static int indexOf(Object[] paramArrayOfObject, Object paramObject)
  {
    return indexOf(paramArrayOfObject, paramObject, 0);
  }

  public static int indexOf(Object[] paramArrayOfObject, Object paramObject, int paramInt)
  {
    while (paramInt < paramArrayOfObject.length)
    {
      if (equals(paramObject, paramArrayOfObject[paramInt]))
        return paramInt;
      paramInt++;
    }
    return -1;
  }

  public static int indexOf(boolean[] paramArrayOfBoolean, boolean paramBoolean)
  {
    return indexOf(paramArrayOfBoolean, paramBoolean, 0);
  }

  public static int indexOf(boolean[] paramArrayOfBoolean, boolean paramBoolean, int paramInt)
  {
    while (paramInt < paramArrayOfBoolean.length)
    {
      if (paramArrayOfBoolean[paramInt] == paramBoolean)
        return paramInt;
      paramInt++;
    }
    return -1;
  }

  public static int indexOfIgnoreCase(String[] paramArrayOfString, String paramString, int paramInt)
  {
    if (paramString == null)
      return -1;
    do
    {
      paramInt++;
      if (paramInt >= paramArrayOfString.length)
        break;
    }
    while (!paramString.equalsIgnoreCase(paramArrayOfString[paramInt]));
    return paramInt;
    return -1;
  }

  public static int lastIndexOf(Object[] paramArrayOfObject, Object paramObject)
  {
    return lastIndexOf(paramArrayOfObject, paramObject, 2147483647);
  }

  public static int lastIndexOf(Object[] paramArrayOfObject, Object paramObject, int paramInt)
  {
    for (int i = Math.min(paramInt, -1 + paramArrayOfObject.length); i >= 0; i--)
      if (equals(paramObject, paramArrayOfObject[i]))
        return i;
    return -1;
  }

  public static void msort(Object[] paramArrayOfObject, Comparator paramComparator)
  {
    int i = paramArrayOfObject.length;
    if (i > 1)
    {
      Object[] arrayOfObject = new Object[i];
      msort(paramArrayOfObject, paramComparator, 0, i - 1, arrayOfObject);
    }
  }

  public static void msort(Object[] paramArrayOfObject1, Comparator paramComparator, int paramInt1, int paramInt2, Object[] paramArrayOfObject2)
  {
    int i = paramInt1 + (1 + (paramInt2 - paramInt1)) / 2;
    if (paramInt1 + 1 < i)
      msort(paramArrayOfObject1, paramComparator, paramInt1, i - 1, paramArrayOfObject2);
    if (i < paramInt2)
      msort(paramArrayOfObject1, paramComparator, i, paramInt2, paramArrayOfObject2);
    for (int j = paramInt1; (j < i) && (paramComparator.compare(paramArrayOfObject1[j], paramArrayOfObject1[i]) <= 0); j++);
    int k = paramInt2 + 1;
    int m = 0;
    int n = i;
    int i1 = j;
    while ((i1 < i) && (n < k))
      if (paramComparator.compare(paramArrayOfObject1[i1], paramArrayOfObject1[n]) <= 0)
      {
        int i8 = m + 1;
        int i9 = i1 + 1;
        paramArrayOfObject2[m] = paramArrayOfObject1[i1];
        m = i8;
        i1 = i9;
      }
      else
      {
        int i6 = m + 1;
        int i7 = n + 1;
        paramArrayOfObject2[m] = paramArrayOfObject1[n];
        m = i6;
        n = i7;
      }
    while (true)
    {
      int i3 = 0;
      int i2;
      if (i2 < i)
      {
        int i4 = m + 1;
        int i5 = i2 + 1;
        paramArrayOfObject2[m] = paramArrayOfObject1[i2];
        m = i4;
        i2 = i5;
      }
      else
      {
        while (i3 < m)
        {
          paramArrayOfObject1[j] = paramArrayOfObject2[i3];
          i3++;
          j++;
        }
        return;
        i2 = i1;
      }
    }
  }

  public static void qsort(int[] paramArrayOfInt)
  {
    qsort(paramArrayOfInt, paramArrayOfInt.length);
  }

  public static void qsort(int[] paramArrayOfInt, int paramInt)
  {
    if (paramInt <= 1)
      return;
    qsort(paramArrayOfInt, 0, paramInt - 1);
  }

  public static void qsort(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int i = paramArrayOfInt[((paramInt1 + paramInt2) / 2)];
    int j = paramInt2;
    int k = paramInt1;
    while (true)
      if (paramArrayOfInt[k] < i)
      {
        k++;
      }
      else
      {
        while (i < paramArrayOfInt[j])
          j--;
        if (k >= j)
        {
          if (paramInt1 < k - 1)
            qsort(paramArrayOfInt, paramInt1, k - 1);
          if (j + 1 < paramInt2)
            qsort(paramArrayOfInt, j + 1, paramInt2);
          return;
        }
        int m = paramArrayOfInt[k];
        paramArrayOfInt[k] = paramArrayOfInt[j];
        paramArrayOfInt[j] = m;
        k++;
        j--;
      }
  }

  public static void qsort(Object[] paramArrayOfObject, Comparator paramComparator)
  {
    int i = paramArrayOfObject.length;
    if (i > 1)
      qsort(paramArrayOfObject, paramComparator, 0, i - 1);
  }

  public static void qsort(Object[] paramArrayOfObject, Comparator paramComparator, int paramInt1, int paramInt2)
  {
    Object localObject1 = paramArrayOfObject[((paramInt1 + paramInt2) / 2)];
    int i = paramInt2;
    int j = paramInt1;
    while (true)
      if (paramComparator.compare(paramArrayOfObject[j], localObject1) < 0)
      {
        j++;
      }
      else
      {
        while (paramComparator.compare(localObject1, paramArrayOfObject[i]) < 0)
          i--;
        if (j >= i)
        {
          if (paramInt1 < j - 1)
            qsort(paramArrayOfObject, paramComparator, paramInt1, j - 1);
          if (i + 1 < paramInt2)
            qsort(paramArrayOfObject, paramComparator, i + 1, paramInt2);
          return;
        }
        Object localObject2 = paramArrayOfObject[j];
        paramArrayOfObject[j] = paramArrayOfObject[i];
        paramArrayOfObject[i] = localObject2;
        j++;
        i--;
      }
  }

  public static int[] resize(int[] paramArrayOfInt, int paramInt)
  {
    int[] arrayOfInt = new int[paramInt];
    System.arraycopy(paramArrayOfInt, 0, arrayOfInt, 0, Math.min(paramArrayOfInt.length, paramInt));
    return arrayOfInt;
  }

  public static String[] resize(String[] paramArrayOfString, int paramInt)
  {
    String[] arrayOfString = new String[paramInt];
    System.arraycopy(paramArrayOfString, 0, arrayOfString, 0, Math.min(paramArrayOfString.length, paramInt));
    return arrayOfString;
  }

  public static int sum(int[] paramArrayOfInt)
  {
    return sum(paramArrayOfInt, 0, paramArrayOfInt.length);
  }

  public static int sum(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int i = 0;
    int j = paramInt1 + paramInt2;
    while (paramInt1 < j)
    {
      i += paramArrayOfInt[paramInt1];
      paramInt1++;
    }
    return i;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.util.ArrayUtil
 * JD-Core Version:    0.6.2
 */