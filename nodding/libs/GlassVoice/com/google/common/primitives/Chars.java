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
public final class Chars
{
  public static final int BYTES = 2;

  public static List<Character> asList(char[] paramArrayOfChar)
  {
    if (paramArrayOfChar.length == 0)
      return Collections.emptyList();
    return new CharArrayAsList(paramArrayOfChar);
  }

  public static char checkedCast(long paramLong)
  {
    char c = (char)(int)paramLong;
    if (c == paramLong);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(paramLong);
      Preconditions.checkArgument(bool, "Out of range: %s", arrayOfObject);
      return c;
    }
  }

  public static int compare(char paramChar1, char paramChar2)
  {
    return paramChar1 - paramChar2;
  }

  public static char[] concat(char[][] paramArrayOfChar)
  {
    int i = 0;
    int j = paramArrayOfChar.length;
    for (int k = 0; k < j; k++)
      i += paramArrayOfChar[k].length;
    char[] arrayOfChar1 = new char[i];
    int m = 0;
    int n = paramArrayOfChar.length;
    for (int i1 = 0; i1 < n; i1++)
    {
      char[] arrayOfChar2 = paramArrayOfChar[i1];
      System.arraycopy(arrayOfChar2, 0, arrayOfChar1, m, arrayOfChar2.length);
      m += arrayOfChar2.length;
    }
    return arrayOfChar1;
  }

  public static boolean contains(char[] paramArrayOfChar, char paramChar)
  {
    int i = paramArrayOfChar.length;
    for (int j = 0; j < i; j++)
      if (paramArrayOfChar[j] == paramChar)
        return true;
    return false;
  }

  private static char[] copyOf(char[] paramArrayOfChar, int paramInt)
  {
    char[] arrayOfChar = new char[paramInt];
    System.arraycopy(paramArrayOfChar, 0, arrayOfChar, 0, Math.min(paramArrayOfChar.length, paramInt));
    return arrayOfChar;
  }

  public static char[] ensureCapacity(char[] paramArrayOfChar, int paramInt1, int paramInt2)
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
      if (paramArrayOfChar.length < paramInt1)
        paramArrayOfChar = copyOf(paramArrayOfChar, paramInt1 + paramInt2);
      return paramArrayOfChar;
      bool1 = false;
      break;
    }
  }

  @GwtIncompatible("doesn't work")
  public static char fromByteArray(byte[] paramArrayOfByte)
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
  public static char fromBytes(byte paramByte1, byte paramByte2)
  {
    return (char)(paramByte1 << 8 | paramByte2 & 0xFF);
  }

  public static int hashCode(char paramChar)
  {
    return paramChar;
  }

  public static int indexOf(char[] paramArrayOfChar, char paramChar)
  {
    return indexOf(paramArrayOfChar, paramChar, 0, paramArrayOfChar.length);
  }

  private static int indexOf(char[] paramArrayOfChar, char paramChar, int paramInt1, int paramInt2)
  {
    for (int i = paramInt1; i < paramInt2; i++)
      if (paramArrayOfChar[i] == paramChar)
        return i;
    return -1;
  }

  public static int indexOf(char[] paramArrayOfChar1, char[] paramArrayOfChar2)
  {
    Preconditions.checkNotNull(paramArrayOfChar1, "array");
    Preconditions.checkNotNull(paramArrayOfChar2, "target");
    int i;
    if (paramArrayOfChar2.length == 0)
      i = 0;
    label74: 
    while (true)
    {
      return i;
      i = 0;
      if (i >= 1 + (paramArrayOfChar1.length - paramArrayOfChar2.length))
        break;
      for (int j = 0; ; j++)
      {
        if (j >= paramArrayOfChar2.length)
          break label74;
        if (paramArrayOfChar1[(i + j)] != paramArrayOfChar2[j])
        {
          i++;
          break;
        }
      }
    }
    return -1;
  }

  public static String join(String paramString, char[] paramArrayOfChar)
  {
    Preconditions.checkNotNull(paramString);
    int i = paramArrayOfChar.length;
    if (i == 0)
      return "";
    StringBuilder localStringBuilder = new StringBuilder(i + paramString.length() * (i - 1));
    localStringBuilder.append(paramArrayOfChar[0]);
    for (int j = 1; j < i; j++)
      localStringBuilder.append(paramString).append(paramArrayOfChar[j]);
    return localStringBuilder.toString();
  }

  public static int lastIndexOf(char[] paramArrayOfChar, char paramChar)
  {
    return lastIndexOf(paramArrayOfChar, paramChar, 0, paramArrayOfChar.length);
  }

  private static int lastIndexOf(char[] paramArrayOfChar, char paramChar, int paramInt1, int paramInt2)
  {
    for (int i = paramInt2 - 1; i >= paramInt1; i--)
      if (paramArrayOfChar[i] == paramChar)
        return i;
    return -1;
  }

  public static Comparator<char[]> lexicographicalComparator()
  {
    return LexicographicalComparator.INSTANCE;
  }

  public static char max(char[] paramArrayOfChar)
  {
    if (paramArrayOfChar.length > 0);
    char c;
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      c = paramArrayOfChar[0];
      for (int i = 1; i < paramArrayOfChar.length; i++)
        if (paramArrayOfChar[i] > c)
          c = paramArrayOfChar[i];
    }
    return c;
  }

  public static char min(char[] paramArrayOfChar)
  {
    if (paramArrayOfChar.length > 0);
    char c;
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      c = paramArrayOfChar[0];
      for (int i = 1; i < paramArrayOfChar.length; i++)
        if (paramArrayOfChar[i] < c)
          c = paramArrayOfChar[i];
    }
    return c;
  }

  public static char saturatedCast(long paramLong)
  {
    if (paramLong > 65535L)
      return 65535;
    if (paramLong < 0L)
      return '\000';
    return (char)(int)paramLong;
  }

  public static char[] toArray(Collection<Character> paramCollection)
  {
    char[] arrayOfChar;
    if ((paramCollection instanceof CharArrayAsList))
      arrayOfChar = ((CharArrayAsList)paramCollection).toCharArray();
    while (true)
    {
      return arrayOfChar;
      Object[] arrayOfObject = paramCollection.toArray();
      int i = arrayOfObject.length;
      arrayOfChar = new char[i];
      for (int j = 0; j < i; j++)
        arrayOfChar[j] = ((Character)Preconditions.checkNotNull(arrayOfObject[j])).charValue();
    }
  }

  @GwtIncompatible("doesn't work")
  public static byte[] toByteArray(char paramChar)
  {
    byte[] arrayOfByte = new byte[2];
    arrayOfByte[0] = ((byte)(paramChar >> '\b'));
    arrayOfByte[1] = ((byte)paramChar);
    return arrayOfByte;
  }

  @GwtCompatible
  private static class CharArrayAsList extends AbstractList<Character>
    implements RandomAccess, Serializable
  {
    private static final long serialVersionUID;
    final char[] array;
    final int end;
    final int start;

    CharArrayAsList(char[] paramArrayOfChar)
    {
      this(paramArrayOfChar, 0, paramArrayOfChar.length);
    }

    CharArrayAsList(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    {
      this.array = paramArrayOfChar;
      this.start = paramInt1;
      this.end = paramInt2;
    }

    public boolean contains(Object paramObject)
    {
      return ((paramObject instanceof Character)) && (Chars.indexOf(this.array, ((Character)paramObject).charValue(), this.start, this.end) != -1);
    }

    public boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof CharArrayAsList))
          break;
        CharArrayAsList localCharArrayAsList = (CharArrayAsList)paramObject;
        int i = size();
        if (localCharArrayAsList.size() != i)
          return false;
        for (int j = 0; j < i; j++)
          if (this.array[(j + this.start)] != localCharArrayAsList.array[(j + localCharArrayAsList.start)])
            return false;
      }
      return super.equals(paramObject);
    }

    public Character get(int paramInt)
    {
      Preconditions.checkElementIndex(paramInt, size());
      return Character.valueOf(this.array[(paramInt + this.start)]);
    }

    public int hashCode()
    {
      int i = 1;
      for (int j = this.start; j < this.end; j++)
        i = i * 31 + Chars.hashCode(this.array[j]);
      return i;
    }

    public int indexOf(Object paramObject)
    {
      if ((paramObject instanceof Character))
      {
        int i = Chars.indexOf(this.array, ((Character)paramObject).charValue(), this.start, this.end);
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
      if ((paramObject instanceof Character))
      {
        int i = Chars.lastIndexOf(this.array, ((Character)paramObject).charValue(), this.start, this.end);
        if (i >= 0)
          return i - this.start;
      }
      return -1;
    }

    public Character set(int paramInt, Character paramCharacter)
    {
      Preconditions.checkElementIndex(paramInt, size());
      char c = this.array[(paramInt + this.start)];
      this.array[(paramInt + this.start)] = ((Character)Preconditions.checkNotNull(paramCharacter)).charValue();
      return Character.valueOf(c);
    }

    public int size()
    {
      return this.end - this.start;
    }

    public List<Character> subList(int paramInt1, int paramInt2)
    {
      Preconditions.checkPositionIndexes(paramInt1, paramInt2, size());
      if (paramInt1 == paramInt2)
        return Collections.emptyList();
      return new CharArrayAsList(this.array, paramInt1 + this.start, paramInt2 + this.start);
    }

    char[] toCharArray()
    {
      int i = size();
      char[] arrayOfChar = new char[i];
      System.arraycopy(this.array, this.start, arrayOfChar, 0, i);
      return arrayOfChar;
    }

    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder(3 * size());
      localStringBuilder.append('[').append(this.array[this.start]);
      for (int i = 1 + this.start; i < this.end; i++)
        localStringBuilder.append(", ").append(this.array[i]);
      return ']';
    }
  }

  private static enum LexicographicalComparator
    implements Comparator<char[]>
  {
    static
    {
      LexicographicalComparator[] arrayOfLexicographicalComparator = new LexicographicalComparator[1];
      arrayOfLexicographicalComparator[0] = INSTANCE;
    }

    public int compare(char[] paramArrayOfChar1, char[] paramArrayOfChar2)
    {
      int i = Math.min(paramArrayOfChar1.length, paramArrayOfChar2.length);
      for (int j = 0; j < i; j++)
      {
        int k = Chars.compare(paramArrayOfChar1[j], paramArrayOfChar2[j]);
        if (k != 0)
          return k;
      }
      return paramArrayOfChar1.length - paramArrayOfChar2.length;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.primitives.Chars
 * JD-Core Version:    0.6.2
 */