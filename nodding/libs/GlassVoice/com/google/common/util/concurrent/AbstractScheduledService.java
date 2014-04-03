package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Logger;
import javax.annotation.concurrent.GuardedBy;

@Beta
public abstract class AbstractScheduledService
  implements Service
{
  private static final Logger logger = Logger.getLogger(AbstractScheduledService.class.getName());
  private final AbstractService delegate = new AbstractService()
  {
    private volatile ScheduledExecutorService executorService;
    private final ReentrantLock lock = new ReentrantLock();
    private volatile Future<?> runningTask;
    private final Runnable task = new Runnable()
    {
      // ERROR //
      public void run()
      {
        // Byte code:
        //   0: aload_0
        //   1: getfield 14	com/google/common/util/concurrent/AbstractScheduledService$1$1:this$1	Lcom/google/common/util/concurrent/AbstractScheduledService$1;
        //   4: invokestatic 26	com/google/common/util/concurrent/AbstractScheduledService$1:access$100	(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;
        //   7: invokevirtual 31	java/util/concurrent/locks/ReentrantLock:lock	()V
        //   10: aload_0
        //   11: getfield 14	com/google/common/util/concurrent/AbstractScheduledService$1$1:this$1	Lcom/google/common/util/concurrent/AbstractScheduledService$1;
        //   14: getfield 35	com/google/common/util/concurrent/AbstractScheduledService$1:this$0	Lcom/google/common/util/concurrent/AbstractScheduledService;
        //   17: invokevirtual 40	com/google/common/util/concurrent/AbstractScheduledService:runOneIteration	()V
        //   20: aload_0
        //   21: getfield 14	com/google/common/util/concurrent/AbstractScheduledService$1$1:this$1	Lcom/google/common/util/concurrent/AbstractScheduledService$1;
        //   24: invokestatic 26	com/google/common/util/concurrent/AbstractScheduledService$1:access$100	(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;
        //   27: invokevirtual 43	java/util/concurrent/locks/ReentrantLock:unlock	()V
        //   30: return
        //   31: astore_2
        //   32: aload_0
        //   33: getfield 14	com/google/common/util/concurrent/AbstractScheduledService$1$1:this$1	Lcom/google/common/util/concurrent/AbstractScheduledService$1;
        //   36: getfield 35	com/google/common/util/concurrent/AbstractScheduledService$1:this$0	Lcom/google/common/util/concurrent/AbstractScheduledService;
        //   39: invokevirtual 46	com/google/common/util/concurrent/AbstractScheduledService:shutDown	()V
        //   42: aload_0
        //   43: getfield 14	com/google/common/util/concurrent/AbstractScheduledService$1$1:this$1	Lcom/google/common/util/concurrent/AbstractScheduledService$1;
        //   46: aload_2
        //   47: invokevirtual 50	com/google/common/util/concurrent/AbstractScheduledService$1:notifyFailed	(Ljava/lang/Throwable;)V
        //   50: aload_2
        //   51: invokestatic 56	com/google/common/base/Throwables:propagate	(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
        //   54: athrow
        //   55: astore_1
        //   56: aload_0
        //   57: getfield 14	com/google/common/util/concurrent/AbstractScheduledService$1$1:this$1	Lcom/google/common/util/concurrent/AbstractScheduledService$1;
        //   60: invokestatic 26	com/google/common/util/concurrent/AbstractScheduledService$1:access$100	(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;
        //   63: invokevirtual 43	java/util/concurrent/locks/ReentrantLock:unlock	()V
        //   66: aload_1
        //   67: athrow
        //   68: astore_3
        //   69: invokestatic 60	com/google/common/util/concurrent/AbstractScheduledService:access$200	()Ljava/util/logging/Logger;
        //   72: getstatic 66	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
        //   75: ldc 68
        //   77: aload_3
        //   78: invokevirtual 74	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   81: goto -39 -> 42
        //
        // Exception table:
        //   from	to	target	type
        //   10	20	31	java/lang/Throwable
        //   10	20	55	finally
        //   32	42	55	finally
        //   42	55	55	finally
        //   69	81	55	finally
        //   32	42	68	java/lang/Exception
      }
    };

    protected final void doStart()
    {
      this.executorService = AbstractScheduledService.this.executor();
      this.executorService.execute(new Runnable()
      {
        public void run()
        {
          AbstractScheduledService.1.this.lock.lock();
          try
          {
            AbstractScheduledService.this.startUp();
            AbstractScheduledService.1.access$302(AbstractScheduledService.1.this, AbstractScheduledService.this.scheduler().schedule(AbstractScheduledService.this.delegate, AbstractScheduledService.1.this.executorService, AbstractScheduledService.1.this.task));
            AbstractScheduledService.1.this.notifyStarted();
            return;
          }
          catch (Throwable localThrowable)
          {
            AbstractScheduledService.1.this.notifyFailed(localThrowable);
            throw Throwables.propagate(localThrowable);
          }
          finally
          {
            AbstractScheduledService.1.this.lock.unlock();
          }
        }
      });
    }

    protected final void doStop()
    {
      this.runningTask.cancel(false);
      this.executorService.execute(new Runnable()
      {
        // ERROR //
        public void run()
        {
          // Byte code:
          //   0: aload_0
          //   1: getfield 17	com/google/common/util/concurrent/AbstractScheduledService$1$3:this$1	Lcom/google/common/util/concurrent/AbstractScheduledService$1;
          //   4: invokestatic 26	com/google/common/util/concurrent/AbstractScheduledService$1:access$100	(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;
          //   7: invokevirtual 31	java/util/concurrent/locks/ReentrantLock:lock	()V
          //   10: aload_0
          //   11: getfield 17	com/google/common/util/concurrent/AbstractScheduledService$1$3:this$1	Lcom/google/common/util/concurrent/AbstractScheduledService$1;
          //   14: invokevirtual 35	com/google/common/util/concurrent/AbstractScheduledService$1:state	()Lcom/google/common/util/concurrent/Service$State;
          //   17: astore_3
          //   18: getstatic 41	com/google/common/util/concurrent/Service$State:STOPPING	Lcom/google/common/util/concurrent/Service$State;
          //   21: astore 4
          //   23: aload_3
          //   24: aload 4
          //   26: if_acmpeq +14 -> 40
          //   29: aload_0
          //   30: getfield 17	com/google/common/util/concurrent/AbstractScheduledService$1$3:this$1	Lcom/google/common/util/concurrent/AbstractScheduledService$1;
          //   33: invokestatic 26	com/google/common/util/concurrent/AbstractScheduledService$1:access$100	(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;
          //   36: invokevirtual 44	java/util/concurrent/locks/ReentrantLock:unlock	()V
          //   39: return
          //   40: aload_0
          //   41: getfield 17	com/google/common/util/concurrent/AbstractScheduledService$1$3:this$1	Lcom/google/common/util/concurrent/AbstractScheduledService$1;
          //   44: getfield 48	com/google/common/util/concurrent/AbstractScheduledService$1:this$0	Lcom/google/common/util/concurrent/AbstractScheduledService;
          //   47: invokevirtual 53	com/google/common/util/concurrent/AbstractScheduledService:shutDown	()V
          //   50: aload_0
          //   51: getfield 17	com/google/common/util/concurrent/AbstractScheduledService$1$3:this$1	Lcom/google/common/util/concurrent/AbstractScheduledService$1;
          //   54: invokestatic 26	com/google/common/util/concurrent/AbstractScheduledService$1:access$100	(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;
          //   57: invokevirtual 44	java/util/concurrent/locks/ReentrantLock:unlock	()V
          //   60: aload_0
          //   61: getfield 17	com/google/common/util/concurrent/AbstractScheduledService$1$3:this$1	Lcom/google/common/util/concurrent/AbstractScheduledService$1;
          //   64: invokevirtual 56	com/google/common/util/concurrent/AbstractScheduledService$1:notifyStopped	()V
          //   67: return
          //   68: astore_1
          //   69: aload_0
          //   70: getfield 17	com/google/common/util/concurrent/AbstractScheduledService$1$3:this$1	Lcom/google/common/util/concurrent/AbstractScheduledService$1;
          //   73: aload_1
          //   74: invokevirtual 60	com/google/common/util/concurrent/AbstractScheduledService$1:notifyFailed	(Ljava/lang/Throwable;)V
          //   77: aload_1
          //   78: invokestatic 66	com/google/common/base/Throwables:propagate	(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
          //   81: athrow
          //   82: astore_2
          //   83: aload_0
          //   84: getfield 17	com/google/common/util/concurrent/AbstractScheduledService$1$3:this$1	Lcom/google/common/util/concurrent/AbstractScheduledService$1;
          //   87: invokestatic 26	com/google/common/util/concurrent/AbstractScheduledService$1:access$100	(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;
          //   90: invokevirtual 44	java/util/concurrent/locks/ReentrantLock:unlock	()V
          //   93: aload_2
          //   94: athrow
          //
          // Exception table:
          //   from	to	target	type
          //   0	10	68	java/lang/Throwable
          //   29	39	68	java/lang/Throwable
          //   50	67	68	java/lang/Throwable
          //   83	95	68	java/lang/Throwable
          //   10	23	82	finally
          //   40	50	82	finally
        }
      });
    }
  };

  public final void addListener(Service.Listener paramListener, Executor paramExecutor)
  {
    this.delegate.addListener(paramListener, paramExecutor);
  }

  protected ScheduledExecutorService executor()
  {
    final ScheduledExecutorService localScheduledExecutorService = Executors.newSingleThreadScheduledExecutor(new ThreadFactory()
    {
      public Thread newThread(Runnable paramAnonymousRunnable)
      {
        return MoreExecutors.newThread(AbstractScheduledService.this.serviceName(), paramAnonymousRunnable);
      }
    });
    addListener(new Service.Listener()
    {
      public void failed(Service.State paramAnonymousState, Throwable paramAnonymousThrowable)
      {
        localScheduledExecutorService.shutdown();
      }

      public void running()
      {
      }

      public void starting()
      {
      }

      public void stopping(Service.State paramAnonymousState)
      {
      }

      public void terminated(Service.State paramAnonymousState)
      {
        localScheduledExecutorService.shutdown();
      }
    }
    , MoreExecutors.sameThreadExecutor());
    return localScheduledExecutorService;
  }

  public final Throwable failureCause()
  {
    return this.delegate.failureCause();
  }

  public final boolean isRunning()
  {
    return this.delegate.isRunning();
  }

  protected abstract void runOneIteration()
    throws Exception;

  protected abstract Scheduler scheduler();

  protected String serviceName()
  {
    return getClass().getSimpleName();
  }

  protected void shutDown()
    throws Exception
  {
  }

  public final ListenableFuture<Service.State> start()
  {
    return this.delegate.start();
  }

  public final Service.State startAndWait()
  {
    return this.delegate.startAndWait();
  }

  protected void startUp()
    throws Exception
  {
  }

  public final Service.State state()
  {
    return this.delegate.state();
  }

  public final ListenableFuture<Service.State> stop()
  {
    return this.delegate.stop();
  }

  public final Service.State stopAndWait()
  {
    return this.delegate.stopAndWait();
  }

  public String toString()
  {
    return serviceName() + " [" + state() + "]";
  }

  @Beta
  public static abstract class CustomScheduler extends AbstractScheduledService.Scheduler
  {
    public CustomScheduler()
    {
      super();
    }

    protected abstract Schedule getNextSchedule()
      throws Exception;

    final Future<?> schedule(AbstractService paramAbstractService, ScheduledExecutorService paramScheduledExecutorService, Runnable paramRunnable)
    {
      ReschedulableCallable localReschedulableCallable = new ReschedulableCallable(paramAbstractService, paramScheduledExecutorService, paramRunnable);
      localReschedulableCallable.reschedule();
      return localReschedulableCallable;
    }

    private class ReschedulableCallable extends ForwardingFuture<Void>
      implements Callable<Void>
    {

      @GuardedBy("lock")
      private Future<Void> currentFuture;
      private final ScheduledExecutorService executor;
      private final ReentrantLock lock = new ReentrantLock();
      private final AbstractService service;
      private final Runnable wrappedRunnable;

      ReschedulableCallable(AbstractService paramScheduledExecutorService, ScheduledExecutorService paramRunnable, Runnable arg4)
      {
        Object localObject;
        this.wrappedRunnable = localObject;
        this.executor = paramRunnable;
        this.service = paramScheduledExecutorService;
      }

      public Void call()
        throws Exception
      {
        this.wrappedRunnable.run();
        reschedule();
        return null;
      }

      public boolean cancel(boolean paramBoolean)
      {
        this.lock.lock();
        try
        {
          boolean bool = this.currentFuture.cancel(paramBoolean);
          return bool;
        }
        finally
        {
          this.lock.unlock();
        }
      }

      protected Future<Void> delegate()
      {
        throw new UnsupportedOperationException("Only cancel is supported by this future");
      }

      public void reschedule()
      {
        this.lock.lock();
        try
        {
          if ((this.currentFuture == null) || (!this.currentFuture.isCancelled()))
          {
            AbstractScheduledService.CustomScheduler.Schedule localSchedule = AbstractScheduledService.CustomScheduler.this.getNextSchedule();
            this.currentFuture = this.executor.schedule(this, AbstractScheduledService.CustomScheduler.Schedule.access$700(localSchedule), AbstractScheduledService.CustomScheduler.Schedule.access$800(localSchedule));
          }
          return;
        }
        catch (Throwable localThrowable)
        {
          this.service.notifyFailed(localThrowable);
          return;
        }
        finally
        {
          this.lock.unlock();
        }
      }
    }

    @Beta
    protected static final class Schedule
    {
      private final long delay;
      private final TimeUnit unit;

      public Schedule(long paramLong, TimeUnit paramTimeUnit)
      {
        this.delay = paramLong;
        this.unit = ((TimeUnit)Preconditions.checkNotNull(paramTimeUnit));
      }
    }
  }

  public static abstract class Scheduler
  {
    public static Scheduler newFixedDelaySchedule(long paramLong1, long paramLong2, final TimeUnit paramTimeUnit)
    {
      return new Scheduler(paramLong1)
      {
        public Future<?> schedule(AbstractService paramAnonymousAbstractService, ScheduledExecutorService paramAnonymousScheduledExecutorService, Runnable paramAnonymousRunnable)
        {
          return paramAnonymousScheduledExecutorService.scheduleWithFixedDelay(paramAnonymousRunnable, this.val$initialDelay, paramTimeUnit, this.val$unit);
        }
      };
    }

    public static Scheduler newFixedRateSchedule(long paramLong1, long paramLong2, final TimeUnit paramTimeUnit)
    {
      return new Scheduler(paramLong1)
      {
        public Future<?> schedule(AbstractService paramAnonymousAbstractService, ScheduledExecutorService paramAnonymousScheduledExecutorService, Runnable paramAnonymousRunnable)
        {
          return paramAnonymousScheduledExecutorService.scheduleAtFixedRate(paramAnonymousRunnable, this.val$initialDelay, paramTimeUnit, this.val$unit);
        }
      };
    }

    abstract Future<?> schedule(AbstractService paramAbstractService, ScheduledExecutorService paramScheduledExecutorService, Runnable paramRunnable);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.AbstractScheduledService
 * JD-Core Version:    0.6.2
 */