package com.google.glass.net;

import com.google.protobuf.nano.MessageNano;

public abstract interface ProtoResponseHandler<T extends MessageNano>
{
  public abstract void onCancel();

  public abstract void onError(int paramInt);

  public abstract void onSuccess(T paramT);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.net.ProtoResponseHandler
 * JD-Core Version:    0.6.2
 */