package com.x.google.common.async;

import com.x.google.common.task.AbstractTask;

public abstract interface AsyncRequest
{
  public static final int FLAG_NONE = 0;
  public static final int FLAG_NOTIFY_OPEN = 2;
  public static final int FLAG_NOTIFY_RUNNING_PROGRESS = 1;
  public static final int STATE_CLOSED = 4;
  public static final int STATE_COMPLETED = 2;
  public static final int STATE_EXCEPTION = 3;
  public static final int STATE_INIT = 0;
  public static final int STATE_RUNNING = 1;

  public abstract void close();

  public abstract Exception getException();

  public abstract int getState();

  public abstract boolean hasException();

  public abstract boolean isCompletedOrException();

  public abstract boolean isInitialized();

  public abstract boolean isRunning();

  public abstract void reset();

  public abstract void submit(AbstractTask paramAbstractTask);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.async.AsyncRequest
 * JD-Core Version:    0.6.2
 */