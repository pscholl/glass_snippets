package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.AbstractQueuedSynchronizer;
import javax.annotation.Nullable;

public abstract class AbstractFuture<V>
  implements ListenableFuture<V>
{
  private final ExecutionList executionList = new ExecutionList();
  private final Sync<V> sync = new Sync();

  static final CancellationException cancellationExceptionWithCause(@Nullable String paramString, @Nullable Throwable paramThrowable)
  {
    CancellationException localCancellationException = new CancellationException(paramString);
    localCancellationException.initCause(paramThrowable);
    return localCancellationException;
  }

  public void addListener(Runnable paramRunnable, Executor paramExecutor)
  {
    this.executionList.add(paramRunnable, paramExecutor);
  }

  public boolean cancel(boolean paramBoolean)
  {
    if (!this.sync.cancel(paramBoolean))
      return false;
    this.executionList.execute();
    if (paramBoolean)
      interruptTask();
    return true;
  }

  public V get()
    throws InterruptedException, ExecutionException
  {
    return this.sync.get();
  }

  public V get(long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException, TimeoutException, ExecutionException
  {
    return this.sync.get(paramTimeUnit.toNanos(paramLong));
  }

  protected void interruptTask()
  {
  }

  public boolean isCancelled()
  {
    return this.sync.isCancelled();
  }

  public boolean isDone()
  {
    return this.sync.isDone();
  }

  protected boolean set(@Nullable V paramV)
  {
    boolean bool = this.sync.set(paramV);
    if (bool)
      this.executionList.execute();
    return bool;
  }

  protected boolean setException(Throwable paramThrowable)
  {
    boolean bool = this.sync.setException((Throwable)Preconditions.checkNotNull(paramThrowable));
    if (bool)
      this.executionList.execute();
    if ((paramThrowable instanceof Error))
      throw ((Error)paramThrowable);
    return bool;
  }

  protected final boolean wasInterrupted()
  {
    return this.sync.wasInterrupted();
  }

  static final class Sync<V> extends AbstractQueuedSynchronizer
  {
    static final int CANCELLED = 4;
    static final int COMPLETED = 2;
    static final int COMPLETING = 1;
    static final int INTERRUPTED = 8;
    static final int RUNNING;
    private static final long serialVersionUID;
    private Throwable exception;
    private V value;

    private boolean complete(@Nullable V paramV, @Nullable Throwable paramThrowable, int paramInt)
    {
      boolean bool = compareAndSetState(0, 1);
      if (bool)
      {
        this.value = paramV;
        if ((paramInt & 0xC) != 0)
          paramThrowable = new CancellationException("Future.cancel() was called.");
        this.exception = paramThrowable;
        releaseShared(paramInt);
      }
      while (getState() != 1)
        return bool;
      acquireShared(-1);
      return bool;
    }

    private V getValue()
      throws CancellationException, ExecutionException
    {
      int i = getState();
      switch (i)
      {
      default:
        throw new IllegalStateException("Error, synchronizer in invalid state: " + i);
      case 2:
        if (this.exception != null)
          throw new ExecutionException(this.exception);
        return this.value;
      case 4:
      case 8:
      }
      throw AbstractFuture.cancellationExceptionWithCause("Task was cancelled.", this.exception);
    }

    boolean cancel(boolean paramBoolean)
    {
      if (paramBoolean);
      for (int i = 8; ; i = 4)
        return complete(null, null, i);
    }

    V get()
      throws CancellationException, ExecutionException, InterruptedException
    {
      acquireSharedInterruptibly(-1);
      return getValue();
    }

    V get(long paramLong)
      throws TimeoutException, CancellationException, ExecutionException, InterruptedException
    {
      if (!tryAcquireSharedNanos(-1, paramLong))
        throw new TimeoutException("Timeout waiting for task.");
      return getValue();
    }

    boolean isCancelled()
    {
      return (0xC & getState()) != 0;
    }

    boolean isDone()
    {
      return (0xE & getState()) != 0;
    }

    boolean set(@Nullable V paramV)
    {
      return complete(paramV, null, 2);
    }

    boolean setException(Throwable paramThrowable)
    {
      return complete(null, paramThrowable, 2);
    }

    protected int tryAcquireShared(int paramInt)
    {
      if (isDone())
        return 1;
      return -1;
    }

    protected boolean tryReleaseShared(int paramInt)
    {
      setState(paramInt);
      return true;
    }

    boolean wasInterrupted()
    {
      return getState() == 8;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.AbstractFuture
 * JD-Core Version:    0.6.2
 */