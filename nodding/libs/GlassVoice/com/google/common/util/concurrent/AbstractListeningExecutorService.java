package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.Nullable;

@Beta
public abstract class AbstractListeningExecutorService
  implements ListeningExecutorService
{
  public <T> List<Future<T>> invokeAll(Collection<Callable<T>> paramCollection)
    throws InterruptedException
  {
    if (paramCollection == null)
      throw new NullPointerException();
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    try
    {
      Iterator localIterator2 = paramCollection.iterator();
      while (localIterator2.hasNext())
      {
        ListenableFutureTask localListenableFutureTask = ListenableFutureTask.create((Callable)localIterator2.next());
        localArrayList.add(localListenableFutureTask);
        execute(localListenableFutureTask);
      }
    }
    finally
    {
      Iterator localIterator3;
      if (0 == 0)
      {
        Iterator localIterator1 = localArrayList.iterator();
        while (localIterator1.hasNext())
        {
          ((Future)localIterator1.next()).cancel(true);
          continue;
          localIterator3 = localArrayList.iterator();
        }
      }
      while (true)
      {
        Future localFuture;
        if (localIterator3.hasNext())
        {
          localFuture = (Future)localIterator3.next();
          boolean bool = localFuture.isDone();
          if (bool);
        }
        else
        {
          try
          {
            localFuture.get();
          }
          catch (CancellationException localCancellationException)
          {
            continue;
            if (1 != 0)
              break;
            Iterator localIterator4 = localArrayList.iterator();
            while (localIterator4.hasNext())
              ((Future)localIterator4.next()).cancel(true);
            throw localObject;
          }
          catch (ExecutionException localExecutionException)
          {
          }
        }
      }
    }
    return localArrayList;
  }

  public <T> List<Future<T>> invokeAll(Collection<Callable<T>> paramCollection, long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException
  {
    if ((paramCollection == null) || (paramTimeUnit == null))
      throw new NullPointerException();
    long l1 = paramTimeUnit.toNanos(paramLong);
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    try
    {
      Iterator localIterator2 = paramCollection.iterator();
      while (localIterator2.hasNext())
        localArrayList.add(ListenableFutureTask.create((Callable)localIterator2.next()));
    }
    finally
    {
      if (0 != 0)
        break label455;
    }
    Iterator localIterator1 = localArrayList.iterator();
    long l2;
    Iterator localIterator4;
    while (localIterator1.hasNext())
    {
      ((Future)localIterator1.next()).cancel(true);
      continue;
      l2 = System.nanoTime();
      Iterator localIterator3 = localArrayList.iterator();
      while (localIterator3.hasNext())
      {
        execute((Runnable)localIterator3.next());
        long l4 = System.nanoTime();
        l1 -= l4 - l2;
        l2 = l4;
        if (l1 <= 0L)
        {
          if (0 != 0)
            break label458;
          Iterator localIterator8 = localArrayList.iterator();
          while (localIterator8.hasNext())
            ((Future)localIterator8.next()).cancel(true);
        }
      }
      localIterator4 = localArrayList.iterator();
    }
    while (true)
    {
      Future localFuture;
      if (localIterator4.hasNext())
      {
        localFuture = (Future)localIterator4.next();
        boolean bool = localFuture.isDone();
        if (bool)
          continue;
        if (l1 <= 0L)
        {
          if (0 != 0)
            break label458;
          Iterator localIterator7 = localArrayList.iterator();
          while (localIterator7.hasNext())
            ((Future)localIterator7.next()).cancel(true);
        }
      }
      try
      {
        localFuture.get(l1, TimeUnit.NANOSECONDS);
        label345: long l3 = System.nanoTime();
        l1 -= l3 - l2;
        l2 = l3;
      }
      catch (TimeoutException localTimeoutException)
      {
        if (0 == 0)
        {
          Iterator localIterator6 = localArrayList.iterator();
          while (localIterator6.hasNext())
          {
            ((Future)localIterator6.next()).cancel(true);
            continue;
            if (1 == 0)
            {
              Iterator localIterator5 = localArrayList.iterator();
              while (localIterator5.hasNext())
              {
                ((Future)localIterator5.next()).cancel(true);
                continue;
                throw localObject;
              }
            }
          }
        }
        return localArrayList;
      }
      catch (ExecutionException localExecutionException)
      {
        break label345;
      }
      catch (CancellationException localCancellationException)
      {
        label455: label458: break label345;
      }
    }
  }

  public <T> T invokeAny(Collection<Callable<T>> paramCollection)
    throws InterruptedException, ExecutionException
  {
    try
    {
      Object localObject = MoreExecutors.invokeAnyImpl(this, paramCollection, false, 0L);
      return localObject;
    }
    catch (TimeoutException localTimeoutException)
    {
    }
    throw new AssertionError();
  }

  public <T> T invokeAny(Collection<Callable<T>> paramCollection, long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException, ExecutionException, TimeoutException
  {
    return MoreExecutors.invokeAnyImpl(this, paramCollection, true, paramTimeUnit.toNanos(paramLong));
  }

  public ListenableFuture<?> submit(Runnable paramRunnable)
  {
    ListenableFutureTask localListenableFutureTask = ListenableFutureTask.create(paramRunnable, null);
    execute(localListenableFutureTask);
    return localListenableFutureTask;
  }

  public <T> ListenableFuture<T> submit(Runnable paramRunnable, @Nullable T paramT)
  {
    ListenableFutureTask localListenableFutureTask = ListenableFutureTask.create(paramRunnable, paramT);
    execute(localListenableFutureTask);
    return localListenableFutureTask;
  }

  public <T> ListenableFuture<T> submit(Callable<T> paramCallable)
  {
    ListenableFutureTask localListenableFutureTask = ListenableFutureTask.create(paramCallable);
    execute(localListenableFutureTask);
    return localListenableFutureTask;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.AbstractListeningExecutorService
 * JD-Core Version:    0.6.2
 */