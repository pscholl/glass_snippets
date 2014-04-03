package com.google.protobuf.nano;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

public final class CodedOutputByteBufferNano
{
  public static final int LITTLE_ENDIAN_32_SIZE = 4;
  public static final int LITTLE_ENDIAN_64_SIZE = 8;
  private final byte[] buffer;
  private final int limit;
  private int position;

  private CodedOutputByteBufferNano(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.buffer = paramArrayOfByte;
    this.position = paramInt1;
    this.limit = (paramInt1 + paramInt2);
  }

  public static int computeBoolSize(int paramInt, boolean paramBoolean)
  {
    return computeTagSize(paramInt) + computeBoolSizeNoTag(paramBoolean);
  }

  public static int computeBoolSizeNoTag(boolean paramBoolean)
  {
    return 1;
  }

  public static int computeByteArraySize(int paramInt, byte[] paramArrayOfByte)
  {
    return computeTagSize(paramInt) + computeByteArraySizeNoTag(paramArrayOfByte);
  }

  public static int computeByteArraySizeNoTag(byte[] paramArrayOfByte)
  {
    return computeRawVarint32Size(paramArrayOfByte.length) + paramArrayOfByte.length;
  }

  public static int computeBytesSize(int paramInt, byte[] paramArrayOfByte)
  {
    return computeTagSize(paramInt) + computeBytesSizeNoTag(paramArrayOfByte);
  }

  public static int computeBytesSizeNoTag(byte[] paramArrayOfByte)
  {
    return computeRawVarint32Size(paramArrayOfByte.length) + paramArrayOfByte.length;
  }

  public static int computeDoubleSize(int paramInt, double paramDouble)
  {
    return computeTagSize(paramInt) + computeDoubleSizeNoTag(paramDouble);
  }

  public static int computeDoubleSizeNoTag(double paramDouble)
  {
    return 8;
  }

  public static int computeEnumSize(int paramInt1, int paramInt2)
  {
    return computeTagSize(paramInt1) + computeEnumSizeNoTag(paramInt2);
  }

  public static int computeEnumSizeNoTag(int paramInt)
  {
    return computeRawVarint32Size(paramInt);
  }

  public static int computeFixed32Size(int paramInt1, int paramInt2)
  {
    return computeTagSize(paramInt1) + computeFixed32SizeNoTag(paramInt2);
  }

  public static int computeFixed32SizeNoTag(int paramInt)
  {
    return 4;
  }

  public static int computeFixed64Size(int paramInt, long paramLong)
  {
    return computeTagSize(paramInt) + computeFixed64SizeNoTag(paramLong);
  }

  public static int computeFixed64SizeNoTag(long paramLong)
  {
    return 8;
  }

  public static int computeFloatSize(int paramInt, float paramFloat)
  {
    return computeTagSize(paramInt) + computeFloatSizeNoTag(paramFloat);
  }

  public static int computeFloatSizeNoTag(float paramFloat)
  {
    return 4;
  }

  public static int computeGroupSize(int paramInt, MessageNano paramMessageNano)
  {
    return 2 * computeTagSize(paramInt) + computeGroupSizeNoTag(paramMessageNano);
  }

  public static int computeGroupSizeNoTag(MessageNano paramMessageNano)
  {
    return paramMessageNano.getSerializedSize();
  }

  public static int computeInt32Size(int paramInt1, int paramInt2)
  {
    return computeTagSize(paramInt1) + computeInt32SizeNoTag(paramInt2);
  }

  public static int computeInt32SizeNoTag(int paramInt)
  {
    if (paramInt >= 0)
      return computeRawVarint32Size(paramInt);
    return 10;
  }

  public static int computeInt64Size(int paramInt, long paramLong)
  {
    return computeTagSize(paramInt) + computeInt64SizeNoTag(paramLong);
  }

  public static int computeInt64SizeNoTag(long paramLong)
  {
    return computeRawVarint64Size(paramLong);
  }

  public static int computeMessageSize(int paramInt, MessageNano paramMessageNano)
  {
    return computeTagSize(paramInt) + computeMessageSizeNoTag(paramMessageNano);
  }

  public static int computeMessageSizeNoTag(MessageNano paramMessageNano)
  {
    int i = paramMessageNano.getSerializedSize();
    return i + computeRawVarint32Size(i);
  }

