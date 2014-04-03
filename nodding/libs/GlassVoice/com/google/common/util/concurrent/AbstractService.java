package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.collect.Lists;
import com.google.common.collect.Queues;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.Immutable;

@Beta
public abstract class AbstractService
  implements Service
{
  private static final Logger logger = Logger.getLogger(AbstractService.class.getName());

  @GuardedBy("lock")
  private final List<ListenerExecutorPair> listeners = Lists.newArrayList();
  private final ReentrantLock lock = new ReentrantLock();

  @GuardedBy("queuedListeners")
  private final Queue<Runnable> queuedListeners = Queues.newConcurrentLinkedQueue();
  private final Transition shutdown = new Transition(null);

  @GuardedBy("lock")
  private volatile StateSnapshot snapshot = new StateSnapshot(Service.State.NEW);
  private final Transition startup = new Transition(null);

  protected AbstractService()
  {
    addListener(new Service.Listener()
    {
      public void failed(Service.State paramAnonymousState, Throwable paramAnonymousThrowable)
      {
        switch (AbstractService.7.$SwitchMap$com$google$common$util$concurrent$Service$State[paramAnonymousState.ordinal()])
        {
        default:
          throw new AssertionError("Unexpected from state: " + paramAnonymousState);
        case 1:
          AbstractService.this.startup.setException(paramAnonymousThrowable);
          AbstractService.this.shutdown.setException(new Exception("Service failed to start.", paramAnonymousThrowable));
          return;
        case 2:
          AbstractService.this.shutdown.setException(new Exception("Service failed while running", paramAnonymousThrowable));
          return;
        case 3:
        }
        AbstractService.this.shutdown.setException(paramAnonymousThrowable);
      }

      public void running()
      {
        AbstractService.this.startup.set(Service.State.RUNNING);
      }

      public void starting()
      {
      }

      public void stopping(Service.State paramAnonymousState)
      {
        if (paramAnonymousState == Service.State.STARTING)
          AbstractService.this.startup.set(Service.State.STOPPING);
      }

      public void terminated(Service.State paramAnonymousState)
      {
        if (paramAnonymousState == Service.State.NEW)
          AbstractService.this.startup.set(Service.State.TERMINATED);
        AbstractService.this.shutdown.set(Service.State.TERMINATED);
      }
    }
    , MoreExecutors.sameThreadExecutor());
  }

  private void executeListeners()
  {
    if (!this.lock.isHeldByCurrentThread())
      synchronized (this.queuedListeners)
      {
        Runnable localRunnable = (Runnable)this.queuedListeners.poll();
        if (localRunnable != null)
          localRunnable.run();
      }
  }

  @GuardedBy("lock")
  private void failed(final Service.State paramState, final Throwable paramThrowable)
  {
    Iterator localIterator = this.listeners.iterator();
    while (localIterator.hasNext())
    {
      final ListenerExecutorPair localListenerExecutorPair = (ListenerExecutorPair)localIterator.next();
      this.queuedListeners.add(new Runnable()
      {
        public void run()
        {
          localListenerExecutorPair.execute(new Runnable()
          {
            public void run()
            {
              AbstractService.6.this.val$pair.listener.failed(AbstractService.6.this.val$from, AbstractService.6.this.val$cause);
            }
          });
        }
      });
    }
    this.listeners.clear();
  }

  @GuardedBy("lock")
  private void running()
  {
    Iterator localIterator = this.listeners.iterator();
    while (localIterator.hasNext())
    {
      final ListenerExecutorPair localListenerExecutorPair = (ListenerExecutorPair)localIterator.next();
      this.queuedListeners.add(new Runnable()
      {
        public void run()
        {
          localListenerExecutorPair.execute(new Runnable()
          {
            public void run()
            {
              AbstractService.3.this.val$pair.listener.running();
            }
          });
        }
      });
    }
  }

  @GuardedBy("lock")
  private void starting()
  {
    Iterator localIterator = this.listeners.iterator();
    while (localIterator.hasNext())
    {
      final ListenerExecutorPair localListenerExecutorPair = (ListenerExecutorPair)localIterator.next();
      this.queuedListeners.add(new Runnable()
      {
        public void run()
        {
          localListenerExecutorPair.execute(new Runnable()
          {
            public void run()
            {
              AbstractService.2.this.val$pair.listener.starting();
            }
          });
        }
      });
    }
  }

  @GuardedBy("lock")
  private void stopping(final Service.State paramState)
  {
    Iterator localIterator = this.listeners.iterator();
    while (localIterator.hasNext())
    {
      final ListenerExecutorPair localListenerExecutorPair = (ListenerExecutorPair)localIterator.next();
      this.queuedListeners.add(new Runnable()
      {
        public void run()
        {
          localListenerExecutorPair.execute(new Runnable()
          {
            public void run()
            {
              AbstractService.4.this.val$pair.listener.stopping(AbstractService.4.this.val$from);
            }
          });
        }
      });
    }
  }

  @GuardedBy("lock")
  private void terminated(final Service.State paramState)
  {
    Iterator localIterator = this.listeners.iterator();
    while (localIterator.hasNext())
    {
      final ListenerExecutorPair localListenerExecutorPair = (ListenerExecutorPair)localIterator.next();
      this.queuedListeners.add(new Runnable()
      {
        public void run()
        {
          localListenerExecutorPair.execute(new Runnable()
          {
            public void run()
            {
              AbstractService.5.this.val$pair.listener.terminated(AbstractService.5.this.val$from);
            }
          });
        }
      });
    }
    this.listeners.clear();
  }

  public final void addListener(Service.Listener paramListener, Executor paramExecutor)
  {
    Preconditions.checkNotNull(paramListener, "listener");
    Preconditions.checkNotNull(paramExecutor, "executor");
    this.lock.lock();
    try
    {
      if ((this.snapshot.state != Service.State.TERMINATED) && (this.snapshot.state != Service.State.FAILED))
        this.listeners.add(new ListenerExecutorPair(paramListener, paramExecutor));
      return;
    }
    finally
    {
      this.lock.unlock();
    }
  }

  protected abstract void doStart();

  protected abstract void doStop();

  public final Throwable failureCause()
  {
    return this.snapshot.failureCause();
  }

  public final boolean isRunning()
  {
    return state() == Service.State.RUNNING;
  }

  // ERROR //
  protected final void notifyFailed(Throwable paramThrowable)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 217	com/google/common/base/Preconditions:checkNotNull	(Ljava/lang/Object;)Ljava/lang/Object;
    //   4: pop
    //   5: aload_0
    //   6: getfield 48	com/google/common/util/concurrent/AbstractService:lock	Ljava/util/concurrent/locks/ReentrantLock;
    //   9: invokevirtual 184	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   12: getstatic 223	com/google/common/util/concurrent/AbstractService$7:$SwitchMap$com$google$common$util$concurrent$Service$State	[I
    //   15: aload_0
    //   16: getfield 86	com/google/common/util/concurrent/AbstractService:snapshot	Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;
    //   19: getfield 187	com/google/common/util/concurrent/AbstractService$StateSnapshot:state	Lcom/google/common/util/concurrent/Service$State;
    //   22: invokevirtual 227	com/google/common/util/concurrent/Service$State:ordinal	()I
    //   25: iaload
    //   26: tableswitch	default:+38 -> 64, 1:+119->145, 2:+119->145, 3:+119->145, 4:+85->111, 5:+151->177, 6:+85->111
    //   65: nop
    //   66: <illegal opcode>
    //   67: dup
    //   68: new 231	java/lang/StringBuilder
    //   71: dup
    //   72: invokespecial 232	java/lang/StringBuilder:<init>	()V
    //   75: ldc 234
    //   77: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: aload_0
    //   81: getfield 86	com/google/common/util/concurrent/AbstractService:snapshot	Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;
    //   84: getfield 187	com/google/common/util/concurrent/AbstractService$StateSnapshot:state	Lcom/google/common/util/concurrent/Service$State;
    //   87: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   90: invokevirtual 244	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   93: invokespecial 247	java/lang/AssertionError:<init>	(Ljava/lang/Object;)V
    //   96: athrow
    //   97: astore_3
    //   98: aload_0
    //   99: getfield 48	com/google/common/util/concurrent/AbstractService:lock	Ljava/util/concurrent/locks/ReentrantLock;
    //   102: invokevirtual 199	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   105: aload_0
    //   106: invokespecial 249	com/google/common/util/concurrent/AbstractService:executeListeners	()V
    //   109: aload_3
    //   110: athrow
    //   111: new 251	java/lang/IllegalStateException
    //   114: dup
    //   115: new 231	java/lang/StringBuilder
    //   118: dup
    //   119: invokespecial 232	java/lang/StringBuilder:<init>	()V
    //   122: ldc 253
    //   124: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: aload_0
    //   128: getfield 86	com/google/common/util/concurrent/AbstractService:snapshot	Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;
    //   131: getfield 187	com/google/common/util/concurrent/AbstractService$StateSnapshot:state	Lcom/google/common/util/concurrent/Service$State;
    //   134: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   137: invokevirtual 244	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   140: aload_1
    //   141: invokespecial 256	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   144: athrow
    //   145: aload_0
    //   146: getfield 86	com/google/common/util/concurrent/AbstractService:snapshot	Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;
    //   149: getfield 187	com/google/common/util/concurrent/AbstractService$StateSnapshot:state	Lcom/google/common/util/concurrent/Service$State;
    //   152: astore 4
    //   154: aload_0
    //   155: new 75	com/google/common/util/concurrent/AbstractService$StateSnapshot
    //   158: dup
    //   159: getstatic 193	com/google/common/util/concurrent/Service$State:FAILED	Lcom/google/common/util/concurrent/Service$State;
    //   162: iconst_0
    //   163: aload_1
    //   164: invokespecial 259	com/google/common/util/concurrent/AbstractService$StateSnapshot:<init>	(Lcom/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V
    //   167: putfield 86	com/google/common/util/concurrent/AbstractService:snapshot	Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;
    //   170: aload_0
    //   171: aload 4
    //   173: aload_1
    //   174: invokespecial 261	com/google/common/util/concurrent/AbstractService:failed	(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    //   177: aload_0
    //   178: getfield 48	com/google/common/util/concurrent/AbstractService:lock	Ljava/util/concurrent/locks/ReentrantLock;
    //   181: invokevirtual 199	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   184: aload_0
    //   185: invokespecial 249	com/google/common/util/concurrent/AbstractService:executeListeners	()V
    //   188: return
    //
    // Exception table:
    //   from	to	target	type
    //   12	64	97	finally
    //   64	97	97	finally
    //   111	145	97	finally
    //   145	177	97	finally
  }

  protected final void notifyStarted()
  {
    this.lock.lock();
    try
    {
      if (this.snapshot.state != Service.State.STARTING)
      {
        IllegalStateException localIllegalStateException = new IllegalStateException("Cannot notifyStarted() when the service is " + this.snapshot.state);
        notifyFailed(localIllegalStateException);
        throw localIllegalStateException;
      }
    }
    finally
    {
      this.lock.unlock();
      executeListeners();
    }
    if (this.snapshot.shutdownWhenStartupFinishes)
    {
      this.snapshot = new StateSnapshot(Service.State.STOPPING);
      doStop();
    }
    while (true)
    {
      this.lock.unlock();
      executeListeners();
      return;
      this.snapshot = new StateSnapshot(Service.State.RUNNING);
      running();
    }
  }

  protected final void notifyStopped()
  {
    this.lock.lock();
    try
    {
      if ((this.snapshot.state != Service.State.STOPPING) && (this.snapshot.state != Service.State.RUNNING))
      {
        IllegalStateException localIllegalStateException = new IllegalStateException("Cannot notifyStopped() when the service is " + this.snapshot.state);
        notifyFailed(localIllegalStateException);
        throw localIllegalStateException;
      }
    }
    finally
    {
      this.lock.unlock();
      executeListeners();
    }
    Service.State localState = this.snapshot.state;
    this.snapshot = new StateSnapshot(Service.State.TERMINATED);
    terminated(localState);
    this.lock.unlock();
    executeListeners();
  }

  public final ListenableFuture<Service.State> start()
  {
    this.lock.lock();
    try
    {
      if (this.snapshot.state == Service.State.NEW)
      {
        this.snapshot = new StateSnapshot(Service.State.STARTING);
        starting();
        doStart();
      }
      return this.startup;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        notifyFailed(localThrowable);
        this.lock.unlock();
        executeListeners();
      }
    }
    finally
    {
      this.lock.unlock();
      executeListeners();
    }
  }

  public Service.State startAndWait()
  {
    return (Service.State)Futures.getUnchecked(start());
  }

  public final Service.State state()
  {
    return this.snapshot.externalState();
  }

  // ERROR //
  public final ListenableFuture<Service.State> stop()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 48	com/google/common/util/concurrent/AbstractService:lock	Ljava/util/concurrent/locks/ReentrantLock;
    //   4: invokevirtual 184	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   7: getstatic 223	com/google/common/util/concurrent/AbstractService$7:$SwitchMap$com$google$common$util$concurrent$Service$State	[I
    //   10: aload_0
    //   11: getfield 86	com/google/common/util/concurrent/AbstractService:snapshot	Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;
    //   14: getfield 187	com/google/common/util/concurrent/AbstractService$StateSnapshot:state	Lcom/google/common/util/concurrent/Service$State;
    //   17: invokevirtual 227	com/google/common/util/concurrent/Service$State:ordinal	()I
    //   20: iaload
    //   21: tableswitch	default:+39 -> 60, 1:+129->150, 2:+169->190, 3:+115->136, 4:+115->136, 5:+115->136, 6:+94->115
    //   61: nop
    //   62: <illegal opcode>
    //   63: dup
    //   64: new 231	java/lang/StringBuilder
    //   67: dup
    //   68: invokespecial 232	java/lang/StringBuilder:<init>	()V
    //   71: ldc 234
    //   73: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: aload_0
    //   77: getfield 86	com/google/common/util/concurrent/AbstractService:snapshot	Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;
    //   80: getfield 187	com/google/common/util/concurrent/AbstractService$StateSnapshot:state	Lcom/google/common/util/concurrent/Service$State;
    //   83: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   86: invokevirtual 244	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   89: invokespecial 247	java/lang/AssertionError:<init>	(Ljava/lang/Object;)V
    //   92: athrow
    //   93: astore_2
    //   94: aload_0
    //   95: aload_2
    //   96: invokevirtual 272	com/google/common/util/concurrent/AbstractService:notifyFailed	(Ljava/lang/Throwable;)V
    //   99: aload_0
    //   100: getfield 48	com/google/common/util/concurrent/AbstractService:lock	Ljava/util/concurrent/locks/ReentrantLock;
    //   103: invokevirtual 199	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   106: aload_0
    //   107: invokespecial 249	com/google/common/util/concurrent/AbstractService:executeListeners	()V
    //   110: aload_0
    //   111: getfield 57	com/google/common/util/concurrent/AbstractService:shutdown	Lcom/google/common/util/concurrent/AbstractService$Transition;
    //   114: areturn
    //   115: aload_0
    //   116: new 75	com/google/common/util/concurrent/AbstractService$StateSnapshot
    //   119: dup
    //   120: getstatic 190	com/google/common/util/concurrent/Service$State:TERMINATED	Lcom/google/common/util/concurrent/Service$State;
    //   123: invokespecial 84	com/google/common/util/concurrent/AbstractService$StateSnapshot:<init>	(Lcom/google/common/util/concurrent/Service$State;)V
    //   126: putfield 86	com/google/common/util/concurrent/AbstractService:snapshot	Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;
    //   129: aload_0
    //   130: getstatic 81	com/google/common/util/concurrent/Service$State:NEW	Lcom/google/common/util/concurrent/Service$State;
    //   133: invokespecial 288	com/google/common/util/concurrent/AbstractService:terminated	(Lcom/google/common/util/concurrent/Service$State;)V
    //   136: aload_0
    //   137: getfield 48	com/google/common/util/concurrent/AbstractService:lock	Ljava/util/concurrent/locks/ReentrantLock;
    //   140: invokevirtual 199	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   143: aload_0
    //   144: invokespecial 249	com/google/common/util/concurrent/AbstractService:executeListeners	()V
    //   147: goto -37 -> 110
    //   150: aload_0
    //   151: new 75	com/google/common/util/concurrent/AbstractService$StateSnapshot
    //   154: dup
    //   155: getstatic 265	com/google/common/util/concurrent/Service$State:STARTING	Lcom/google/common/util/concurrent/Service$State;
    //   158: iconst_1
    //   159: aconst_null
    //   160: invokespecial 259	com/google/common/util/concurrent/AbstractService$StateSnapshot:<init>	(Lcom/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V
    //   163: putfield 86	com/google/common/util/concurrent/AbstractService:snapshot	Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;
    //   166: aload_0
    //   167: getstatic 265	com/google/common/util/concurrent/Service$State:STARTING	Lcom/google/common/util/concurrent/Service$State;
    //   170: invokespecial 311	com/google/common/util/concurrent/AbstractService:stopping	(Lcom/google/common/util/concurrent/Service$State;)V
    //   173: goto -37 -> 136
    //   176: astore_1
    //   177: aload_0
    //   178: getfield 48	com/google/common/util/concurrent/AbstractService:lock	Ljava/util/concurrent/locks/ReentrantLock;
    //   181: invokevirtual 199	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   184: aload_0
    //   185: invokespecial 249	com/google/common/util/concurrent/AbstractService:executeListeners	()V
    //   188: aload_1
    //   189: athrow
    //   190: aload_0
    //   191: new 75	com/google/common/util/concurrent/AbstractService$StateSnapshot
    //   194: dup
    //   195: getstatic 279	com/google/common/util/concurrent/Service$State:STOPPING	Lcom/google/common/util/concurrent/Service$State;
    //   198: invokespecial 84	com/google/common/util/concurrent/AbstractService$StateSnapshot:<init>	(Lcom/google/common/util/concurrent/Service$State;)V
    //   201: putfield 86	com/google/common/util/concurrent/AbstractService:snapshot	Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;
    //   204: aload_0
    //   205: getstatic 212	com/google/common/util/concurrent/Service$State:RUNNING	Lcom/google/common/util/concurrent/Service$State;
    //   208: invokespecial 311	com/google/common/util/concurrent/AbstractService:stopping	(Lcom/google/common/util/concurrent/Service$State;)V
    //   211: aload_0
    //   212: invokevirtual 281	com/google/common/util/concurrent/AbstractService:doStop	()V
    //   215: goto -79 -> 136
    //
    // Exception table:
    //   from	to	target	type
    //   7	60	93	java/lang/Throwable
    //   60	93	93	java/lang/Throwable
    //   115	136	93	java/lang/Throwable
    //   150	173	93	java/lang/Throwable
    //   190	215	93	java/lang/Throwable
    //   7	60	176	finally
    //   60	93	176	finally
    //   94	99	176	finally
    //   115	136	176	finally
    //   150	173	176	finally
    //   190	215	176	finally
  }

  public Service.State stopAndWait()
  {
    return (Service.State)Futures.getUnchecked(stop());
  }

  public String toString()
  {
    return getClass().getSimpleName() + " [" + state() + "]";
  }

  private static class ListenerExecutorPair
  {
    final Executor executor;
    final Service.Listener listener;

    ListenerExecutorPair(Service.Listener paramListener, Executor paramExecutor)
    {
      this.listener = paramListener;
      this.executor = paramExecutor;
    }

    void execute(Runnable paramRunnable)
    {
      try
      {
        this.executor.execute(paramRunnable);
        return;
      }
      catch (Exception localException)
      {
        AbstractService.logger.log(Level.SEVERE, "Exception while executing listener " + this.listener + " with executor " + this.executor, localException);
      }
    }
  }

  @Immutable
  private static final class StateSnapshot
  {

    @Nullable
    final Throwable failure;
    final boolean shutdownWhenStartupFinishes;
    final Service.State state;

    StateSnapshot(Service.State paramState)
    {
      this(paramState, false, null);
    }

    StateSnapshot(Service.State paramState, boolean paramBoolean, @Nullable Throwable paramThrowable)
    {
      boolean bool1;
      int i;
      label40: int j;
      if ((!paramBoolean) || (paramState == Service.State.STARTING))
      {
        bool1 = true;
        Preconditions.checkArgument(bool1, "shudownWhenStartupFinishes can only be set if state is STARTING. Got %s instead.", new Object[] { paramState });
        if (paramThrowable == null)
          break label102;
        i = 1;
        if (paramState != Service.State.FAILED)
          break label108;
        j = 1;
        label50: if ((i ^ j) != 0)
          break label114;
      }
      label102: label108: label114: for (boolean bool2 = true; ; bool2 = false)
      {
        Preconditions.checkArgument(bool2, "A failure cause should be set if and only if the state is failed.  Got %s and %s instead.", new Object[] { paramState, paramThrowable });
        this.state = paramState;
        this.shutdownWhenStartupFinishes = paramBoolean;
        this.failure = paramThrowable;
        return;
        bool1 = false;
        break;
        i = 0;
        break label40;
        j = 0;
        break label50;
      }
    }

    Service.State externalState()
    {
      if ((this.shutdownWhenStartupFinishes) && (this.state == Service.State.STARTING))
        return Service.State.STOPPING;
      return this.state;
    }

    Throwable failureCause()
    {
      if (this.state == Service.State.FAILED);
      for (boolean bool = true; ; bool = false)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.state;
        Preconditions.checkState(bool, "failureCause() is only valid if the service has failed, service is %s", arrayOfObject);
        return this.failure;
      }
    }
  }

  private class Transition extends AbstractFuture<Service.State>
  {
    private Transition()
    {
    }

    public Service.State get(long paramLong, TimeUnit paramTimeUnit)
      throws InterruptedException, TimeoutException, ExecutionException
    {
      try
      {
        Service.State localState = (Service.State)super.get(paramLong, paramTimeUnit);
        return localState;
      }
      catch (TimeoutException localTimeoutException)
      {
      }
      throw new TimeoutException(AbstractService.this.toString());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.AbstractService
 * JD-Core Version:    0.6.2
 */