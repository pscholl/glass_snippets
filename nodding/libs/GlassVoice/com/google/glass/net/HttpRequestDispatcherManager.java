package com.google.glass.net;

import android.content.Context;
import com.google.common.annotations.VisibleForTesting;

public class HttpRequestDispatcherManager
{
  private static HttpRequestDispatcher instance;

  public static HttpRequestDispatcher getSharedDispatcher(Context paramContext)
  {
    try
    {
      if (instance == null)
        instance = new AndroidHttpRequestDispatcher(paramContext.getApplicationContext());
      HttpRequestDispatcher localHttpRequestDispatcher = instance;
      return localHttpRequestDispatcher;
    }
    finally
    {
    }
  }

  @VisibleForTesting
  public static void setSharedDispatcher(HttpRequestDispatcher paramHttpRequestDispatcher)
  {
    try
    {
      instance = paramHttpRequestDispatcher;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static class HttpRequestDispatcherHolder
  {
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.net.HttpRequestDispatcherManager
 * JD-Core Version:    0.6.2
 */