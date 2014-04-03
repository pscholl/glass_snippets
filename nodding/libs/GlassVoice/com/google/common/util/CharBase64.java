package com.google.common.util;

@GwtCompatible
public final class CharBase64
{
  public static final boolean DECODE = false;
  public static final boolean ENCODE = true;
  private static final byte EQUALS_SIGN_ENC = -1;
  private static final char NEW_LINE = '\n';
  private static final char PADDING_CHAR = '=';
  private static final byte WHITE_SPACE_ENC = -5;
  private static final char[] alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
  private static final byte[] decodabet = { -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9 };
  private static final char[] websafeAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".toCharArray();
  private static final byte[] websafeDecodabet = { -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, 63, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9 };

  @Deprecated
  public static byte[] decode(String paramString)
    throws Base64DecoderException
  {
    char[] arrayOfChar = paramString.toCharArray();
    return decode(arrayOfChar, 0, arrayOfChar.length);
  }

  @Deprecated
  public static byte[] decode(char[] paramArrayOfChar)
    throws Base64DecoderException
  {
    return decode(paramArrayOfChar, 0, paramArrayOfChar.length);
  }

  @Deprecated
  public static byte[] decode(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws Base64DecoderException
  {
    return decode(paramArrayOfChar, paramInt1, paramInt2, decodabet);
  }

  public static byte[] decode(char[] paramArrayOfChar, int paramInt1, int paramInt2, byte[] paramArrayOfByte)
    throws Base64DecoderException
  {
    byte[] arrayOfByte1 = new byte[2 + paramInt2 * 3 / 4];
    int i = 0;
    char[] arrayOfChar = new char[4];
    int j = 0;
    int k = 0;
    int m = 0;
    int i1;
    int i3;
    if (k < paramInt2)
    {
      int n = paramArrayOfChar[(k + paramInt1)];
      i1 = (char)(n & 0x7F);
      int i2 = paramArrayOfByte[i1];
      if ((i1 == n) && (i2 < -5))
        throw new Base64DecoderException("Bad Base64 input character at " + k + ": " + paramArrayOfChar[(k + paramInt1)] + "(decimal)");
      if (i2 < -1)
        break label387;
      if (i1 == 61)
        if (j != 0)
          i3 = m;
    }
    while (true)
    {
      k++;
      m = i3;
      break;
      if (k < 2)
        throw new Base64DecoderException("Invalid padding char found in position " + k);
      j = 1;
      int i4 = (char)(0x7F & paramArrayOfChar[(paramInt1 + (paramInt2 - 1))]);
      if ((i4 != 61) && (i4 != 10))
        throw new Base64DecoderException("encoded value has invalid trailing char");
      i3 = m;
      continue;
      if (j != 0)
        throw new Base64DecoderException("Data found after trailing padding char at index " + k);
      i3 = m + 1;
      arrayOfChar[m] = i1;
      if (i3 == 4)
      {
        i += decode4to3(arrayOfChar, 0, arrayOfByte1, i, paramArrayOfByte);
        i3 = 0;
        continue;
        if (m != 0)
        {
          if (m == 1)
            throw new Base64DecoderException("single trailing character at offset " + (paramInt2 - 1));
          arrayOfChar[m] = '=';
          i += decode4to3(arrayOfChar, 0, arrayOfByte1, i, paramArrayOfByte);
        }
        byte[] arrayOfByte2 = new byte[i];
        System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, i);
        return arrayOfByte2;
        label387: i3 = m;
      }
    }
  }

  private static int decode4to3(char[] paramArrayOfChar, int paramInt1, byte[] paramArrayOfByte1, int paramInt2, byte[] paramArrayOfByte2)
  {
    if (paramArrayOfChar[(paramInt1 + 2)] == '=')
    {
      paramArrayOfByte1[paramInt2] = ((byte)((paramArrayOfByte2[paramArrayOfChar[paramInt1]] << 24 >>> 6 | paramArrayOfByte2[paramArrayOfChar[(paramInt1 + 1)]] << 24 >>> 12) >>> 16));
      return 1;
    }
    if (paramArrayOfChar[(paramInt1 + 3)] == '=')
    {
      int j = paramArrayOfByte2[paramArrayOfChar[paramInt1]] << 24 >>> 6 | paramArrayOfByte2[paramArrayOfChar[(paramInt1 + 1)]] << 24 >>> 12 | paramArrayOfByte2[paramArrayOfChar[(paramInt1 + 2)]] << 24 >>> 18;
      paramArrayOfByte1[paramInt2] = ((byte)(j >>> 16));
      paramArrayOfByte1[(paramInt2 + 1)] = ((byte)(j >>> 8));
      return 2;
    }
    int i = paramArrayOfByte2[paramArrayOfChar[paramInt1]] << 24 >>> 6 | paramArrayOfByte2[paramArrayOfChar[(paramInt1 + 1)]] << 24 >>> 12 | paramArrayOfByte2[paramArrayOfChar[(paramInt1 + 2)]] << 24 >>> 18 | paramArrayOfByte2[paramArrayOfChar[(paramInt1 + 3)]] << 24 >>> 24;
    paramArrayOfByte1[paramInt2] = ((byte)(i >> 16));
    paramArrayOfByte1[(paramInt2 + 1)] = ((byte)(i >> 8));
    paramArrayOfByte1[(paramInt2 + 2)] = ((byte)i);
    return 3;
  }

  @Deprecated
  public static byte[] decodeWebSafe(String paramString)
    throws Base64DecoderException
  {
    char[] arrayOfChar = paramString.toCharArray();
    return decodeWebSafe(arrayOfChar, 0, arrayOfChar.length);
  }

