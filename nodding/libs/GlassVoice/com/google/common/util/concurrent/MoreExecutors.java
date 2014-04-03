package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class MoreExecutors
{
  @Beta
  public static void addDelayedShutdownHook(ExecutorService paramExecutorService, long paramLong, TimeUnit paramTimeUnit)
  {
    new Application().addDelayedShutdownHook(paramExecutorService, paramLong, paramTimeUnit);
  }

  @Beta
  public static ExecutorService getExitingExecutorService(ThreadPoolExecutor paramThreadPoolExecutor)
  {
    return new Application().getExitingExecutorService(paramThreadPoolExecutor);
  }

  @Beta
  public static ExecutorService getExitingExecutorService(ThreadPoolExecutor paramThreadPoolExecutor, long paramLong, TimeUnit paramTimeUnit)
  {
    return new Application().getExitingExecutorService(paramThreadPoolExecutor, paramLong, paramTimeUnit);
  }

  @Beta
  public static ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor paramScheduledThreadPoolExecutor)
  {
    return new Application().getExitingScheduledExecutorService(paramScheduledThreadPoolExecutor);
  }

  @Beta
  public static ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor paramScheduledThreadPoolExecutor, long paramLong, TimeUnit paramTimeUnit)
  {
    return new Application().getExitingScheduledExecutorService(paramScheduledThreadPoolExecutor, paramLong, paramTimeUnit);
  }

  // ERROR //
  static <T> T invokeAnyImpl(ListeningExecutorService paramListeningExecutorService, java.util.Collection<? extends Callable<T>> paramCollection, boolean paramBoolean, long paramLong)
    throws InterruptedException, java.util.concurrent.ExecutionException, java.util.concurrent.TimeoutException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 51	com/google/common/base/Preconditions:checkNotNull	(Ljava/lang/Object;)Ljava/lang/Object;
    //   4: pop
    //   5: aload_1
    //   6: invokeinterface 57 1 0
    //   11: istore 6
    //   13: iload 6
    //   15: ifle +184 -> 199
    //   18: iconst_1
    //   19: istore 7
    //   21: iload 7
    //   23: invokestatic 61	com/google/common/base/Preconditions:checkArgument	(Z)V
    //   26: iload 6
    //   28: invokestatic 67	com/google/common/collect/Lists:newArrayListWithCapacity	(I)Ljava/util/ArrayList;
    //   31: astore 8
    //   33: invokestatic 73	com/google/common/collect/Queues:newLinkedBlockingQueue	()Ljava/util/concurrent/LinkedBlockingQueue;
    //   36: astore 9
    //   38: iload_2
    //   39: ifeq +166 -> 205
    //   42: invokestatic 79	java/lang/System:nanoTime	()J
    //   45: lstore 10
    //   47: aload_1
    //   48: invokeinterface 83 1 0
    //   53: astore 15
    //   55: aload 8
    //   57: aload_0
    //   58: aload 15
    //   60: invokeinterface 89 1 0
    //   65: checkcast 91	java/util/concurrent/Callable
    //   68: aload 9
    //   70: invokestatic 95	com/google/common/util/concurrent/MoreExecutors:submitAndAddQueueListener	(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/common/util/concurrent/ListenableFuture;
    //   73: invokeinterface 101 2 0
    //   78: pop
    //   79: iload 6
    //   81: iconst_1
    //   82: isub
    //   83: istore 17
    //   85: iconst_1
    //   86: istore 18
    //   88: aconst_null
    //   89: astore 19
    //   91: aload 9
    //   93: invokeinterface 106 1 0
    //   98: checkcast 108	java/util/concurrent/Future
    //   101: astore 21
    //   103: aload 21
    //   105: ifnonnull +38 -> 143
    //   108: iload 17
    //   110: ifle +101 -> 211
    //   113: iinc 17 255
    //   116: aload 8
    //   118: aload_0
    //   119: aload 15
    //   121: invokeinterface 89 1 0
    //   126: checkcast 91	java/util/concurrent/Callable
    //   129: aload 9
    //   131: invokestatic 95	com/google/common/util/concurrent/MoreExecutors:submitAndAddQueueListener	(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/common/util/concurrent/ListenableFuture;
    //   134: invokeinterface 101 2 0
    //   139: pop
    //   140: iinc 18 1
    //   143: aload 21
    //   145: ifnull +231 -> 376
    //   148: iinc 18 255
    //   151: aload 21
    //   153: invokeinterface 111 1 0
    //   158: astore 25
    //   160: aload 8
    //   162: invokeinterface 112 1 0
    //   167: astore 26
    //   169: aload 26
    //   171: invokeinterface 116 1 0
    //   176: ifeq +190 -> 366
    //   179: aload 26
    //   181: invokeinterface 89 1 0
    //   186: checkcast 108	java/util/concurrent/Future
    //   189: iconst_1
    //   190: invokeinterface 120 2 0
    //   195: pop
    //   196: goto -27 -> 169
    //   199: iconst_0
    //   200: istore 7
    //   202: goto -181 -> 21
    //   205: lconst_0
    //   206: lstore 10
    //   208: goto -161 -> 47
    //   211: iload 18
    //   213: ifne +62 -> 275
    //   216: aload 19
    //   218: ifnonnull +151 -> 369
    //   221: new 41	java/util/concurrent/ExecutionException
    //   224: dup
    //   225: aconst_null
    //   226: invokespecial 123	java/util/concurrent/ExecutionException:<init>	(Ljava/lang/Throwable;)V
    //   229: astore 31
    //   231: aload 31
    //   233: athrow
    //   234: astore 12
    //   236: aload 8
    //   238: invokeinterface 112 1 0
    //   243: astore 13
    //   245: aload 13
    //   247: invokeinterface 116 1 0
    //   252: ifeq +111 -> 363
    //   255: aload 13
    //   257: invokeinterface 89 1 0
    //   262: checkcast 108	java/util/concurrent/Future
    //   265: iconst_1
    //   266: invokeinterface 120 2 0
    //   271: pop
    //   272: goto -27 -> 245
    //   275: iload_2
    //   276: ifeq +56 -> 332
    //   279: getstatic 129	java/util/concurrent/TimeUnit:NANOSECONDS	Ljava/util/concurrent/TimeUnit;
    //   282: astore 28
    //   284: aload 9
    //   286: lload_3
    //   287: aload 28
    //   289: invokeinterface 132 4 0
    //   294: checkcast 108	java/util/concurrent/Future
    //   297: astore 21
    //   299: aload 21
    //   301: ifnonnull +11 -> 312
    //   304: new 43	java/util/concurrent/TimeoutException
    //   307: dup
    //   308: invokespecial 133	java/util/concurrent/TimeoutException:<init>	()V
    //   311: athrow
    //   312: invokestatic 79	java/lang/System:nanoTime	()J
    //   315: lstore 29
    //   317: lload_3
    //   318: lload 29
    //   320: lload 10
    //   322: lsub
    //   323: lsub
    //   324: lstore_3
    //   325: lload 29
    //   327: lstore 10
    //   329: goto -186 -> 143
    //   332: aload 9
    //   334: invokeinterface 136 1 0
    //   339: checkcast 108	java/util/concurrent/Future
    //   342: astore 21
    //   344: goto -201 -> 143
    //   347: astore 23
    //   349: new 41	java/util/concurrent/ExecutionException
    //   352: dup
    //   353: aload 23
    //   355: invokespecial 123	java/util/concurrent/ExecutionException:<init>	(Ljava/lang/Throwable;)V
    //   358: astore 22
    //   360: goto +37 -> 397
    //   363: aload 12
    //   365: athrow
    //   366: aload 25
    //   368: areturn
    //   369: aload 19
    //   371: astore 31
    //   373: goto -142 -> 231
    //   376: aload 19
    //   378: astore 22
    //   380: goto +17 -> 397
    //   383: astore 12
    //   385: aload 19
    //   387: pop
    //   388: goto -152 -> 236
    //   391: astore 24
    //   393: aload 24
    //   395: astore 22
    //   397: aload 22
    //   399: astore 19
    //   401: goto -310 -> 91
    //
    // Exception table:
    //   from	to	target	type
    //   42	47	234	finally
    //   47	79	234	finally
    //   231	234	234	finally
    //   151	160	347	java/lang/RuntimeException
    //   91	103	383	finally
    //   116	140	383	finally
    //   151	160	383	finally
    //   221	231	383	finally
    //   279	299	383	finally
    //   304	312	383	finally
    //   312	317	383	finally
    //   332	344	383	finally
    //   349	360	383	finally
    //   151	160	391	java/util/concurrent/ExecutionException
  }

  private static boolean isAppEngine()
  {
    if (System.getProperty("com.google.appengine.runtime.environment") == null);
    while (true)
    {
      return false;
      try
      {
        Object localObject = Class.forName("com.google.apphosting.api.ApiProxy").getMethod("getCurrentEnvironment", new Class[0]).invoke(null, new Object[0]);
        if (localObject != null)
          return true;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        return false;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        return false;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        return false;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
      }
    }
    return false;
  }

  public static ListeningExecutorService listeningDecorator(ExecutorService paramExecutorService)
  {
    if ((paramExecutorService instanceof ListeningExecutorService))
      return (ListeningExecutorService)paramExecutorService;
    if ((paramExecutorService instanceof ScheduledExecutorService))
      return new ScheduledListeningDecorator((ScheduledExecutorService)paramExecutorService);
    return new ListeningDecorator(paramExecutorService);
  }

  public static ListeningScheduledExecutorService listeningDecorator(ScheduledExecutorService paramScheduledExecutorService)
  {
    if ((paramScheduledExecutorService instanceof ListeningScheduledExecutorService))
      return (ListeningScheduledExecutorService)paramScheduledExecutorService;
    return new ScheduledListeningDecorator(paramScheduledExecutorService);
  }

  static Thread newThread(String paramString, Runnable paramRunnable)
  {
    Preconditions.checkNotNull(paramString);
    Preconditions.checkNotNull(paramRunnable);
    Thread localThread = platformThreadFactory().newThread(paramRunnable);
    try
    {
      localThread.setName(paramString);
      return localThread;
    }
    catch (SecurityException localSecurityException)
    {
    }
    return localThread;
  }

  @Beta
  public static ThreadFactory platformThreadFactory()
  {
    if (!isAppEngine())
      return Executors.defaultThreadFactory();
    try
    {
      ThreadFactory localThreadFactory = (ThreadFactory)Class.forName("com.google.appengine.api.ThreadManager").getMethod("currentRequestThreadFactory", new Class[0]).invoke(null, new Object[0]);
      return localThreadFactory;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", localIllegalAccessException);
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", localClassNotFoundException);
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", localNoSuchMethodException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw Throwables.propagate(localInvocationTargetException.getCause());
    }
  }

  public static ListeningExecutorService sameThreadExecutor()
  {
    return new SameThreadExecutorService(null);
  }

  private static <T> ListenableFuture<T> submitAndAddQueueListener(ListeningExecutorService paramListeningExecutorService, Callable<T> paramCallable, BlockingQueue<Future<T>> paramBlockingQueue)
  {
    final ListenableFuture localListenableFuture = paramListeningExecutorService.submit(paramCallable);
    localListenableFuture.addListener(new Runnable()
    {
      public void run()
      {
        this.val$queue.add(localListenableFuture);
      }
    }
    , sameThreadExecutor());
    return localListenableFuture;
  }

  private static void useDaemonThreadFactory(ThreadPoolExecutor paramThreadPoolExecutor)
  {
    paramThreadPoolExecutor.setThreadFactory(new ThreadFactoryBuilder().setDaemon(true).setThreadFactory(paramThreadPoolExecutor.getThreadFactory()).build());
  }

  @VisibleForTesting
  static class Application
  {
    final void addDelayedShutdownHook(final ExecutorService paramExecutorService, final long paramLong, TimeUnit paramTimeUnit)
    {
      Preconditions.checkNotNull(paramExecutorService);
      Preconditions.checkNotNull(paramTimeUnit);
      addShutdownHook(MoreExecutors.newThread("DelayedShutdownHook-for-" + paramExecutorService, new Runnable()
      {
        public void run()
        {
          try
          {
            paramExecutorService.shutdown();
            paramExecutorService.awaitTermination(paramLong, this.val$timeUnit);
            return;
          }
          catch (InterruptedException localInterruptedException)
          {
          }
        }
      }));
    }

    @VisibleForTesting
    void addShutdownHook(Thread paramThread)
    {
      Runtime.getRuntime().addShutdownHook(paramThread);
    }

    final ExecutorService getExitingExecutorService(ThreadPoolExecutor paramThreadPoolExecutor)
    {
      return getExitingExecutorService(paramThreadPoolExecutor, 120L, TimeUnit.SECONDS);
    }

    final ExecutorService getExitingExecutorService(ThreadPoolExecutor paramThreadPoolExecutor, long paramLong, TimeUnit paramTimeUnit)
    {
      MoreExecutors.useDaemonThreadFactory(paramThreadPoolExecutor);
      ExecutorService localExecutorService = Executors.unconfigurableExecutorService(paramThreadPoolExecutor);
      addDelayedShutdownHook(localExecutorService, paramLong, paramTimeUnit);
      return localExecutorService;
    }

    final ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor paramScheduledThreadPoolExecutor)
    {
      return getExitingScheduledExecutorService(paramScheduledThreadPoolExecutor, 120L, TimeUnit.SECONDS);
    }

    final ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor paramScheduledThreadPoolExecutor, long paramLong, TimeUnit paramTimeUnit)
    {
      MoreExecutors.useDaemonThreadFactory(paramScheduledThreadPoolExecutor);
      ScheduledExecutorService localScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(paramScheduledThreadPoolExecutor);
      addDelayedShutdownHook(localScheduledExecutorService, paramLong, paramTimeUnit);
      return localScheduledExecutorService;
    }
  }

  private static class ListeningDecorator extends AbstractListeningExecutorService
  {
    final ExecutorService delegate;

    ListeningDecorator(ExecutorService paramExecutorService)
    {
      this.delegate = ((ExecutorService)Preconditions.checkNotNull(paramExecutorService));
    }

    public boolean awaitTermination(long paramLong, TimeUnit paramTimeUnit)
      throws InterruptedException
    {
      return this.delegate.awaitTermination(paramLong, paramTimeUnit);
    }

    public void execute(Runnable paramRunnable)
    {
      this.delegate.execute(paramRunnable);
    }

    public boolean isShutdown()
    {
      return this.delegate.isShutdown();
    }

    public boolean isTerminated()
    {
      return this.delegate.isTerminated();
    }

    public void shutdown()
    {
      this.delegate.shutdown();
    }

    public List<Runnable> shutdownNow()
    {
      return this.delegate.shutdownNow();
    }
  }

  private static class SameThreadExecutorService extends AbstractListeningExecutorService
  {
    private final Lock lock = new ReentrantLock();
    private int runningTasks = 0;
    private boolean shutdown = false;
    private final Condition termination = this.lock.newCondition();

    private void endTask()
    {
      this.lock.lock();
      try
      {
        this.runningTasks = (-1 + this.runningTasks);
        if (isTerminated())
          this.termination.signalAll();
        return;
      }
      finally
      {
        this.lock.unlock();
      }
    }

    private void startTask()
    {
      this.lock.lock();
      try
      {
        if (isShutdown())
          throw new RejectedExecutionException("Executor already shutdown");
      }
      finally
      {
        this.lock.unlock();
      }
      this.runningTasks = (1 + this.runningTasks);
      this.lock.unlock();
    }

    public boolean awaitTermination(long paramLong, TimeUnit paramTimeUnit)
      throws InterruptedException
    {
      long l1 = paramTimeUnit.toNanos(paramLong);
      this.lock.lock();
      try
      {
        while (true)
        {
          boolean bool = isTerminated();
          if (bool)
            return true;
          if (l1 <= 0L)
            return false;
          long l2 = this.termination.awaitNanos(l1);
          l1 = l2;
        }
      }
      finally
      {
        this.lock.unlock();
      }
    }

    public void execute(Runnable paramRunnable)
    {
      startTask();
      try
      {
        paramRunnable.run();
        return;
      }
      finally
      {
        endTask();
      }
    }

    public boolean isShutdown()
    {
      this.lock.lock();
      try
      {
        boolean bool = this.shutdown;
        return bool;
      }
      finally
      {
        this.lock.unlock();
      }
    }

    public boolean isTerminated()
    {
      this.lock.lock();
      try
      {
        if (this.shutdown)
        {
          int i = this.runningTasks;
          if (i == 0)
          {
            bool = true;
            return bool;
          }
        }
        boolean bool = false;
      }
      finally
      {
        this.lock.unlock();
      }
    }

    public void shutdown()
    {
      this.lock.lock();
      try
      {
        this.shutdown = true;
        return;
      }
      finally
      {
        this.lock.unlock();
      }
    }

    public List<Runnable> shutdownNow()
    {
      shutdown();
      return Collections.emptyList();
    }
  }

  private static class ScheduledListeningDecorator extends MoreExecutors.ListeningDecorator
    implements ListeningScheduledExecutorService
  {
    final ScheduledExecutorService delegate;

    ScheduledListeningDecorator(ScheduledExecutorService paramScheduledExecutorService)
    {
      super();
      this.delegate = ((ScheduledExecutorService)Preconditions.checkNotNull(paramScheduledExecutorService));
    }

    public ScheduledFuture<?> schedule(Runnable paramRunnable, long paramLong, TimeUnit paramTimeUnit)
    {
      return this.delegate.schedule(paramRunnable, paramLong, paramTimeUnit);
    }

    public <V> ScheduledFuture<V> schedule(Callable<V> paramCallable, long paramLong, TimeUnit paramTimeUnit)
    {
      return this.delegate.schedule(paramCallable, paramLong, paramTimeUnit);
    }

    public ScheduledFuture<?> scheduleAtFixedRate(Runnable paramRunnable, long paramLong1, long paramLong2, TimeUnit paramTimeUnit)
    {
      return this.delegate.scheduleAtFixedRate(paramRunnable, paramLong1, paramLong2, paramTimeUnit);
    }

    public ScheduledFuture<?> scheduleWithFixedDelay(Runnable paramRunnable, long paramLong1, long paramLong2, TimeUnit paramTimeUnit)
    {
      return this.delegate.scheduleWithFixedDelay(paramRunnable, paramLong1, paramLong2, paramTimeUnit);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.MoreExecutors
 * JD-Core Version:    0.6.2
 */