package com.x.google.common.io;

import java.io.DataInput;
import java.io.EOFException;
import java.io.IOException;
import java.io.UTFDataFormatException;

public class ByteArrayDataInput
  implements DataInput
{
  private byte[] mBytes;
  private int mLength;
  private int mPos;
  private char[] mUtfCharBuf;

  public ByteArrayDataInput(byte[] paramArrayOfByte)
  {
    this.mBytes = paramArrayOfByte;
    this.mLength = this.mBytes.length;
    this.mPos = 0;
    this.mUtfCharBuf = new char[''];
  }

  public static String convertUTF8WithBuf(byte[] paramArrayOfByte, char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws UTFDataFormatException
  {
    int i = 0;
    int j = 0;
    while (j < paramInt2)
    {
      int k = j + 1;
      int m = (char)paramArrayOfByte[(j + paramInt1)];
      paramArrayOfChar[i] = m;
      if (m < 128)
      {
        i++;
        j = k;
      }
      else
      {
        int n = paramArrayOfChar[i];
        if ((n & 0xE0) == 192)
        {
          if (k >= paramInt2)
            throw new UTFDataFormatException("Second byte at " + k + " does not match " + "UTF8 Specification");
          int i6 = k + 1;
          int i7 = paramArrayOfByte[(paramInt1 + k)];
          if ((i7 & 0xC0) != 128)
            throw new UTFDataFormatException("Second byte at " + (i6 - 1) + " does not match UTF8 Specification");
          int i8 = i + 1;
          paramArrayOfChar[i] = ((char)((n & 0x1F) << 6 | i7 & 0x3F));
          i = i8;
          j = i6;
        }
        else if ((n & 0xF0) == 224)
        {
          if (k + 1 >= paramInt2)
            throw new UTFDataFormatException("Third byte at " + (k + 1) + " does not match UTF8 Specification");
          int i1 = k + 1;
          int i2 = paramArrayOfByte[(k + paramInt1)];
          int i3 = i1 + 1;
          int i4 = paramArrayOfByte[(i1 + paramInt1)];
          if (((i2 & 0xC0) != 128) || ((i4 & 0xC0) != 128))
            throw new UTFDataFormatException("Second or third byte at " + (i3 - 2) + " does not match UTF8 Specification");
          int i5 = i + 1;
          paramArrayOfChar[i] = ((char)((n & 0xF) << 12 | (i2 & 0x3F) << 6 | i4 & 0x3F));
          i = i5;
          j = i3;
        }
        else
        {
          throw new UTFDataFormatException("Input at " + (k - 1) + " does not match UTF8 " + "Specification");
        }
      }
    }
    return new String(paramArrayOfChar, 0, i);
  }

  public int getBytesRead()
  {
    return this.mPos;
  }

  public boolean readBoolean()
    throws IOException
  {
    try
    {
      byte[] arrayOfByte = this.mBytes;
      int i = this.mPos;
      this.mPos = (i + 1);
      int j = arrayOfByte[i];
      return j != 0;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
    }
    throw new EOFException();
  }

  public byte readByte()
    throws IOException
  {
    try
    {
      byte[] arrayOfByte = this.mBytes;
      int i = this.mPos;
      this.mPos = (i + 1);
      byte b = arrayOfByte[i];
      return b;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
    }
    throw new EOFException();
  }

  public char readChar()
    throws IOException
  {
    try
    {
      byte[] arrayOfByte1 = this.mBytes;
      int i = this.mPos;
      this.mPos = (i + 1);
      int j = arrayOfByte1[i];
      byte[] arrayOfByte2 = this.mBytes;
      int k = this.mPos;
      this.mPos = (k + 1);
      int m = arrayOfByte2[k];
      return (char)(m & 0xFF | j << 8);
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
    }
    throw new EOFException();
  }

  public double readDouble()
    throws IOException
  {
    return Double.longBitsToDouble(readLong());
  }

  public float readFloat()
    throws IOException
  {
    return Float.intBitsToFloat(readInt());
  }

  public void readFully(byte[] paramArrayOfByte)
    throws IOException
  {
    readFully(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public void readFully(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (paramInt2 == 0)
      return;
    if (paramInt1 + paramInt2 > paramArrayOfByte.length)
      throw new IndexOutOfBoundsException();
    if (paramInt2 > this.mLength - this.mPos)
    {
      this.mPos = this.mLength;
      throw new EOFException();
    }
    System.arraycopy(this.mBytes, this.mPos, paramArrayOfByte, paramInt1, paramInt2);
    this.mPos = (paramInt2 + this.mPos);
  }

  public int readInt()
    throws IOException
  {
    try
    {
      byte[] arrayOfByte1 = this.mBytes;
      int i = this.mPos;
      this.mPos = (i + 1);
      int j = 0xFF & arrayOfByte1[i];
      byte[] arrayOfByte2 = this.mBytes;
      int k = this.mPos;
      this.mPos = (k + 1);
      int m = 0xFF & arrayOfByte2[k];
      byte[] arrayOfByte3 = this.mBytes;
      int n = this.mPos;
      this.mPos = (n + 1);
      int i1 = 0xFF & arrayOfByte3[n];
      byte[] arrayOfByte4 = this.mBytes;
      int i2 = this.mPos;
      this.mPos = (i2 + 1);
      int i3 = arrayOfByte4[i2];
      return i3 & 0xFF | (j << 24 | m << 16 | i1 << 8);
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
    }
    throw new EOFException();
  }

  public String readLine()
  {
    if (this.mPos >= this.mLength)
      return null;
    StringBuffer localStringBuffer = new StringBuffer();
    do
    {
      byte[] arrayOfByte = this.mBytes;
      int i = this.mPos;
      this.mPos = (i + 1);
      char c = (char)arrayOfByte[i];
      if (c == '\n')
        return localStringBuffer.toString();
      if (c == '\r')
      {
        if ((this.mPos < this.mLength) && (this.mBytes[this.mPos] == 10))
          this.mPos = (1 + this.mPos);
        return localStringBuffer.toString();
      }
      localStringBuffer.append(c);
    }
    while (this.mPos != this.mLength);
    return localStringBuffer.toString();
  }

  public long readLong()
    throws IOException
  {
    try
    {
      byte[] arrayOfByte1 = this.mBytes;
      int i = this.mPos;
      this.mPos = (i + 1);
      long l1 = 0xFF & arrayOfByte1[i];
      byte[] arrayOfByte2 = this.mBytes;
      int j = this.mPos;
      this.mPos = (j + 1);
      long l2 = 0xFF & arrayOfByte2[j];
      byte[] arrayOfByte3 = this.mBytes;
      int k = this.mPos;
      this.mPos = (k + 1);
      long l3 = 0xFF & arrayOfByte3[k];
      byte[] arrayOfByte4 = this.mBytes;
      int m = this.mPos;
      this.mPos = (m + 1);
      long l4 = 0xFF & arrayOfByte4[m];
      byte[] arrayOfByte5 = this.mBytes;
      int n = this.mPos;
      this.mPos = (n + 1);
      long l5 = 0xFF & arrayOfByte5[n];
      byte[] arrayOfByte6 = this.mBytes;
      int i1 = this.mPos;
      this.mPos = (i1 + 1);
      long l6 = 0xFF & arrayOfByte6[i1];
      byte[] arrayOfByte7 = this.mBytes;
      int i2 = this.mPos;
      this.mPos = (i2 + 1);
      long l7 = 0xFF & arrayOfByte7[i2];
      byte[] arrayOfByte8 = this.mBytes;
      int i3 = this.mPos;
      this.mPos = (i3 + 1);
      int i4 = arrayOfByte8[i3];
      return i4 & 0xFF | (l1 << 56 | l2 << 48 | l3 << 40 | l4 << 32 | l5 << 24 | l6 << 16 | l7 << 8);
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
    }
    throw new EOFException();
  }

  public short readShort()
    throws IOException
  {
    try
    {
      byte[] arrayOfByte1 = this.mBytes;
      int i = this.mPos;
      this.mPos = (i + 1);
      int j = arrayOfByte1[i];
      byte[] arrayOfByte2 = this.mBytes;
      int k = this.mPos;
      this.mPos = (k + 1);
      int m = arrayOfByte2[k];
      return (short)(m & 0xFF | j << 8);
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
    }
    throw new EOFException();
  }

  public String readUTF()
    throws IOException
  {
    int i = readUnsignedShort();
    if (i == 0)
      return "";
    if (i > this.mLength - this.mPos)
    {
      this.mPos = this.mLength;
      throw new EOFException();
    }
    if (i > this.mUtfCharBuf.length)
      this.mUtfCharBuf = new char[i];
    String str = convertUTF8WithBuf(this.mBytes, this.mUtfCharBuf, this.mPos, i);
    this.mPos = (i + this.mPos);
    return str;
  }

  public int readUnsignedByte()
    throws IOException
  {
    try
    {
      byte[] arrayOfByte = this.mBytes;
      int i = this.mPos;
      this.mPos = (i + 1);
      int j = arrayOfByte[i];
      return j & 0xFF;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
    }
    throw new EOFException();
  }

  public int readUnsignedShort()
    throws IOException
  {
    try
    {
      byte[] arrayOfByte1 = this.mBytes;
      int i = this.mPos;
      this.mPos = (i + 1);
      int j = 0xFF & arrayOfByte1[i];
      byte[] arrayOfByte2 = this.mBytes;
      int k = this.mPos;
      this.mPos = (k + 1);
      int m = arrayOfByte2[k];
      return m & 0xFF | j << 8;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
    }
    throw new EOFException();
  }

  public int skipBytes(int paramInt)
  {
    if (paramInt > this.mLength - this.mPos)
      paramInt = this.mLength - this.mPos;
    this.mPos = (paramInt + this.mPos);
    return paramInt;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.ByteArrayDataInput
 * JD-Core Version:    0.6.2
 */