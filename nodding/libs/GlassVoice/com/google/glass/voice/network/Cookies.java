package com.google.glass.voice.network;

import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.google.common.base.Preconditions;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class Cookies
{
  private final Context context;
  private CookieManager cookieManager;
  private CookieSyncManager cookieSyncManager;
  private final Object initializeLock = new Object();

  private Cookies(Context paramContext)
  {
    this.context = paramContext;
  }

  public static Cookies create(Context paramContext)
  {
    return new Cookies(paramContext);
  }

  private boolean isInitialized()
  {
    while (true)
    {
      synchronized (this.initializeLock)
      {
        if (this.cookieSyncManager != null)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }

  private void maybeInitialize()
  {
    synchronized (this.initializeLock)
    {
      if (this.cookieSyncManager == null)
      {
        CookieSyncManager.createInstance(this.context);
        this.cookieSyncManager = CookieSyncManager.getInstance();
        this.cookieManager = CookieManager.getInstance();
      }
      return;
    }
  }

  public String getCookie(String paramString)
  {
    maybeInitialize();
    return this.cookieManager.getCookie(paramString);
  }

  public void removeAllCookies()
  {
    maybeInitialize();
    this.cookieManager.removeAllCookie();
  }

  public void resetSync()
  {
    maybeInitialize();
    this.cookieSyncManager.resetSync();
  }

  public void setCookiesFromHeaders(String paramString, Map<String, List<String>> paramMap)
  {
    Preconditions.checkNotNull(paramString);
    Preconditions.checkNotNull(paramMap);
    setCookiesFromSetCookieHeaders(paramString, (List)paramMap.get("Set-Cookie"));
  }

  public void setCookiesFromSetCookieHeaders(String paramString, List<String> paramList)
  {
    Preconditions.checkNotNull(paramString);
    Preconditions.checkNotNull(paramList);
    if (paramList != null)
    {
      maybeInitialize();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        this.cookieManager.setCookie(paramString, str);
      }
    }
  }

  public void startSync()
  {
    maybeInitialize();
    this.cookieSyncManager.startSync();
  }

  public void stopSync()
  {
    if (isInitialized())
      this.cookieSyncManager.stopSync();
  }

  public void sync()
  {
    maybeInitialize();
    this.cookieSyncManager.sync();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.Cookies
 * JD-Core Version:    0.6.2
 */