package com.google.glass.util;

import com.google.protobuf.nano.MessageNano;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class DelimitedProtoIo
{
  public static final int DEFAULT_BUFFER_SIZE = 4096;

  private static int computePreferredBufferSize(int paramInt)
  {
    if (paramInt > 4096)
      paramInt = 4096;
    return paramInt;
  }

  private static int computeRawVarint32Size(int paramInt)
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

  public static <T extends MessageNano> T parseDelimitedFrom(T paramT, InputStream paramInputStream)
    throws IOException
  {
    int i = paramInputStream.read();
    if (i == -1)
      return null;
    int j = readRawVarint32(i, paramInputStream);
    byte[] arrayOfByte = new byte[j];
    int k = 0;
    while (k < j)
    {
      int m = paramInputStream.read(arrayOfByte, k, j - k);
      if (m == -1)
        throw new IOException();
      k += m;
    }
    return MessageNano.mergeFrom(paramT, arrayOfByte);
  }

  private static int readRawVarint32(int paramInt, InputStream paramInputStream)
    throws IOException
  {
    if ((paramInt & 0x80) == 0)
    {
      i = paramInt;
      return i;
    }
    int i = paramInt & 0x7F;
    for (int j = 7; ; j += 7)
    {
      if (j >= 32)
        break label74;
      int m = paramInputStream.read();
      if (m == -1)
        throw new IOException();
      i |= (m & 0x7F) << j;
      if ((m & 0x80) == 0)
        break;
    }
    label74: int k;
    do
    {
      j += 7;
      if (j >= 64)
        break;
      k = paramInputStream.read();
      if (k == -1)
        throw new IOException();
    }
    while ((k & 0x80) != 0);
    return i;
    throw new IOException();
  }

  public static void writeDelimitedTo(MessageNano paramMessageNano, OutputStream paramOutputStream)
    throws IOException
  {
    int i = paramMessageNano.getCachedSize();
    BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(paramOutputStream, computePreferredBufferSize(i + computeRawVarint32Size(i)));
    writeRawVarint32(i, localBufferedOutputStream);
    localBufferedOutputStream.write(MessageNano.toByteArray(paramMessageNano));
    localBufferedOutputStream.flush();
  }

  private static void writeRawVarint32(int paramInt, OutputStream paramOutputStream)
    throws IOException
  {
    while (true)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        paramOutputStream.write(paramInt);
        return;
      }
      paramOutputStream.write(0x80 | paramInt & 0x7F);
      paramInt >>>= 7;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.DelimitedProtoIo
 * JD-Core Version:    0.6.2
 */