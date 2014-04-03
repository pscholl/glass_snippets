package com.x.google.common.io.protocol;

import com.x.google.common.io.BoundInputStream;
import com.x.google.common.io.Gunzipper;
import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InputStream;

public final class ProtoBufUtil
{
  public static boolean isGzipResponseSeen = false;

  public static ProtoBuf addProtoBuf(ProtoBuf paramProtoBuf, int paramInt)
  {
    ProtoBuf localProtoBuf = paramProtoBuf.createGroup(paramInt);
    paramProtoBuf.addProtoBuf(paramInt, localProtoBuf);
    return localProtoBuf;
  }

  public static ProtoBuf cloneProtoBuf(ProtoBuf paramProtoBuf)
    throws IOException
  {
    ProtoBuf localProtoBuf = new ProtoBuf(paramProtoBuf.getType());
    localProtoBuf.parse(paramProtoBuf.toByteArray());
    return localProtoBuf;
  }

  public static ProtoBuf createProtoBuf(ProtoBuf paramProtoBuf, int paramInt)
  {
    ProtoBuf localProtoBuf = paramProtoBuf.createGroup(paramInt);
    paramProtoBuf.setProtoBuf(paramInt, localProtoBuf);
    return localProtoBuf;
  }

  public static InputStream getInputStreamForProtoBufResponse(DataInput paramDataInput)
    throws IOException
  {
    int i = paramDataInput.readInt();
    Object localObject = new BoundInputStream((InputStream)paramDataInput, Math.abs(i));
    if (i < 0)
    {
      isGzipResponseSeen = true;
      localObject = Gunzipper.gunzip((InputStream)localObject);
    }
    return localObject;
  }

