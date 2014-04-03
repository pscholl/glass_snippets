package com.google.glass.net;

import com.google.glass.predicates.Assert;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;

public class ProtoParser<T extends MessageNano>
{
  private Provider<T> provider;

  public ProtoParser(Provider<T> paramProvider)
  {
    Assert.assertNotNull(paramProvider);
    this.provider = paramProvider;
  }

  public T parse(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferNanoException
  {
    MessageNano localMessageNano = (MessageNano)this.provider.provide();
    MessageNano.mergeFrom(localMessageNano, paramArrayOfByte);
    return localMessageNano;
  }

  public static abstract interface Provider<T>
  {
    public abstract T provide();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.net.ProtoParser
 * JD-Core Version:    0.6.2
 */