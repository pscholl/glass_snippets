package com.google.userfeedback.android.api.encode;

import java.io.UnsupportedEncodingException;

public class Base64
{
  public static final int CRLF = 4;
  public static final int DEFAULT = 0;
  public static final int NO_CLOSE = 16;
  public static final int NO_PADDING = 1;
  public static final int NO_WRAP = 2;
  public static final int URL_SAFE = 8;

  static
  {
    if (!Base64.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public static byte[] decode(byte[] paramArrayOfByte, int paramInt)
  {
    return decode(paramArrayOfByte, 0, paramArrayOfByte.length, paramInt);
  }

  public static byte[] decode(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    Decoder localDecoder = new Decoder(paramInt3, new byte[paramInt2 * 3 / 4]);
    if (!localDecoder.process(paramArrayOfByte, paramInt1, paramInt2, true))
      throw new IllegalArgumentException("bad base-64");
    if (localDecoder.op == localDecoder.output.length)
      return localDecoder.output;
    byte[] arrayOfByte = new byte[localDecoder.op];
    System.arraycopy(localDecoder.output, 0, arrayOfByte, 0, localDecoder.op);
    return arrayOfByte;
  }

  public static byte[] encode(byte[] paramArrayOfByte, int paramInt)
  {
    return encode(paramArrayOfByte, 0, paramArrayOfByte.length, paramInt);
  }

  public static byte[] encode(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    Encoder localEncoder = new Encoder(paramInt3, null);
    int i = 4 * (paramInt2 / 3);
    int j;
    if (localEncoder.do_padding)
    {
      if (paramInt2 % 3 > 0)
        i += 4;
      if ((localEncoder.do_newline) && (paramInt2 > 0))
      {
        j = 1 + (paramInt2 - 1) / 57;
        if (!localEncoder.do_cr)
          break label167;
      }
    }
    label167: for (int k = 2; ; k = 1)
    {
      i += k * j;
      localEncoder.output = new byte[i];
      localEncoder.process(paramArrayOfByte, paramInt1, paramInt2, true);
      if (($assertionsDisabled) || (localEncoder.op == i))
        break label173;
      throw new AssertionError();
      switch (paramInt2 % 3)
      {
      case 0:
      default:
        break;
      case 1:
        i += 2;
        break;
      case 2:
        i += 3;
        break;
      }
    }
    label173: return localEncoder.output;
  }

  public static String encodeToString(byte[] paramArrayOfByte, int paramInt)
  {
    try
    {
      String str = new String(encode(paramArrayOfByte, paramInt), "US-ASCII");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError(localUnsupportedEncodingException);
    }
  }

  public static abstract class Coder
  {
    public int op;
    public byte[] output;

    public abstract int maxOutputSize(int paramInt);

    public abstract boolean process(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean);
  }

  public static class Decoder extends Base64.Coder
  {
    private static final int[] DECODE = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
    private static final int[] DECODE_WEBSAFE = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
    private static final int EQUALS = -2;
    private static final int SKIP = -1;
    private final int[] alphabet;
    private int state;
    private int value;

    public Decoder(int paramInt, byte[] paramArrayOfByte)
    {
      this.output = paramArrayOfByte;
      if ((paramInt & 0x8) == 0);
      for (int[] arrayOfInt = DECODE; ; arrayOfInt = DECODE_WEBSAFE)
      {
        this.alphabet = arrayOfInt;
        this.state = 0;
        this.value = 0;
        return;
      }
    }

    public int maxOutputSize(int paramInt)
    {
      return 10 + paramInt * 3 / 4;
    }

    public boolean process(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
    {
      if (this.state == 6)
        return false;
      int i = paramInt1;
      int j = paramInt2 + paramInt1;
      int k = this.state;
      int m = this.value;
      int n = 0;
      byte[] arrayOfByte = this.output;
      int[] arrayOfInt = this.alphabet;
      if (i < j)
        if (k == 0)
        {
          while (i + 4 <= j)
          {
            m = arrayOfInt[(0xFF & paramArrayOfByte[i])] << 18 | arrayOfInt[(0xFF & paramArrayOfByte[(i + 1)])] << 12 | arrayOfInt[(0xFF & paramArrayOfByte[(i + 2)])] << 6 | arrayOfInt[(0xFF & paramArrayOfByte[(i + 3)])];
            if (m < 0)
              break;
            arrayOfByte[(n + 2)] = ((byte)m);
            arrayOfByte[(n + 1)] = ((byte)(m >> 8));
            arrayOfByte[n] = ((byte)(m >> 16));
            n += 3;
            i += 4;
          }
          if (i < j);
        }
      for (int i1 = n; ; i1 = n)
      {
        if (!paramBoolean)
        {
          this.state = k;
          this.value = m;
          this.op = i1;
          return true;
          int i5 = i + 1;
          int i6 = arrayOfInt[(0xFF & paramArrayOfByte[i])];
          switch (k)
          {
          default:
          case 0:
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          }
          label539: 
          do
          {
            do
              while (true)
              {
                i = i5;
                break;
                if (i6 >= 0)
                {
                  m = i6;
                  k++;
                }
                else if (i6 != -1)
                {
                  this.state = 6;
                  return false;
                  if (i6 >= 0)
                  {
                    m = i6 | m << 6;
                    k++;
                  }
                  else if (i6 != -1)
                  {
                    this.state = 6;
                    return false;
                    if (i6 >= 0)
                    {
                      m = i6 | m << 6;
                      k++;
                    }
                    else if (i6 == -2)
                    {
                      int i7 = n + 1;
                      arrayOfByte[n] = ((byte)(m >> 4));
                      k = 4;
                      n = i7;
                    }
                    else if (i6 != -1)
                    {
                      this.state = 6;
                      return false;
                      if (i6 >= 0)
                      {
                        m = i6 | m << 6;
                        arrayOfByte[(n + 2)] = ((byte)m);
                        arrayOfByte[(n + 1)] = ((byte)(m >> 8));
                        arrayOfByte[n] = ((byte)(m >> 16));
                        n += 3;
                        k = 0;
                      }
                      else if (i6 == -2)
                      {
                        arrayOfByte[(n + 1)] = ((byte)(m >> 2));
                        arrayOfByte[n] = ((byte)(m >> 10));
                        n += 2;
                        k = 5;
                      }
                      else if (i6 != -1)
                      {
                        this.state = 6;
                        return false;
                        if (i6 != -2)
                          break label539;
                        k++;
                      }
                    }
                  }
                }
              }
            while (i6 == -1);
            this.state = 6;
            return false;
          }
          while (i6 == -1);
          this.state = 6;
          return false;
        }
        int i4;
        switch (k)
        {
        default:
          i4 = i1;
        case 0:
        case 1:
        case 2:
        case 3:
          while (true)
          {
            this.state = k;
            this.op = i4;
            return true;
            i4 = i1;
            continue;
            this.state = 6;
            return false;
            i4 = i1 + 1;
            arrayOfByte[i1] = ((byte)(m >> 4));
            continue;
            int i2 = i1 + 1;
            arrayOfByte[i1] = ((byte)(m >> 10));
            int i3 = i2 + 1;
            arrayOfByte[i2] = ((byte)(m >> 2));
            i4 = i3;
          }
        case 4:
        }
        this.state = 6;
        return false;
      }
    }
  }

  public static class Encoder extends Base64.Coder
  {
    private static final byte[] ENCODE;
    private static final byte[] ENCODE_WEBSAFE;
    public static final int LINE_GROUPS = 19;
    private final byte[] alphabet;
    private int count;
    public final boolean do_cr;
    public final boolean do_newline;
    public final boolean do_padding;
    private final byte[] tail;
    public int tailLen;

    static
    {
      if (!Base64.class.desiredAssertionStatus());
      for (boolean bool = true; ; bool = false)
      {
        $assertionsDisabled = bool;
        ENCODE = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
        ENCODE_WEBSAFE = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
        return;
      }
    }

    public Encoder(int paramInt, byte[] paramArrayOfByte)
    {
      this.output = paramArrayOfByte;
      boolean bool2;
      boolean bool3;
      label35: label47: byte[] arrayOfByte;
      if ((paramInt & 0x1) == 0)
      {
        bool2 = bool1;
        this.do_padding = bool2;
        if ((paramInt & 0x2) != 0)
          break label106;
        bool3 = bool1;
        this.do_newline = bool3;
        if ((paramInt & 0x4) == 0)
          break label112;
        this.do_cr = bool1;
        if ((paramInt & 0x8) != 0)
          break label117;
        arrayOfByte = ENCODE;
        label64: this.alphabet = arrayOfByte;
        this.tail = new byte[2];
        this.tailLen = 0;
        if (!this.do_newline)
          break label125;
      }
      label106: label112: label117: label125: for (int i = 19; ; i = -1)
      {
        this.count = i;
        return;
        bool2 = false;
        break;
        bool3 = false;
        break label35;
        bool1 = false;
        break label47;
        arrayOfByte = ENCODE_WEBSAFE;
        break label64;
      }
    }

    public int maxOutputSize(int paramInt)
    {
      return 10 + paramInt * 8 / 5;
    }

    public boolean process(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
    {
      byte[] arrayOfByte1 = this.alphabet;
      byte[] arrayOfByte2 = this.output;
      int i = this.count;
      int j = paramInt1;
      int k = paramInt2 + paramInt1;
      int m = -1;
      int i2;
      int i4;
      int i3;
      switch (this.tailLen)
      {
      case 0:
      default:
        i2 = 0;
        if (m != -1)
        {
          int i34 = 0 + 1;
          arrayOfByte2[0] = arrayOfByte1[(0x3F & m >> 18)];
          int i35 = i34 + 1;
          arrayOfByte2[i34] = arrayOfByte1[(0x3F & m >> 12)];
          int i36 = i35 + 1;
          arrayOfByte2[i35] = arrayOfByte1[(0x3F & m >> 6)];
          i2 = i36 + 1;
          arrayOfByte2[i36] = arrayOfByte1[(m & 0x3F)];
          i--;
          if (i == 0)
          {
            if (this.do_cr)
            {
              int i37 = i2 + 1;
              arrayOfByte2[i2] = 13;
              i2 = i37;
            }
            i4 = i2 + 1;
            arrayOfByte2[i2] = 10;
            i = 19;
            i3 = j;
          }
        }
        break;
      case 1:
      case 2:
      }
      while (true)
      {
        if (i3 + 3 <= k)
        {
          int i32 = (0xFF & paramArrayOfByte[i3]) << 16 | (0xFF & paramArrayOfByte[(i3 + 1)]) << 8 | 0xFF & paramArrayOfByte[(i3 + 2)];
          arrayOfByte2[i4] = arrayOfByte1[(0x3F & i32 >> 18)];
          arrayOfByte2[(i4 + 1)] = arrayOfByte1[(0x3F & i32 >> 12)];
          arrayOfByte2[(i4 + 2)] = arrayOfByte1[(0x3F & i32 >> 6)];
          arrayOfByte2[(i4 + 3)] = arrayOfByte1[(i32 & 0x3F)];
          j = i3 + 3;
          i2 = i4 + 4;
          i--;
          if (i != 0)
            break label1278;
          if (this.do_cr)
          {
            int i33 = i2 + 1;
            arrayOfByte2[i2] = 13;
            i2 = i33;
          }
          i4 = i2 + 1;
          arrayOfByte2[i2] = 10;
          i = 19;
          i3 = j;
          continue;
          if (j + 2 > k)
            break;
          int i38 = (0xFF & this.tail[0]) << 16;
          int i39 = j + 1;
          int i40 = i38 | (0xFF & paramArrayOfByte[j]) << 8;
          j = i39 + 1;
          m = i40 | 0xFF & paramArrayOfByte[i39];
          this.tailLen = 0;
          break;
          if (j + 1 > k)
            break;
          int n = (0xFF & this.tail[0]) << 16 | (0xFF & this.tail[1]) << 8;
          int i1 = j + 1;
          m = n | 0xFF & paramArrayOfByte[j];
          this.tailLen = 0;
          j = i1;
          break;
        }
        int i9;
        int i5;
        label727: int i10;
        if (paramBoolean)
        {
          int i19;
          if (i3 - this.tailLen == k - 1)
          {
            int i24;
            int i25;
            if (this.tailLen > 0)
            {
              byte[] arrayOfByte8 = this.tail;
              int i31 = 0 + 1;
              i24 = arrayOfByte8[0];
              i25 = i31;
              i9 = i3;
            }
            while (true)
            {
              int i26 = (i24 & 0xFF) << 4;
              this.tailLen -= i25;
              int i27 = i4 + 1;
              arrayOfByte2[i4] = arrayOfByte1[(0x3F & i26 >> 6)];
              int i28 = i27 + 1;
              arrayOfByte2[i27] = arrayOfByte1[(i26 & 0x3F)];
              if (this.do_padding)
              {
                int i30 = i28 + 1;
                arrayOfByte2[i28] = 61;
                i28 = i30 + 1;
                arrayOfByte2[i30] = 61;
              }
              i5 = i28;
              if (this.do_newline)
              {
                if (this.do_cr)
                {
                  int i29 = i5 + 1;
                  arrayOfByte2[i5] = 13;
                  i5 = i29;
                }
                i19 = i5 + 1;
                arrayOfByte2[i5] = 10;
                i5 = i19;
              }
              if (($assertionsDisabled) || (this.tailLen == 0))
                break;
              throw new AssertionError();
              i9 = i3 + 1;
              i24 = paramArrayOfByte[i3];
              i25 = 0;
            }
          }
          if (i3 - this.tailLen == k - 2)
          {
            int i11;
            int i12;
            label813: int i13;
            int i15;
            if (this.tailLen > 1)
            {
              byte[] arrayOfByte7 = this.tail;
              int i23 = 0 + 1;
              i11 = arrayOfByte7[0];
              i12 = i23;
              i9 = i3;
              i13 = (i11 & 0xFF) << 10;
              if (this.tailLen <= 0)
                break label1030;
              byte[] arrayOfByte6 = this.tail;
              int i22 = i12 + 1;
              i15 = arrayOfByte6[i12];
              i12 = i22;
            }
            while (true)
            {
              int i16 = i13 | (i15 & 0xFF) << 2;
              this.tailLen -= i12;
              int i17 = i4 + 1;
              arrayOfByte2[i4] = arrayOfByte1[(0x3F & i16 >> 12)];
              int i18 = i17 + 1;
              arrayOfByte2[i17] = arrayOfByte1[(0x3F & i16 >> 6)];
              i5 = i18 + 1;
              arrayOfByte2[i18] = arrayOfByte1[(i16 & 0x3F)];
              if (this.do_padding)
              {
                int i21 = i5 + 1;
                arrayOfByte2[i5] = 61;
                i5 = i21;
              }
              if (!this.do_newline)
                break label727;
              if (this.do_cr)
              {
                int i20 = i5 + 1;
                arrayOfByte2[i5] = 13;
                i5 = i20;
              }
              i19 = i5 + 1;
              arrayOfByte2[i5] = 10;
              break;
              i9 = i3 + 1;
              i11 = paramArrayOfByte[i3];
              i12 = 0;
              break label813;
              label1030: int i14 = i9 + 1;
              i15 = paramArrayOfByte[i9];
              i9 = i14;
            }
          }
          if ((this.do_newline) && (i4 > 0) && (i != 19))
          {
            if (!this.do_cr)
              break label1271;
            i10 = i4 + 1;
            arrayOfByte2[i4] = 13;
          }
        }
        while (true)
        {
          i4 = i10 + 1;
          arrayOfByte2[i10] = 10;
          i9 = i3;
          i5 = i4;
          break;
          if ((!$assertionsDisabled) && (i9 != k))
          {
            throw new AssertionError();
            if (i3 != k - 1)
              break label1192;
            byte[] arrayOfByte5 = this.tail;
            int i8 = this.tailLen;
            this.tailLen = (i8 + 1);
            arrayOfByte5[i8] = paramArrayOfByte[i3];
          }
          for (i5 = i4; ; i5 = i4)
          {
            this.op = i5;
            this.count = i;
            return true;
            label1192: if (i3 == k - 2)
            {
              byte[] arrayOfByte3 = this.tail;
              int i6 = this.tailLen;
              this.tailLen = (i6 + 1);
              arrayOfByte3[i6] = paramArrayOfByte[i3];
              byte[] arrayOfByte4 = this.tail;
              int i7 = this.tailLen;
              this.tailLen = (i7 + 1);
              arrayOfByte4[i7] = paramArrayOfByte[(i3 + 1)];
            }
          }
          label1271: i10 = i4;
        }
        label1278: i3 = j;
        i4 = i2;
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.userfeedback.android.api.encode.Base64
 * JD-Core Version:    0.6.2
 */