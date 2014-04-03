package com.x.google.common.io.android;

import android.content.ContentResolver;
import android.os.Build;
import android.os.SystemClock;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.EntityEnclosingRequestWrapper;
import org.apache.http.impl.client.RequestWrapper;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

public class GoogleHttpClient
  implements HttpClient
{
  private static final String TAG = "GoogleHttpClient_v09";
  private final AndroidHttpClient mClient;
  private final ContentResolver mResolver;
  private final String mUserAgent;

  public GoogleHttpClient(ContentResolver paramContentResolver, String paramString)
  {
    this.mClient = AndroidHttpClient.newInstance(paramString);
    this.mResolver = paramContentResolver;
    this.mUserAgent = paramString;
  }

  public GoogleHttpClient(ContentResolver paramContentResolver, String paramString, boolean paramBoolean)
  {
    String str = paramString + " (" + Build.DEVICE + " " + Build.ID + ")";
    if (paramBoolean)
      str = str + "; gzip";
    this.mClient = AndroidHttpClient.newInstance(str);
    this.mResolver = paramContentResolver;
    this.mUserAgent = str;
  }

  public static String getGzipCapableUserAgent(String paramString)
  {
    return paramString + "; gzip";
  }

  private static RequestWrapper wrapRequest(HttpUriRequest paramHttpUriRequest)
    throws IOException
  {
    try
    {
      if ((paramHttpUriRequest instanceof HttpEntityEnclosingRequest));
      for (Object localObject = new EntityEnclosingRequestWrapper((HttpEntityEnclosingRequest)paramHttpUriRequest); ; localObject = new RequestWrapper(paramHttpUriRequest))
      {
        ((RequestWrapper)localObject).resetHeaders();
        return localObject;
      }
    }
    catch (ProtocolException localProtocolException)
    {
      throw new ClientProtocolException(localProtocolException);
    }
  }

  public void close()
  {
    this.mClient.close();
  }

  public void disableCurlLogging()
  {
    this.mClient.disableCurlLogging();
  }

  public void enableCurlLogging(String paramString, int paramInt)
  {
    this.mClient.enableCurlLogging(paramString, paramInt);
  }

  public <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler)
    throws IOException, ClientProtocolException
  {
    return this.mClient.execute(paramHttpHost, paramHttpRequest, paramResponseHandler);
  }

  public <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
    throws IOException, ClientProtocolException
  {
    return this.mClient.execute(paramHttpHost, paramHttpRequest, paramResponseHandler, paramHttpContext);
  }

  public <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler)
    throws IOException, ClientProtocolException
  {
    return this.mClient.execute(paramHttpUriRequest, paramResponseHandler);
  }

  public <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
    throws IOException, ClientProtocolException
  {
    return this.mClient.execute(paramHttpUriRequest, paramResponseHandler, paramHttpContext);
  }

  public HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest)
    throws IOException
  {
    return this.mClient.execute(paramHttpHost, paramHttpRequest);
  }

  public HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
    throws IOException
  {
    return this.mClient.execute(paramHttpHost, paramHttpRequest, paramHttpContext);
  }

  public HttpResponse execute(HttpUriRequest paramHttpUriRequest)
    throws IOException
  {
    return execute(paramHttpUriRequest, (HttpContext)null);
  }

  public HttpResponse execute(HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext)
    throws IOException
  {
    String str = paramHttpUriRequest.getURI().toString();
    try
    {
      URI localURI = new URI(str);
      RequestWrapper localRequestWrapper = wrapRequest(paramHttpUriRequest);
      localRequestWrapper.setURI(localURI);
      return executeWithoutRewriting(localRequestWrapper, paramHttpContext);
    }
    catch (URISyntaxException localURISyntaxException)
    {
      throw new RuntimeException("Bad URL from: " + str, localURISyntaxException);
    }
  }

  public HttpResponse executeWithoutRewriting(HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext)
    throws IOException
  {
    SystemClock.elapsedRealtime();
    try
    {
      HttpResponse localHttpResponse = this.mClient.execute(paramHttpUriRequest, paramHttpContext);
      Integer.toString(localHttpResponse.getStatusLine().getStatusCode());
      return localHttpResponse;
    }
    catch (IOException localIOException)
    {
      throw localIOException;
    }
  }

  public ClientConnectionManager getConnectionManager()
  {
    return this.mClient.getConnectionManager();
  }

  public HttpParams getParams()
  {
    return this.mClient.getParams();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.android.GoogleHttpClient
 * JD-Core Version:    0.6.2
 */