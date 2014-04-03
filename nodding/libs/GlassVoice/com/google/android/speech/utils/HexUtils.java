package com.google.android.speech.utils;

public class HexUtils
{
  public static byte[] hexToBytes(CharSequence paramCharSequence)
  {
    byte[] arrayOfByte = new byte[(1 + paramCharSequence.length()) / 2];
    if (paramCharSequence.length() == 0)
      return arrayOfByte;
    arrayOfByte[0] = 0;
    int i = paramCharSequence.length() % 2;
    int j = 0;
    label39: char c;
    if (j < paramCharSequence.length())
    {
      c = paramCharSequence.charAt(j);
      if (!isHex(c))
        throw new IllegalArgumentException("string contains non-hex chars");
      if (i % 2 != 0)
        break label104;
      arrayOfByte[(i >> 1)] = ((byte)(hexValue(c) << 4));
    }
    while (true)
    {
      i++;
      j++;
      break label39;
      break;
      label104: int k = i >> 1;
      arrayOfByte[k] = ((byte)(arrayOfByte[k] + (byte)hexValue(c)));
    }
  }

  private static int hexValue(char paramChar)
  {
    if ((paramChar >= '0') && (paramChar <= '9'))
      return paramChar - '0';
    if ((paramChar >= 'a') && (paramChar <= 'f'))
      return 10 + (paramChar - 'a');
    return 10 + (paramChar - 'A');
  }

  private static boolean isHex(char paramChar)
  {
    return ((paramChar >= '0') && (paramChar <= '9')) || ((paramChar >= 'a') && (paramChar <= 'f')) || ((paramChar >= 'A') && (paramChar <= 'F'));
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.utils.HexUtils
 * JD-Core Version:    0.6.2
 */