package com.google.android.searchcommon.util;

import android.os.Looper;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import java.util.concurrent.Executor;

public class ExtraPreconditions
{
  private static final boolean DEBUG;
  private static boolean sThreadChecksDisabled;

  public static void checkBcp47Locale(String paramString)
  {
    boolean bool1 = true;
    boolean bool2;
    if (paramString.indexOf('_') == -1)
    {
      bool2 = bool1;
      Preconditions.checkArgument(bool2);
      if (paramString.length() <= 2)
        break label36;
    }
    while (true)
    {
      Preconditions.checkArgument(bool1);
      return;
      bool2 = false;
      break;
      label36: bool1 = false;
    }
  }

  public static void checkHoldsLock(Object paramObject)
  {
  }

  public static void checkMainThread()
  {
    if ((Looper.getMainLooper().getThread() == Thread.currentThread()) || (sThreadChecksDisabled));
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkState(bool);
      return;
    }
  }

  public static void checkNotMainThread()
  {
    if ((Looper.getMainLooper().getThread() != Thread.currentThread()) || (sThreadChecksDisabled));
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkState(bool);
      return;
    }
  }

  public static ThreadCheck createAnyThreadCheck()
  {
    return new ThreadCheck();
  }

  public static ThreadCheck createSameThreadCheck()
  {
    return new ThreadCheck();
  }

  public static ThreadCheck createSetThreadsCheck(String[] paramArrayOfString)
  {
    return new ThreadCheck();
  }

  public static void setThreadChecksEnabled(boolean paramBoolean)
  {
    if (!paramBoolean);
    for (boolean bool = true; ; bool = false)
    {
      sThreadChecksDisabled = bool;
      return;
    }
  }

  @VisibleForTesting
  static class DebugSameThread extends ExtraPreconditions.ThreadCheck
  {
    private static final String TAG = "SameThread";
    private Thread mThread;
    private Throwable mThrowable;

    public ExtraPreconditions.ThreadCheck check()
    {
      try
      {
        Thread localThread = Thread.currentThread();
        if (this.mThread == null)
        {
          this.mThread = localThread;
          this.mThrowable = new Throwable().fillInStackTrace();
        }
        if (this.mThread != localThread)
        {
          Log.e("SameThread", "Expected thread: " + this.mThread.getName(), this.mThrowable);
          Log.e("SameThread", "Current thread: " + localThread.getName(), new Throwable().fillInStackTrace());
          throw new IllegalStateException("Different threads");
        }
      }
      finally
      {
      }
      return this;
    }

    public ExtraPreconditions.ThreadCheck check(Executor paramExecutor)
    {
      try
      {
        paramExecutor.execute(new Runnable()
        {
          public void run()
          {
            ExtraPreconditions.DebugSameThread.this.check();
          }
        });
        return this;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public void reset()
    {
      try
      {
        this.mThread = null;
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
  }

  private static class DebugThreadsSet extends ExtraPreconditions.ThreadCheck
  {
    private final String[] mThreadNames;

    public DebugThreadsSet(String[] paramArrayOfString)
    {
      this.mThreadNames = paramArrayOfString;
    }

    public ExtraPreconditions.ThreadCheck check()
    {
      try
      {
        String str = Thread.currentThread().getName();
        String[] arrayOfString = this.mThreadNames;
        int i = arrayOfString.length;
        for (int j = 0; j < i; j++)
        {
          boolean bool = str.startsWith(arrayOfString[j]);
          if (bool)
            return this;
        }
        throw new IllegalStateException("Illegal thread" + str);
      }
      finally
      {
      }
    }

    public ExtraPreconditions.ThreadCheck check(Executor paramExecutor)
    {
      paramExecutor.execute(new Runnable()
      {
        public void run()
        {
          ExtraPreconditions.DebugThreadsSet.this.check();
        }
      });
      return this;
    }
  }

  public static class ThreadCheck
  {
    public ThreadCheck check()
    {
      return this;
    }

    public ThreadCheck check(Executor paramExecutor)
    {
      return this;
    }

    public void reset()
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.searchcommon.util.ExtraPreconditions
 * JD-Core Version:    0.6.2
 */