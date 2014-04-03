package com.google.common.base;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
public final class Ascii
{
  public static final byte ACK = 6;
  public static final byte BEL = 7;
  public static final byte BS = 8;
  public static final byte CAN = 24;
  public static final byte CR = 13;
  public static final byte DC1 = 17;
  public static final byte DC2 = 18;
  public static final byte DC3 = 19;
  public static final byte DC4 = 20;
  public static final byte DEL = 127;
  public static final byte DLE = 16;
  public static final byte EM = 25;
  public static final byte ENQ = 5;
  public static final byte EOT = 4;
  public static final byte ESC = 27;
  public static final byte ETB = 23;
  public static final byte ETX = 3;
  public static final byte FF = 12;
  public static final byte FS = 28;
  public static final byte GS = 29;
  public static final byte HT = 9;
  public static final byte LF = 10;
  public static final char MAX = '';
  public static final char MIN = '\000';
  public static final byte NAK = 21;
  public static final byte NL = 10;
  public static final byte NUL = 0;
  public static final byte RS = 30;
  public static final byte SI = 15;
  public static final byte SO = 14;
  public static final byte SOH = 1;
  public static final byte SP = 32;
  public static final byte SPACE = 32;
  public static final byte STX = 2;
  public static final byte SUB = 26;
  public static final byte SYN = 22;
  public static final byte US = 31;
  public static final byte VT = 11;
  public static final byte XOFF = 19;
  public static final byte XON = 17;

  public static boolean isLowerCase(char paramChar)
  {
    return (paramChar >= 'a') && (paramChar <= 'z');
  }

  public static boolean isUpperCase(char paramChar)
  {
    return (paramChar >= 'A') && (paramChar <= 'Z');
  }

  public static char toLowerCase(char paramChar)
  {
    if (isUpperCase(paramChar))
      paramChar = (char)(paramChar ^ 0x20);
    return paramChar;
  }

  public static String toLowerCase(CharSequence paramCharSequence)
  {
    int i = paramCharSequence.length();
    StringBuilder localStringBuilder = new StringBuilder(i);
    for (int j = 0; j < i; j++)
      localStringBuilder.append(toLowerCase(paramCharSequence.charAt(j)));
    return localStringBuilder.toString();
  }

  public static String toLowerCase(String paramString)
  {
    return toLowerCase(paramString);
  }

  public static char toUpperCase(char paramChar)
  {
    if (isLowerCase(paramChar))
      paramChar = (char)(paramChar & 0x5F);
    return paramChar;
  }

  public static String toUpperCase(CharSequence paramCharSequence)
  {
    int i = paramCharSequence.length();
    StringBuilder localStringBuilder = new StringBuilder(i);
    for (int j = 0; j < i; j++)
      localStringBuilder.append(toUpperCase(paramCharSequence.charAt(j)));
    return localStringBuilder.toString();
  }

  public static String toUpperCase(String paramString)
  {
    return toUpperCase(paramString);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.base.Ascii
 * JD-Core Version:    0.6.2
 */