  public static long getProtoLongValueOrDefault(ProtoBuf paramProtoBuf, int paramInt, long paramLong)
  {
    if (paramProtoBuf != null);
    try
    {
      if (paramProtoBuf.has(paramInt))
      {
        long l = paramProtoBuf.getLong(paramInt);
        paramLong = l;
      }
      return paramLong;
    }
    catch (ClassCastException localClassCastException)
    {
      return paramLong;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    return paramLong;
  }

  public static long getProtoLongValueOrZero(ProtoBuf paramProtoBuf, int paramInt)
  {
    long l1 = 0L;
    if (paramProtoBuf != null);
    try
    {
      if (paramProtoBuf.has(paramInt))
      {
        long l2 = paramProtoBuf.getLong(paramInt);
        l1 = l2;
      }
      return l1;
    }
    catch (ClassCastException localClassCastException)
    {
      return l1;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    return l1;
  }

  public static int getProtoValueOrDefault(ProtoBuf paramProtoBuf, int paramInt1, int paramInt2)
  {
    if (paramProtoBuf != null);
    try
    {
      if (paramProtoBuf.has(paramInt1))
      {
        int i = paramProtoBuf.getInt(paramInt1);
        paramInt2 = i;
      }
      return paramInt2;
    }
    catch (ClassCastException localClassCastException)
    {
      return paramInt2;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    return paramInt2;
  }

  public static String getProtoValueOrEmpty(ProtoBuf paramProtoBuf, int paramInt)
  {
    if (paramProtoBuf != null);
    try
    {
      if (paramProtoBuf.has(paramInt))
        return paramProtoBuf.getString(paramInt);
      return "";
    }
    catch (ClassCastException localClassCastException)
    {
    }
    return "";
  }

  public static boolean getProtoValueOrFalse(ProtoBuf paramProtoBuf, int paramInt)
  {
    boolean bool1 = false;
    if (paramProtoBuf != null);
    try
    {
      boolean bool2 = paramProtoBuf.has(paramInt);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = paramProtoBuf.getBool(paramInt);
        bool1 = bool3;
      }
      return bool1;
    }
    catch (ClassCastException localClassCastException)
    {
      return false;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    return false;
  }

  public static long getProtoValueOrNegativeOne(ProtoBuf paramProtoBuf, int paramInt)
  {
    long l1 = -1L;
    if (paramProtoBuf != null);
    try
    {
      if (paramProtoBuf.has(paramInt))
      {
        long l2 = paramProtoBuf.getLong(paramInt);
        l1 = l2;
      }
      return l1;
    }
    catch (ClassCastException localClassCastException)
    {
      return l1;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    return l1;
  }

  public static String getProtoValueOrNull(ProtoBuf paramProtoBuf, int paramInt)
  {
    Object localObject = null;
    if (paramProtoBuf != null);
    try
    {
      boolean bool = paramProtoBuf.has(paramInt);
      localObject = null;
      if (bool)
      {
        String str = paramProtoBuf.getString(paramInt);
        localObject = str;
      }
      return localObject;
    }
    catch (ClassCastException localClassCastException)
    {
    }
    return null;
  }

  public static String getProtoValueOrNull(ProtoBuf paramProtoBuf, int paramInt1, int paramInt2)
  {
    Object localObject = null;
    if (paramProtoBuf != null);
    try
    {
      boolean bool = paramProtoBuf.has(paramInt1);
      localObject = null;
      if (bool)
      {
        int i = paramProtoBuf.getCount(paramInt1);
        localObject = null;
        if (i > paramInt2)
        {
          String str = paramProtoBuf.getString(paramInt1, paramInt2);
          localObject = str;
        }
      }
      return localObject;
    }
    catch (ClassCastException localClassCastException)
    {
    }
    return null;
  }

  public static int getProtoValueOrZero(ProtoBuf paramProtoBuf, int paramInt)
  {
    return getProtoValueOrDefault(paramProtoBuf, paramInt, 0);
  }

  public static ProtoBuf getSubProtoOrNull(ProtoBuf paramProtoBuf, int paramInt)
  {
    if ((paramProtoBuf != null) && (paramProtoBuf.has(paramInt)))
      return paramProtoBuf.getProtoBuf(paramInt);
    return null;
  }

  public static int getSubProtoValueOrDefault(ProtoBuf paramProtoBuf, int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      int i = getProtoValueOrDefault(getSubProtoOrNull(paramProtoBuf, paramInt1), paramInt2, paramInt3);
      return i;
    }
    catch (ClassCastException localClassCastException)
    {
      return paramInt3;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    return paramInt3;
  }

  public static String getSubProtoValueOrEmpty(ProtoBuf paramProtoBuf, int paramInt1, int paramInt2)
  {
    try
    {
      String str = getProtoValueOrEmpty(getSubProtoOrNull(paramProtoBuf, paramInt1), paramInt2);
      return str;
    }
    catch (ClassCastException localClassCastException)
    {
    }
    return "";
  }

  public static long getSubProtoValueOrNegativeOne(ProtoBuf paramProtoBuf, int paramInt1, int paramInt2)
  {
    try
    {
      long l = getProtoValueOrNegativeOne(getSubProtoOrNull(paramProtoBuf, paramInt1), paramInt2);
      return l;
    }
    catch (ClassCastException localClassCastException)
    {
      return -1L;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    return -1L;
  }

  public static int readNextProtoBuf(ProtoBufType paramProtoBufType, InputStream paramInputStream, ProtoBuf paramProtoBuf)
    throws IOException
  {
    long l = ProtoBuf.readVarInt(paramInputStream, true);
    if (l == -1L)
      return -1;
    if ((0x7 & l) != 2L)
      throw new IOException("Message expected");
    int i = (int)(l >>> 3);
    paramProtoBuf.setType((ProtoBufType)paramProtoBufType.getData(i));
    paramProtoBuf.parse(paramInputStream, (int)ProtoBuf.readVarInt(paramInputStream, false));
    return i;
  }

  public static ProtoBuf readProtoBufResponse(ProtoBufType paramProtoBufType, DataInput paramDataInput)
    throws IOException
  {
    ProtoBuf localProtoBuf = new ProtoBuf(paramProtoBufType);
    InputStream localInputStream = getInputStreamForProtoBufResponse(paramDataInput);
    localProtoBuf.parse(localInputStream);
    if (localInputStream.read() != -1)
      throw new IOException();
    return localProtoBuf;
  }

  public static void writeProtoBufToOutput(DataOutput paramDataOutput, ProtoBuf paramProtoBuf)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramProtoBuf.outputTo(localByteArrayOutputStream);
    byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
    paramDataOutput.writeInt(arrayOfByte.length);
    paramDataOutput.write(arrayOfByte);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.protocol.ProtoBufUtil
 * JD-Core Version:    0.6.2
 */