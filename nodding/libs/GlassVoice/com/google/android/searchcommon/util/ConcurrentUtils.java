package com.google.android.searchcommon.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;
import android.util.Log;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import java.lang.reflect.UndeclaredThrowableException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class ConcurrentUtils
{
  private static final boolean DEBUG_EXECUTOR_TERMINATION = false;
  private static final boolean DEBUG_TASK_QUEUE = false;
  private static final String TAG = "Search.ConcurrentUtils";
  private static final int WARNING_QUEUE_FACTOR = 2;

  public static <V> Callable<V> asCallable(Supplier<V> paramSupplier)
  {
    return new Callable()
    {
      public V call()
        throws Exception
      {
        return this.val$supplier.get();
      }
    };
  }

  public static <V> List<Future<V>> asFutures(ExecutorService paramExecutorService, Supplier<V>[] paramArrayOfSupplier)
  {
    ArrayList localArrayList = new ArrayList(paramArrayOfSupplier.length);
    int i = paramArrayOfSupplier.length;
    for (int j = 0; j < i; j++)
      localArrayList.add(paramExecutorService.submit(asCallable(paramArrayOfSupplier[j])));
    return localArrayList;
  }

  public static void awaitTermination(ExecutorService paramExecutorService)
  {
    Preconditions.checkState(paramExecutorService.isShutdown());
    try
    {
      if (!paramExecutorService.awaitTermination(30L, TimeUnit.SECONDS))
        throw new RuntimeException("Blocked on executor shutdown.");
    }
    catch (InterruptedException localInterruptedException)
    {
      localInterruptedException = localInterruptedException;
      paramExecutorService.shutdownNow();
      Thread.currentThread().interrupt();
      return;
    }
    finally
    {
    }
  }

  public static Handler createBackgroundHandler(String paramString)
  {
    HandlerThread localHandlerThread = new HandlerThread(paramString, 10);
    localHandlerThread.start();
    return new Handler(localHandlerThread.getLooper());
  }

  private static ThreadFactory createBackgroundThreadFactory(String paramString)
  {
    return new ThreadFactory()
    {
      private AtomicInteger counter = new AtomicInteger(0);

      public Thread newThread(final Runnable paramAnonymousRunnable)
      {
        return new Thread(this.val$threadName + "-" + this.counter.incrementAndGet())
        {
          public void run()
          {
            Process.setThreadPriority(10);
            paramAnonymousRunnable.run();
          }
        };
      }
    };
  }

  public static ScheduledExecutorService createSafeScheduledExecutorService(int paramInt, String paramString)
  {
    return createSafeScheduledExecutorService(paramInt, createBackgroundThreadFactory(paramString));
  }

  public static ScheduledExecutorService createSafeScheduledExecutorService(int paramInt, ThreadFactory paramThreadFactory)
  {
    if (paramInt > 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      return new ScheduledThreadPoolExecutor(paramInt, paramThreadFactory)
      {
        protected void afterExecute(Runnable paramAnonymousRunnable, Throwable paramAnonymousThrowable)
        {
          if ((paramAnonymousThrowable instanceof RuntimeException))
            throw ((RuntimeException)paramAnonymousThrowable);
          Future localFuture;
          if ((paramAnonymousRunnable instanceof Future))
            localFuture = (Future)paramAnonymousRunnable;
          try
          {
            localFuture.get();
            label31: super.afterExecute(paramAnonymousRunnable, paramAnonymousThrowable);
            return;
          }
          catch (ExecutionException localExecutionException)
          {
            throw new RuntimeException(localExecutionException);
          }
          catch (InterruptedException localInterruptedException)
          {
            while (true)
              Thread.currentThread().interrupt();
          }
          catch (CancellationException localCancellationException)
          {
            break label31;
          }
        }

        public void execute(Runnable paramAnonymousRunnable)
        {
          getQueue().size();
          super.execute(paramAnonymousRunnable);
          if (getQueue().size() > this.val$MAX_EXPECTED_QUEUE_SIZE)
            Log.w("Search.ConcurrentUtils", "Executor queue length is now " + this.val$MAX_EXPECTED_QUEUE_SIZE + ". Perhaps some tasks are too long, or the pool is too small. [" + Thread.currentThread().getName() + "]");
        }
      };
    }
  }

  public static RuntimeException launderCause(Throwable paramThrowable)
  {
    if ((paramThrowable instanceof Error))
      throw ((Error)paramThrowable);
    if ((paramThrowable instanceof RuntimeException))
      throw ((RuntimeException)paramThrowable);
    throw new UndeclaredThrowableException(paramThrowable);
  }

  public static ExecutorService newSingleThreadExecutor(String paramString)
  {
    return Executors.newSingleThreadExecutor(createBackgroundThreadFactory(paramString));
  }

  public static <V> Future<List<V>> successfulAsList(List<Future<V>> paramList)
  {
    return new FutureList(paramList, FutureList.Mode.ONLY_SUCCESSFUL);
  }

  public static <V, T> Future<T> transform(Future<V> paramFuture, Function<V, T> paramFunction)
  {
    return new TransformFuture(paramFuture, paramFunction);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.searchcommon.util.ConcurrentUtils
 * JD-Core Version:    0.6.2
 */