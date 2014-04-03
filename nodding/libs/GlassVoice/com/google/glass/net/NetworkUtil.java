package com.google.glass.net;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.http.AndroidHttpClient;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class NetworkUtil
{
  private static final String PING_URI = "https://www.google.com/generate_204";
  private static final int TIMEOUT_MS = 8000;
  private static CompanionNetworkWorker companionNetworkWorker;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  public static void checkNetwork()
  {
    CompanionNetworkWorker localCompanionNetworkWorker = companionNetworkWorker;
    if (localCompanionNetworkWorker != null)
      localCompanionNetworkWorker.check();
  }

  public static boolean hasTetheredConnectivity(Context paramContext)
  {
    NetworkInfo[] arrayOfNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getAllNetworkInfo();
    if (arrayOfNetworkInfo != null)
    {
      int i = arrayOfNetworkInfo.length;
      for (int j = 0; j < i; j++)
      {
        NetworkInfo localNetworkInfo = arrayOfNetworkInfo[j];
        if ((localNetworkInfo.getType() == 7) && (localNetworkInfo.isConnected()))
          return true;
      }
    }
    return false;
  }

  public static boolean pingGoogle(Context paramContext)
  {
    boolean bool = true;
    Assert.assertNotUiThread();
    HttpHead localHttpHead = new HttpHead("https://www.google.com/generate_204");
    AndroidHttpClient localAndroidHttpClient = AndroidHttpClient.newInstance(UserAgent.get());
    RequestLogger localRequestLogger = new RequestLogger(paramContext, localHttpHead);
    HttpResponse localHttpResponse = null;
    try
    {
      HttpParams localHttpParams = localAndroidHttpClient.getParams();
      HttpConnectionParams.setConnectionTimeout(localHttpParams, 8000);
      HttpConnectionParams.setSoTimeout(localHttpParams, 8000);
      localHttpResponse = localAndroidHttpClient.execute(localHttpHead);
      if (localHttpResponse == null)
      {
        logger.i("Unable to get response from https://www.google.com/generate_204", new Object[0]);
        return false;
      }
      StatusLine localStatusLine = localHttpResponse.getStatusLine();
      Header[] arrayOfHeader = localHttpResponse.getAllHeaders();
      if ((localStatusLine == null) || (arrayOfHeader == null))
      {
        logger.i("Unable to reach https://www.google.com/generate_204", new Object[0]);
        return false;
      }
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(localStatusLine.getStatusCode());
      localFormattingLogger.d("Fetch of https://www.google.com/generate_204 returned status: %s", arrayOfObject);
      int i = localStatusLine.getStatusCode();
      if (i < 400);
      while (true)
      {
        return bool;
        bool = false;
      }
    }
    catch (IOException localIOException)
    {
      logger.i(localIOException, "Unable to reach https://www.google.com/generate_204", new Object[0]);
      return false;
    }
    finally
    {
      localRequestLogger.log(localHttpResponse);
      localAndroidHttpClient.close();
    }
  }

  public static void reportNetworkError()
  {
    CompanionNetworkWorker localCompanionNetworkWorker = companionNetworkWorker;
    if (localCompanionNetworkWorker != null)
      localCompanionNetworkWorker.reportError();
  }

  public static void reportNetworkOK()
  {
    CompanionNetworkWorker localCompanionNetworkWorker = companionNetworkWorker;
    if (localCompanionNetworkWorker != null)
      localCompanionNetworkWorker.reportOK();
  }

  public static void setNetworkChecker(CompanionNetworkWorker paramCompanionNetworkWorker)
  {
    companionNetworkWorker = paramCompanionNetworkWorker;
  }

  public static abstract interface CompanionNetworkWorker
  {
    public abstract void check();

    public abstract void reportError();

    public abstract void reportOK();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.net.NetworkUtil
 * JD-Core Version:    0.6.2
 */