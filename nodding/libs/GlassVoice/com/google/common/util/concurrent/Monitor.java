package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import com.google.common.collect.Lists;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

@Beta
public final class Monitor
{

  @GuardedBy("lock")
  private final ArrayList<Guard> activeGuards = Lists.newArrayListWithCapacity(1);
  private final boolean fair;
  private final ReentrantLock lock;

  public Monitor()
  {
    this(false);
  }

  public Monitor(boolean paramBoolean)
  {
    this.fair = paramBoolean;
    this.lock = new ReentrantLock(paramBoolean);
  }

  @GuardedBy("lock")
  private void decrementWaiters(Guard paramGuard)
  {
    int i = -1 + paramGuard.waiterCount;
    paramGuard.waiterCount = i;
    if (i == 0)
      this.activeGuards.remove(paramGuard);
  }

  @GuardedBy("lock")
  private void incrementWaiters(Guard paramGuard)
  {
    int i = paramGuard.waiterCount;
    paramGuard.waiterCount = (i + 1);
    if (i == 0)
      this.activeGuards.add(paramGuard);
  }

  @GuardedBy("lock")
  private void signalConditionsOfSatisfiedGuards(@Nullable Guard paramGuard)
  {
    ArrayList localArrayList = this.activeGuards;
    int i = localArrayList.size();
    for (int j = 0; ; j++)
    {
      if (j < i);
      try
      {
        Guard localGuard = (Guard)localArrayList.get(j);
        if (((localGuard != paramGuard) || (localGuard.waiterCount != 1)) && (localGuard.isSatisfied()))
        {
          localGuard.condition.signal();
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        for (int k = 0; k < i; k++)
          ((Guard)localArrayList.get(k)).condition.signalAll();
        throw Throwables.propagate(localThrowable);
      }
    }
  }

  // ERROR //
  @GuardedBy("lock")
  private void waitInterruptibly(Guard paramGuard, boolean paramBoolean)
    throws InterruptedException
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 72	com/google/common/util/concurrent/Monitor$Guard:isSatisfied	()Z
    //   4: ifne +46 -> 50
    //   7: iload_2
    //   8: ifeq +8 -> 16
    //   11: aload_0
    //   12: aconst_null
    //   13: invokespecial 96	com/google/common/util/concurrent/Monitor:signalConditionsOfSatisfiedGuards	(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    //   16: aload_0
    //   17: aload_1
    //   18: invokespecial 98	com/google/common/util/concurrent/Monitor:incrementWaiters	(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    //   21: aload_1
    //   22: getfield 76	com/google/common/util/concurrent/Monitor$Guard:condition	Ljava/util/concurrent/locks/Condition;
    //   25: astore 4
    //   27: aload 4
    //   29: invokeinterface 101 1 0
    //   34: aload_1
    //   35: invokevirtual 72	com/google/common/util/concurrent/Monitor$Guard:isSatisfied	()Z
    //   38: istore 7
    //   40: iload 7
    //   42: ifeq -15 -> 27
    //   45: aload_0
    //   46: aload_1
    //   47: invokespecial 103	com/google/common/util/concurrent/Monitor:decrementWaiters	(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    //   50: return
    //   51: astore 5
    //   53: aload_0
    //   54: aload_1
    //   55: invokespecial 96	com/google/common/util/concurrent/Monitor:signalConditionsOfSatisfiedGuards	(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    //   58: aload 5
    //   60: athrow
    //   61: astore_3
    //   62: aload_0
    //   63: aload_1
    //   64: invokespecial 103	com/google/common/util/concurrent/Monitor:decrementWaiters	(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    //   67: aload_3
    //   68: athrow
    //   69: astore 6
    //   71: invokestatic 109	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   74: invokevirtual 112	java/lang/Thread:interrupt	()V
    //   77: aload 6
    //   79: invokestatic 90	com/google/common/base/Throwables:propagate	(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    //   82: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   27	34	51	java/lang/InterruptedException
    //   21	27	61	finally
    //   27	34	61	finally
    //   34	40	61	finally
    //   53	58	61	finally
    //   58	61	61	finally
    //   71	83	61	finally
    //   53	58	69	java/lang/Throwable
  }

