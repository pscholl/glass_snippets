package com.x.google.common.graphics;

import com.x.google.common.Config;
import com.x.google.common.LongVector;
import com.x.google.common.geom.Rectangle;
import com.x.google.common.util.text.TextUtil;
import com.x.google.i18n.LineBreakingProperties;
import java.util.Vector;

public class Utils
{
  public static final String ELLIPSIS = "...";
  public static final char ESCAPE_CHAR = '\001';
  private static final int FIRST_WIDTH_IDX = 2;
  public static final char FONT_BASE = '＀';
  public static final FontProvider NO_FONTS = null;
  public static final IconProvider NO_ICONS = null;
  private static final String SPACES = "  ";
  private static LongVector clipStack = new LongVector(32);

  public static String[] breakUpSegments(String paramString, int paramInt1, int paramInt2)
  {
    int i = paramInt1 + paramInt2;
    Vector localVector = new Vector();
    for (int j = paramString.indexOf(1, paramInt1); (j >= 0) && (j < i); j = paramString.indexOf(1, paramInt1))
    {
      localVector.addElement(paramString.substring(paramInt1, j));
      if (j + 1 < i)
        localVector.addElement(paramString.substring(j, j + 2));
      paramInt1 = j + 2;
    }
    if (paramInt1 < i)
      if ((paramInt1 != 0) || (i != paramString.length()))
        break label126;
    while (true)
    {
      localVector.addElement(paramString);
      String[] arrayOfString = new String[localVector.size()];
      localVector.copyInto(arrayOfString);
      return arrayOfString;
      label126: paramString = paramString.substring(paramInt1, i);
    }
  }

  public static String[] breakUpString(GoogleFont paramGoogleFont, String paramString, int paramInt1, int paramInt2, IconProvider paramIconProvider)
  {
    if (paramIconProvider == null)
      return new String[0];
    return breakUpString(paramGoogleFont, paramString, paramInt1, paramInt2, paramIconProvider, null, false);
  }

  public static String[] breakUpString(GoogleFont paramGoogleFont, String paramString, int paramInt1, int paramInt2, IconProvider paramIconProvider, FontProvider paramFontProvider, boolean paramBoolean)
  {
    if ((paramGoogleFont == null) || (paramString == null) || (paramInt1 <= 0) || (paramString.length() == 0))
      return new String[0];
    if (paramInt2 > 0);
    int[] arrayOfInt;
    while (true)
    {
      arrayOfInt = parseInterpolatedString(paramGoogleFont, paramString, paramIconProvider, paramFontProvider);
      if ((paramBoolean) || (arrayOfInt[0] > paramInt1))
        break;
      return new String[] { paramString };
      paramInt2 = 2147483647;
    }
    Vector localVector = new Vector();
    int i = paramString.length();
    int j = findBreakFromBegin(paramString);
    int k;
    int m;
    int i6;
    int i7;
    int i9;
    int i8;
    if ((paramBoolean) || ((j >= 0) && (localVector.size() <= paramInt2)))
    {
      k = 0;
      m = 2;
      if (m < arrayOfInt.length)
      {
        i6 = m;
        i7 = 0;
        if ((i6 >= arrayOfInt.length) || ((i7 + arrayOfInt[i6] > paramInt1) && ((!paramBoolean) || (paramString.charAt(i6 - 2) != '\n')) && (i6 - 2 != k)))
          break label601;
        if ((paramBoolean) && (paramString.charAt(i6 - 2) == '\n'))
        {
          int i15 = i6 + 1;
          i9 = 1;
          i8 = i15;
        }
      }
    }
    while (true)
    {
      int i10 = i8 - 2;
      if ((i9 != 0) && (i10 > k));
      String str2;
      for (int i11 = i10 - 1; ; i11 = i10)
      {
        str2 = paramString.substring(k, i11);
        while ((i10 < i) && (isBreak(paramString.charAt(i10))))
          i10++;
        int i14 = i6 + 1;
        i7 += arrayOfInt[i6];
        i6 = i14;
        break;
      }
      if ((i9 == 0) && (i10 == i8 - 2) && (i8 < arrayOfInt.length))
      {
        int i12 = findBreakFromEnd(str2, paramString.charAt(i10));
        if (i12 >= 0)
        {
          int i13 = k + i12;
          str2 = paramString.substring(k, i13);
          k = i13;
        }
      }
      while (true)
        if ((str2.length() > 0) && (isBreak(str2.charAt(-1 + str2.length()))))
        {
          str2 = str2.substring(0, -1 + str2.length());
        }
        else
        {
          localVector.addElement(str2);
          m = k + 2;
          break;
          if ((!paramBoolean) && ((j < 0) || (localVector.size() > paramInt2)))
          {
            int n = 0;
            int i1 = 2;
            localVector.removeAllElements();
            while (i1 < arrayOfInt.length)
            {
              int i2 = i1;
              int i3 = 0;
              while ((i2 < arrayOfInt.length) && ((i3 + arrayOfInt[i2] <= paramInt1) || (i2 - 2 == n)))
              {
                int i5 = i2 + 1;
                i3 += arrayOfInt[i2];
                i2 = i5;
              }
              int i4 = i2 - 2;
              String str1 = paramString.substring(n, i4);
              for (n = i4; (n < i) && (isBreak(paramString.charAt(n))); n++);
              localVector.addElement(str1);
              i1 = n + 2;
            }
          }
          String[] arrayOfString = new String[localVector.size()];
          localVector.copyInto(arrayOfString);
          return arrayOfString;
          k = i10;
        }
      label601: i8 = i6;
      i9 = 0;
    }
  }

