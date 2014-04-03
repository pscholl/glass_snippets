package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import javax.annotation.Nullable;

@GwtCompatible
public final class Preconditions
{
  private static String badElementIndex(int paramInt1, int paramInt2, String paramString)
  {
    if (paramInt1 < 0)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = paramString;
      arrayOfObject2[1] = Integer.valueOf(paramInt1);
      return format("%s (%s) must not be negative", arrayOfObject2);
    }
    if (paramInt2 < 0)
      throw new IllegalArgumentException("negative size: " + paramInt2);
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = paramString;
    arrayOfObject1[1] = Integer.valueOf(paramInt1);
    arrayOfObject1[2] = Integer.valueOf(paramInt2);
    return format("%s (%s) must be less than size (%s)", arrayOfObject1);
  }

  private static String badPositionIndex(int paramInt1, int paramInt2, String paramString)
  {
    if (paramInt1 < 0)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = paramString;
      arrayOfObject2[1] = Integer.valueOf(paramInt1);
      return format("%s (%s) must not be negative", arrayOfObject2);
    }
    if (paramInt2 < 0)
      throw new IllegalArgumentException("negative size: " + paramInt2);
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = paramString;
    arrayOfObject1[1] = Integer.valueOf(paramInt1);
    arrayOfObject1[2] = Integer.valueOf(paramInt2);
    return format("%s (%s) must not be greater than size (%s)", arrayOfObject1);
  }

  private static String badPositionIndexes(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt1 < 0) || (paramInt1 > paramInt3))
      return badPositionIndex(paramInt1, paramInt3, "start index");
    if ((paramInt2 < 0) || (paramInt2 > paramInt3))
      return badPositionIndex(paramInt2, paramInt3, "end index");
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt2);
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    return format("end index (%s) must not be less than start index (%s)", arrayOfObject);
  }

  public static void checkArgument(boolean paramBoolean)
  {
    if (!paramBoolean)
      throw new IllegalArgumentException();
  }

  public static void checkArgument(boolean paramBoolean, @Nullable Object paramObject)
  {
    if (!paramBoolean)
      throw new IllegalArgumentException(String.valueOf(paramObject));
  }

  public static void checkArgument(boolean paramBoolean, @Nullable String paramString, @Nullable Object[] paramArrayOfObject)
  {
    if (!paramBoolean)
      throw new IllegalArgumentException(format(paramString, paramArrayOfObject));
  }

  public static int checkElementIndex(int paramInt1, int paramInt2)
  {
    return checkElementIndex(paramInt1, paramInt2, "index");
  }

  public static int checkElementIndex(int paramInt1, int paramInt2, @Nullable String paramString)
  {
    if ((paramInt1 < 0) || (paramInt1 >= paramInt2))
      throw new IndexOutOfBoundsException(badElementIndex(paramInt1, paramInt2, paramString));
    return paramInt1;
  }

  public static <T> T checkNotNull(T paramT)
  {
    if (paramT == null)
      throw new NullPointerException();
    return paramT;
  }

  public static <T> T checkNotNull(T paramT, @Nullable Object paramObject)
  {
    if (paramT == null)
      throw new NullPointerException(String.valueOf(paramObject));
    return paramT;
  }

  public static <T> T checkNotNull(T paramT, @Nullable String paramString, @Nullable Object[] paramArrayOfObject)
  {
    if (paramT == null)
      throw new NullPointerException(format(paramString, paramArrayOfObject));
    return paramT;
  }

  public static int checkPositionIndex(int paramInt1, int paramInt2)
  {
    return checkPositionIndex(paramInt1, paramInt2, "index");
  }

  public static int checkPositionIndex(int paramInt1, int paramInt2, @Nullable String paramString)
  {
    if ((paramInt1 < 0) || (paramInt1 > paramInt2))
      throw new IndexOutOfBoundsException(badPositionIndex(paramInt1, paramInt2, paramString));
    return paramInt1;
  }

  public static void checkPositionIndexes(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt1 < 0) || (paramInt2 < paramInt1) || (paramInt2 > paramInt3))
      throw new IndexOutOfBoundsException(badPositionIndexes(paramInt1, paramInt2, paramInt3));
  }

  public static void checkState(boolean paramBoolean)
  {
    if (!paramBoolean)
      throw new IllegalStateException();
  }

  public static void checkState(boolean paramBoolean, @Nullable Object paramObject)
  {
    if (!paramBoolean)
      throw new IllegalStateException(String.valueOf(paramObject));
  }

  public static void checkState(boolean paramBoolean, @Nullable String paramString, @Nullable Object[] paramArrayOfObject)
  {
    if (!paramBoolean)
      throw new IllegalStateException(format(paramString, paramArrayOfObject));
  }

  @VisibleForTesting
  static String format(String paramString, @Nullable Object[] paramArrayOfObject)
  {
    String str = String.valueOf(paramString);
    StringBuilder localStringBuilder = new StringBuilder(str.length() + 16 * paramArrayOfObject.length);
    int i = 0;
    int i2;
    for (int j = 0; ; j = i2)
    {
      int i1;
      if (j < paramArrayOfObject.length)
      {
        i1 = str.indexOf("%s", i);
        if (i1 != -1);
      }
      else
      {
        localStringBuilder.append(str.substring(i));
        if (j >= paramArrayOfObject.length)
          break label180;
        localStringBuilder.append(" [");
        int k = j + 1;
        localStringBuilder.append(paramArrayOfObject[j]);
        int n;
        for (int m = k; m < paramArrayOfObject.length; m = n)
        {
          localStringBuilder.append(", ");
          n = m + 1;
          localStringBuilder.append(paramArrayOfObject[m]);
        }
      }
      localStringBuilder.append(str.substring(i, i1));
      i2 = j + 1;
      localStringBuilder.append(paramArrayOfObject[j]);
      i = i1 + 2;
    }
    localStringBuilder.append(']');
    label180: return localStringBuilder.toString();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.base.Preconditions
 * JD-Core Version:    0.6.2
 */