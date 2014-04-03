package com.google.glass.net;

import com.google.protobuf.nano.MessageNano;

public class SimpleProtoResponseHandler<T extends MessageNano>
  implements ProtoResponseHandler<T>
{
  public void onCancel()
  {
  }

  public void onError(int paramInt)
  {
  }

  public void onSuccess(T paramT)
  {
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.net.SimpleProtoResponseHandler
 * JD-Core Version:    0.6.2
 */