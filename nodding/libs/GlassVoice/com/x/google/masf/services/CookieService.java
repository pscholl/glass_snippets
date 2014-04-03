package com.x.google.masf.services;

import com.x.google.common.Config;
import com.x.google.common.ParseHexUtil;
import com.x.google.common.StaticUtil;
import com.x.google.common.io.PersistentStore;
import com.x.google.common.util.AbstractObservable;
import com.x.google.common.util.Observer;
import com.x.google.masf.MobileServiceMux;
import com.x.google.masf.protocol.PlainRequest;
import com.x.google.masf.protocol.Request;
import com.x.google.masf.protocol.Request.Listener;
import com.x.google.masf.protocol.Response;
import java.io.DataInputStream;
import java.io.IOException;

public class CookieService extends AbstractObservable
{
  private static final int COOKIE_LENGTH = 8;
  static final String COOKIE_PREFERENCE = "InstallId";
  private static final String COOKIE_SERVICE_URI = "g:c";
  public static final int INVALID_COOKIE = 0;
  private static final String REQUEST_NEW_COOKIE_PREFERENCE = "RequestNewInstallId";
  private static CookieService instance;
  private boolean cookieBeingRequested = false;
  private boolean mustRequestNewCookie = StaticUtil.readPreferenceAsBoolean("RequestNewInstallId", false);
  private long theCookie = 0L;

  private CookieService()
  {
    if (this.mustRequestNewCookie)
      requestNewCookie();
  }

  public static void createNewInstanceUnitTests()
  {
    try
    {
      instance = new CookieService();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static CookieService getInstance()
  {
    try
    {
      if (instance == null)
        instance = new CookieService();
      CookieService localCookieService = instance;
      return localCookieService;
    }
    finally
    {
    }
  }

  private void loadCookieFromConfig()
  {
    try
    {
      String str = Config.getInstance().getAppProperty("InstallId");
      if (str != null);
      while (true)
      {
        try
        {
          this.theCookie = ParseHexUtil.parseHexLong(str);
          persistInternalState();
          return;
        }
        catch (NumberFormatException localNumberFormatException)
        {
        }
        this.theCookie = 0L;
      }
    }
    finally
    {
    }
  }

  private void persistInternalState()
  {
    StaticUtil.savePreferenceAsLong("InstallId", this.theCookie);
    StaticUtil.savePreferenceAsBoolean("RequestNewInstallId", this.mustRequestNewCookie);
    Config.getInstance().getPersistentStore().savePreferences();
  }

  public void addObserver(Observer paramObserver)
  {
    try
    {
      paramObserver.update(this, new Long(this.theCookie));
      super.addObserver(paramObserver);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public long getCookie()
  {
    try
    {
      if (this.mustRequestNewCookie)
        requestNewCookie();
      for (long l = this.theCookie; ; l = this.theCookie)
      {
        return l;
        if (this.theCookie == 0L)
          this.theCookie = StaticUtil.readPreferenceAsLong("InstallId", 0L);
        if (this.theCookie == 0L)
          loadCookieFromConfig();
        if (this.theCookie == 0L)
          requestNewCookie();
      }
    }
    finally
    {
    }
  }

  public void requestNewCookie()
  {
    try
    {
      if (!this.cookieBeingRequested)
      {
        MobileServiceMux localMobileServiceMux = MobileServiceMux.getSingleton();
        if (localMobileServiceMux != null)
        {
          this.cookieBeingRequested = true;
          this.mustRequestNewCookie = true;
          this.theCookie = 0L;
          persistInternalState();
          PlainRequest localPlainRequest = new PlainRequest("g:c", 0);
          localPlainRequest.setListener(new Request.Listener()
          {
            public void requestCompleted(Request paramAnonymousRequest, Response paramAnonymousResponse)
            {
              CookieService localCookieService = CookieService.getInstance();
              try
              {
                int i = paramAnonymousResponse.getStatusCode();
                paramAnonymousResponse.getStreamLength();
                if (i == 200)
                {
                  DataInputStream localDataInputStream = new DataInputStream(paramAnonymousResponse.getInputStream());
                  CookieService.access$002(CookieService.this, localDataInputStream.readLong());
                  CookieService.access$102(CookieService.this, false);
                }
              }
              catch (IOException localIOException)
              {
              }
              finally
              {
                CookieService.access$202(CookieService.this, false);
                CookieService.this.persistInternalState();
                CookieService.this.notifyObservers(new Long(CookieService.this.theCookie));
              }
            }

            public void requestFailed(Request paramAnonymousRequest, Exception paramAnonymousException)
            {
              synchronized (CookieService.getInstance())
              {
                CookieService.access$202(CookieService.this, false);
                return;
              }
            }
          });
          localMobileServiceMux.submitRequest(localPlainRequest, false);
        }
      }
      return;
    }
    finally
    {
    }
  }

  void setCookieForUnitTests(long paramLong)
  {
    try
    {
      this.mustRequestNewCookie = false;
      this.theCookie = paramLong;
      this.cookieBeingRequested = false;
      persistInternalState();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.CookieService
 * JD-Core Version:    0.6.2
 */