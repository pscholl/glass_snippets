package com.google.protobuf.micro;

import java.io.IOException;
import java.io.InputStream;
import java.util.Vector;

public final class CodedInputStreamMicro
{
  private static final int BUFFER_SIZE = 4096;
  private static final int DEFAULT_RECURSION_LIMIT = 64;
  private static final int DEFAULT_SIZE_LIMIT = 67108864;
  private final byte[] buffer;
  private int bufferPos;
  private int bufferSize;
  private int bufferSizeAfterLimit;
  private int currentLimit = 2147483647;
  private final InputStream input;
  private int lastTag;
  private int recursionDepth;
  private int recursionLimit = 64;
  private int sizeLimit = 67108864;
  private int totalBytesRetired;

  private CodedInputStreamMicro(InputStream paramInputStream)
  {
    this.buffer = new byte[4096];
    this.bufferSize = 0;
    this.bufferPos = 0;
    this.input = paramInputStream;
  }

  private CodedInputStreamMicro(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.buffer = paramArrayOfByte;
    this.bufferSize = (paramInt1 + paramInt2);
    this.bufferPos = paramInt1;
    this.input = null;
  }

  public static int decodeZigZag32(int paramInt)
  {
    return paramInt >>> 1 ^ -(paramInt & 0x1);
  }

  public static long decodeZigZag64(long paramLong)
  {
    return paramLong >>> 1 ^ -(1L & paramLong);
  }

  public static CodedInputStreamMicro newInstance(InputStream paramInputStream)
  {
    return new CodedInputStreamMicro(paramInputStream);
  }