  public static void drawFittedText(GoogleGraphics paramGoogleGraphics, int paramInt1, int paramInt2, String paramString, int paramInt3)
  {
    drawFittedText(paramGoogleGraphics, paramInt1, paramInt2, paramString, paramInt3, "...");
  }

  public static void drawFittedText(GoogleGraphics paramGoogleGraphics, int paramInt1, int paramInt2, String paramString1, int paramInt3, String paramString2)
  {
    if (paramInt3 <= 0)
      return;
    GoogleFont localGoogleFont = paramGoogleGraphics.getFont();
    if (localGoogleFont.stringWidth(paramString1) <= paramInt3)
    {
      paramGoogleGraphics.drawString(paramString1, paramInt1, paramInt2);
      return;
    }
    int i = getFittedStringLength(paramString1, localGoogleFont, paramInt3, paramString2);
    int j = localGoogleFont.substringWidth(paramString1, 0, i);
    paramGoogleGraphics.drawSubstring(paramString1, 0, i, paramInt1, paramInt2);
    paramGoogleGraphics.drawString(paramString2, paramInt1 + j, paramInt2);
  }

  public static void drawInterpolatedString(GoogleGraphics paramGoogleGraphics, GoogleFont paramGoogleFont, String paramString, int paramInt1, int paramInt2, int[] paramArrayOfInt, IconProvider paramIconProvider, FontProvider paramFontProvider)
  {
    drawInterpolatedSubstring(paramGoogleGraphics, paramGoogleFont, paramString, 0, paramString.length(), paramInt1, paramInt2, paramArrayOfInt, paramIconProvider, paramFontProvider);
  }

  public static void drawInterpolatedSubstring(GoogleGraphics paramGoogleGraphics, GoogleFont paramGoogleFont, String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt, IconProvider paramIconProvider, FontProvider paramFontProvider)
  {
    int i = 0;
    int j = paramGoogleFont.getHeight();
    boolean bool = Config.isRTL();
    if (paramGoogleGraphics != null)
      paramGoogleGraphics.setFont(paramGoogleFont);
    String[] arrayOfString = breakUpSegments(paramString, paramInt1, paramInt2);
    if (bool)
    {
      int i3 = arrayOfString.length;
      for (int i4 = 0; i4 < i3 / 2; i4++)
      {
        int i5 = -1 + (i3 - i4);
        String str = arrayOfString[i4];
        arrayOfString[i4] = arrayOfString[i5];
        arrayOfString[i5] = str;
      }
    }
    int k = 0;
    if (k < arrayOfString.length)
    {
      if (arrayOfString[k].indexOf(1) < 0)
      {
        if (paramGoogleGraphics != null)
          paramGoogleFont.drawString(paramGoogleGraphics, arrayOfString[k], paramInt3 + i, paramInt4);
        i += paramGoogleFont.stringWidth(arrayOfString[k]);
      }
      int m;
      label245: 
      do
        while (true)
        {
          k++;
          break;
          m = arrayOfString[k].charAt(1);
          if (m < 65280)
            break label245;
          char c = (char)(m - 65280);
          if ((paramFontProvider != null) && (paramFontProvider.hasFont(c)))
          {
            paramGoogleFont = paramFontProvider.getFont(c);
            j = Math.max(j, paramGoogleFont.getHeight());
            if (paramGoogleGraphics != null)
              paramGoogleGraphics.setFont(paramGoogleFont);
          }
        }
      while ((paramIconProvider == null) || (!paramIconProvider.hasIcon(m)));
      int n = paramIconProvider.getIconHeight(m);
      int i1 = Math.max(j, n);
      int i2;
      if (paramGoogleGraphics != null)
        switch (paramIconProvider.getIconAlignment(m))
        {
        default:
          i2 = paramInt4;
        case 1:
        case 2:
        case 3:
        }
      while (true)
      {
        paramIconProvider.drawIcon(m, paramGoogleGraphics, paramInt3 + i, Math.max(paramInt4, i2));
        i += paramIconProvider.getIconWidth(m);
        j = i1;
        break;
        i2 = paramInt4 + (i1 - n);
        continue;
        i2 = paramInt4 + (i1 - n) / 2;
        continue;
        i2 = paramInt4 + (paramGoogleFont.getBaselinePosition() - n);
      }
    }
    if (paramArrayOfInt != null)
    {
      paramArrayOfInt[0] = i;
      paramArrayOfInt[1] = j;
    }
  }

