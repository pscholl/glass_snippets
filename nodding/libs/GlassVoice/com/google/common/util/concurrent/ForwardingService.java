package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.collect.ForwardingObject;
import java.util.concurrent.Executor;

@Deprecated
@Beta
public abstract class ForwardingService extends ForwardingObject
  implements Service
{
  public void addListener(Service.Listener paramListener, Executor paramExecutor)
  {
    delegate().addListener(paramListener, paramExecutor);
  }

  protected abstract Service delegate();

  public Throwable failureCause()
  {
    return delegate().failureCause();
  }

  public boolean isRunning()
  {
    return delegate().isRunning();
  }

  protected Service.State standardStartAndWait()
  {
    return (Service.State)Futures.getUnchecked(start());
  }

  protected Service.State standardStopAndWait()
  {
    return (Service.State)Futures.getUnchecked(stop());
  }

  public ListenableFuture<Service.State> start()
  {
    return delegate().start();
  }

  public Service.State startAndWait()
  {
    return delegate().startAndWait();
  }

  public Service.State state()
  {
    return delegate().state();
  }

  public ListenableFuture<Service.State> stop()
  {
    return delegate().stop();
  }

  public Service.State stopAndWait()
  {
    return delegate().stopAndWait();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.ForwardingService
 * JD-Core Version:    0.6.2
 */