  public static CodedInputStreamMicro newInstance(byte[] paramArrayOfByte)
  {
    return newInstance(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public static CodedInputStreamMicro newInstance(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new CodedInputStreamMicro(paramArrayOfByte, paramInt1, paramInt2);
  }

  static int readRawVarint32(InputStream paramInputStream)
    throws IOException
  {
    int i = 0;
    for (int j = 0; j < 32; j += 7)
    {
      int m = paramInputStream.read();
      if (m == -1)
        throw InvalidProtocolBufferMicroException.truncatedMessage();
      i |= (m & 0x7F) << j;
      if ((m & 0x80) == 0)
        return i;
    }
    int k;
    do
    {
      j += 7;
      if (j >= 64)
        break;
      k = paramInputStream.read();
      if (k == -1)
        throw InvalidProtocolBufferMicroException.truncatedMessage();
    }
    while ((k & 0x80) != 0);
    return i;
    throw InvalidProtocolBufferMicroException.malformedVarint();
  }

  private void recomputeBufferSizeAfterLimit()
  {
    this.bufferSize += this.bufferSizeAfterLimit;
    int i = this.totalBytesRetired + this.bufferSize;
    if (i > this.currentLimit)
    {
      this.bufferSizeAfterLimit = (i - this.currentLimit);
      this.bufferSize -= this.bufferSizeAfterLimit;
      return;
    }
    this.bufferSizeAfterLimit = 0;
  }

  private boolean refillBuffer(boolean paramBoolean)
    throws IOException
  {
    if (this.bufferPos < this.bufferSize)
      throw new IllegalStateException("refillBuffer() called when buffer wasn't empty.");
    if (this.totalBytesRetired + this.bufferSize == this.currentLimit)
    {
      if (paramBoolean)
        throw InvalidProtocolBufferMicroException.truncatedMessage();
      return false;
    }
    this.totalBytesRetired += this.bufferSize;
    this.bufferPos = 0;
    if (this.input == null);
    for (int i = -1; ; i = this.input.read(this.buffer))
    {
      this.bufferSize = i;
      if ((this.bufferSize != 0) && (this.bufferSize >= -1))
        break;
      throw new IllegalStateException("InputStream#read(byte[]) returned invalid result: " + this.bufferSize + "\nThe InputStream implementation is buggy.");
    }
    if (this.bufferSize == -1)
    {
      this.bufferSize = 0;
      if (paramBoolean)
        throw InvalidProtocolBufferMicroException.truncatedMessage();
      return false;
    }
    recomputeBufferSizeAfterLimit();
    int j = this.totalBytesRetired + this.bufferSize + this.bufferSizeAfterLimit;
    if ((j > this.sizeLimit) || (j < 0))
      throw InvalidProtocolBufferMicroException.sizeLimitExceeded();
    return true;
  }

  public void checkLastTagWas(int paramInt)
    throws InvalidProtocolBufferMicroException
  {
    if (this.lastTag != paramInt)
      throw InvalidProtocolBufferMicroException.invalidEndTag();
  }

  public int getBytesUntilLimit()
  {
    if (this.currentLimit == 2147483647)
      return -1;
    int i = this.totalBytesRetired + this.bufferPos;
    return this.currentLimit - i;
  }

  public boolean isAtEnd()
    throws IOException
  {
    int i = this.bufferPos;
    int j = this.bufferSize;
    boolean bool1 = false;
    if (i == j)
    {
      boolean bool2 = refillBuffer(false);
      bool1 = false;
      if (!bool2)
        bool1 = true;
    }
    return bool1;
  }

  public void popLimit(int paramInt)
  {
    this.currentLimit = paramInt;
    recomputeBufferSizeAfterLimit();
  }

  public int pushLimit(int paramInt)
    throws InvalidProtocolBufferMicroException
  {
    if (paramInt < 0)
      throw InvalidProtocolBufferMicroException.negativeSize();
    int i = paramInt + (this.totalBytesRetired + this.bufferPos);
    int j = this.currentLimit;
    if (i > j)
      throw InvalidProtocolBufferMicroException.truncatedMessage();
    this.currentLimit = i;
    recomputeBufferSizeAfterLimit();
    return j;
  }

  public boolean readBool()
    throws IOException
  {
    return readRawVarint32() != 0;
  }

  public ByteStringMicro readBytes()
    throws IOException
  {
    int i = readRawVarint32();
    if ((i <= this.bufferSize - this.bufferPos) && (i > 0))
    {
      ByteStringMicro localByteStringMicro = ByteStringMicro.copyFrom(this.buffer, this.bufferPos, i);
      this.bufferPos = (i + this.bufferPos);
      return localByteStringMicro;
    }
    return ByteStringMicro.copyFrom(readRawBytes(i));
  }

  public double readDouble()
    throws IOException
  {
    return Double.longBitsToDouble(readRawLittleEndian64());
  }

  public int readEnum()
    throws IOException
  {
    return readRawVarint32();
  }

  public int readFixed32()
    throws IOException
  {
    return readRawLittleEndian32();
  }

  public long readFixed64()
    throws IOException
  {
    return readRawLittleEndian64();
  }

  public float readFloat()
    throws IOException
  {
    return Float.intBitsToFloat(readRawLittleEndian32());
  }

  public void readGroup(MessageMicro paramMessageMicro, int paramInt)
    throws IOException
  {
    if (this.recursionDepth >= this.recursionLimit)
      throw InvalidProtocolBufferMicroException.recursionLimitExceeded();
    this.recursionDepth = (1 + this.recursionDepth);
    paramMessageMicro.mergeFrom(this);
    checkLastTagWas(WireFormatMicro.makeTag(paramInt, 4));
    this.recursionDepth = (-1 + this.recursionDepth);
  }

  public int readInt32()
    throws IOException
  {
    return readRawVarint32();
  }

  public long readInt64()
    throws IOException
  {
    return readRawVarint64();
  }

  public void readMessage(MessageMicro paramMessageMicro)
    throws IOException
  {
    int i = readRawVarint32();
    if (this.recursionDepth >= this.recursionLimit)
      throw InvalidProtocolBufferMicroException.recursionLimitExceeded();
    int j = pushLimit(i);
    this.recursionDepth = (1 + this.recursionDepth);
    paramMessageMicro.mergeFrom(this);
    checkLastTagWas(0);
    this.recursionDepth = (-1 + this.recursionDepth);
    popLimit(j);
  }

  public byte readRawByte()
    throws IOException
  {
    if (this.bufferPos == this.bufferSize)
      refillBuffer(true);
    byte[] arrayOfByte = this.buffer;
    int i = this.bufferPos;
    this.bufferPos = (i + 1);
    return arrayOfByte[i];
  }

  public byte[] readRawBytes(int paramInt)
    throws IOException
  {
    if (paramInt < 0)
      throw InvalidProtocolBufferMicroException.negativeSize();
    if (paramInt + (this.totalBytesRetired + this.bufferPos) > this.currentLimit)
    {
      skipRawBytes(this.currentLimit - this.totalBytesRetired - this.bufferPos);
      throw InvalidProtocolBufferMicroException.truncatedMessage();
    }
    byte[] arrayOfByte1;
    if (paramInt <= this.bufferSize - this.bufferPos)
    {
      arrayOfByte1 = new byte[paramInt];
      System.arraycopy(this.buffer, this.bufferPos, arrayOfByte1, 0, paramInt);
      this.bufferPos = (paramInt + this.bufferPos);
    }
    while (true)
    {
      return arrayOfByte1;
      if (paramInt < 4096)
      {
        byte[] arrayOfByte4 = new byte[paramInt];
        int i3 = this.bufferSize - this.bufferPos;
        System.arraycopy(this.buffer, this.bufferPos, arrayOfByte4, 0, i3);
        this.bufferPos = this.bufferSize;
        refillBuffer(true);
        while (paramInt - i3 > this.bufferSize)
        {
          System.arraycopy(this.buffer, 0, arrayOfByte4, i3, this.bufferSize);
          i3 += this.bufferSize;
          this.bufferPos = this.bufferSize;
          refillBuffer(true);
        }
        System.arraycopy(this.buffer, 0, arrayOfByte4, i3, paramInt - i3);
        this.bufferPos = (paramInt - i3);
        return arrayOfByte4;
      }
      int i = this.bufferPos;
      int j = this.bufferSize;
      this.totalBytesRetired += this.bufferSize;
      this.bufferPos = 0;
      this.bufferSize = 0;
      int k = paramInt - (j - i);
      Vector localVector = new Vector();
      while (k > 0)
      {
        byte[] arrayOfByte3 = new byte[Math.min(k, 4096)];
        int i1 = 0;
        while (i1 < arrayOfByte3.length)
        {
          if (this.input == null);
          for (int i2 = -1; i2 == -1; i2 = this.input.read(arrayOfByte3, i1, arrayOfByte3.length - i1))
            throw InvalidProtocolBufferMicroException.truncatedMessage();
          this.totalBytesRetired = (i2 + this.totalBytesRetired);
          i1 += i2;
        }
        k -= arrayOfByte3.length;
        localVector.addElement(arrayOfByte3);
      }
      arrayOfByte1 = new byte[paramInt];
      int m = j - i;
      System.arraycopy(this.buffer, i, arrayOfByte1, 0, m);
      for (int n = 0; n < localVector.size(); n++)
      {
        byte[] arrayOfByte2 = (byte[])localVector.elementAt(n);
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, m, arrayOfByte2.length);
        m += arrayOfByte2.length;
      }
    }
  }

  public int readRawLittleEndian32()
    throws IOException
  {
    int i = readRawByte();
    int j = readRawByte();
    int k = readRawByte();
    int m = readRawByte();
    return i & 0xFF | (j & 0xFF) << 8 | (k & 0xFF) << 16 | (m & 0xFF) << 24;
  }

  public long readRawLittleEndian64()
    throws IOException
  {
    int i = readRawByte();
    int j = readRawByte();
    int k = readRawByte();
    int m = readRawByte();
    int n = readRawByte();
    int i1 = readRawByte();
    int i2 = readRawByte();
    int i3 = readRawByte();
    return 0xFF & i | (0xFF & j) << 8 | (0xFF & k) << 16 | (0xFF & m) << 24 | (0xFF & n) << 32 | (0xFF & i1) << 40 | (0xFF & i2) << 48 | (0xFF & i3) << 56;
  }

  public int readRawVarint32()
    throws IOException
  {
    int i = readRawByte();
    int i5;
    if (i >= 0)
      i5 = i;
    int i4;
    do
    {
      return i5;
      int j = i & 0x7F;
      int k = readRawByte();
      if (k >= 0)
        return j | k << 7;
      int m = j | (k & 0x7F) << 7;
      int n = readRawByte();
      if (n >= 0)
        return m | n << 14;
      int i1 = m | (n & 0x7F) << 14;
      int i2 = readRawByte();
      if (i2 >= 0)
        return i1 | i2 << 21;
      int i3 = i1 | (i2 & 0x7F) << 21;
      i4 = readRawByte();
      i5 = i3 | i4 << 28;
    }
    while (i4 >= 0);
    for (int i6 = 0; ; i6++)
    {
      if (i6 >= 5)
        break label156;
      if (readRawByte() >= 0)
        break;
    }
    label156: throw InvalidProtocolBufferMicroException.malformedVarint();
  }

  public long readRawVarint64()
    throws IOException
  {
    int i = 0;
    long l = 0L;
    while (i < 64)
    {
      int j = readRawByte();
      l |= (j & 0x7F) << i;
      if ((j & 0x80) == 0)
        return l;
      i += 7;
    }
    throw InvalidProtocolBufferMicroException.malformedVarint();
  }

  public int readSFixed32()
    throws IOException
  {
    return readRawLittleEndian32();
  }

  public long readSFixed64()
    throws IOException
  {
    return readRawLittleEndian64();
  }

  public int readSInt32()
    throws IOException
  {
    return decodeZigZag32(readRawVarint32());
  }

  public long readSInt64()
    throws IOException
  {
    return decodeZigZag64(readRawVarint64());
  }

  public String readString()
    throws IOException
  {
    int i = readRawVarint32();
    if ((i <= this.bufferSize - this.bufferPos) && (i > 0))
    {
      String str = new String(this.buffer, this.bufferPos, i, "UTF-8");
      this.bufferPos = (i + this.bufferPos);
      return str;
    }
    return new String(readRawBytes(i), "UTF-8");
  }

  public int readTag()
    throws IOException
  {
    if (isAtEnd())
    {
      this.lastTag = 0;
      return 0;
    }
    this.lastTag = readRawVarint32();
    if (this.lastTag == 0)
      throw InvalidProtocolBufferMicroException.invalidTag();
    return this.lastTag;
  }

  public int readUInt32()
    throws IOException
  {
    return readRawVarint32();
  }

  public long readUInt64()
    throws IOException
  {
    return readRawVarint64();
  }

  public void resetSizeCounter()
  {
    this.totalBytesRetired = 0;
  }

  public int setRecursionLimit(int paramInt)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException("Recursion limit cannot be negative: " + paramInt);
    int i = this.recursionLimit;
    this.recursionLimit = paramInt;
    return i;
  }