  public static int[] drawInterpolatedText(GoogleGraphics paramGoogleGraphics, GoogleFont paramGoogleFont, String[] paramArrayOfString, int paramInt1, int paramInt2, IconProvider paramIconProvider, FontProvider paramFontProvider)
  {
    return drawInterpolatedText(paramGoogleGraphics, paramGoogleFont, paramArrayOfString, paramInt1, paramInt2, paramIconProvider, paramFontProvider, new int[2]);
  }

  public static int[] drawInterpolatedText(GoogleGraphics paramGoogleGraphics, GoogleFont paramGoogleFont, String[] paramArrayOfString, int paramInt1, int paramInt2, IconProvider paramIconProvider, FontProvider paramFontProvider, int[] paramArrayOfInt)
  {
    int i = 0;
    int j = 0;
    int m;
    for (int k = 0; i < paramArrayOfString.length; k = m)
    {
      if ((Config.isRTL()) && (i > 0) && (paramArrayOfString[i].length() < paramArrayOfString[0].length()))
        paramArrayOfString[i] = TextUtil.pad(paramArrayOfString[i], paramArrayOfString[0].length(), ' ');
      drawInterpolatedString(paramGoogleGraphics, paramGoogleFont, paramArrayOfString[i], paramInt1, paramInt2 + j, paramArrayOfInt, paramIconProvider, paramFontProvider);
      m = Math.max(k, paramArrayOfInt[0]);
      int n = j + paramArrayOfInt[1];
      i++;
      j = n;
    }
    paramArrayOfInt[0] = k;
    paramArrayOfInt[1] = j;
    return paramArrayOfInt;
  }

  private static int findBreakFromBegin(String paramString)
  {
    for (int i = 1; i < paramString.length(); i++)
      if (LineBreakingProperties.canBreak(paramString.charAt(i - 1), paramString.charAt(i)))
        return i;
    return -1;
  }

  private static int findBreakFromEnd(String paramString, char paramChar)
  {
    if (LineBreakingProperties.canBreak(paramString.charAt(-1 + paramString.length()), paramChar))
    {
      i = paramString.length();
      return i;
    }
    for (int i = -1 + paramString.length(); ; i--)
    {
      if (i < 1)
        break label60;
      if (LineBreakingProperties.canBreak(paramString.charAt(i - 1), paramString.charAt(i)))
        break;
    }
    label60: return -1;
  }

  public static int getFittedInterpolatedStringLength(String paramString1, GoogleFont paramGoogleFont, IconProvider paramIconProvider, FontProvider paramFontProvider, int paramInt, String paramString2)
  {
    for (int i = getFittedInterpolatedTextLength(paramString1, paramGoogleFont, paramIconProvider, paramFontProvider, paramInt - paramGoogleFont.stringWidth(paramString2)); (i > 0) && (TextUtil.isWhitespace(paramString1.charAt(i - 1))) && ((i < 2) || (paramString1.charAt(i - 2) != '\001')); i--);
    return i;
  }

