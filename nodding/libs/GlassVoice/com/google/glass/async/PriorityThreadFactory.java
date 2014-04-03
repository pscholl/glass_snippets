package com.google.glass.async;

import com.google.glass.logging.Log;
import java.util.concurrent.ThreadFactory;

public class PriorityThreadFactory
  implements ThreadFactory
{
  private static final String TAG = PriorityThreadFactory.class.getSimpleName();
  private int count;
  private final String name;
  private final int priority;
  private final Thread.UncaughtExceptionHandler uncaughtExceptionHandler;

  public PriorityThreadFactory(int paramInt, String paramString)
  {
    this.priority = paramInt;
    this.name = paramString;
    this.uncaughtExceptionHandler = Thread.currentThread().getUncaughtExceptionHandler();
  }

  public Thread newThread(Runnable paramRunnable)
  {
    Thread localThread = new Thread(paramRunnable);
    StringBuilder localStringBuilder = new StringBuilder().append(this.name).append("-");
    int i = this.count;
    this.count = (i + 1);
    localThread.setName(i);
    localThread.setPriority(this.priority);
    localThread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler()
    {
      public void uncaughtException(Thread paramAnonymousThread, Throwable paramAnonymousThrowable)
      {
        Log.e(PriorityThreadFactory.TAG + "/" + PriorityThreadFactory.this.name, paramAnonymousThrowable, "Uncaught exception!", new Object[0]);
        PriorityThreadFactory.this.uncaughtExceptionHandler.uncaughtException(paramAnonymousThread, paramAnonymousThrowable);
      }
    });
    return localThread;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.async.PriorityThreadFactory
 * JD-Core Version:    0.6.2
 */