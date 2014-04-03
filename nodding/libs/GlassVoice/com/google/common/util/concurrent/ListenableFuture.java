package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;

public abstract interface ListenableFuture<V> extends Future<V>
{
  public abstract void addListener(Runnable paramRunnable, Executor paramExecutor);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.ListenableFuture
 * JD-Core Version:    0.6.2
 */