  public static String getFittedInterpolatedText(String paramString1, GoogleFont paramGoogleFont, IconProvider paramIconProvider, FontProvider paramFontProvider, int paramInt, String paramString2)
  {
    int i = getFittedInterpolatedStringLength(paramString1, paramGoogleFont, paramIconProvider, paramFontProvider, paramInt, paramString2);
    if (i < paramString1.length())
      paramString1 = paramString1.substring(0, i) + paramString2;
    return paramString1;
  }

  public static int getFittedInterpolatedTextLength(String paramString, GoogleFont paramGoogleFont, IconProvider paramIconProvider, FontProvider paramFontProvider, int paramInt)
  {
    int i = 0;
    if (paramInt <= 0);
    while (true)
    {
      return i;
      int[] arrayOfInt = parseInterpolatedString(paramGoogleFont, paramString, paramIconProvider, paramFontProvider);
      if (arrayOfInt[0] <= paramInt)
        return paramString.length();
      int j = 0;
      for (int k = 2; (k < arrayOfInt.length) && (j <= paramInt); k++)
        j += arrayOfInt[k];
      if (k < arrayOfInt.length)
        k--;
      for (i = k - 2; (i >= 2) && (paramString.charAt(i - 2) == '\001') && (paramString.charAt(i - 1) >= 65280); i -= 2);
    }
  }

  private static int getFittedStringLength(String paramString1, GoogleFont paramGoogleFont, int paramInt, String paramString2)
  {
    for (int i = getFittedTextLength(paramString1, paramGoogleFont, paramInt - paramGoogleFont.stringWidth(paramString2)); (i > 0) && (TextUtil.isWhitespace(paramString1.charAt(i - 1))); i--);
    return i;
  }

  public static String getFittedText(String paramString1, GoogleFont paramGoogleFont, int paramInt, String paramString2)
  {
    if (paramGoogleFont.stringWidth(paramString1) <= paramInt)
      return paramString1;
    int i = getFittedStringLength(paramString1, paramGoogleFont, paramInt, paramString2);
    return paramString1.substring(0, i) + paramString2;
  }

  public static int getFittedTextLength(String paramString, GoogleFont paramGoogleFont, int paramInt)
  {
    int k;
    if (paramInt <= 0)
      k = 0;
    while (true)
    {
      return k;
      int i = paramString.length();
      int j = paramGoogleFont.stringWidth(paramString);
      if (j <= paramInt)
        return i;
      if (j > paramInt * 2)
      {
        int m;
        for (k = 0; k < i; k++)
        {
          m = paramGoogleFont.substringWidth(paramString, 0, k);
          if (m >= paramInt)
            break label73;
        }
        continue;
        label73: if (m != paramInt)
          return k - 1;
      }
      else
      {
        for (k = i; (k > 0) && (paramGoogleFont.substringWidth(paramString, 0, k) > paramInt); k--);
      }
    }
  }

  public static int[] getFontSizes(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if (paramArrayOfInt1.length == 0)
      throw new IllegalArgumentException("No sizes supported by device");
    int[] arrayOfInt = new int[paramArrayOfInt2.length];
    int i = paramArrayOfInt1[0];
    int m;
    for (int j = 0; ; j++)
    {
      int k = paramArrayOfInt1.length;
      m = 0;
      if (j >= k)
        break;
      i = Math.min(i, paramArrayOfInt1[j]);
      for (int n = 0; n < paramArrayOfInt2.length; n++)
        if ((paramArrayOfInt1[j] <= paramArrayOfInt2[n]) && (paramArrayOfInt1[j] > arrayOfInt[n]))
          arrayOfInt[n] = paramArrayOfInt1[j];
    }
    while (m < arrayOfInt.length)
    {
      if (arrayOfInt[m] == 0)
        arrayOfInt[m] = i;
      m++;
    }
    return arrayOfInt;
  }

  public static boolean inClip(GoogleGraphics paramGoogleGraphics, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramGoogleGraphics.getClipY();
    int j = paramInt2 + paramInt4;
    boolean bool = false;
    if (i < j)
    {
      int k = i + paramGoogleGraphics.getClipHeight();
      bool = false;
      if (paramInt2 < k)
      {
        int m = paramGoogleGraphics.getClipX();
        int n = paramInt1 + paramInt3;
        bool = false;
        if (m < n)
        {
          int i1 = m + paramGoogleGraphics.getClipWidth();
          bool = false;
          if (paramInt1 < i1)
            bool = true;
        }
      }
    }
    return bool;
  }

