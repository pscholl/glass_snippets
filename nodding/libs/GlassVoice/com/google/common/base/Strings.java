package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import javax.annotation.Nullable;

@GwtCompatible
public final class Strings
{
  public static String commonPrefix(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    Preconditions.checkNotNull(paramCharSequence1);
    Preconditions.checkNotNull(paramCharSequence2);
    int i = Math.min(paramCharSequence1.length(), paramCharSequence2.length());
    for (int j = 0; (j < i) && (paramCharSequence1.charAt(j) == paramCharSequence2.charAt(j)); j++);
    if ((validSurrogatePairAt(paramCharSequence1, j - 1)) || (validSurrogatePairAt(paramCharSequence2, j - 1)))
      j--;
    return paramCharSequence1.subSequence(0, j).toString();
  }

  public static String commonSuffix(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    Preconditions.checkNotNull(paramCharSequence1);
    Preconditions.checkNotNull(paramCharSequence2);
    int i = Math.min(paramCharSequence1.length(), paramCharSequence2.length());
    for (int j = 0; (j < i) && (paramCharSequence1.charAt(-1 + (paramCharSequence1.length() - j)) == paramCharSequence2.charAt(-1 + (paramCharSequence2.length() - j))); j++);
    if ((validSurrogatePairAt(paramCharSequence1, -1 + (paramCharSequence1.length() - j))) || (validSurrogatePairAt(paramCharSequence2, -1 + (paramCharSequence2.length() - j))))
      j--;
    return paramCharSequence1.subSequence(paramCharSequence1.length() - j, paramCharSequence1.length()).toString();
  }

  @Nullable
  public static String emptyToNull(@Nullable String paramString)
  {
    if (isNullOrEmpty(paramString))
      paramString = null;
    return paramString;
  }

  public static boolean isNullOrEmpty(@Nullable String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }

  public static String nullToEmpty(@Nullable String paramString)
  {
    if (paramString == null)
      paramString = "";
    return paramString;
  }

  public static String padEnd(String paramString, int paramInt, char paramChar)
  {
    Preconditions.checkNotNull(paramString);
    if (paramString.length() >= paramInt)
      return paramString;
    StringBuilder localStringBuilder = new StringBuilder(paramInt);
    localStringBuilder.append(paramString);
    for (int i = paramString.length(); i < paramInt; i++)
      localStringBuilder.append(paramChar);
    return localStringBuilder.toString();
  }

  public static String padStart(String paramString, int paramInt, char paramChar)
  {
    Preconditions.checkNotNull(paramString);
    if (paramString.length() >= paramInt)
      return paramString;
    StringBuilder localStringBuilder = new StringBuilder(paramInt);
    for (int i = paramString.length(); i < paramInt; i++)
      localStringBuilder.append(paramChar);
    localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }

  public static String repeat(String paramString, int paramInt)
  {
    Preconditions.checkNotNull(paramString);
    if (paramInt <= 1)
    {
      if (paramInt >= 0);
      for (boolean bool = true; ; bool = false)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramInt);
        Preconditions.checkArgument(bool, "invalid count: %s", arrayOfObject);
        if (paramInt == 0)
          paramString = "";
        return paramString;
      }
    }
    int i = paramString.length();
    long l = i * paramInt;
    int j = (int)l;
    if (j != l)
      throw new ArrayIndexOutOfBoundsException("Required array size too large: " + String.valueOf(l));
    char[] arrayOfChar = new char[j];
    paramString.getChars(0, i, arrayOfChar, 0);
    int k = i;
    while (k < j - k)
    {
      System.arraycopy(arrayOfChar, 0, arrayOfChar, k, k);
      k <<= 1;
    }
    System.arraycopy(arrayOfChar, 0, arrayOfChar, k, j - k);
    return new String(arrayOfChar);
  }

  @VisibleForTesting
  static boolean validSurrogatePairAt(CharSequence paramCharSequence, int paramInt)
  {
    return (paramInt >= 0) && (paramInt <= -2 + paramCharSequence.length()) && (Character.isHighSurrogate(paramCharSequence.charAt(paramInt))) && (Character.isLowSurrogate(paramCharSequence.charAt(paramInt + 1)));
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.base.Strings
 * JD-Core Version:    0.6.2
 */