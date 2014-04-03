package com.google.glass.util;

import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ThreadFactory;

public class ThreadCheckThreadFactory
  implements ThreadFactory
{
  private ThreadFactory delegate;
  private final Set<Thread> threads = Collections.newSetFromMap(new WeakHashMap());

  public ThreadCheckThreadFactory(ThreadFactory paramThreadFactory)
  {
    this.delegate = paramThreadFactory;
  }

  private RuntimeException wrongThread(Thread paramThread)
  {
    return new IllegalStateException("Called on a thread not created by this factory: " + paramThread.getName());
  }

  public void assertThread()
  {
    if (!checkThread())
      throw wrongThread(Thread.currentThread());
  }

  public void assertThread(Thread paramThread)
  {
    if (!checkThread(paramThread))
      throw wrongThread(paramThread);
  }

  public boolean checkThread()
  {
    return checkThread(Thread.currentThread());
  }

  public boolean checkThread(Thread paramThread)
  {
    return this.threads.contains(paramThread);
  }

  public Thread newThread(Runnable paramRunnable)
  {
    Thread localThread = this.delegate.newThread(paramRunnable);
    this.threads.add(localThread);
    return localThread;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.ThreadCheckThreadFactory
 * JD-Core Version:    0.6.2
 */