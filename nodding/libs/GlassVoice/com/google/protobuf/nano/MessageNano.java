package com.google.protobuf.nano;

import java.io.IOException;

public abstract class MessageNano
{
  public static final <T extends MessageNano> T mergeFrom(T paramT, byte[] paramArrayOfByte)
    throws InvalidProtocolBufferNanoException
  {
    return mergeFrom(paramT, paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public static final <T extends MessageNano> T mergeFrom(T paramT, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws InvalidProtocolBufferNanoException
  {
    try
    {
      CodedInputByteBufferNano localCodedInputByteBufferNano = CodedInputByteBufferNano.newInstance(paramArrayOfByte, paramInt1, paramInt2);
      paramT.mergeFrom(localCodedInputByteBufferNano);
      localCodedInputByteBufferNano.checkLastTagWas(0);
      return paramT;
    }
    catch (InvalidProtocolBufferNanoException localInvalidProtocolBufferNanoException)
    {
      throw localInvalidProtocolBufferNanoException;
    }
    catch (IOException localIOException)
    {
    }
    throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
  }

  public static final void toByteArray(MessageNano paramMessageNano, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      CodedOutputByteBufferNano localCodedOutputByteBufferNano = CodedOutputByteBufferNano.newInstance(paramArrayOfByte, paramInt1, paramInt2);
      paramMessageNano.writeTo(localCodedOutputByteBufferNano);
      localCodedOutputByteBufferNano.checkNoSpaceLeft();
      return;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", localIOException);
    }
  }

  public static final byte[] toByteArray(MessageNano paramMessageNano)
  {
    byte[] arrayOfByte = new byte[paramMessageNano.getSerializedSize()];
    toByteArray(paramMessageNano, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }

  public abstract int getCachedSize();

  public abstract int getSerializedSize();

  public abstract MessageNano mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
    throws IOException;

  public String toString()
  {
    return MessageNanoPrinter.print(this);
  }

  public abstract void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
    throws IOException;
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.protobuf.nano.MessageNano
 * JD-Core Version:    0.6.2
 */