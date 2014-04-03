package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@Beta
public abstract class AbstractCheckedFuture<V, X extends Exception> extends ForwardingListenableFuture.SimpleForwardingListenableFuture<V>
  implements CheckedFuture<V, X>
{
  protected AbstractCheckedFuture(ListenableFuture<V> paramListenableFuture)
  {
    super(paramListenableFuture);
  }

  public V checkedGet()
    throws Exception
  {
    try
    {
      Object localObject = get();
      return localObject;
    }
    catch (InterruptedException localInterruptedException)
    {
      Thread.currentThread().interrupt();
      throw mapException(localInterruptedException);
    }
    catch (CancellationException localCancellationException)
    {
      throw mapException(localCancellationException);
    }
    catch (ExecutionException localExecutionException)
    {
      throw mapException(localExecutionException);
    }
  }

  public V checkedGet(long paramLong, TimeUnit paramTimeUnit)
    throws TimeoutException, Exception
  {
    try
    {
      Object localObject = get(paramLong, paramTimeUnit);
      return localObject;
    }
    catch (InterruptedException localInterruptedException)
    {
      Thread.currentThread().interrupt();
      throw mapException(localInterruptedException);
    }
    catch (CancellationException localCancellationException)
    {
      throw mapException(localCancellationException);
    }
    catch (ExecutionException localExecutionException)
    {
      throw mapException(localExecutionException);
    }
  }

  protected abstract X mapException(Exception paramException);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.AbstractCheckedFuture
 * JD-Core Version:    0.6.2
 */