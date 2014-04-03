package com.google.protobuf.micro;

import java.io.IOException;

public abstract class MessageMicro
{
  public abstract int getCachedSize();

  public abstract int getSerializedSize();

  public abstract MessageMicro mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
    throws IOException;

  public MessageMicro mergeFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferMicroException
  {
    return mergeFrom(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public MessageMicro mergeFrom(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws InvalidProtocolBufferMicroException
  {
    try
    {
      CodedInputStreamMicro localCodedInputStreamMicro = CodedInputStreamMicro.newInstance(paramArrayOfByte, paramInt1, paramInt2);
      mergeFrom(localCodedInputStreamMicro);
      localCodedInputStreamMicro.checkLastTagWas(0);
      return this;
    }
    catch (InvalidProtocolBufferMicroException localInvalidProtocolBufferMicroException)
    {
      throw localInvalidProtocolBufferMicroException;
    }
    catch (IOException localIOException)
    {
    }
    throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
  }

  protected boolean parseUnknownField(CodedInputStreamMicro paramCodedInputStreamMicro, int paramInt)
    throws IOException
  {
    return paramCodedInputStreamMicro.skipField(paramInt);
  }

  public void toByteArray(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      CodedOutputStreamMicro localCodedOutputStreamMicro = CodedOutputStreamMicro.newInstance(paramArrayOfByte, paramInt1, paramInt2);
      writeTo(localCodedOutputStreamMicro);
      localCodedOutputStreamMicro.checkNoSpaceLeft();
      return;
    }
    catch (IOException localIOException)
    {
    }
    throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).");
  }

  public byte[] toByteArray()
  {
    byte[] arrayOfByte = new byte[getSerializedSize()];
    toByteArray(arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }

  public abstract void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
    throws IOException;
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.protobuf.micro.MessageMicro
 * JD-Core Version:    0.6.2
 */