package com.google.glass.net;

import com.google.common.annotations.VisibleForTesting;
import com.google.protobuf.nano.MessageNano;
import junit.framework.Assert;

public class ProtoResponse<T extends MessageNano>
{
  private final Integer errorCode;
  private final T responseProto;

  @VisibleForTesting
  public ProtoResponse(Integer paramInteger, T paramT)
  {
    if ((paramInteger == null) || (paramT == null));
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      this.errorCode = paramInteger;
      this.responseProto = paramT;
      return;
    }
  }

  static <T extends MessageNano> ProtoResponse<T> cancel()
  {
    return new ProtoResponse(null, null);
  }

  static <T extends MessageNano> ProtoResponse<T> error(int paramInt)
  {
    Assert.assertNotNull(Integer.valueOf(paramInt));
    return new ProtoResponse(Integer.valueOf(paramInt), null);
  }

  static <T extends MessageNano> ProtoResponse<T> success(T paramT)
  {
    Assert.assertNotNull(paramT);
    return new ProtoResponse(null, paramT);
  }

  public int getErrorCode()
  {
    if (isError())
      return this.errorCode.intValue();
    return -2147483648;
  }

  public T getResponseProto()
  {
    return this.responseProto;
  }

  public boolean isCancelled()
  {
    return (this.errorCode == null) && (this.responseProto == null);
  }

  public boolean isError()
  {
    return this.errorCode != null;
  }

  public boolean isSuccess()
  {
    return this.responseProto != null;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.net.ProtoResponse
 * JD-Core Version:    0.6.2
 */