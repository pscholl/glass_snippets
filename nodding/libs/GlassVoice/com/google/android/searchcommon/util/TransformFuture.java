package com.google.android.searchcommon.util;

import com.google.common.base.Function;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class TransformFuture<V, T>
  implements Future<T>
{
  private final Function<V, T> mFunction;
  private final Future<V> mFuture;

  public TransformFuture(Future<V> paramFuture, Function<V, T> paramFunction)
  {
    this.mFuture = paramFuture;
    this.mFunction = paramFunction;
  }

  public boolean cancel(boolean paramBoolean)
  {
    return this.mFuture.cancel(paramBoolean);
  }

  public T get()
    throws InterruptedException, ExecutionException
  {
    return this.mFunction.apply(this.mFuture.get());
  }

  public T get(long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException, ExecutionException, TimeoutException
  {
    return this.mFunction.apply(this.mFuture.get(paramLong, paramTimeUnit));
  }

  public boolean isCancelled()
  {
    return this.mFuture.isCancelled();
  }

  public boolean isDone()
  {
    return this.mFuture.isDone();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.searchcommon.util.TransformFuture
 * JD-Core Version:    0.6.2
 */