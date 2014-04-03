package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import java.util.concurrent.Executor;

@Beta
public abstract interface Service
{
  public abstract void addListener(Listener paramListener, Executor paramExecutor);

  public abstract Throwable failureCause();

  public abstract boolean isRunning();

  public abstract ListenableFuture<State> start();

  public abstract State startAndWait();

  public abstract State state();

  public abstract ListenableFuture<State> stop();

  public abstract State stopAndWait();

  @Beta
  public static abstract interface Listener
  {
    public abstract void failed(Service.State paramState, Throwable paramThrowable);

    public abstract void running();

    public abstract void starting();

    public abstract void stopping(Service.State paramState);

    public abstract void terminated(Service.State paramState);
  }

  @Beta
  public static enum State
  {
    static
    {
      RUNNING = new State("RUNNING", 2);
      STOPPING = new State("STOPPING", 3);
      TERMINATED = new State("TERMINATED", 4);
      FAILED = new State("FAILED", 5);
      State[] arrayOfState = new State[6];
      arrayOfState[0] = NEW;
      arrayOfState[1] = STARTING;
      arrayOfState[2] = RUNNING;
      arrayOfState[3] = STOPPING;
      arrayOfState[4] = TERMINATED;
      arrayOfState[5] = FAILED;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.Service
 * JD-Core Version:    0.6.2
 */