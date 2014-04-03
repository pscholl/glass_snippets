package com.x.google.common.util.text;

import com.x.google.common.Log;
import java.io.UnsupportedEncodingException;
import java.util.Enumeration;
import java.util.Vector;

public final class TextUtil
{
  static final Boolean FALSE = new Boolean(false);
  public static final String HTTPS_PREFIX = "https://";
  public static final String HTTP_PREFIX = "http://";
  static final Boolean TRUE = new Boolean(true);

  public static StringBuffer appendTextWithSeparator(StringBuffer paramStringBuffer, String paramString1, String paramString2)
  {
    if (paramStringBuffer.length() > 0)
      paramStringBuffer.append(paramString1);
    paramStringBuffer.append(paramString2);
    return paramStringBuffer;
  }

  public static int compareVersions(String paramString1, String paramString2)
  {
    int[] arrayOfInt1 = splitVersion(paramString1);
    int[] arrayOfInt2 = splitVersion(paramString2);
    int i = Math.min(arrayOfInt1.length, arrayOfInt1.length);
    int j = 0;
    if (j < i)
      if (arrayOfInt1[j] >= arrayOfInt2[j]);
    do
    {
      return -1;
      if (arrayOfInt1[j] > arrayOfInt2[j])
        return 1;
      j++;
      break;
      if (arrayOfInt1.length == arrayOfInt2.length)
        return 0;
    }
    while (arrayOfInt1.length <= arrayOfInt2.length);
    return 1;
  }

