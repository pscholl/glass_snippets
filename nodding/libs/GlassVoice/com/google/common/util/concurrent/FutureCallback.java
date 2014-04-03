package com.google.common.util.concurrent;

public abstract interface FutureCallback<V>
{
  public abstract void onFailure(Throwable paramThrowable);

  public abstract void onSuccess(V paramV);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.FutureCallback
 * JD-Core Version:    0.6.2
 */