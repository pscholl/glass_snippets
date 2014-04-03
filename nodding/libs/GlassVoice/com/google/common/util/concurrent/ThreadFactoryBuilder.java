package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

public final class ThreadFactoryBuilder
{
  private ThreadFactory backingThreadFactory = null;
  private Boolean daemon = null;
  private String nameFormat = null;
  private Integer priority = null;
  private Thread.UncaughtExceptionHandler uncaughtExceptionHandler = null;

  private static ThreadFactory build(ThreadFactoryBuilder paramThreadFactoryBuilder)
  {
    final String str = paramThreadFactoryBuilder.nameFormat;
    final Boolean localBoolean = paramThreadFactoryBuilder.daemon;
    final Integer localInteger = paramThreadFactoryBuilder.priority;
    final Thread.UncaughtExceptionHandler localUncaughtExceptionHandler = paramThreadFactoryBuilder.uncaughtExceptionHandler;
    ThreadFactory localThreadFactory;
    if (paramThreadFactoryBuilder.backingThreadFactory != null)
    {
      localThreadFactory = paramThreadFactoryBuilder.backingThreadFactory;
      if (str == null)
        break label73;
    }
    label73: for (final AtomicLong localAtomicLong = new AtomicLong(0L); ; localAtomicLong = null)
    {
      return new ThreadFactory()
      {
        public Thread newThread(Runnable paramAnonymousRunnable)
        {
          Thread localThread = this.val$backingThreadFactory.newThread(paramAnonymousRunnable);
          if (str != null)
          {
            String str = str;
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = Long.valueOf(localAtomicLong.getAndIncrement());
            localThread.setName(String.format(str, arrayOfObject));
          }
          if (localBoolean != null)
            localThread.setDaemon(localBoolean.booleanValue());
          if (localInteger != null)
            localThread.setPriority(localInteger.intValue());
          if (localUncaughtExceptionHandler != null)
            localThread.setUncaughtExceptionHandler(localUncaughtExceptionHandler);
          return localThread;
        }
      };
      localThreadFactory = Executors.defaultThreadFactory();
      break;
    }
  }

  public ThreadFactory build()
  {
    return build(this);
  }

  public ThreadFactoryBuilder setDaemon(boolean paramBoolean)
  {
    this.daemon = Boolean.valueOf(paramBoolean);
    return this;
  }

  public ThreadFactoryBuilder setNameFormat(String paramString)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(0);
    String.format(paramString, arrayOfObject);
    this.nameFormat = paramString;
    return this;
  }

  public ThreadFactoryBuilder setPriority(int paramInt)
  {
    boolean bool1;
    if (paramInt >= 1)
    {
      bool1 = true;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(paramInt);
      arrayOfObject1[1] = Integer.valueOf(1);
      Preconditions.checkArgument(bool1, "Thread priority (%s) must be >= %s", arrayOfObject1);
      if (paramInt > 10)
        break label89;
    }
    label89: for (boolean bool2 = true; ; bool2 = false)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(paramInt);
      arrayOfObject2[1] = Integer.valueOf(10);
      Preconditions.checkArgument(bool2, "Thread priority (%s) must be <= %s", arrayOfObject2);
      this.priority = Integer.valueOf(paramInt);
      return this;
      bool1 = false;
      break;
    }
  }

  public ThreadFactoryBuilder setThreadFactory(ThreadFactory paramThreadFactory)
  {
    this.backingThreadFactory = ((ThreadFactory)Preconditions.checkNotNull(paramThreadFactory));
    return this;
  }

  public ThreadFactoryBuilder setUncaughtExceptionHandler(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler)
  {
    this.uncaughtExceptionHandler = ((Thread.UncaughtExceptionHandler)Preconditions.checkNotNull(paramUncaughtExceptionHandler));
    return this;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.ThreadFactoryBuilder
 * JD-Core Version:    0.6.2
 */