  public int setSizeLimit(int paramInt)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException("Size limit cannot be negative: " + paramInt);
    int i = this.sizeLimit;
    this.sizeLimit = paramInt;
    return i;
  }

  public boolean skipField(int paramInt)
    throws IOException
  {
    switch (WireFormatMicro.getTagWireType(paramInt))
    {
    default:
      throw InvalidProtocolBufferMicroException.invalidWireType();
    case 0:
      readInt32();
      return true;
    case 1:
      readRawLittleEndian64();
      return true;
    case 2:
      skipRawBytes(readRawVarint32());
      return true;
    case 3:
      skipMessage();
      checkLastTagWas(WireFormatMicro.makeTag(WireFormatMicro.getTagFieldNumber(paramInt), 4));
      return true;
    case 4:
      return false;
    case 5:
    }
    readRawLittleEndian32();
    return true;
  }

  public void skipMessage()
    throws IOException
  {
    int i;
    do
      i = readTag();
    while ((i != 0) && (skipField(i)));
  }

  public void skipRawBytes(int paramInt)
    throws IOException
  {
    if (paramInt < 0)
      throw InvalidProtocolBufferMicroException.negativeSize();
    if (paramInt + (this.totalBytesRetired + this.bufferPos) > this.currentLimit)
    {
      skipRawBytes(this.currentLimit - this.totalBytesRetired - this.bufferPos);
      throw InvalidProtocolBufferMicroException.truncatedMessage();
    }
    if (paramInt <= this.bufferSize - this.bufferPos)
      this.bufferPos = (paramInt + this.bufferPos);
    while (true)
    {
      return;
      int i = this.bufferSize - this.bufferPos;
      this.totalBytesRetired += this.bufferSize;
      this.bufferPos = 0;
      this.bufferSize = 0;
      while (i < paramInt)
      {
        if (this.input == null);
        for (int j = -1; j <= 0; j = (int)this.input.skip(paramInt - i))
          throw InvalidProtocolBufferMicroException.truncatedMessage();
        i += j;
        this.totalBytesRetired = (j + this.totalBytesRetired);
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.protobuf.micro.CodedInputStreamMicro
 * JD-Core Version:    0.6.2
 */