  // ERROR //
  @GuardedBy("lock")
  private boolean waitInterruptibly(Guard paramGuard, long paramLong, boolean paramBoolean)
    throws InterruptedException
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 72	com/google/common/util/concurrent/Monitor$Guard:isSatisfied	()Z
    //   4: ifne +66 -> 70
    //   7: iload 4
    //   9: ifeq +8 -> 17
    //   12: aload_0
    //   13: aconst_null
    //   14: invokespecial 96	com/google/common/util/concurrent/Monitor:signalConditionsOfSatisfiedGuards	(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    //   17: aload_0
    //   18: aload_1
    //   19: invokespecial 98	com/google/common/util/concurrent/Monitor:incrementWaiters	(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    //   22: aload_1
    //   23: getfield 76	com/google/common/util/concurrent/Monitor$Guard:condition	Ljava/util/concurrent/locks/Condition;
    //   26: astore 6
    //   28: lload_2
    //   29: lconst_0
    //   30: lcmp
    //   31: ifgt +10 -> 41
    //   34: aload_0
    //   35: aload_1
    //   36: invokespecial 103	com/google/common/util/concurrent/Monitor:decrementWaiters	(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    //   39: iconst_0
    //   40: ireturn
    //   41: aload 6
    //   43: lload_2
    //   44: invokeinterface 117 3 0
    //   49: lstore 9
    //   51: lload 9
    //   53: lstore_2
    //   54: aload_1
    //   55: invokevirtual 72	com/google/common/util/concurrent/Monitor$Guard:isSatisfied	()Z
    //   58: istore 11
    //   60: iload 11
    //   62: ifeq -34 -> 28
    //   65: aload_0
    //   66: aload_1
    //   67: invokespecial 103	com/google/common/util/concurrent/Monitor:decrementWaiters	(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    //   70: iconst_1
    //   71: ireturn
    //   72: astore 7
    //   74: aload_0
    //   75: aload_1
    //   76: invokespecial 96	com/google/common/util/concurrent/Monitor:signalConditionsOfSatisfiedGuards	(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    //   79: aload 7
    //   81: athrow
    //   82: astore 5
    //   84: aload_0
    //   85: aload_1
    //   86: invokespecial 103	com/google/common/util/concurrent/Monitor:decrementWaiters	(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    //   89: aload 5
    //   91: athrow
    //   92: astore 8
    //   94: invokestatic 109	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   97: invokevirtual 112	java/lang/Thread:interrupt	()V
    //   100: aload 8
    //   102: invokestatic 90	com/google/common/base/Throwables:propagate	(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    //   105: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   41	51	72	java/lang/InterruptedException
    //   22	28	82	finally
    //   41	51	82	finally
    //   54	60	82	finally
    //   74	79	82	finally
    //   79	82	82	finally
    //   94	106	82	finally
    //   74	79	92	java/lang/Throwable
  }

  @GuardedBy("lock")
  private void waitUninterruptibly(Guard paramGuard, boolean paramBoolean)
  {
    if (!paramGuard.isSatisfied())
    {
      if (paramBoolean)
        signalConditionsOfSatisfiedGuards(null);
      incrementWaiters(paramGuard);
    }
    try
    {
      Condition localCondition = paramGuard.condition;
      boolean bool;
      do
      {
        localCondition.awaitUninterruptibly();
        bool = paramGuard.isSatisfied();
      }
      while (!bool);
      return;
    }
    finally
    {
      decrementWaiters(paramGuard);
    }
  }

  @GuardedBy("lock")
  private boolean waitUninterruptibly(Guard paramGuard, long paramLong, boolean paramBoolean)
  {
    long l1;
    int i;
    if (!paramGuard.isSatisfied())
    {
      l1 = System.nanoTime();
      if (paramBoolean)
        signalConditionsOfSatisfiedGuards(null);
      i = 0;
    }
    try
    {
      incrementWaiters(paramGuard);
      try
      {
        Condition localCondition = paramGuard.condition;
        long l2 = paramLong;
        while (true)
        {
          if (l2 <= 0L)
          {
            decrementWaiters(paramGuard);
            return false;
          }
          try
          {
            long l3 = localCondition.awaitNanos(l2);
            l2 = l3;
            boolean bool = paramGuard.isSatisfied();
            if (!bool)
              continue;
            decrementWaiters(paramGuard);
            return true;
          }
          catch (InterruptedException localInterruptedException)
          {
            try
            {
              signalConditionsOfSatisfiedGuards(paramGuard);
              i = 1;
              l2 = paramLong - (System.nanoTime() - l1);
            }
            catch (Throwable localThrowable)
            {
              Thread.currentThread().interrupt();
              throw Throwables.propagate(localThrowable);
            }
          }
        }
      }
      finally
      {
        decrementWaiters(paramGuard);
      }
    }
    finally
    {
      if (i != 0)
        Thread.currentThread().interrupt();
    }
  }

  public void enter()
  {
    this.lock.lock();
  }

  public boolean enter(long paramLong, TimeUnit paramTimeUnit)
  {
    ReentrantLock localReentrantLock = this.lock;
    boolean bool2;
    if ((!this.fair) && (localReentrantLock.tryLock()))
      bool2 = true;
    while (true)
    {
      return bool2;
      long l1 = System.nanoTime();
      long l2 = paramTimeUnit.toNanos(paramLong);
      long l3 = l2;
      int i = 0;
      try
      {
        boolean bool1 = localReentrantLock.tryLock(l3, TimeUnit.NANOSECONDS);
        bool2 = bool1;
        return bool2;
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
        {
          i = 1;
          long l4 = System.nanoTime();
          l3 = l2 - (l4 - l1);
        }
      }
      finally
      {
        if (i != 0)
          Thread.currentThread().interrupt();
      }
    }
  }

  public boolean enterIf(Guard paramGuard)
  {
    if (paramGuard.monitor != this)
      throw new IllegalMonitorStateException();
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lock();
    try
    {
      boolean bool = paramGuard.isSatisfied();
      if (!bool)
        localReentrantLock.unlock();
      return bool;
    }
    finally
    {
      if (0 == 0)
        localReentrantLock.unlock();
    }
  }

  public boolean enterIf(Guard paramGuard, long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramGuard.monitor != this)
      throw new IllegalMonitorStateException();
    ReentrantLock localReentrantLock = this.lock;
    boolean bool2;
    if (!enter(paramLong, paramTimeUnit))
      bool2 = false;
    while (true)
    {
      return bool2;
      try
      {
        boolean bool1 = paramGuard.isSatisfied();
        bool2 = bool1;
        if (bool2)
          continue;
        localReentrantLock.unlock();
        return bool2;
      }
      finally
      {
        if (0 == 0)
          localReentrantLock.unlock();
      }
    }
  }

  public boolean enterIfInterruptibly(Guard paramGuard)
    throws InterruptedException
  {
    if (paramGuard.monitor != this)
      throw new IllegalMonitorStateException();
    ReentrantLock localReentrantLock = this.lock;
    localReentrantLock.lockInterruptibly();
    try
    {
      boolean bool = paramGuard.isSatisfied();
      if (!bool)
        localReentrantLock.unlock();
      return bool;
    }
    finally
    {
      if (0 == 0)
        localReentrantLock.unlock();
    }
  }

  public boolean enterIfInterruptibly(Guard paramGuard, long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException
  {
    if (paramGuard.monitor != this)
      throw new IllegalMonitorStateException();
    ReentrantLock localReentrantLock = this.lock;
    boolean bool2;
    if (!localReentrantLock.tryLock(paramLong, paramTimeUnit))
      bool2 = false;
    while (true)
    {
      return bool2;
      try
      {
        boolean bool1 = paramGuard.isSatisfied();
        bool2 = bool1;
        if (bool2)
          continue;
        localReentrantLock.unlock();
        return bool2;
      }
      finally
      {
        if (0 == 0)
          localReentrantLock.unlock();
      }
    }
  }

  public void enterInterruptibly()
    throws InterruptedException
  {
    this.lock.lockInterruptibly();
  }

  public boolean enterInterruptibly(long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException
  {
    return this.lock.tryLock(paramLong, paramTimeUnit);
  }

  public void enterWhen(Guard paramGuard)
    throws InterruptedException
  {
    if (paramGuard.monitor != this)
      throw new IllegalMonitorStateException();
    ReentrantLock localReentrantLock = this.lock;
    boolean bool = localReentrantLock.isHeldByCurrentThread();
    localReentrantLock.lockInterruptibly();
    try
    {
      waitInterruptibly(paramGuard, bool);
      if (1 == 0)
        localReentrantLock.unlock();
      return;
    }
    finally
    {
      if (0 == 0)
        localReentrantLock.unlock();
    }
  }

  public boolean enterWhen(Guard paramGuard, long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException
  {
    if (paramGuard.monitor != this)
      throw new IllegalMonitorStateException();
    ReentrantLock localReentrantLock = this.lock;
    boolean bool1 = localReentrantLock.isHeldByCurrentThread();
    long l2;
    if ((!this.fair) && (localReentrantLock.tryLock()))
      l2 = paramTimeUnit.toNanos(paramLong);
    try
    {
      boolean bool2 = waitInterruptibly(paramGuard, l2, bool1);
      return bool2;
      long l1;
      return false;
      l2 = paramTimeUnit.toNanos(paramLong) - (System.nanoTime() - l1);
    }
    finally
    {
      if (0 == 0)
        localReentrantLock.unlock();
    }
  }

  public void enterWhenUninterruptibly(Guard paramGuard)
  {
    if (paramGuard.monitor != this)
      throw new IllegalMonitorStateException();
    ReentrantLock localReentrantLock = this.lock;
    boolean bool = localReentrantLock.isHeldByCurrentThread();
    localReentrantLock.lock();
    try
    {
      waitUninterruptibly(paramGuard, bool);
      if (1 == 0)
        localReentrantLock.unlock();
      return;
    }
    finally
    {
      if (0 == 0)
        localReentrantLock.unlock();
    }
  }

  // ERROR //
  public boolean enterWhenUninterruptibly(Guard paramGuard, long paramLong, TimeUnit paramTimeUnit)
  {
    // Byte code:
    //   0: aload_1
    //   1: getfield 151	com/google/common/util/concurrent/Monitor$Guard:monitor	Lcom/google/common/util/concurrent/Monitor;
    //   4: aload_0
    //   5: if_acmpeq +11 -> 16
    //   8: new 153	java/lang/IllegalMonitorStateException
    //   11: dup
    //   12: invokespecial 154	java/lang/IllegalMonitorStateException:<init>	()V
    //   15: athrow
    //   16: aload_0
    //   17: getfield 36	com/google/common/util/concurrent/Monitor:lock	Ljava/util/concurrent/locks/ReentrantLock;
    //   20: astore 5
    //   22: aload 5
    //   24: invokevirtual 169	java/util/concurrent/locks/ReentrantLock:isHeldByCurrentThread	()Z
    //   27: istore 6
    //   29: iconst_0
    //   30: istore 7
    //   32: aload_0
    //   33: getfield 31	com/google/common/util/concurrent/Monitor:fair	Z
    //   36: istore 9
    //   38: iconst_0
    //   39: istore 7
    //   41: iload 9
    //   43: ifne +62 -> 105
    //   46: aload 5
    //   48: invokevirtual 134	java/util/concurrent/locks/ReentrantLock:tryLock	()Z
    //   51: ifeq +54 -> 105
    //   54: aload 4
    //   56: lload_2
    //   57: invokevirtual 139	java/util/concurrent/TimeUnit:toNanos	(J)J
    //   60: lstore 30
    //   62: lload 30
    //   64: lstore 26
    //   66: aload_0
    //   67: aload_1
    //   68: lload 26
    //   70: iload 6
    //   72: invokespecial 178	com/google/common/util/concurrent/Monitor:waitUninterruptibly	(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    //   75: istore 29
    //   77: iload 29
    //   79: istore 25
    //   81: iload 25
    //   83: ifne +8 -> 91
    //   86: aload 5
    //   88: invokevirtual 157	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   91: iload 7
    //   93: ifeq +9 -> 102
    //   96: invokestatic 109	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   99: invokevirtual 112	java/lang/Thread:interrupt	()V
    //   102: iload 25
    //   104: ireturn
    //   105: invokestatic 127	java/lang/System:nanoTime	()J
    //   108: lstore 10
    //   110: aload 4
    //   112: lload_2
    //   113: invokevirtual 139	java/util/concurrent/TimeUnit:toNanos	(J)J
    //   116: lstore 12
    //   118: lload 12
    //   120: lstore 14
    //   122: aload 5
    //   124: lload 14
    //   126: getstatic 143	java/util/concurrent/TimeUnit:NANOSECONDS	Ljava/util/concurrent/TimeUnit;
    //   129: invokevirtual 145	java/util/concurrent/locks/ReentrantLock:tryLock	(JLjava/util/concurrent/TimeUnit;)Z
    //   132: istore 20
    //   134: iload 20
    //   136: ifeq +17 -> 153
    //   139: lload 12
    //   141: invokestatic 127	java/lang/System:nanoTime	()J
    //   144: lload 10
    //   146: lsub
    //   147: lsub
    //   148: lstore 26
    //   150: goto -84 -> 66
    //   153: invokestatic 127	java/lang/System:nanoTime	()J
    //   156: lstore 21
    //   158: lload 12
    //   160: lload 21
    //   162: lload 10
    //   164: lsub
    //   165: lsub
    //   166: pop2
    //   167: iconst_0
    //   168: istore 25
    //   170: iload 7
    //   172: ifeq -70 -> 102
    //   175: invokestatic 109	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   178: invokevirtual 112	java/lang/Thread:interrupt	()V
    //   181: iconst_0
    //   182: ireturn
    //   183: astore 19
    //   185: iconst_1
    //   186: istore 7
    //   188: lload 12
    //   190: invokestatic 127	java/lang/System:nanoTime	()J
    //   193: lload 10
    //   195: lsub
    //   196: lsub
    //   197: lstore 14
    //   199: goto -77 -> 122
    //   202: astore 16
    //   204: lload 12
    //   206: invokestatic 127	java/lang/System:nanoTime	()J
    //   209: lload 10
    //   211: lsub
    //   212: lsub
    //   213: pop2
    //   214: aload 16
    //   216: athrow
    //   217: astore 8
    //   219: iload 7
    //   221: ifeq +9 -> 230
    //   224: invokestatic 109	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   227: invokevirtual 112	java/lang/Thread:interrupt	()V
    //   230: aload 8
    //   232: athrow
    //   233: astore 28
    //   235: iconst_0
    //   236: ifne +8 -> 244
    //   239: aload 5
    //   241: invokevirtual 157	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   244: aload 28
    //   246: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   122	134	183	java/lang/InterruptedException
    //   122	134	202	finally
    //   32	38	217	finally
    //   46	62	217	finally
    //   86	91	217	finally
    //   105	118	217	finally
    //   139	150	217	finally
    //   153	158	217	finally
    //   188	199	217	finally
    //   204	217	217	finally
    //   239	244	217	finally
    //   244	247	217	finally
    //   66	77	233	finally
  }

  public int getOccupiedDepth()
  {
    return this.lock.getHoldCount();
  }

  public int getQueueLength()
  {
    return this.lock.getQueueLength();
  }

  public int getWaitQueueLength(Guard paramGuard)
  {
    if (paramGuard.monitor != this)
      throw new IllegalMonitorStateException();
    this.lock.lock();
    try
    {
      int i = paramGuard.waiterCount;
      return i;
    }
    finally
    {
      this.lock.unlock();
    }
  }

  public boolean hasQueuedThread(Thread paramThread)
  {
    return this.lock.hasQueuedThread(paramThread);
  }

  public boolean hasQueuedThreads()
  {
    return this.lock.hasQueuedThreads();
  }

  public boolean hasWaiters(Guard paramGuard)
  {
    if (paramGuard.monitor != this)
      throw new IllegalMonitorStateException();
    this.lock.lock();
    try
    {
      int i = paramGuard.waiterCount;
      if (i > 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      this.lock.unlock();
    }
  }

  public boolean isFair()
  {
    return this.lock.isFair();
  }

  public boolean isOccupied()
  {
    return this.lock.isLocked();
  }

  public boolean isOccupiedByCurrentThread()
  {
    return this.lock.isHeldByCurrentThread();
  }

  public void leave()
  {
    ReentrantLock localReentrantLock = this.lock;
    if (!localReentrantLock.isHeldByCurrentThread())
      throw new IllegalMonitorStateException();
    try
    {
      signalConditionsOfSatisfiedGuards(null);
      return;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  public boolean tryEnter()
  {
    return this.lock.tryLock();
  }

  public boolean tryEnterIf(Guard paramGuard)
  {
    if (paramGuard.monitor != this)
      throw new IllegalMonitorStateException();
    ReentrantLock localReentrantLock = this.lock;
    boolean bool2;
    if (!localReentrantLock.tryLock())
      bool2 = false;
    while (true)
    {
      return bool2;
      try
      {
        boolean bool1 = paramGuard.isSatisfied();
        bool2 = bool1;
        if (bool2)
          continue;
        localReentrantLock.unlock();
        return bool2;
      }
      finally
      {
        if (0 == 0)
          localReentrantLock.unlock();
      }
    }
  }

  public void waitFor(Guard paramGuard)
    throws InterruptedException
  {
    if (paramGuard.monitor != this)
      throw new IllegalMonitorStateException();
    if (!this.lock.isHeldByCurrentThread())
      throw new IllegalMonitorStateException();
    waitInterruptibly(paramGuard, true);
  }

  public boolean waitFor(Guard paramGuard, long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException
  {
    if (paramGuard.monitor != this)
      throw new IllegalMonitorStateException();
    if (!this.lock.isHeldByCurrentThread())
      throw new IllegalMonitorStateException();
    return waitInterruptibly(paramGuard, paramTimeUnit.toNanos(paramLong), true);
  }

  public void waitForUninterruptibly(Guard paramGuard)
  {
    if (paramGuard.monitor != this)
      throw new IllegalMonitorStateException();
    if (!this.lock.isHeldByCurrentThread())
      throw new IllegalMonitorStateException();
    waitUninterruptibly(paramGuard, true);
  }

  public boolean waitForUninterruptibly(Guard paramGuard, long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramGuard.monitor != this)
      throw new IllegalMonitorStateException();
    if (!this.lock.isHeldByCurrentThread())
      throw new IllegalMonitorStateException();
    return waitUninterruptibly(paramGuard, paramTimeUnit.toNanos(paramLong), true);
  }

  @Beta
  public static abstract class Guard
  {
    final Condition condition;
    final Monitor monitor;

    @GuardedBy("monitor.lock")
    int waiterCount = 0;

    protected Guard(Monitor paramMonitor)
    {
      this.monitor = ((Monitor)Preconditions.checkNotNull(paramMonitor, "monitor"));
      this.condition = paramMonitor.lock.newCondition();
    }

    public final boolean equals(Object paramObject)
    {
      return this == paramObject;
    }

    public final int hashCode()
    {
      return super.hashCode();
    }

    public abstract boolean isSatisfied();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.Monitor
 * JD-Core Version:    0.6.2
 */