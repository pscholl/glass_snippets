package com.x.google.common.io.android;

import android.content.ContentResolver;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.RequestWrapper;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.BasicHttpProcessor;
import org.apache.http.protocol.HttpContext;

public final class AndroidHttpClient
  implements HttpClient
{
  public static long DEFAULT_SYNC_MIN_GZIP_BYTES = 0L;
  private static final String TAG = "AndroidHttpClient_v09";
  private static final ThreadLocal<Boolean> sThreadBlocked = new ThreadLocal();
  private static final HttpRequestInterceptor sThreadCheckInterceptor = new HttpRequestInterceptor()
  {
    public void process(HttpRequest paramAnonymousHttpRequest, HttpContext paramAnonymousHttpContext)
    {
      if ((AndroidHttpClient.sThreadBlocked.get() != null) && (((Boolean)AndroidHttpClient.sThreadBlocked.get()).booleanValue()))
        throw new RuntimeException("This thread forbids HTTP requests");
    }
  };
  private volatile LoggingConfiguration curlConfiguration;
  private final HttpClient delegate;
  private RuntimeException mLeakedException = new IllegalStateException("AndroidHttpClient_v09 created and never closed");

  private AndroidHttpClient(ClientConnectionManager paramClientConnectionManager, HttpParams paramHttpParams)
  {
    this.delegate = new DefaultHttpClient(paramClientConnectionManager, paramHttpParams)
    {
      protected HttpContext createHttpContext()
      {
        BasicHttpContext localBasicHttpContext = new BasicHttpContext();
        localBasicHttpContext.setAttribute("http.authscheme-registry", getAuthSchemes());
        localBasicHttpContext.setAttribute("http.cookiespec-registry", getCookieSpecs());
        localBasicHttpContext.setAttribute("http.auth.credentials-provider", getCredentialsProvider());
        return localBasicHttpContext;
      }

      protected BasicHttpProcessor createHttpProcessor()
      {
        BasicHttpProcessor localBasicHttpProcessor = super.createHttpProcessor();
        localBasicHttpProcessor.addRequestInterceptor(AndroidHttpClient.sThreadCheckInterceptor);
        localBasicHttpProcessor.addRequestInterceptor(new AndroidHttpClient.CurlLogger(AndroidHttpClient.this, null));
        return localBasicHttpProcessor;
      }
    };
  }

  public static AbstractHttpEntity getCompressedEntity(byte[] paramArrayOfByte, ContentResolver paramContentResolver)
    throws IOException
  {
    if (paramArrayOfByte.length < getMinGzipSize(paramContentResolver))
      return new ByteArrayEntity(paramArrayOfByte);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
    localGZIPOutputStream.write(paramArrayOfByte);
    localGZIPOutputStream.close();
    ByteArrayEntity localByteArrayEntity = new ByteArrayEntity(localByteArrayOutputStream.toByteArray());
    localByteArrayEntity.setContentEncoding("gzip");
    return localByteArrayEntity;
  }

  public static long getMinGzipSize(ContentResolver paramContentResolver)
  {
    return DEFAULT_SYNC_MIN_GZIP_BYTES;
  }

  public static InputStream getUngzippedContent(HttpEntity paramHttpEntity)
    throws IOException
  {
    InputStream localInputStream = paramHttpEntity.getContent();
    if (localInputStream == null);
    String str;
    do
    {
      Header localHeader;
      do
      {
        return localInputStream;
        localHeader = paramHttpEntity.getContentEncoding();
      }
      while (localHeader == null);
      str = localHeader.getValue();
    }
    while (str == null);
    if (str.contains("gzip"));
    for (Object localObject = new GZIPInputStream(localInputStream); ; localObject = localInputStream)
      return localObject;
  }

  public static void modifyRequestToAcceptGzipResponse(HttpRequest paramHttpRequest)
  {
    paramHttpRequest.addHeader("Accept-Encoding", "gzip");
  }

  public static AndroidHttpClient newInstance(String paramString)
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setStaleCheckingEnabled(localBasicHttpParams, false);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 20000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 20000);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    HttpClientParams.setRedirecting(localBasicHttpParams, false);
    HttpProtocolParams.setUserAgent(localBasicHttpParams, paramString);
    SchemeRegistry localSchemeRegistry = new SchemeRegistry();
    localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    localSchemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
    return new AndroidHttpClient(new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry), localBasicHttpParams);
  }

  public static void setThreadBlocked(boolean paramBoolean)
  {
    sThreadBlocked.set(Boolean.valueOf(paramBoolean));
  }

  private static String toCurl(HttpUriRequest paramHttpUriRequest)
    throws IOException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("curl ");
    for (Header localHeader : paramHttpUriRequest.getAllHeaders())
    {
      localStringBuilder.append("--header \"");
      localStringBuilder.append(localHeader.toString().trim());
      localStringBuilder.append("\" ");
    }
    URI localURI1 = paramHttpUriRequest.getURI();
    HttpRequest localHttpRequest;
    if ((paramHttpUriRequest instanceof RequestWrapper))
    {
      localHttpRequest = ((RequestWrapper)paramHttpUriRequest).getOriginal();
      if (!(localHttpRequest instanceof HttpUriRequest));
    }
    for (URI localURI2 = ((HttpUriRequest)localHttpRequest).getURI(); ; localURI2 = localURI1)
    {
      localStringBuilder.append("\"");
      localStringBuilder.append(localURI2);
      localStringBuilder.append("\"");
      if ((paramHttpUriRequest instanceof HttpEntityEnclosingRequest))
      {
        HttpEntity localHttpEntity = ((HttpEntityEnclosingRequest)paramHttpUriRequest).getEntity();
        if ((localHttpEntity != null) && (localHttpEntity.isRepeatable()))
        {
          if (localHttpEntity.getContentLength() >= 1024L)
            break label239;
          ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
          localHttpEntity.writeTo(localByteArrayOutputStream);
          String str = localByteArrayOutputStream.toString();
          localStringBuilder.append(" --data-ascii \"").append(str).append("\"");
        }
      }
      while (true)
      {
        return localStringBuilder.toString();
        label239: localStringBuilder.append(" [TOO MUCH DATA TO INCLUDE]");
      }
    }
  }

  public void close()
  {
    if (this.mLeakedException != null)
    {
      getConnectionManager().shutdown();
      this.mLeakedException = null;
    }
  }

  public void disableCurlLogging()
  {
    this.curlConfiguration = null;
  }

  public void enableCurlLogging(String paramString, int paramInt)
  {
    if (paramString == null)
      throw new NullPointerException("name");
    if ((paramInt < 2) || (paramInt > 7))
      throw new IllegalArgumentException("Level is out of range [2..7]");
    this.curlConfiguration = new LoggingConfiguration(paramString, paramInt, null);
  }

  public <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler)
    throws IOException, ClientProtocolException
  {
    return this.delegate.execute(paramHttpHost, paramHttpRequest, paramResponseHandler);
  }

  public <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
    throws IOException, ClientProtocolException
  {
    return this.delegate.execute(paramHttpHost, paramHttpRequest, paramResponseHandler, paramHttpContext);
  }

  public <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler)
    throws IOException, ClientProtocolException
  {
    return this.delegate.execute(paramHttpUriRequest, paramResponseHandler);
  }

  public <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
    throws IOException, ClientProtocolException
  {
    return this.delegate.execute(paramHttpUriRequest, paramResponseHandler, paramHttpContext);
  }

  public HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest)
    throws IOException
  {
    return this.delegate.execute(paramHttpHost, paramHttpRequest);
  }

  public HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
    throws IOException
  {
    return this.delegate.execute(paramHttpHost, paramHttpRequest, paramHttpContext);
  }

  public HttpResponse execute(HttpUriRequest paramHttpUriRequest)
    throws IOException
  {
    return this.delegate.execute(paramHttpUriRequest);
  }

  public HttpResponse execute(HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext)
    throws IOException
  {
    return this.delegate.execute(paramHttpUriRequest, paramHttpContext);
  }

  protected void finalize()
    throws Throwable
  {
    super.finalize();
    if (this.mLeakedException != null)
    {
      Log.e("AndroidHttpClient_v09", "Leak found", this.mLeakedException);
      this.mLeakedException = null;
    }
  }

  public ClientConnectionManager getConnectionManager()
  {
    return this.delegate.getConnectionManager();
  }

  public HttpParams getParams()
  {
    return this.delegate.getParams();
  }

  private class CurlLogger
    implements HttpRequestInterceptor
  {
    private CurlLogger()
    {
    }

    public void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
      throws HttpException, IOException
    {
      AndroidHttpClient.LoggingConfiguration localLoggingConfiguration = AndroidHttpClient.this.curlConfiguration;
      if ((localLoggingConfiguration != null) && (AndroidHttpClient.LoggingConfiguration.access$500(localLoggingConfiguration)) && ((paramHttpRequest instanceof HttpUriRequest)))
        AndroidHttpClient.LoggingConfiguration.access$700(localLoggingConfiguration, AndroidHttpClient.toCurl((HttpUriRequest)paramHttpRequest));
    }
  }

  private static class LoggingConfiguration
  {
    private final int level;
    private final String tag;

    private LoggingConfiguration(String paramString, int paramInt)
    {
      this.tag = paramString;
      this.level = paramInt;
    }

    private boolean isLoggable()
    {
      return Log.isLoggable(this.tag, this.level);
    }

    private void println(String paramString)
    {
      Log.println(this.level, this.tag, paramString);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.android.AndroidHttpClient
 * JD-Core Version:    0.6.2
 */