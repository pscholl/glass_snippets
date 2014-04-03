package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Throwables;
import java.util.concurrent.Executor;

@Beta
public abstract class AbstractIdleService
  implements Service
{
  private final Service delegate = new AbstractService()
  {
    protected final void doStart()
    {
      AbstractIdleService.this.executor().execute(new Runnable()
      {
        public void run()
        {
          try
          {
            AbstractIdleService.this.startUp();
            AbstractIdleService.1.this.notifyStarted();
            return;
          }
          catch (Throwable localThrowable)
          {
            AbstractIdleService.1.this.notifyFailed(localThrowable);
            throw Throwables.propagate(localThrowable);
          }
        }
      });
    }

    protected final void doStop()
    {
      AbstractIdleService.this.executor().execute(new Runnable()
      {
        public void run()
        {
          try
          {
            AbstractIdleService.this.shutDown();
            AbstractIdleService.1.this.notifyStopped();
            return;
          }
          catch (Throwable localThrowable)
          {
            AbstractIdleService.1.this.notifyFailed(localThrowable);
            throw Throwables.propagate(localThrowable);
          }
        }
      });
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
        MoreExecutors.newThread(AbstractIdleService.this.serviceName() + " " + this.val$state, paramAnonymousRunnable).start();
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

  protected String serviceName()
  {
    return getClass().getSimpleName();
  }

  protected abstract void shutDown()
    throws Exception;

  public final ListenableFuture<Service.State> start()
  {
    return this.delegate.start();
  }

  public final Service.State startAndWait()
  {
    return this.delegate.startAndWait();
  }

  protected abstract void startUp()
    throws Exception;

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
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.AbstractIdleService
 * JD-Core Version:    0.6.2
 */