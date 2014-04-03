package com.google.glass.util;

import android.os.Handler;
import android.os.Looper;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.predicates.Assert;
import java.util.concurrent.Executor;

public class MainThreadExecutorManager
{
  public static Executor getMainThreadExecutor()
  {
    return MainThreadExecutorHolder.instance;
  }

  @VisibleForTesting
  public static void setMainThreadExecutorForTest(Executor paramExecutor)
  {
    Assert.assertIsTest();
    Assert.assertNotNull(paramExecutor);
    MainThreadExecutorHolder.access$002(paramExecutor);
  }

  private static class MainThreadExecutorHolder
  {
    private static Executor instance = new Executor()
    {
      Handler mHandler = new Handler(Looper.getMainLooper());

      public void execute(Runnable paramAnonymousRunnable)
      {
        this.mHandler.post(paramAnonymousRunnable);
      }
    };
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.MainThreadExecutorManager
 * JD-Core Version:    0.6.2
 */