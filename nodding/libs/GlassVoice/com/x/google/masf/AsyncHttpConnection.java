package com.x.google.masf;

import com.x.google.common.io.GoogleAsyncHttpConnection;
import com.x.google.common.io.IoUtil;
import com.x.google.common.util.AbstractObservable;
import com.x.google.masf.protocol.HttpRequest;
import com.x.google.masf.protocol.Request;
import com.x.google.masf.protocol.Request.Listener;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public class AsyncHttpConnection extends AbstractObservable
  implements GoogleAsyncHttpConnection, Request.Listener
{
  public static final int STATE_CLOSED = 3;
  public static final int STATE_COMPLETED = 2;
  public static final int STATE_INIT = 0;
  public static final int STATE_SUBMITTED = 1;
  private ByteArrayOutputStream httpOutputStream;
  private final HttpRequest httpRequest;
  private boolean keepDataAfterClosing = false;
  private final MobileServiceMux mobileServiceMux;
  private int responseCode;
  private Exception responseException;
  private String[] responseHeaderKeys;
  private String[] responseHeaderValues;
  private DataInputStream responseInputStream;
  private int responseLength;
  protected int state = 0;

  public AsyncHttpConnection(String paramString, boolean paramBoolean)
  {
    debug("AsyncHttpConnection(" + paramString + ", " + paramBoolean + ")");
    this.mobileServiceMux = MobileServiceMux.getSingleton();
    this.httpRequest = new HttpRequest(paramString, 1);
    this.httpRequest.setListener(this);
    if (paramBoolean)
    {
      this.httpRequest.setMethod("POST");
      this.httpRequest.setSentCount(1);
      return;
    }
    this.httpRequest.setMethod("GET");
  }

  private void assertStateCompleted()
    throws IOException
  {
    debug("AsyncHttpConnection.assertStateCompleted()");
    if (this.state != 3);
  }

  private void assertStateInit()
  {
    debug("AsyncHttpConnection.assertStateInit()");
  }

  private void checkException()
    throws IOException
  {
    if (this.responseException == null);
    do
    {
      return;
      if ((this.responseException instanceof IOException))
        throw ((IOException)this.responseException);
    }
    while (!(this.responseException instanceof RuntimeException));
    throw ((RuntimeException)this.responseException);
  }

  private static void debug(String paramString)
  {
  }

  private void setState(int paramInt)
  {
    debug("AsyncHttpConnection.setState(" + paramInt + ")");
    this.state = paramInt;
    notifyObservers();
  }

  public void close()
  {
    try
    {
      debug("AsyncHttpConnection.close()");
      IoUtil.closeOutputStream(this.httpOutputStream);
      this.httpOutputStream = null;
      this.httpRequest.dispose();
      IoUtil.closeInputStream(this.responseInputStream);
      this.responseInputStream = null;
      if (!this.keepDataAfterClosing)
      {
        this.responseHeaderKeys = null;
        this.responseHeaderValues = null;
      }
      setState(3);
      return;
    }
    finally
    {
    }
  }

  public void flagKeepDataAfterClosing()
  {
    this.keepDataAfterClosing = true;
  }

  public String getContentType()
    throws IOException
  {
    try
    {
      debug("AsyncHttpConnection.getContentType()");
      assertStateCompleted();
      checkException();
      String str = getHeaderField("content-type");
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int getHeaderCount()
    throws IOException
  {
    try
    {
      debug("AsyncHttpConnection.getHeaderCount()");
      assertStateCompleted();
      checkException();
      int i = this.responseHeaderKeys.length;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getHeaderField(int paramInt)
    throws IOException
  {
    try
    {
      debug("AsyncHttpConnection.getHeaderField(" + paramInt + ")");
      assertStateCompleted();
      checkException();
      if ((this.responseHeaderValues != null) && (paramInt >= 0) && (paramInt < this.responseHeaderValues.length));
      for (String str = this.responseHeaderValues[paramInt]; ; str = null)
        return str;
    }
    finally
    {
    }
  }

  public String getHeaderField(String paramString)
    throws IOException
  {
    try
    {
      debug("AsyncHttpConnection.getHeaderField(\"" + paramString + "\")");
      assertStateCompleted();
      checkException();
      int i;
      if (this.responseHeaderKeys != null)
      {
        i = 0;
        if (i < this.responseHeaderKeys.length)
          if (!this.responseHeaderKeys[i].toLowerCase().equals(paramString.toLowerCase()));
      }
      for (String str = this.responseHeaderValues[i]; ; str = null)
      {
        return str;
        i++;
        break;
      }
    }
    finally
    {
    }
  }

  public String getHeaderFieldKey(int paramInt)
    throws IOException
  {
    try
    {
      debug("AsyncHttpConnection.getHeaderFieldKey(" + paramInt + ")");
      assertStateCompleted();
      checkException();
      if ((this.responseHeaderKeys != null) && (paramInt >= 0) && (paramInt < this.responseHeaderKeys.length));
      for (String str = this.responseHeaderKeys[paramInt]; ; str = null)
        return str;
    }
    finally
    {
    }
  }

  public long getLength()
    throws IOException
  {
    try
    {
      debug("AsyncHttpConnection.getLength()");
      assertStateCompleted();
      checkException();
      int i = this.responseLength;
      long l = i;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getProtocolName()
  {
    debug("AsyncHttpConnection.getProtocolName()");
    return "http";
  }

  public int getResponseCode()
    throws IOException
  {
    try
    {
      debug("AsyncHttpConnection.getResponseCode()");
      assertStateCompleted();
      checkException();
      int i = this.responseCode;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getResponseMessage()
    throws IOException
  {
    try
    {
      debug("AsyncHttpConnection.getResponseMessage()");
      assertStateCompleted();
      checkException();
      return null;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getServiceUri()
  {
    try
    {
      String str = this.httpRequest.getServiceUri();
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int getState()
  {
    try
    {
      debug("AsyncHttpConnection.getState()");
      int i = this.state;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean isClosed()
  {
    try
    {
      debug("AsyncHttpConnection.isClosed()");
      int i = this.state;
      if (i == 3)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public boolean isCompleted()
  {
    try
    {
      debug("AsyncHttpConnection.isCompleted()");
      int i = this.state;
      if (i == 2)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public boolean isEndToEndSecure()
  {
    debug("AsyncHttpConnection.isEndToEndSecure()");
    return this.mobileServiceMux.isEndToEndSecure();
  }

  public boolean isHttps()
  {
    debug("AsyncHttpConnection.isHttps()");
    return this.mobileServiceMux.isHttps();
  }

  public boolean isInit()
  {
    try
    {
      debug("AsyncHttpConnection.isInit()");
      int i = this.state;
      if (i == 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public void notifyTimeout()
  {
  }

  public DataInputStream openDataInputStream()
    throws IOException
  {
    try
    {
      debug("AsyncHttpConnection.openDataInputStream()");
      assertStateCompleted();
      checkException();
      if (this.responseInputStream != null)
      {
        localDataInputStream = this.responseInputStream;
        return localDataInputStream;
      }
      DataInputStream localDataInputStream = null;
    }
    finally
    {
    }
  }

  public DataOutputStream openDataOutputStream()
  {
    try
    {
      debug("AsyncHttpConnection.openDataOutputStream()");
      assertStateInit();
      if (this.httpOutputStream == null)
        this.httpOutputStream = new ByteArrayOutputStream();
      DataOutputStream localDataOutputStream = new DataOutputStream(this.httpOutputStream);
      return localDataOutputStream;
    }
    finally
    {
    }
  }

  // ERROR //
  public void requestCompleted(Request paramRequest, com.x.google.masf.protocol.Response paramResponse)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc 250
    //   4: invokestatic 68	com/x/google/masf/AsyncHttpConnection:debug	(Ljava/lang/String;)V
    //   7: aload_0
    //   8: getfield 42	com/x/google/masf/AsyncHttpConnection:state	I
    //   11: istore 4
    //   13: iload 4
    //   15: iconst_1
    //   16: if_icmpne +63 -> 79
    //   19: new 252	com/x/google/masf/protocol/HttpResponse
    //   22: dup
    //   23: aload_2
    //   24: invokespecial 255	com/x/google/masf/protocol/HttpResponse:<init>	(Lcom/x/google/masf/protocol/Response;)V
    //   27: astore 5
    //   29: aload_0
    //   30: aload 5
    //   32: invokevirtual 257	com/x/google/masf/protocol/HttpResponse:getResponseCode	()I
    //   35: putfield 199	com/x/google/masf/AsyncHttpConnection:responseCode	I
    //   38: aload_0
    //   39: aload 5
    //   41: invokevirtual 261	com/x/google/masf/protocol/HttpResponse:getHeaderKeys	()[Ljava/lang/String;
    //   44: putfield 142	com/x/google/masf/AsyncHttpConnection:responseHeaderKeys	[Ljava/lang/String;
    //   47: aload_0
    //   48: aload 5
    //   50: invokevirtual 264	com/x/google/masf/protocol/HttpResponse:getHeaderValues	()[Ljava/lang/String;
    //   53: putfield 144	com/x/google/masf/AsyncHttpConnection:responseHeaderValues	[Ljava/lang/String;
    //   56: aload_0
    //   57: aload 5
    //   59: invokevirtual 267	com/x/google/masf/protocol/HttpResponse:getStreamLength	()I
    //   62: putfield 189	com/x/google/masf/AsyncHttpConnection:responseLength	I
    //   65: aload_0
    //   66: aload 5
    //   68: invokevirtual 270	com/x/google/masf/protocol/HttpResponse:getDataInputStream	()Ljava/io/DataInputStream;
    //   71: putfield 136	com/x/google/masf/AsyncHttpConnection:responseInputStream	Ljava/io/DataInputStream;
    //   74: aload_0
    //   75: iconst_2
    //   76: invokespecial 146	com/x/google/masf/AsyncHttpConnection:setState	(I)V
    //   79: aload_0
    //   80: monitorexit
    //   81: return
    //   82: astore 8
    //   84: aload_0
    //   85: aload 8
    //   87: putfield 109	com/x/google/masf/AsyncHttpConnection:responseException	Ljava/lang/Exception;
    //   90: aload_0
    //   91: iconst_2
    //   92: invokespecial 146	com/x/google/masf/AsyncHttpConnection:setState	(I)V
    //   95: goto -16 -> 79
    //   98: astore_3
    //   99: aload_0
    //   100: monitorexit
    //   101: aload_3
    //   102: athrow
    //   103: astore 7
    //   105: aload_0
    //   106: aload 7
    //   108: putfield 109	com/x/google/masf/AsyncHttpConnection:responseException	Ljava/lang/Exception;
    //   111: aload_0
    //   112: iconst_2
    //   113: invokespecial 146	com/x/google/masf/AsyncHttpConnection:setState	(I)V
    //   116: goto -37 -> 79
    //   119: astore 6
    //   121: aload_0
    //   122: iconst_2
    //   123: invokespecial 146	com/x/google/masf/AsyncHttpConnection:setState	(I)V
    //   126: aload 6
    //   128: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   19	74	82	java/io/IOException
    //   2	13	98	finally
    //   74	79	98	finally
    //   90	95	98	finally
    //   111	116	98	finally
    //   121	129	98	finally
    //   19	74	103	java/lang/RuntimeException
    //   19	74	119	finally
    //   84	90	119	finally
    //   105	111	119	finally
  }

  public void requestFailed(Request paramRequest, Exception paramException)
  {
    try
    {
      this.responseException = paramException;
      setState(2);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setConnectionProperty(String paramString1, String paramString2)
  {
    try
    {
      debug("AsyncHttpConnection.setConnectionProperty()");
      assertStateInit();
      this.httpRequest.setConnectionProperty(paramString1, paramString2);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void submitRequest()
  {
    try
    {
      submitRequest(true);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void submitRequest(boolean paramBoolean)
  {
    try
    {
      debug("AsyncHttpConnection.submitRequest()");
      if (this.state == 0)
      {
        if (this.httpOutputStream != null)
          this.httpRequest.setPayload(this.httpOutputStream.toByteArray());
        this.mobileServiceMux.submitRequest(this.httpRequest, paramBoolean);
        setState(1);
      }
      return;
    }
    finally
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.AsyncHttpConnection
 * JD-Core Version:    0.6.2
 */