  private static int indexAfterFirstWordEnd(String paramString)
  {
    int i = indexOfCharNot(paramString, "  ", 0);
    int j;
    if (i == -1)
      j = paramString.length();
    do
    {
      return j;
      j = indexOfChar(paramString, "  ", i);
    }
    while (j != -1);
    return paramString.length();
  }

  private static int indexOfChar(String paramString1, String paramString2, int paramInt)
  {
    while (paramInt < paramString1.length())
    {
      if (paramString2.indexOf(paramString1.charAt(paramInt)) != -1)
        return paramInt;
      paramInt++;
    }
    return -1;
  }

  private static int indexOfCharNot(String paramString1, String paramString2, int paramInt)
  {
    while (paramInt < paramString1.length())
    {
      if (paramString2.indexOf(paramString1.charAt(paramInt)) == -1)
        return paramInt;
      paramInt++;
    }
    return -1;
  }

  private static int indexOfNextWord(String paramString, int paramInt)
  {
    int i = indexOfCharNot(paramString, "  ", paramInt);
    if (i == -1)
      i = paramString.length();
    return i;
  }

  public static Rectangle interpolatedStringDimensions(GoogleFont paramGoogleFont, String paramString, IconProvider paramIconProvider, FontProvider paramFontProvider)
  {
    int i = paramGoogleFont.getHeight();
    if ((paramIconProvider == null) && (paramFontProvider == null))
    {
      m = paramGoogleFont.stringWidth(paramString);
      return new Rectangle(0, 0, m, i);
    }
    int j = paramString.length();
    int k = 0;
    int m = 0;
    GoogleFont localGoogleFont = paramGoogleFont;
    label54: if (k < j)
    {
      char c = paramString.charAt(k);
      if (c == '\001')
        break label95;
      m += localGoogleFont.charWidth(c);
    }
    while (true)
    {
      k++;
      break label54;
      break;
      label95: if (k + 1 < j)
      {
        k++;
        int n = paramString.charAt(k);
        if (n >= 65280)
        {
          localGoogleFont = paramFontProvider.getFont((char)(n - 65280));
          i = Math.max(i, localGoogleFont.getHeight());
        }
        else
        {
          m += paramIconProvider.getIconWidth(n);
          i = Math.max(i, paramIconProvider.getIconHeight(n));
        }
      }
    }
  }

  private static boolean isBreak(char paramChar)
  {
    return "  ".indexOf(paramChar) != -1;
  }

  public static int[] parseInterpolatedString(GoogleFont paramGoogleFont, String paramString, IconProvider paramIconProvider, FontProvider paramFontProvider)
  {
    int i = paramString.length();
    int[] arrayOfInt = new int[i + 2];
    int j = 0;
    int k = paramGoogleFont.getHeight();
    int m = 0;
    Object localObject1 = paramGoogleFont;
    if (m < i)
    {
      int n = m + 2;
      char c = paramString.charAt(m);
      int i10;
      int i4;
      Object localObject2;
      int i5;
      if (c != '\001')
      {
        arrayOfInt[n] = ((GoogleFont)localObject1).charWidth(c);
        int i9 = j + arrayOfInt[n];
        i10 = m;
        i4 = i9;
        localObject2 = localObject1;
        i5 = k;
      }
      int i8;
      for (int i6 = i10; ; i6 = i8)
      {
        int i7 = i6 + 1;
        k = i5;
        localObject1 = localObject2;
        j = i4;
        m = i7;
        break;
        if (m + 1 < i)
          break label165;
        arrayOfInt[n] = 0;
        i8 = m;
        i4 = j;
        localObject2 = localObject1;
        i5 = k;
      }
      label165: int i1 = paramString.charAt(m + 1);
      if (i1 >= 65280)
      {
        if (paramFontProvider != null)
        {
          localObject1 = paramFontProvider.getFont((char)(i1 - 65280));
          k = Math.max(k, ((GoogleFont)localObject1).getHeight());
        }
        arrayOfInt[n] = 0;
      }
      while (true)
      {
        int i2 = j + arrayOfInt[n];
        arrayOfInt[(n + 1)] = 0;
        int i3 = m + 1;
        i4 = i2;
        localObject2 = localObject1;
        i5 = k;
        i6 = i3;
        break;
        if (paramIconProvider != null)
        {
          arrayOfInt[n] = paramIconProvider.getIconWidth(i1);
          k = Math.max(k, paramIconProvider.getIconHeight(i1));
        }
        else
        {
          arrayOfInt[n] = ((GoogleFont)localObject1).stringWidth(paramString.substring(m, m + 2));
        }
      }
    }
    arrayOfInt[0] = j;
    arrayOfInt[1] = k;
    return arrayOfInt;
  }

