package com.google.common.primitives;

import com.google.common.base.Preconditions;
import javax.annotation.CheckForNull;

final class AndroidInteger
{
  @CheckForNull
  static Integer tryParse(String paramString)
  {
    return tryParse(paramString, 10);
  }

  @CheckForNull
  static Integer tryParse(String paramString, int paramInt)
  {
    Preconditions.checkNotNull(paramString);
    boolean bool1;
    if (paramInt >= 2)
    {
      bool1 = true;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(paramInt);
      arrayOfObject1[1] = Integer.valueOf(2);
      Preconditions.checkArgument(bool1, "Invalid radix %s, min radix is %s", arrayOfObject1);
      if (paramInt > 36)
        break label101;
    }
    int i;
    label101: for (boolean bool2 = true; ; bool2 = false)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(paramInt);
      arrayOfObject2[1] = Integer.valueOf(36);
      Preconditions.checkArgument(bool2, "Invalid radix %s, max radix is %s", arrayOfObject2);
      i = paramString.length();
      if (i != 0)
        break label107;
      return null;
      bool1 = false;
      break;
    }
    label107: if (paramString.charAt(0) == '-');
    int j;
    for (boolean bool3 = true; ; bool3 = false)
    {
      j = 0;
      if (!bool3)
        break;
      j = 0 + 1;
      if (j != i)
        break;
      return null;
    }
    return tryParse(paramString, j, paramInt, bool3);
  }

  @CheckForNull
  private static Integer tryParse(String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i = -2147483648 / paramInt2;
    int j = 0;
    int k = paramString.length();
    int n;
    for (int m = paramInt1; m < k; m = n)
    {
      n = m + 1;
      int i1 = Character.digit(paramString.charAt(m), paramInt2);
      if (i1 == -1);
      int i2;
      do
      {
        do
          return null;
        while (i > j);
        i2 = j * paramInt2 - i1;
      }
      while (i2 > j);
      j = i2;
    }
    if (!paramBoolean)
    {
      j = -j;
      if (j < 0)
        return null;
    }
    if ((j > 2147483647) || (j < -2147483648))
      return null;
    Integer localInteger = Integer.valueOf(j);
    return localInteger;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.primitives.AndroidInteger
 * JD-Core Version:    0.6.2
 */