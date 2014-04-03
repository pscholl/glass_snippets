package com.google.common.util.concurrent;

import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public abstract interface ListeningExecutorService extends ExecutorService
{
  public abstract <T> List<Future<T>> invokeAll(Collection<Callable<T>> paramCollection)
    throws InterruptedException;

  public abstract <T> List<Future<T>> invokeAll(Collection<Callable<T>> paramCollection, long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException;

  public abstract ListenableFuture<?> submit(Runnable paramRunnable);

  public abstract <T> ListenableFuture<T> submit(Runnable paramRunnable, T paramT);

  public abstract <T> ListenableFuture<T> submit(Callable<T> paramCallable);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.ListeningExecutorService
 * JD-Core Version:    0.6.2
 */