  @Deprecated
  public static byte[] decodeWebSafe(char[] paramArrayOfChar)
    throws Base64DecoderException
  {
    return decodeWebSafe(paramArrayOfChar, 0, paramArrayOfChar.length);
  }

  @Deprecated
  public static byte[] decodeWebSafe(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws Base64DecoderException
  {
    return decode(paramArrayOfChar, paramInt1, paramInt2, websafeDecodabet);
  }

  @Deprecated
  public static String encode(byte[] paramArrayOfByte)
  {
    return encode(paramArrayOfByte, 0, paramArrayOfByte.length, alphabet, true);
  }

  public static String encode(byte[] paramArrayOfByte, int paramInt1, int paramInt2, char[] paramArrayOfChar, boolean paramBoolean)
  {
    char[] arrayOfChar = encode(paramArrayOfByte, paramInt1, paramInt2, paramArrayOfChar, 2147483647);
    for (int i = arrayOfChar.length; ; i--)
      if ((paramBoolean) || (i <= 0) || (arrayOfChar[(i - 1)] != '='))
        return new String(arrayOfChar, 0, i);
  }

  public static char[] encode(byte[] paramArrayOfByte, int paramInt1, int paramInt2, char[] paramArrayOfChar, int paramInt3)
  {
    int i = 4 * ((paramInt2 + 2) / 3);
    char[] arrayOfChar = new char[i + i / paramInt3];
    int j = 0;
    int k = 0;
    int m = paramInt2 - 2;
    int n = 0;
    while (j < m)
    {
      int i1 = paramArrayOfByte[(j + paramInt1)] << 24 >>> 8 | paramArrayOfByte[(paramInt1 + (j + 1))] << 24 >>> 16 | paramArrayOfByte[(paramInt1 + (j + 2))] << 24 >>> 24;
      arrayOfChar[k] = paramArrayOfChar[(i1 >>> 18)];
      arrayOfChar[(k + 1)] = paramArrayOfChar[(0x3F & i1 >>> 12)];
      arrayOfChar[(k + 2)] = paramArrayOfChar[(0x3F & i1 >>> 6)];
      arrayOfChar[(k + 3)] = paramArrayOfChar[(i1 & 0x3F)];
      n += 4;
      if (n == paramInt3)
      {
        arrayOfChar[(k + 4)] = '\n';
        k++;
        n = 0;
      }
      j += 3;
      k += 4;
    }
    if (j < paramInt2)
    {
      encode3to4(paramArrayOfByte, j + paramInt1, paramInt2 - j, arrayOfChar, k, paramArrayOfChar);
      if (n + 4 == paramInt3)
      {
        arrayOfChar[(k + 4)] = '\n';
        k++;
      }
      (k + 4);
    }
    return arrayOfChar;
  }

  private static char[] encode3to4(byte[] paramArrayOfByte, int paramInt1, int paramInt2, char[] paramArrayOfChar1, int paramInt3, char[] paramArrayOfChar2)
  {
    int i;
    if (paramInt2 > 0)
    {
      i = paramArrayOfByte[paramInt1] << 24 >>> 8;
      label15: if (paramInt2 <= 1)
        break label104;
    }
    int n;
    label104: for (int j = paramArrayOfByte[(paramInt1 + 1)] << 24 >>> 16; ; j = 0)
    {
      int k = j | i;
      int m = 0;
      if (paramInt2 > 2)
        m = paramArrayOfByte[(paramInt1 + 2)] << 24 >>> 24;
      n = k | m;
      switch (paramInt2)
      {
      default:
        return paramArrayOfChar1;
        i = 0;
        break label15;
      case 3:
      case 2:
      case 1:
      }
    }
    paramArrayOfChar1[paramInt3] = paramArrayOfChar2[(n >>> 18)];
    paramArrayOfChar1[(paramInt3 + 1)] = paramArrayOfChar2[(0x3F & n >>> 12)];
    paramArrayOfChar1[(paramInt3 + 2)] = paramArrayOfChar2[(0x3F & n >>> 6)];
    paramArrayOfChar1[(paramInt3 + 3)] = paramArrayOfChar2[(n & 0x3F)];
    return paramArrayOfChar1;
    paramArrayOfChar1[paramInt3] = paramArrayOfChar2[(n >>> 18)];
    paramArrayOfChar1[(paramInt3 + 1)] = paramArrayOfChar2[(0x3F & n >>> 12)];
    paramArrayOfChar1[(paramInt3 + 2)] = paramArrayOfChar2[(0x3F & n >>> 6)];
    paramArrayOfChar1[(paramInt3 + 3)] = '=';
    return paramArrayOfChar1;
    paramArrayOfChar1[paramInt3] = paramArrayOfChar2[(n >>> 18)];
    paramArrayOfChar1[(paramInt3 + 1)] = paramArrayOfChar2[(0x3F & n >>> 12)];
    paramArrayOfChar1[(paramInt3 + 2)] = '=';
    paramArrayOfChar1[(paramInt3 + 3)] = '=';
    return paramArrayOfChar1;
  }

  @Deprecated
  public static String encodeWebSafe(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    return encode(paramArrayOfByte, 0, paramArrayOfByte.length, websafeAlphabet, paramBoolean);
  }

  public static final char[] getAlphabet()
  {
    char[] arrayOfChar = new char[alphabet.length];
    System.arraycopy(alphabet, 0, arrayOfChar, 0, alphabet.length);
    return arrayOfChar;
  }

  public static final char[] getWebSafeAlphabet()
  {
    char[] arrayOfChar = new char[websafeAlphabet.length];
    System.arraycopy(websafeAlphabet, 0, arrayOfChar, 0, websafeAlphabet.length);
    return arrayOfChar;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.CharBase64
 * JD-Core Version:    0.6.2
 */