  public static void popClip(GoogleGraphics paramGoogleGraphics)
  {
    int i = (int)(0xFFFFFFFF & clipStack.lastElement());
    int j = (int)(clipStack.lastElement() >>> 32);
    clipStack.removeElementAt(-1 + clipStack.size());
    int k = (int)(0xFFFFFFFF & clipStack.lastElement());
    int m = (int)(clipStack.lastElement() >>> 32);
    clipStack.removeElementAt(-1 + clipStack.size());
    paramGoogleGraphics.setClip(i, j, k, m);
  }

  public static void pushClip(GoogleGraphics paramGoogleGraphics)
  {
    clipStack.addElement(paramGoogleGraphics.getClipHeight() << 32 | 0xFFFFFFFF & paramGoogleGraphics.getClipWidth());
    clipStack.addElement(paramGoogleGraphics.getClipY() << 32 | 0xFFFFFFFF & paramGoogleGraphics.getClipX());
  }

  public static String[] splitLines(int paramInt1, int paramInt2, GoogleFont paramGoogleFont, String paramString, int paramInt3, boolean paramBoolean)
  {
    if (paramString.length() == 0)
      return new String[] { paramString };
    String[] arrayOfString1;
    String[] arrayOfString2;
    if (paramInt3 > 0)
    {
      int j = indexAfterFirstWordEnd(paramString);
      if (j < paramString.length());
      int m;
      for (int k = paramGoogleFont.stringWidth(paramString.substring(0, j)); ; k = paramGoogleFont.stringWidth(paramString))
      {
        m = k;
        for (int n = 0; n < paramString.length(); n++)
          m = Math.max(m, paramGoogleFont.charWidth(paramString.charAt(n)));
      }
      String str2 = "";
      if (paramInt1 - paramInt3 > m)
      {
        String[] arrayOfString5 = breakUpString(paramGoogleFont, paramString, paramInt1 - paramInt3, 1, NO_ICONS, NO_FONTS, true);
        if (arrayOfString5.length > 0)
          str2 = arrayOfString5[0];
      }
      int i1 = indexOfNextWord(paramString, str2.length());
      String[] arrayOfString3 = new String[0];
      String str3 = paramString.substring(i1);
      if (!"\n".equals(str3))
        arrayOfString3 = breakUpString(paramGoogleFont, str3, paramInt1, 2147483647, NO_ICONS, NO_FONTS, true);
      String[] arrayOfString4 = new String[1 + arrayOfString3.length];
      arrayOfString4[0] = str2;
      System.arraycopy(arrayOfString3, 0, arrayOfString4, 1, arrayOfString3.length);
      arrayOfString1 = arrayOfString4;
      if (arrayOfString1.length <= paramInt2)
        break label366;
      arrayOfString2 = new String[paramInt2];
      System.arraycopy(arrayOfString1, 0, arrayOfString2, 0, paramInt2 - 1);
      String str1 = arrayOfString1[(paramInt2 - 1)] + " " + arrayOfString1[paramInt2];
      arrayOfString2[(paramInt2 - 1)] = getFittedText(str1, paramGoogleFont, paramInt1, "...");
    }
    while (true)
    {
      if (paramBoolean)
      {
        int i = 0;
        while (true)
          if (i < arrayOfString2.length)
          {
            arrayOfString2[i] = trimSpaces(arrayOfString2[i]);
            i++;
            continue;
            arrayOfString1 = breakUpString(paramGoogleFont, paramString, paramInt1, -1, NO_ICONS, NO_FONTS, true);
            break;
          }
      }
      return arrayOfString2;
      label366: arrayOfString2 = arrayOfString1;
    }
  }

  public static String trimSpaces(String paramString)
  {
    if ((paramString == null) || (paramString.equals("")))
      return paramString;
    int i = paramString.length();
    int j = indexOfCharNot(paramString, " ", 0);
    if (j == -1)
      return "";
    for (int k = i - 1; (k >= 0) && (paramString.charAt(k) == ' '); k--)
      i--;
    return paramString.substring(j, i);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.graphics.Utils
 * JD-Core Version:    0.6.2
 */