  public static int computeRawVarint32Size(int paramInt)
  {
    if ((paramInt & 0xFFFFFF80) == 0)
      return 1;
    if ((paramInt & 0xFFFFC000) == 0)
      return 2;
    if ((0xFFE00000 & paramInt) == 0)
      return 3;
    if ((0xF0000000 & paramInt) == 0)
      return 4;
    return 5;
  }

  public static int computeRawVarint64Size(long paramLong)
  {
    if ((0xFFFFFF80 & paramLong) == 0L)
      return 1;
    if ((0xFFFFC000 & paramLong) == 0L)
      return 2;
    if ((0xFFE00000 & paramLong) == 0L)
      return 3;
    if ((0xF0000000 & paramLong) == 0L)
      return 4;
    if ((0x0 & paramLong) == 0L)
      return 5;
    if ((0x0 & paramLong) == 0L)
      return 6;
    if ((0x0 & paramLong) == 0L)
      return 7;
    if ((0x0 & paramLong) == 0L)
      return 8;
    if ((0x0 & paramLong) == 0L)
      return 9;
    return 10;
  }

  public static int computeSFixed32Size(int paramInt1, int paramInt2)
  {
    return computeTagSize(paramInt1) + computeSFixed32SizeNoTag(paramInt2);
  }

  public static int computeSFixed32SizeNoTag(int paramInt)
  {
    return 4;
  }

  public static int computeSFixed64Size(int paramInt, long paramLong)
  {
    return computeTagSize(paramInt) + computeSFixed64SizeNoTag(paramLong);
  }

  public static int computeSFixed64SizeNoTag(long paramLong)
  {
    return 8;
  }

  public static int computeSInt32Size(int paramInt1, int paramInt2)
  {
    return computeTagSize(paramInt1) + computeSInt32SizeNoTag(paramInt2);
  }

  public static int computeSInt32SizeNoTag(int paramInt)
  {
    return computeRawVarint32Size(encodeZigZag32(paramInt));
  }

  public static int computeSInt64Size(int paramInt, long paramLong)
  {
    return computeTagSize(paramInt) + computeSInt64SizeNoTag(paramLong);
  }

  public static int computeSInt64SizeNoTag(long paramLong)
  {
    return computeRawVarint64Size(encodeZigZag64(paramLong));
  }

  public static int computeStringSize(int paramInt, String paramString)
  {
    return computeTagSize(paramInt) + computeStringSizeNoTag(paramString);
  }

  public static int computeStringSizeNoTag(String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes("UTF-8");
      int i = computeRawVarint32Size(arrayOfByte.length);
      int j = arrayOfByte.length;
      return i + j;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new RuntimeException("UTF-8 not supported.");
  }

  public static int computeTagSize(int paramInt)
  {
    return computeRawVarint32Size(WireFormatNano.makeTag(paramInt, 0));
  }

  public static int computeUInt32Size(int paramInt1, int paramInt2)
  {
    return computeTagSize(paramInt1) + computeUInt32SizeNoTag(paramInt2);
  }

  public static int computeUInt32SizeNoTag(int paramInt)
  {
    return computeRawVarint32Size(paramInt);
  }

  public static int computeUInt64Size(int paramInt, long paramLong)
  {
    return computeTagSize(paramInt) + computeUInt64SizeNoTag(paramLong);
  }

  public static int computeUInt64SizeNoTag(long paramLong)
  {
    return computeRawVarint64Size(paramLong);
  }

  public static int encodeZigZag32(int paramInt)
  {
    return paramInt << 1 ^ paramInt >> 31;
  }

  public static long encodeZigZag64(long paramLong)
  {
    return paramLong << 1 ^ paramLong >> 63;
  }

