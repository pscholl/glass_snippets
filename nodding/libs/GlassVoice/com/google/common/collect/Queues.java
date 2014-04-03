package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.util.Collection;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

public final class Queues
{
  @Beta
  public static <E> int drain(BlockingQueue<E> paramBlockingQueue, Collection<? super E> paramCollection, int paramInt, long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException
  {
    Preconditions.checkNotNull(paramCollection);
    long l = System.nanoTime() + paramTimeUnit.toNanos(paramLong);
    int i = 0;
    while (true)
    {
      Object localObject;
      if (i < paramInt)
      {
        i += paramBlockingQueue.drainTo(paramCollection, paramInt - i);
        if (i < paramInt)
        {
          localObject = paramBlockingQueue.poll(l - System.nanoTime(), TimeUnit.NANOSECONDS);
          if (localObject != null);
        }
      }
      else
      {
        return i;
        paramCollection.add(localObject);
        i++;
      }
    }
  }

  @Beta
  public static <E> int drainUninterruptibly(BlockingQueue<E> paramBlockingQueue, Collection<? super E> paramCollection, int paramInt, long paramLong, TimeUnit paramTimeUnit)
  {
    Preconditions.checkNotNull(paramCollection);
    long l = System.nanoTime() + paramTimeUnit.toNanos(paramLong);
    int i = 0;
    int j = 0;
    while (true)
    {
      int k;
      if (i < paramInt)
        k = paramInt - i;
      try
      {
        int m = paramBlockingQueue.drainTo(paramCollection, k);
        i += m;
        if (i >= paramInt)
          continue;
        Object localObject2;
        while (true)
          try
          {
            localObject2 = paramBlockingQueue.poll(l - System.nanoTime(), TimeUnit.NANOSECONDS);
            if (localObject2 != null)
              break;
            return i;
          }
          catch (InterruptedException localInterruptedException)
          {
            j = 1;
          }
        paramCollection.add(localObject2);
        i++;
      }
      finally
      {
        if (j != 0)
          Thread.currentThread().interrupt();
      }
    }
  }

  public static <E> ArrayBlockingQueue<E> newArrayBlockingQueue(int paramInt)
  {
    return new ArrayBlockingQueue(paramInt);
  }

  public static <E> ConcurrentLinkedQueue<E> newConcurrentLinkedQueue()
  {
    return new ConcurrentLinkedQueue();
  }

  public static <E> ConcurrentLinkedQueue<E> newConcurrentLinkedQueue(Iterable<? extends E> paramIterable)
  {
    if ((paramIterable instanceof Collection))
      return new ConcurrentLinkedQueue(Collections2.cast(paramIterable));
    ConcurrentLinkedQueue localConcurrentLinkedQueue = new ConcurrentLinkedQueue();
    Iterables.addAll(localConcurrentLinkedQueue, paramIterable);
    return localConcurrentLinkedQueue;
  }

  public static <E> LinkedBlockingQueue<E> newLinkedBlockingQueue()
  {
    return new LinkedBlockingQueue();
  }

  public static <E> LinkedBlockingQueue<E> newLinkedBlockingQueue(int paramInt)
  {
    return new LinkedBlockingQueue(paramInt);
  }

  public static <E> LinkedBlockingQueue<E> newLinkedBlockingQueue(Iterable<? extends E> paramIterable)
  {
    if ((paramIterable instanceof Collection))
      return new LinkedBlockingQueue(Collections2.cast(paramIterable));
    LinkedBlockingQueue localLinkedBlockingQueue = new LinkedBlockingQueue();
    Iterables.addAll(localLinkedBlockingQueue, paramIterable);
    return localLinkedBlockingQueue;
  }

  public static <E> PriorityBlockingQueue<E> newPriorityBlockingQueue()
  {
    return new PriorityBlockingQueue();
  }

  public static <E> PriorityBlockingQueue<E> newPriorityBlockingQueue(Iterable<? extends E> paramIterable)
  {
    if ((paramIterable instanceof Collection))
      return new PriorityBlockingQueue(Collections2.cast(paramIterable));
    PriorityBlockingQueue localPriorityBlockingQueue = new PriorityBlockingQueue();
    Iterables.addAll(localPriorityBlockingQueue, paramIterable);
    return localPriorityBlockingQueue;
  }

  public static <E> PriorityQueue<E> newPriorityQueue()
  {
    return new PriorityQueue();
  }

  public static <E> PriorityQueue<E> newPriorityQueue(Iterable<? extends E> paramIterable)
  {
    if ((paramIterable instanceof Collection))
      return new PriorityQueue(Collections2.cast(paramIterable));
    PriorityQueue localPriorityQueue = new PriorityQueue();
    Iterables.addAll(localPriorityQueue, paramIterable);
    return localPriorityQueue;
  }

  public static <E> SynchronousQueue<E> newSynchronousQueue()
  {
    return new SynchronousQueue();
  }

  @Beta
  public static <E> Queue<E> synchronizedQueue(Queue<E> paramQueue)
  {
    return Synchronized.queue(paramQueue, null);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.Queues
 * JD-Core Version:    0.6.2
 */