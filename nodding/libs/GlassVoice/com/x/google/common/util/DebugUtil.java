package com.x.google.common.util;

import com.x.google.common.util.text.TextUtil;

public class DebugUtil
{
  private static final String ESCAPE_KEYS = "\\tbnrf";
  private static final String ESCAPE_VALUES = "\\\t\b\n\r\f";
  private static final int UNICODE_ESCAPE_LENGTH = 4;
  private static final int UNICODE_ESCAPE_RADIX = 16;

  public static String escape(Object paramObject)
  {
    return escape(String.valueOf(paramObject));
  }

  public static String escape(String paramString)
  {
    int i = paramString.length();
    StringBuffer localStringBuffer = new StringBuffer(i * 2);
    int j = 0;
    if (j < i)
    {
      char c = paramString.charAt(j);
      int k = "\\\t\b\n\r\f".indexOf(c);
      if (k != -1)
      {
        localStringBuffer.append('\\');
        localStringBuffer.append("\\tbnrf".charAt(k));
      }
      while (true)
      {
        j++;
        break;
        if (TextUtil.isPrintableAscii(c))
        {
          localStringBuffer.append(c);
        }
        else
        {
          localStringBuffer.append('\\');
          localStringBuffer.append('u');
          String str = Integer.toString(c, 16);
          int m = 4 - str.length();
          for (int n = 0; n < m; n++)
            localStringBuffer.append('0');
          localStringBuffer.append(str);
        }
      }
    }
    return localStringBuffer.toString();
  }

  public static String formatArray(Object paramObject)
  {
    return "[" + joinArray(paramObject, ", ", "...", getArrayLength(paramObject)) + "]";
  }

  public static String formatArray(Object paramObject, int paramInt)
  {
    return "[" + joinArray(paramObject, ", ", "...", paramInt) + "]";
  }

  public static Object getArrayElement(Object paramObject, int paramInt)
  {
    if (!paramObject.getClass().isArray())
      throw new IllegalArgumentException();
    if ((paramObject instanceof boolean[]))
      return new Boolean(((boolean[])(boolean[])paramObject)[paramInt]);
    if ((paramObject instanceof byte[]))
      return new Byte(((byte[])(byte[])paramObject)[paramInt]);
    if ((paramObject instanceof short[]))
      return new Short(((short[])(short[])paramObject)[paramInt]);
    if ((paramObject instanceof char[]))
      return new Character(((char[])(char[])paramObject)[paramInt]);
    if ((paramObject instanceof int[]))
      return new Integer(((int[])(int[])paramObject)[paramInt]);
    if ((paramObject instanceof long[]))
      return new Long(((long[])(long[])paramObject)[paramInt]);
    if ((paramObject instanceof float[]))
      return new Float(((float[])(float[])paramObject)[paramInt]);
    if ((paramObject instanceof double[]))
      return new Double(((double[])(double[])paramObject)[paramInt]);
    return ((Object[])(Object[])paramObject)[paramInt];
  }

  public static int getArrayLength(Object paramObject)
  {
    if (!paramObject.getClass().isArray())
      throw new IllegalArgumentException();
    if ((paramObject instanceof boolean[]))
      return ((boolean[])paramObject).length;
    if ((paramObject instanceof byte[]))
      return ((byte[])paramObject).length;
    if ((paramObject instanceof short[]))
      return ((short[])paramObject).length;
    if ((paramObject instanceof char[]))
      return ((char[])paramObject).length;
    if ((paramObject instanceof int[]))
      return ((int[])paramObject).length;
    if ((paramObject instanceof long[]))
      return ((long[])paramObject).length;
    if ((paramObject instanceof float[]))
      return ((float[])paramObject).length;
    if ((paramObject instanceof double[]))
      return ((double[])paramObject).length;
    return ((Object[])paramObject).length;
  }

  public static Throwable getStackTrace(String paramString)
  {
    return new Throwable(paramString);
  }

  public static boolean holdLock(Object paramObject)
  {
    try
    {
      paramObject.notify();
      return true;
    }
    catch (IllegalMonitorStateException localIllegalMonitorStateException)
    {
    }
    return false;
  }

  public static String joinArray(Object paramObject, String paramString1, String paramString2, int paramInt)
  {
    int i = getArrayLength(paramObject);
    if (i > 0)
    {
      StringBuffer localStringBuffer = new StringBuffer();
      if (paramInt > 0)
        localStringBuffer.append(getArrayElement(paramObject, 0));
      for (int j = 1; (j < i) && (j < paramInt); j++)
      {
        localStringBuffer.append(paramString1);
        localStringBuffer.append(getArrayElement(paramObject, j));
      }
      if (i > paramInt)
      {
        if (paramInt > 0)
          localStringBuffer.append(paramString1);
        localStringBuffer.append(paramString2);
      }
      return localStringBuffer.toString();
    }
    return "";
  }

  public static String unescape(String paramString)
  {
    int i = paramString.length();
    StringBuffer localStringBuffer = new StringBuffer(i);
    int j = 0;
    int k = 0;
    int m = 0;
    int n = 0;
    int i1 = 0;
    if (j < i)
    {
      char c = paramString.charAt(j);
      int i3;
      int i4;
      int i6;
      int i7;
      if (i1 != 0)
        if (n != 0)
          if ((c == 'u') && (k == 0))
          {
            int i16 = k;
            i3 = n;
            i4 = i16;
            int i17 = m;
            i6 = i1;
            i7 = i17;
          }
      while (true)
      {
        j++;
        int i8 = i4;
        n = i3;
        k = i8;
        int i9 = i7;
        i1 = i6;
        m = i9;
        break;
        int i13 = Character.digit(c, 16);
        if (i13 == -1)
          throw new RuntimeException("invalid unicode escape in: " + paramString);
        int i14 = i13 + m * 16;
        int i15 = k + 1;
        if (i15 == 4)
        {
          localStringBuffer.append((char)i14);
          n = 0;
          i1 = 0;
        }
        i3 = n;
        i4 = i15;
        i6 = i1;
        i7 = i14;
        continue;
        if (c == 'u')
        {
          i3 = 1;
          i6 = i1;
          i4 = 0;
          i7 = 0;
        }
        else
        {
          int i11 = "\\tbnrf".indexOf(c);
          if (i11 == -1)
            throw new RuntimeException("unknown escape character: " + c);
          localStringBuffer.append("\\\t\b\n\r\f".charAt(i11));
          i7 = m;
          int i12 = n;
          i4 = k;
          i3 = i12;
          i6 = 0;
          continue;
          if (c == '\\')
          {
            i7 = m;
            i6 = 1;
            int i10 = n;
            i4 = k;
            i3 = i10;
          }
          else
          {
            localStringBuffer.append(c);
            int i2 = k;
            i3 = n;
            i4 = i2;
            int i5 = m;
            i6 = i1;
            i7 = i5;
          }
        }
      }
    }
    return localStringBuffer.toString();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.util.DebugUtil
 * JD-Core Version:    0.6.2
 */