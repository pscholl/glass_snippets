package com.google.common.util.concurrent;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.collect.Lists;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class ExecutionList
{

  @VisibleForTesting
  static final Logger log = Logger.getLogger(ExecutionList.class.getName());
  private boolean executed = false;
  private final Queue<RunnableExecutorPair> runnables = Lists.newLinkedList();

  public void add(Runnable paramRunnable, Executor paramExecutor)
  {
    Preconditions.checkNotNull(paramRunnable, "Runnable was null.");
    Preconditions.checkNotNull(paramExecutor, "Executor was null.");
    int i = 0;
    synchronized (this.runnables)
    {
      if (!this.executed)
      {
        this.runnables.add(new RunnableExecutorPair(paramRunnable, paramExecutor));
        if (i != 0)
          new RunnableExecutorPair(paramRunnable, paramExecutor).execute();
        return;
      }
      i = 1;
    }
  }

  public void execute()
  {
    synchronized (this.runnables)
    {
      if (this.executed)
        return;
      this.executed = true;
      if (!this.runnables.isEmpty())
        ((RunnableExecutorPair)this.runnables.poll()).execute();
    }
  }

  private static class RunnableExecutorPair
  {
    final Executor executor;
    final Runnable runnable;

    RunnableExecutorPair(Runnable paramRunnable, Executor paramExecutor)
    {
      this.runnable = paramRunnable;
      this.executor = paramExecutor;
    }

    void execute()
    {
      try
      {
        this.executor.execute(this.runnable);
        return;
      }
      catch (RuntimeException localRuntimeException)
      {
        ExecutionList.log.log(Level.SEVERE, "RuntimeException while executing runnable " + this.runnable + " with executor " + this.executor, localRuntimeException);
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.ExecutionList
 * JD-Core Version:    0.6.2
 */