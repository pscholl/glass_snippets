package com.google.glass.net;

import android.content.Context;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.util.MainThreadExecutorManager;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

public class ProtoRequestDispatcherPool
{
  public static final int MAX_SIZE = 8;
  private static final String TAG = ProtoRequestDispatcherPool.class.getSimpleName();
  private final Context context;
  private int currentIndex;
  private List<ProtoRequestDispatcher> dispatchers;
  private AndroidHttpRequestDispatcher httpRequestDispatcher;

  public ProtoRequestDispatcherPool(Context paramContext)
  {
    this.context = paramContext;
    this.dispatchers = new ArrayList();
    this.currentIndex = 0;
    this.httpRequestDispatcher = new AndroidHttpRequestDispatcher(paramContext);
  }

  @VisibleForTesting
  ProtoRequestDispatcher createDispatcher(Context paramContext, HttpRequestDispatcher paramHttpRequestDispatcher, boolean paramBoolean, Executor paramExecutor)
  {
    return new ProtoRequestDispatcher(paramContext, paramHttpRequestDispatcher, paramBoolean, paramExecutor);
  }

  public ProtoRequestDispatcher getRequestDispatcher()
  {
    int i = 0;
    while (true)
    {
      try
      {
        int j = this.dispatchers.size();
        if (i < j)
        {
          localProtoRequestDispatcher1 = (ProtoRequestDispatcher)this.dispatchers.get(i);
          boolean bool = localProtoRequestDispatcher1.isBusy();
          if (!bool)
            return localProtoRequestDispatcher1;
          i++;
          continue;
        }
        if ((this.currentIndex < 8) && (this.currentIndex >= 0) && (this.dispatchers.size() <= this.currentIndex))
        {
          ProtoRequestDispatcher localProtoRequestDispatcher2 = createDispatcher(this.context, this.httpRequestDispatcher, false, MainThreadExecutorManager.getMainThreadExecutor());
          this.dispatchers.add(localProtoRequestDispatcher2);
          new Thread(localProtoRequestDispatcher2)
          {
          }
          .start();
          continue;
        }
      }
      finally
      {
      }
      ProtoRequestDispatcher localProtoRequestDispatcher1 = (ProtoRequestDispatcher)this.dispatchers.get(this.currentIndex);
      this.currentIndex = (1 + this.currentIndex);
      if (this.currentIndex >= 8)
        this.currentIndex = 0;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.net.ProtoRequestDispatcherPool
 * JD-Core Version:    0.6.2
 */