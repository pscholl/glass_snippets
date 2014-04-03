package com.x.google.common.io.android;

import android.content.Context;
import com.x.google.common.io.BaseHttpConnectionFactory;
import com.x.google.common.io.GoogleHttpConnection;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.entity.ByteArrayEntity;

public class AndroidHttpConnectionFactory extends BaseHttpConnectionFactory
{
  private static final String DEFAULT_USER_AGENT = "GoogleMobile/1.0";
  private static final int MAX_WORKER_THREAD_COUNT = 4;
  private static final Object lock = new Object();
  private static int numOpenConnection;
  private GoogleHttpClient client;
  private final Context context;
  private String userAgent;

  public AndroidHttpConnectionFactory(Context paramContext)
  {
    this.context = paramContext;
    this.userAgent = "GoogleMobile/1.0";
  }

  public void close()
  {
    if (this.client != null)
      this.client.close();
  }

  public GoogleHttpConnection createConnection(String paramString, boolean paramBoolean)
    throws IOException
  {
    if (this.client == null)
    {
      this.client = new GoogleHttpClient(this.context.getContentResolver(), this.userAgent, true);
      ConnManagerParams.setMaxConnectionsPerRoute(this.client.getParams(), new ConnPerRouteBean(4));
    }
    return new AndroidGoogleHttpConnection(paramString, paramBoolean, null);
  }

  public GoogleHttpClient getClient()
  {
    return this.client;
  }

  public int isNetworkAvailable()
  {
    return 2;
  }

  public void setUserAgent(String paramString)
  {
    this.userAgent = paramString;
  }

  private class AndroidGoogleHttpConnection
    implements GoogleHttpConnection
  {
    private ByteArrayOutputStream baos;
    private boolean closed;
    private final HttpUriRequest request;
    private HttpResponse response;

    // ERROR //
    private AndroidGoogleHttpConnection(String paramBoolean, boolean arg3)
      throws IOException
    {
      // Byte code:
      //   0: aload_0
      //   1: aload_1
      //   2: putfield 24	com/x/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection:this$0	Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;
      //   5: aload_0
      //   6: invokespecial 27	java/lang/Object:<init>	()V
      //   9: aload_0
      //   10: aconst_null
      //   11: putfield 29	com/x/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection:baos	Ljava/io/ByteArrayOutputStream;
      //   14: aload_0
      //   15: aconst_null
      //   16: putfield 31	com/x/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection:response	Lorg/apache/http/HttpResponse;
      //   19: iload_3
      //   20: ifeq +31 -> 51
      //   23: aload_0
      //   24: new 33	org/apache/http/client/methods/HttpPost
      //   27: dup
      //   28: aload_2
      //   29: invokespecial 36	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
      //   32: putfield 38	com/x/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection:request	Lorg/apache/http/client/methods/HttpUriRequest;
      //   35: invokestatic 44	com/x/google/common/io/android/AndroidHttpConnectionFactory:access$100	()Ljava/lang/Object;
      //   38: astore 7
      //   40: aload 7
      //   42: monitorenter
      //   43: invokestatic 48	com/x/google/common/io/android/AndroidHttpConnectionFactory:access$208	()I
      //   46: pop
      //   47: aload 7
      //   49: monitorexit
      //   50: return
      //   51: aload_0
      //   52: new 50	org/apache/http/client/methods/HttpGet
      //   55: dup
      //   56: aload_2
      //   57: invokespecial 51	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
      //   60: putfield 38	com/x/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection:request	Lorg/apache/http/client/methods/HttpUriRequest;
      //   63: goto -28 -> 35
      //   66: astore 4
      //   68: new 20	java/io/IOException
      //   71: dup
      //   72: new 53	java/lang/StringBuilder
      //   75: dup
      //   76: invokespecial 54	java/lang/StringBuilder:<init>	()V
      //   79: ldc 56
      //   81: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   84: iload_3
      //   85: invokevirtual 63	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
      //   88: ldc 65
      //   90: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   93: aload_2
      //   94: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   97: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   100: invokespecial 70	java/io/IOException:<init>	(Ljava/lang/String;)V
      //   103: astore 5
      //   105: aload 5
      //   107: aload 4
      //   109: invokevirtual 74	java/io/IOException:initCause	(Ljava/lang/Throwable;)Ljava/lang/Throwable;
      //   112: pop
      //   113: aload 5
      //   115: athrow
      //   116: astore 8
      //   118: aload 7
      //   120: monitorexit
      //   121: aload 8
      //   123: athrow
      //
      // Exception table:
      //   from	to	target	type
      //   23	35	66	java/lang/RuntimeException
      //   51	63	66	java/lang/RuntimeException
      //   43	50	116	finally
      //   118	121	116	finally
    }

    private HttpResponse getResponse()
      throws IOException
    {
      if (this.response == null)
        if (this.baos != null)
          ((HttpPost)this.request).setEntity(new ByteArrayEntity(this.baos.toByteArray()));
      try
      {
        this.response = AndroidHttpConnectionFactory.this.client.execute(this.request);
        return this.response;
      }
      catch (IOException localIOException)
      {
        throw localIOException;
      }
    }

    public void close()
      throws IOException
    {
      if (this.response != null)
      {
        HttpEntity localHttpEntity = this.response.getEntity();
        if (localHttpEntity != null)
          localHttpEntity.consumeContent();
      }
      synchronized (AndroidHttpConnectionFactory.lock)
      {
        if (this.closed)
          return;
        this.closed = true;
        AndroidHttpConnectionFactory.access$210();
        new StringBuilder().append("Connection closed.  # of open connections=").append(AndroidHttpConnectionFactory.numOpenConnection).toString();
        return;
      }
    }

    public String getContentType()
      throws IOException
    {
      Header localHeader = getResponse().getEntity().getContentType();
      if (localHeader == null)
        return "";
      return localHeader.getValue();
    }

    public String getHeaderField(int paramInt)
      throws IOException
    {
      throw new UnsupportedOperationException();
    }

    public String getHeaderField(String paramString)
      throws IOException
    {
      Header localHeader = getResponse().getFirstHeader(paramString);
      if (localHeader == null)
        return null;
      return localHeader.getValue();
    }

    public String getHeaderFieldKey(int paramInt)
      throws IOException
    {
      throw new UnsupportedOperationException();
    }

    public long getLength()
      throws IOException
    {
      return getResponse().getEntity().getContentLength();
    }

    public String getProtocolName()
    {
      throw new UnsupportedOperationException();
    }

    public int getResponseCode()
      throws IOException
    {
      return getResponse().getStatusLine().getStatusCode();
    }

    public String getResponseMessage()
      throws IOException
    {
      throw new UnsupportedOperationException();
    }

    public boolean isEndToEndSecure()
    {
      return false;
    }

    public boolean isHttps()
    {
      return false;
    }

    public void notifyTimeout()
    {
    }

    public DataInputStream openDataInputStream()
      throws IOException
    {
      return new DataInputStream(getResponse().getEntity().getContent());
    }

    public DataOutputStream openDataOutputStream()
      throws IOException
    {
      if (!(this.request instanceof HttpPost))
        throw new IOException("Can't open output stream on a GET to " + this.request.getURI());
      this.baos = new ByteArrayOutputStream();
      return new DataOutputStream(this.baos);
    }

    public void setConnectionProperty(String paramString1, String paramString2)
      throws IOException
    {
      if (("Content-Length".equals(paramString1)) || ("Transfer-Encoding".equals(paramString1)))
        return;
      this.request.setHeader(paramString1, paramString2);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.android.AndroidHttpConnectionFactory
 * JD-Core Version:    0.6.2
 */