  public static CodedOutputByteBufferNano newInstance(byte[] paramArrayOfByte)
  {
    return newInstance(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public static CodedOutputByteBufferNano newInstance(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new CodedOutputByteBufferNano(paramArrayOfByte, paramInt1, paramInt2);
  }

  public void checkNoSpaceLeft()
  {
    if (spaceLeft() != 0)
      throw new IllegalStateException("Did not write as much data as expected.");
  }

  public int spaceLeft()
  {
    return this.limit - this.position;
  }

  public void writeBool(int paramInt, boolean paramBoolean)
    throws IOException
  {
    writeTag(paramInt, 0);
    writeBoolNoTag(paramBoolean);
  }

  public void writeBoolNoTag(boolean paramBoolean)
    throws IOException
  {
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      writeRawByte(i);
      return;
    }
  }

  public void writeByteArray(int paramInt, byte[] paramArrayOfByte)
    throws IOException
  {
    writeTag(paramInt, 2);
    writeByteArrayNoTag(paramArrayOfByte);
  }

  public void writeByteArrayNoTag(byte[] paramArrayOfByte)
    throws IOException
  {
    writeRawVarint32(paramArrayOfByte.length);
    writeRawBytes(paramArrayOfByte);
  }

  public void writeBytes(int paramInt, byte[] paramArrayOfByte)
    throws IOException
  {
    writeTag(paramInt, 2);
    writeBytesNoTag(paramArrayOfByte);
  }

  public void writeBytesNoTag(byte[] paramArrayOfByte)
    throws IOException
  {
    writeRawVarint32(paramArrayOfByte.length);
    writeRawBytes(paramArrayOfByte);
  }

  public void writeDouble(int paramInt, double paramDouble)
    throws IOException
  {
    writeTag(paramInt, 1);
    writeDoubleNoTag(paramDouble);
  }

  public void writeDoubleNoTag(double paramDouble)
    throws IOException
  {
    writeRawLittleEndian64(Double.doubleToLongBits(paramDouble));
  }

  public void writeEnum(int paramInt1, int paramInt2)
    throws IOException
  {
    writeTag(paramInt1, 0);
    writeEnumNoTag(paramInt2);
  }

  public void writeEnumNoTag(int paramInt)
    throws IOException
  {
    writeRawVarint32(paramInt);
  }

  public void writeFixed32(int paramInt1, int paramInt2)
    throws IOException
  {
    writeTag(paramInt1, 5);
    writeFixed32NoTag(paramInt2);
  }

  public void writeFixed32NoTag(int paramInt)
    throws IOException
  {
    writeRawLittleEndian32(paramInt);
  }

  public void writeFixed64(int paramInt, long paramLong)
    throws IOException
  {
    writeTag(paramInt, 1);
    writeFixed64NoTag(paramLong);
  }

  public void writeFixed64NoTag(long paramLong)
    throws IOException
  {
    writeRawLittleEndian64(paramLong);
  }

  public void writeFloat(int paramInt, float paramFloat)
    throws IOException
  {
    writeTag(paramInt, 5);
    writeFloatNoTag(paramFloat);
  }

  public void writeFloatNoTag(float paramFloat)
    throws IOException
  {
    writeRawLittleEndian32(Float.floatToIntBits(paramFloat));
  }

  public void writeGroup(int paramInt, MessageNano paramMessageNano)
    throws IOException
  {
    writeTag(paramInt, 3);
    writeGroupNoTag(paramMessageNano);
    writeTag(paramInt, 4);
  }

  public void writeGroupNoTag(MessageNano paramMessageNano)
    throws IOException
  {
    paramMessageNano.writeTo(this);
  }

  public void writeInt32(int paramInt1, int paramInt2)
    throws IOException
  {
    writeTag(paramInt1, 0);
    writeInt32NoTag(paramInt2);
  }

  public void writeInt32NoTag(int paramInt)
    throws IOException
  {
    if (paramInt >= 0)
    {
      writeRawVarint32(paramInt);
      return;
    }
    writeRawVarint64(paramInt);
  }

  public void writeInt64(int paramInt, long paramLong)
    throws IOException
  {
    writeTag(paramInt, 0);
    writeInt64NoTag(paramLong);
  }

  public void writeInt64NoTag(long paramLong)
    throws IOException
  {
    writeRawVarint64(paramLong);
  }

  public void writeMessage(int paramInt, MessageNano paramMessageNano)
    throws IOException
  {
    writeTag(paramInt, 2);
    writeMessageNoTag(paramMessageNano);
  }

  public void writeMessageNoTag(MessageNano paramMessageNano)
    throws IOException
  {
    writeRawVarint32(paramMessageNano.getCachedSize());
    paramMessageNano.writeTo(this);
  }

  public void writeRawByte(byte paramByte)
    throws IOException
  {
    if (this.position == this.limit)
      throw new OutOfSpaceException(this.position, this.limit);
    byte[] arrayOfByte = this.buffer;
    int i = this.position;
    this.position = (i + 1);
    arrayOfByte[i] = paramByte;
  }

  public void writeRawByte(int paramInt)
    throws IOException
  {
    writeRawByte((byte)paramInt);
  }

  public void writeRawBytes(byte[] paramArrayOfByte)
    throws IOException
  {
    writeRawBytes(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public void writeRawBytes(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (this.limit - this.position >= paramInt2)
    {
      System.arraycopy(paramArrayOfByte, paramInt1, this.buffer, this.position, paramInt2);
      this.position = (paramInt2 + this.position);
      return;
    }
    throw new OutOfSpaceException(this.position, this.limit);
  }

  public void writeRawLittleEndian32(int paramInt)
    throws IOException
  {
    writeRawByte(paramInt & 0xFF);
    writeRawByte(0xFF & paramInt >> 8);
    writeRawByte(0xFF & paramInt >> 16);
    writeRawByte(0xFF & paramInt >> 24);
  }

  public void writeRawLittleEndian64(long paramLong)
    throws IOException
  {
    writeRawByte(0xFF & (int)paramLong);
    writeRawByte(0xFF & (int)(paramLong >> 8));
    writeRawByte(0xFF & (int)(paramLong >> 16));
    writeRawByte(0xFF & (int)(paramLong >> 24));
    writeRawByte(0xFF & (int)(paramLong >> 32));
    writeRawByte(0xFF & (int)(paramLong >> 40));
    writeRawByte(0xFF & (int)(paramLong >> 48));
    writeRawByte(0xFF & (int)(paramLong >> 56));
  }

  public void writeRawVarint32(int paramInt)
    throws IOException
  {
    while (true)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        writeRawByte(paramInt);
        return;
      }
      writeRawByte(0x80 | paramInt & 0x7F);
      paramInt >>>= 7;
    }
  }

  public void writeRawVarint64(long paramLong)
    throws IOException
  {
    while (true)
    {
      if ((0xFFFFFF80 & paramLong) == 0L)
      {
        writeRawByte((int)paramLong);
        return;
      }
      writeRawByte(0x80 | 0x7F & (int)paramLong);
      paramLong >>>= 7;
    }
  }

  public void writeSFixed32(int paramInt1, int paramInt2)
    throws IOException
  {
    writeTag(paramInt1, 5);
    writeSFixed32NoTag(paramInt2);
  }

  public void writeSFixed32NoTag(int paramInt)
    throws IOException
  {
    writeRawLittleEndian32(paramInt);
  }

  public void writeSFixed64(int paramInt, long paramLong)
    throws IOException
  {
    writeTag(paramInt, 1);
    writeSFixed64NoTag(paramLong);
  }

  public void writeSFixed64NoTag(long paramLong)
    throws IOException
  {
    writeRawLittleEndian64(paramLong);
  }

  public void writeSInt32(int paramInt1, int paramInt2)
    throws IOException
  {
    writeTag(paramInt1, 0);
    writeSInt32NoTag(paramInt2);
  }

  public void writeSInt32NoTag(int paramInt)
    throws IOException
  {
    writeRawVarint32(encodeZigZag32(paramInt));
  }

  public void writeSInt64(int paramInt, long paramLong)
    throws IOException
  {
    writeTag(paramInt, 0);
    writeSInt64NoTag(paramLong);
  }

  public void writeSInt64NoTag(long paramLong)
    throws IOException
  {
    writeRawVarint64(encodeZigZag64(paramLong));
  }

  public void writeString(int paramInt, String paramString)
    throws IOException
  {
    writeTag(paramInt, 2);
    writeStringNoTag(paramString);
  }

  public void writeStringNoTag(String paramString)
    throws IOException
  {
    byte[] arrayOfByte = paramString.getBytes("UTF-8");
    writeRawVarint32(arrayOfByte.length);
    writeRawBytes(arrayOfByte);
  }

  public void writeTag(int paramInt1, int paramInt2)
    throws IOException
  {
    writeRawVarint32(WireFormatNano.makeTag(paramInt1, paramInt2));
  }

  public void writeUInt32(int paramInt1, int paramInt2)
    throws IOException
  {
    writeTag(paramInt1, 0);
    writeUInt32NoTag(paramInt2);
  }

  public void writeUInt32NoTag(int paramInt)
    throws IOException
  {
    writeRawVarint32(paramInt);
  }

  public void writeUInt64(int paramInt, long paramLong)
    throws IOException
  {
    writeTag(paramInt, 0);
    writeUInt64NoTag(paramLong);
  }

  public void writeUInt64NoTag(long paramLong)
    throws IOException
  {
    writeRawVarint64(paramLong);
  }

  public static class OutOfSpaceException extends IOException
  {
    private static final long serialVersionUID = -6947486886997889499L;

    OutOfSpaceException(int paramInt1, int paramInt2)
    {
      super();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.protobuf.nano.CodedOutputByteBufferNano
 * JD-Core Version:    0.6.2
 */