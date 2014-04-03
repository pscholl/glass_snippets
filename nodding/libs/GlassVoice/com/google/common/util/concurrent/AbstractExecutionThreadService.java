package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import java.util.concurrent.Executor;
import java.util.logging.Logger;

@Beta
public abstract class AbstractExecutionThreadService
  implements Service
{
  private static final Logger logger = Logger.getLogger(AbstractExecutionThreadService.class.getName());
  private final Service delegate = new AbstractService()
  {
    protected final void doStart()
    {
      AbstractExecutionThreadService.this.executor().execute(new Runnable()
      {
        // ERROR //
        public void run()
        {
          // Byte code:
          //   0: aload_0
          //   1: getfield 17	com/google/common/util/concurrent/AbstractExecutionThreadService$1$1:this$1	Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;
          //   4: getfield 28	com/google/common/util/concurrent/AbstractExecutionThreadService$1:this$0	Lcom/google/common/util/concurrent/AbstractExecutionThreadService;
          //   7: invokevirtual 33	com/google/common/util/concurrent/AbstractExecutionThreadService:startUp	()V
          //   10: aload_0
          //   11: getfield 17	com/google/common/util/concurrent/AbstractExecutionThreadService$1$1:this$1	Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;
          //   14: invokevirtual 36	com/google/common/util/concurrent/AbstractExecutionThreadService$1:notifyStarted	()V
          //   17: aload_0
          //   18: getfield 17	com/google/common/util/concurrent/AbstractExecutionThreadService$1$1:this$1	Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;
          //   21: invokevirtual 40	com/google/common/util/concurrent/AbstractExecutionThreadService$1:isRunning	()Z
          //   24: istore_2
          //   25: iload_2
          //   26: ifeq +13 -> 39
          //   29: aload_0
          //   30: getfield 17	com/google/common/util/concurrent/AbstractExecutionThreadService$1$1:this$1	Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;
          //   33: getfield 28	com/google/common/util/concurrent/AbstractExecutionThreadService$1:this$0	Lcom/google/common/util/concurrent/AbstractExecutionThreadService;
          //   36: invokevirtual 42	com/google/common/util/concurrent/AbstractExecutionThreadService:run	()V
          //   39: aload_0
          //   40: getfield 17	com/google/common/util/concurrent/AbstractExecutionThreadService$1$1:this$1	Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;
          //   43: getfield 28	com/google/common/util/concurrent/AbstractExecutionThreadService$1:this$0	Lcom/google/common/util/concurrent/AbstractExecutionThreadService;
          //   46: invokevirtual 45	com/google/common/util/concurrent/AbstractExecutionThreadService:shutDown	()V
          //   49: aload_0
          //   50: getfield 17	com/google/common/util/concurrent/AbstractExecutionThreadService$1$1:this$1	Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;
          //   53: invokevirtual 48	com/google/common/util/concurrent/AbstractExecutionThreadService$1:notifyStopped	()V
          //   56: return
          //   57: astore_3
          //   58: aload_0
          //   59: getfield 17	com/google/common/util/concurrent/AbstractExecutionThreadService$1$1:this$1	Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;
          //   62: getfield 28	com/google/common/util/concurrent/AbstractExecutionThreadService$1:this$0	Lcom/google/common/util/concurrent/AbstractExecutionThreadService;
          //   65: invokevirtual 45	com/google/common/util/concurrent/AbstractExecutionThreadService:shutDown	()V
          //   68: aload_3
          //   69: athrow
          //   70: astore_1
          //   71: aload_0
          //   72: getfield 17	com/google/common/util/concurrent/AbstractExecutionThreadService$1$1:this$1	Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;
          //   75: aload_1
          //   76: invokevirtual 52	com/google/common/util/concurrent/AbstractExecutionThreadService$1:notifyFailed	(Ljava/lang/Throwable;)V
          //   79: aload_1
          //   80: invokestatic 58	com/google/common/base/Throwables:propagate	(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
          //   83: athrow
          //   84: astore 4
          //   86: invokestatic 62	com/google/common/util/concurrent/AbstractExecutionThreadService:access$000	()Ljava/util/logging/Logger;
          //   89: getstatic 68	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
          //   92: ldc 70
          //   94: aload 4
          //   96: invokevirtual 76	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
          //   99: goto -31 -> 68
          //
          // Exception table:
          //   from	to	target	type
          //   29	39	57	java/lang/Throwable
          //   0	25	70	java/lang/Throwable
          //   39	56	70	java/lang/Throwable
          //   58	68	70	java/lang/Throwable
          //   68	70	70	java/lang/Throwable
          //   86	99	70	java/lang/Throwable
          //   58	68	84	java/lang/Exception
        }
      });
    }

    protected void doStop()
    {
      AbstractExecutionThreadService.this.triggerShutdown();
    }
  };

  public final void addListener(Service.Listener paramListener, Executor paramExecutor)
  {
    this.delegate.addListener(paramListener, paramExecutor);
  }

  protected Executor executor()
  {
    return new Executor()
    {
      public void execute(Runnable paramAnonymousRunnable)
      {
        MoreExecutors.newThread(AbstractExecutionThreadService.this.serviceName(), paramAnonymousRunnable).start();
      }
    };
  }

  public final Throwable failureCause()
  {
    return this.delegate.failureCause();
  }

  public final boolean isRunning()
  {
    return this.delegate.isRunning();
  }

  protected abstract void run()
    throws Exception;

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

  protected void triggerShutdown()
  {
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.AbstractExecutionThreadService
 * JD-Core Version:    0.6.2
 */