  public static String concat(String[] paramArrayOfString, char paramChar)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0; i < paramArrayOfString.length; i++)
      if ((paramArrayOfString[i] != null) && (paramArrayOfString[i].length() > 0))
      {
        if (localStringBuffer.length() > 0)
          localStringBuffer.append(paramChar);
        localStringBuffer.append(paramArrayOfString[i]);
      }
    return localStringBuffer.toString();
  }

  public static String concatenateLinesWithNewlineDelimiter(Vector paramVector)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0; i < paramVector.size(); i++)
    {
      if (i > 0)
        localStringBuffer.append("\n");
      localStringBuffer.append(paramVector.elementAt(i));
    }
    return localStringBuffer.toString();
  }

  public static String e6ToString(int paramInt)
  {
    int i = paramInt / 1000000;
    int j = Math.abs(paramInt - i * 1000000);
    StringBuffer localStringBuffer = new StringBuffer();
    if ((paramInt < 0) && (i == 0))
      localStringBuffer.append("-");
    localStringBuffer.append(i);
    if (j > 0)
    {
      localStringBuffer.append(".");
      localStringBuffer.append(String.valueOf(j + 1000000).substring(1));
    }
    return localStringBuffer.toString();
  }

  public static boolean endsWith(String paramString1, String paramString2)
  {
    int i = paramString1.length();
    int j = paramString2.length();
    return (i >= j) && (paramString1.substring(i - j, i).equals(paramString2));
  }

  public static boolean equals(String paramString1, String paramString2)
  {
    if ((isEmpty(paramString1)) && (isEmpty(paramString2)))
      return true;
    if ((isEmpty(paramString1)) || (isEmpty(paramString2)))
      return false;
    return paramString1.equals(paramString2);
  }

  public static boolean equals(StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2)
  {
    if (paramStringBuffer1 == paramStringBuffer2)
      return true;
    if ((paramStringBuffer1 == null) || (paramStringBuffer2 == null))
      return false;
    return paramStringBuffer1.toString().equals(paramStringBuffer2.toString());
  }

  public static String formatMessage(String paramString1, String paramString2)
  {
    return formatMessage(paramString1, new String[] { paramString2 });
  }

  public static String formatMessage(String paramString1, String paramString2, String paramString3)
  {
    return formatMessage(paramString1, new String[] { paramString2, paramString3 });
  }

  public static String formatMessage(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    return formatMessage(paramString1, new String[] { paramString2, paramString3, paramString4 });
  }

  public static String formatMessage(String paramString, String[] paramArrayOfString)
  {
    if (paramString.startsWith("${I18N"))
      return paramString;
    StringBuffer localStringBuffer = new StringBuffer(paramString.length());
    int i = 0;
    int j = paramString.indexOf('{');
    if ((j != -1) && (j < -1 + paramString.length()))
    {
      localStringBuffer.append(paramString.substring(i, j));
      int k = j + 1;
      int n;
      if (paramString.charAt(k) == '{')
      {
        localStringBuffer.append('{');
        n = k + 1;
      }
      int i1;
      while (true)
      {
        int i2 = paramString.indexOf('{', n);
        i = n;
        j = i2;
        break;
        int m = paramString.indexOf('}', k);
        if ((m == -1) || (m - k > 2) || (m == 0))
          throw new IllegalArgumentException("TextUtil.formatMessage \"" + paramString + "\":" + k);
        String str = paramString.substring(k, m);
        n = k + (1 + str.length());
        try
        {
          i1 = Integer.parseInt(str);
          if ((i1 >= 0) && (i1 < paramArrayOfString.length))
            localStringBuffer.append(paramArrayOfString[i1]);
        }
        catch (NumberFormatException localNumberFormatException)
        {
          throw new IllegalArgumentException("TextUtil.formatMessage \"" + paramString + "\" tag(\"" + str + "\")");
        }
      }
      throw new IllegalArgumentException("TextUtil.formatMessage \"" + paramString + "\" param(" + i1 + ')');
    }
    localStringBuffer.append(paramString.substring(i));
    return localStringBuffer.toString();
  }

  public static String getDomainForUrl(String paramString)
  {
    if (isEmpty(paramString))
    {
      paramString = "";
      return paramString;
    }
    if (paramString.toLowerCase().startsWith("http://"))
      paramString = paramString.substring("http://".length());
    while (true)
    {
      char[] arrayOfChar = { 47, 35, 63 };
      for (int i = 0; i < arrayOfChar.length; i++)
      {
        int j = paramString.indexOf(arrayOfChar[i]);
        if (j != -1)
          paramString = paramString.substring(0, j);
      }
      break;
      if (paramString.toLowerCase().startsWith("https://"))
        paramString = paramString.substring("https://".length());
    }
  }

  public static String getFileBaseName(String paramString)
  {
    int i = paramString.lastIndexOf('/');
    if (i >= 0)
      paramString = paramString.substring(i + 1);
    int j = paramString.lastIndexOf('.');
    if (j >= 0)
      paramString = paramString.substring(0, j);
    return paramString;
  }

  public static String getStrippedPhoneNumber(String paramString)
  {
    if (isEmpty(paramString))
      return "";
    StringBuffer localStringBuffer = new StringBuffer(paramString.length());
    for (int i = 0; i < paramString.length(); i++)
    {
      char c = paramString.charAt(i);
      if ((Character.isDigit(c)) || (c == '+'))
        localStringBuffer.append(c);
    }
    return localStringBuffer.toString();
  }

  public static String[] getUrlTextRemainderFromDescription(String paramString)
  {
    String[] arrayOfString = new String[3];
    int i = paramString.indexOf("http://");
    if (i == -1)
      return arrayOfString;
    String str = paramString.substring(i);
    if (str.indexOf(' ') != -1);
    for (int j = str.indexOf(' '); ; j = str.length())
    {
      arrayOfString[0] = str.substring(0, j);
      arrayOfString[1] = arrayOfString[0].substring("http://".length());
      if (arrayOfString[1].indexOf('/') != -1)
        arrayOfString[1] = arrayOfString[1].substring(0, arrayOfString[1].indexOf(47));
      if (j != str.length())
        arrayOfString[2] = str.substring(j + 1);
      return arrayOfString;
    }
  }

  public static int indexOf(char paramChar, int paramInt, StringBuffer paramStringBuffer)
  {
    while (paramInt < paramStringBuffer.length())
    {
      if (paramStringBuffer.charAt(paramInt) == paramChar)
        return paramInt;
      paramInt++;
    }
    return -1;
  }

  public static int indexOf(char paramChar, StringBuffer paramStringBuffer)
  {
    return indexOf(paramChar, 0, paramStringBuffer);
  }

  public static int indexOfCaseInsensitive(String paramString1, String paramString2, String paramString3)
  {
    if (paramString2 == null);
    while (true)
    {
      return -1;
      if (paramString1 != null)
      {
        int i = paramString1.length();
        int j = paramString2.length();
        if (j == 0)
          return 0;
        if (i >= j)
          for (int k = 0; k <= i - j; k++)
            if ((paramString1.charAt(k) == paramString2.charAt(0)) || (paramString1.charAt(k) == paramString3.charAt(0)))
            {
              int m = 1;
              for (int n = 0; ; n++)
                if (n < j)
                {
                  if ((paramString1.charAt(k + n) != paramString2.charAt(n)) && (paramString1.charAt(k + n) != paramString3.charAt(n)))
                    m = 0;
                }
                else
                {
                  if (m == 0)
                    break;
                  return k;
                }
            }
      }
    }
  }

  public static boolean isCharacter(int paramInt)
  {
    return (paramInt >= 0) && (paramInt <= 65535);
  }

  public static boolean isEmpty(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }

  public static boolean isLowerCase(String paramString)
  {
    int i = paramString.length();
    for (int j = 0; j < i; j++)
      if (Character.isUpperCase(paramString.charAt(j)))
        return false;
    return true;
  }

  public static boolean isPrintableAscii(char paramChar)
  {
    return ('\037' < paramChar) && (paramChar < '');
  }

  public static boolean isUpperCase(String paramString)
  {
    int i = paramString.length();
    for (int j = 0; j < i; j++)
      if (Character.isLowerCase(paramString.charAt(j)))
        return false;
    return true;
  }

  public static boolean isUrl(String paramString)
  {
    if (isEmpty(paramString))
      return false;
    return paramString.startsWith("http://");
  }

  public static boolean isWhitespace(char paramChar)
  {
    return (('\t' <= paramChar) && (paramChar <= '\r')) || (paramChar == ' ') || (paramChar == '') || (paramChar == ' ') || (paramChar == ' ') || (paramChar == '᠎') || ((' ' <= paramChar) && (paramChar <= ' ')) || (paramChar == ' ') || (paramChar == ' ') || (paramChar == ' ') || (paramChar == ' ') || (paramChar == '　');
  }

  public static String join(Enumeration paramEnumeration, char paramChar)
  {
    return join(paramEnumeration, String.valueOf(paramChar));
  }

  public static String join(Enumeration paramEnumeration, String paramString)
  {
    if (!paramEnumeration.hasMoreElements())
      return "";
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(paramEnumeration.nextElement());
    while (paramEnumeration.hasMoreElements())
      localStringBuffer.append(paramString).append(paramEnumeration.nextElement());
    return localStringBuffer.toString();
  }

  public static String join(Vector paramVector, String paramString)
  {
    StringBuffer localStringBuffer;
    int i;
    switch (paramVector.size())
    {
    default:
      localStringBuffer = new StringBuffer();
      i = 0;
    case 0:
    case 1:
    }
    while (i < paramVector.size())
    {
      if (i != 0)
        localStringBuffer.append(paramString);
      localStringBuffer.append(paramVector.elementAt(i));
      i++;
      continue;
      return "";
      return String.valueOf(paramVector.firstElement());
    }
    return localStringBuffer.toString();
  }

  public static String join(String[] paramArrayOfString, char paramChar)
  {
    int i = 0;
    StringBuffer localStringBuffer;
    switch (paramArrayOfString.length)
    {
    default:
      localStringBuffer = new StringBuffer();
    case 0:
    case 1:
    }
    while (i < paramArrayOfString.length)
    {
      if (i != 0)
        localStringBuffer.append(paramChar);
      localStringBuffer.append(paramArrayOfString[i]);
      i++;
      continue;
      return "";
      return paramArrayOfString[0];
    }
    return localStringBuffer.toString();
  }

  public static String join(String[] paramArrayOfString, String paramString)
  {
    int i = 0;
    StringBuffer localStringBuffer;
    switch (paramArrayOfString.length)
    {
    default:
      localStringBuffer = new StringBuffer();
    case 0:
    case 1:
    }
    while (i < paramArrayOfString.length)
    {
      if (i != 0)
        localStringBuffer.append(paramString);
      localStringBuffer.append(paramArrayOfString[i]);
      i++;
      continue;
      return "";
      return paramArrayOfString[0];
    }
    return localStringBuffer.toString();
  }

  public static int lastIndexOf(char paramChar, int paramInt, StringBuffer paramStringBuffer)
  {
    for (int i = Math.min(-1 + paramStringBuffer.length(), paramInt); i >= 0; i--)
      if (paramStringBuffer.charAt(i) == paramChar)
        return i;
    return -1;
  }

  public static int lastIndexOf(char paramChar, StringBuffer paramStringBuffer)
  {
    return lastIndexOf(paramChar, 2147483647, paramStringBuffer);
  }

  public static String leftPad(String paramString, int paramInt, char paramChar)
  {
    if (paramString.length() >= paramInt)
      return paramString;
    StringBuffer localStringBuffer = new StringBuffer(paramInt);
    int i = paramInt - paramString.length();
    for (int j = 0; j < i; j++)
      localStringBuffer.append(paramChar);
    localStringBuffer.append(paramString);
    return localStringBuffer.toString();
  }

  public static boolean matchesPattern(String paramString1, String paramString2)
  {
    return matchesPattern(paramString1, splitGlobPattern(paramString2));
  }

  public static boolean matchesPattern(String paramString, String[] paramArrayOfString)
  {
    boolean bool1 = paramString.startsWith(paramArrayOfString[0]);
    boolean bool2 = false;
    if (bool1)
      bool2 = matchesPattern(paramString, paramArrayOfString, paramArrayOfString[0].length(), 1);
    return bool2;
  }

  private static boolean matchesPattern(String paramString, String[] paramArrayOfString, int paramInt1, int paramInt2)
  {
    boolean bool2;
    if (paramInt2 == paramArrayOfString.length)
    {
      int j = paramString.length();
      bool2 = false;
      if (paramInt1 == j)
        bool2 = true;
      return bool2;
    }
    int i = paramArrayOfString[paramInt2].charAt(0);
    String str = paramArrayOfString[(paramInt2 + 1)];
    switch (i)
    {
    default:
      return false;
    case 42:
    case 63:
    }
    while (true)
    {
      if (str.length() > 0)
        paramInt1 = paramString.indexOf(str, paramInt1);
      bool2 = false;
      if (paramInt1 < 0)
        break;
      if (matchesPattern(paramString, paramArrayOfString, paramInt1 + str.length(), paramInt2 + 2))
      {
        return true;
        boolean bool1 = paramString.regionMatches(false, paramInt1 + 1, str, 0, str.length());
        bool2 = false;
        if (!bool1)
          break;
        return matchesPattern(paramString, paramArrayOfString, paramInt1 + 1 + str.length(), paramInt2 + 2);
      }
      paramInt1++;
    }
  }

  public static String normalizeWhitespace(String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    StringBuffer localStringBuffer = new StringBuffer(paramString.length());
    int i = paramString.length();
    int j = 0;
    boolean bool = paramBoolean1;
    if (j < i)
    {
      char c = paramString.charAt(j);
      int m;
      label49: int n;
      if (c == '\001')
      {
        m = 1;
        if ((c <= ' ') && ((m == 0) || (!paramBoolean3)))
          break label125;
        n = 1;
        label68: if (n == 0)
          break label145;
        if (m == 0)
          break label131;
        if (j < i - 1)
        {
          localStringBuffer.append(c);
          j++;
          localStringBuffer.append(paramString.charAt(j));
          bool = false;
        }
      }
      while (true)
      {
        j++;
        break;
        m = 0;
        break label49;
        label125: n = 0;
        break label68;
        label131: localStringBuffer.append(c);
        bool = false;
        continue;
        label145: if (!bool)
        {
          localStringBuffer.append(' ');
          bool = true;
        }
      }
    }
    int k = localStringBuffer.length();
    if ((paramBoolean2) && (bool) && (k > 0))
      localStringBuffer.deleteCharAt(k - 1);
    return localStringBuffer.toString();
  }

  public static String nullToEmpty(String paramString)
  {
    if (paramString == null)
      paramString = "";
    return paramString;
  }

  public static String pad(String paramString, int paramInt, char paramChar)
  {
    if (paramString.length() >= paramInt)
      return paramString;
    StringBuffer localStringBuffer = new StringBuffer(paramString);
    while (localStringBuffer.length() < paramInt)
      localStringBuffer.append(paramChar);
    return localStringBuffer.toString();
  }

  public static String pad(String paramString1, String paramString2)
  {
    if (!isEmpty(paramString1))
    {
      StringBuffer localStringBuffer = new StringBuffer(paramString1.length() + 2 * paramString2.length());
      localStringBuffer.append(paramString2);
      localStringBuffer.append(paramString1);
      localStringBuffer.append(paramString2);
      paramString1 = localStringBuffer.toString();
    }
    return paramString1;
  }

  public static Boolean parseBoolean(String paramString)
  {
    if (paramString == null);
    do
    {
      return null;
      if (paramString.equals("true"))
        return TRUE;
    }
    while (!paramString.equals("false"));
    return FALSE;
  }

  public static boolean parseBoolean(String paramString, boolean paramBoolean)
  {
    if (paramString == null);
    do
    {
      return paramBoolean;
      if (paramString.equals("true"))
        return true;
    }
    while (!paramString.equals("false"));
    return false;
  }

  public static int parseDecimal(String paramString, int paramInt)
    throws NumberFormatException
  {
    if ((isEmpty(paramString)) || (paramString.equals(".")))
      throw new NumberFormatException();
    int i = paramString.indexOf('.');
    int j;
    if (i != -1)
    {
      j = -1 + (paramString.length() - i);
      if (paramInt == 0)
        paramString = paramString.substring(0, i);
    }
    while (true)
      if (paramString.length() == 0)
      {
        if (paramInt == 0)
        {
          return 0;
          if (j > paramInt)
          {
            paramString = paramString.substring(0, paramInt + (i + 1));
            j = paramInt;
          }
          paramString = paramString.substring(0, i) + paramString.substring(i + 1);
        }
        else
        {
          throw new NumberFormatException();
        }
      }
      else
      {
        if (j < paramInt)
          if (i != -1)
            break label156;
        label156: for (paramString = pad(paramString, paramInt + paramString.length(), '0'); ; paramString = pad(paramString, i + paramInt, '0'))
          return Integer.parseInt(paramString);
        j = 0;
      }
  }

  public static int parseInteger(String paramString, int paramInt)
  {
    if (paramString != null);
    try
    {
      int i = Integer.parseInt(paramString);
      paramInt = i;
      return paramInt;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    return paramInt;
  }

  public static String removeInterpolatedIcons(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer(paramString.length());
    int i = paramString.length();
    int j = 0;
    if (j < i)
    {
      char c = paramString.charAt(j);
      if (c != '\001')
        localStringBuffer.append(c);
      while (true)
      {
        j++;
        break;
        j++;
      }
    }
    return localStringBuffer.toString();
  }

  public static int replace(String paramString1, String paramString2, StringBuffer paramStringBuffer)
  {
    int i = paramString1.length();
    int j = paramString2.length();
    int k = 0;
    int m = 0;
    while (k <= paramStringBuffer.length() - i)
    {
      for (int n = 0; ; n++)
      {
        if (n >= i)
          break label67;
        if (paramStringBuffer.charAt(k + n) != paramString1.charAt(n))
        {
          k++;
          break;
        }
      }
      label67: paramStringBuffer.delete(k, k + i);
      paramStringBuffer.insert(k, paramString2);
      m++;
      k += j;
      if (i == 0)
        k++;
    }
    return m;
  }

  public static String[] split(String paramString, char paramChar)
  {
    return split(paramString, String.valueOf(paramChar));
  }

  public static String[] split(String paramString1, String paramString2)
  {
    int i = 0;
    int j = paramString1.length();
    int k = paramString1.indexOf(paramString2, 0);
    int m = 0;
    while ((k != -1) && (k < j))
    {
      m++;
      if (k >= 0)
        k += paramString2.length();
      k = paramString1.indexOf(paramString2, k);
    }
    String[] arrayOfString = new String[m + 1];
    for (int n = 0; n < m; n++)
    {
      int i1 = paramString1.indexOf(paramString2, i);
      arrayOfString[n] = paramString1.substring(i, i1);
      i = i1 + paramString2.length();
    }
    arrayOfString[m] = paramString1.substring(i);
    return arrayOfString;
  }

  public static String[] splitAndDropEmpty(String paramString1, String paramString2, boolean paramBoolean)
  {
    int i = 0;
    if ((paramString1 == null) || (paramString2 == null))
      return new String[0];
    if ((paramBoolean) && (paramString1.trim().length() == 0))
      return new String[0];
    String[] arrayOfString1 = split(paramString1, paramString2);
    Vector localVector = new Vector();
    while (i < arrayOfString1.length)
    {
      if (paramBoolean)
        arrayOfString1[i] = arrayOfString1[i].trim();
      if (arrayOfString1[i].length() > 0)
        localVector.addElement(arrayOfString1[i]);
      i++;
    }
    String[] arrayOfString2 = new String[localVector.size()];
    localVector.copyInto(arrayOfString2);
    return arrayOfString2;
  }

  public static String[] splitAndTrim(String paramString1, String paramString2)
  {
    return splitAndDropEmpty(paramString1, paramString2, true);
  }

  public static String[] splitGlobPattern(String paramString)
  {
    Vector localVector = new Vector();
    int i = paramString.length();
    StringBuffer localStringBuffer = new StringBuffer(i);
    int j = 0;
    if (j < i)
    {
      char c = paramString.charAt(j);
      int m;
      switch (c)
      {
      default:
        localStringBuffer.append(c);
        m = j;
      case '*':
      case '?':
      case '\\':
      }
      while (true)
      {
        j = m + 1;
        break;
        localVector.addElement(localStringBuffer.toString());
        if (c == '?');
        for (String str = "?"; ; str = "*")
        {
          localVector.addElement(str);
          localStringBuffer.setLength(0);
          m = j;
          break;
        }
        m = j + 1;
        if (m < i)
          localStringBuffer.append(paramString.charAt(m));
      }
    }
    localVector.addElement(localStringBuffer.toString());
    String[] arrayOfString = new String[localVector.size()];
    for (int k = 0; k < arrayOfString.length; k++)
      arrayOfString[k] = ((String)localVector.elementAt(k));
    return arrayOfString;
  }

  public static int[] splitVersion(String paramString)
  {
    String[] arrayOfString = split(paramString, '.');
    int[] arrayOfInt = new int[arrayOfString.length];
    for (int i = 0; i < arrayOfInt.length; i++)
    {
      if (arrayOfString[i].length() == 0)
        throw new NumberFormatException("Missing integer part in " + paramString);
      arrayOfInt[i] = Integer.parseInt(arrayOfString[i]);
    }
    return arrayOfInt;
  }

  public static String toSafeString(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    char[] arrayOfChar = paramString.toLowerCase().toCharArray();
    for (int i = 0; i < arrayOfChar.length; i++)
      if ((arrayOfChar[i] >= 'a') && (arrayOfChar[i] <= 'z'))
        localStringBuffer.append(arrayOfChar[i]);
    return localStringBuffer.toString();
  }

  public static String truncate(String paramString, int paramInt)
  {
    if (paramString.length() > paramInt)
      paramString = paramString.substring(0, paramInt);
    return paramString;
  }

  public static String truncateBytes(String paramString, int paramInt)
  {
    try
    {
      String str = truncateBytes(paramString, paramInt, null);
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      Log.logQuietThrowable("UNKNOWN", localUnsupportedEncodingException);
    }
    return "";
  }

  public static String truncateBytes(String paramString1, int paramInt, String paramString2)
    throws UnsupportedEncodingException
  {
    byte[] arrayOfByte1;
    int i;
    int j;
    label24: int n;
    String str;
    byte[] arrayOfByte2;
    label62: int i1;
    if (paramString2 == null)
    {
      arrayOfByte1 = paramString1.getBytes();
      if (arrayOfByte1.length <= paramInt)
        break label174;
      i = paramString1.length();
      j = 0;
      if (j == i)
        break label176;
      n = (1 + (j + i)) / 2;
      str = paramString1.substring(0, n);
      if (paramString2 != null)
        break label99;
      arrayOfByte2 = str.getBytes();
      if (arrayOfByte2.length <= paramInt)
        break label110;
      i1 = n - 1;
    }
    for (int i2 = j; ; i2 = n)
    {
      j = i2;
      i = i1;
      break label24;
      arrayOfByte1 = paramString1.getBytes(paramString2);
      break;
      label99: arrayOfByte2 = str.getBytes(paramString2);
      break label62;
      label110: if (arrayOfByte2.length >= paramInt)
        break label128;
      i1 = i;
    }
    label128: label174: label176: for (int k = n; ; k = i)
    {
      if (k > 0)
      {
        int m = paramString1.charAt(k - 1);
        if ((m >= 55296) && (m <= 56319))
          k--;
      }
      paramString1 = paramString1.substring(0, k);
      return paramString1;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.util.text.TextUtil
 * JD-Core Version:    0.6.2
 */