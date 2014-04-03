package com.x.google.common.async;

import com.x.google.common.Clock;
import com.x.google.common.Config;
import com.x.google.common.io.GoogleHttpConnection;
import com.x.google.common.io.HttpConnectionFactory;
import com.x.google.common.io.IoUtil;
import com.x.google.common.lang.ThreadFactory;
import com.x.google.common.task.AbstractTask;
import com.x.google.common.task.TaskRunner;
import com.x.google.common.task.TimerTask;
import com.x.google.debug.DebugUtil;
import com.x.google.debug.LogSource;
import com.x.google.masf.InputStreamProvider;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;

public class AsyncHttpRequestFactory
  implements Runnable
{
  private static final int DEFAULT_WORKER_COUNT = 1;
  private static final String DEFAULT_WORKER_NAME = "AsyncHttpRequestFactory";
  protected static LogSource logger = LogSource.getLogSource(AsyncHttpRequestFactory.class);
  private HttpConnectionFactory connectionFactory;
  private Object mutex = new Object();
  private String name;
  private Vector queue = new Vector();
  protected boolean running;
  private TaskRunner taskRunner;
  private ThreadFactory threadFactory;
  private Thread[] workers;

  protected AsyncHttpRequestFactory()
  {
  }

  public AsyncHttpRequestFactory(TaskRunner paramTaskRunner, ThreadFactory paramThreadFactory, HttpConnectionFactory paramHttpConnectionFactory)
  {
    this(paramTaskRunner, paramThreadFactory, paramHttpConnectionFactory, "AsyncHttpRequestFactory", 1);
  }

  public AsyncHttpRequestFactory(TaskRunner paramTaskRunner, ThreadFactory paramThreadFactory, HttpConnectionFactory paramHttpConnectionFactory, String paramString, int paramInt)
  {
    this.taskRunner = paramTaskRunner;
    this.threadFactory = paramThreadFactory;
    this.connectionFactory = paramHttpConnectionFactory;
    this.name = paramString;
    this.workers = new Thread[paramInt];
  }

  private GoogleHttpConnection createHttpConnection(String paramString, boolean paramBoolean)
    throws IOException
  {
    return this.connectionFactory.createConnection(paramString, paramBoolean);
  }

  private boolean executeNextRequest()
  {
    synchronized (this.mutex)
    {
      while (this.queue.size() == 0)
      {
        boolean bool = this.running;
        if (bool)
          try
          {
            this.mutex.wait();
          }
          catch (InterruptedException localInterruptedException)
          {
            return false;
          }
      }
      if (!this.running)
        return false;
    }
    AsyncHttpRequestImpl localAsyncHttpRequestImpl = (AsyncHttpRequestImpl)this.queue.elementAt(0);
    this.queue.removeElementAt(0);
    try
    {
      logger.fine("Executing AsyncHttpRequest ");
      localAsyncHttpRequestImpl.run();
      return true;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        logger.severe("AsyncHttpRequestFactory.run(): uncaught exception", localThrowable);
    }
  }

  private TaskRunner getTaskRunner()
  {
    return this.taskRunner;
  }

  private boolean submitRequest(AsyncHttpRequestImpl paramAsyncHttpRequestImpl)
  {
    synchronized (this.mutex)
    {
      if (!this.queue.contains(paramAsyncHttpRequestImpl))
      {
        this.queue.addElement(paramAsyncHttpRequestImpl);
        this.mutex.notifyAll();
        return true;
      }
      return false;
    }
  }

  public boolean cancelRequest(AsyncHttpRequest paramAsyncHttpRequest)
  {
    synchronized (this.mutex)
    {
      boolean bool = this.queue.removeElement(paramAsyncHttpRequest);
      return bool;
    }
  }

  public AsyncHttpRequest createAsyncHttpRequest(String paramString)
  {
    return new AsyncHttpRequestImpl(this, paramString, 0);
  }

  public AsyncHttpRequest createAsyncHttpRequest(String paramString, int paramInt)
  {
    return new AsyncHttpRequestImpl(this, paramString, paramInt);
  }

  public void run()
  {
    logger.fine("run");
    while (executeNextRequest());
  }

  public void start()
  {
    synchronized (this.mutex)
    {
      if (!this.running)
      {
        this.running = true;
        for (int i = 0; i < this.workers.length; i++)
        {
          this.workers[i] = this.threadFactory.createThread(this.name + "-" + i, this);
          this.workers[i].start();
        }
      }
      return;
    }
  }

  public void stop()
  {
    int i = 0;
    Thread[] arrayOfThread = new Thread[this.workers.length];
    synchronized (this.mutex)
    {
      if (this.running == true)
      {
        this.running = false;
        while (i < this.workers.length)
        {
          arrayOfThread[i] = this.workers[i];
          this.workers[i] = null;
          i++;
        }
        this.mutex.notifyAll();
      }
      return;
    }
  }

  public void stopAndWait()
  {
    int i = 0;
    Thread[] arrayOfThread = new Thread[this.workers.length];
    while (true)
    {
      synchronized (this.mutex)
      {
        if (this.running == true)
        {
          this.running = false;
          this.mutex.notifyAll();
        }
        if (i >= arrayOfThread.length)
          break;
        if ((arrayOfThread[i] != null) && (arrayOfThread[i].isAlive()))
        {
          if (arrayOfThread[i] == Thread.currentThread())
            logger.info("Skipping stopAndWait as the caller is a worker");
        }
        else
          i++;
      }
      try
      {
        logger.info("stopAndWait - waiting");
        arrayOfThread[i].join();
        logger.info("stopAndWait - done");
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }

  protected static class AsyncHttpRequestImpl extends AbstractRequest
    implements AsyncHttpRequest, Runnable
  {
    private static final long WATCHDOG_DELAY = 20000L;
    private boolean addContentLength;
    private GoogleHttpConnection connection;
    private AsyncHttpRequestFactory factory;
    private int flags;
    private Vector httpHeaders;
    private long lastProgressTimestamp;
    private String method = "GET";
    private byte[] payloadBytes;
    private InputStream payloadInputStream;
    private InputStreamProvider payloadStreamProvider;
    private int responseCode;
    private long responseLength;
    private DataInputStream responseStream;
    private String responseType;
    private String type;
    private String url;
    private long watchdogDelay = 20000L;

    public AsyncHttpRequestImpl(AsyncHttpRequestFactory paramAsyncHttpRequestFactory, String paramString, int paramInt)
    {
      this.factory = paramAsyncHttpRequestFactory;
      this.url = paramString;
      this.flags = paramInt;
      this.httpHeaders = new Vector();
      this.addContentLength = true;
    }

    private void addHttpHeader(GoogleHttpConnection paramGoogleHttpConnection)
      throws IOException
    {
      for (int i = 0; i < this.httpHeaders.size(); i++)
      {
        String[] arrayOfString = (String[])this.httpHeaders.elementAt(i);
        paramGoogleHttpConnection.setConnectionProperty(arrayOfString[0], arrayOfString[1]);
      }
    }

    private static void debugResponseHeaders(GoogleHttpConnection paramGoogleHttpConnection)
      throws IOException
    {
    }

    private int getPayloadLength()
      throws IOException
    {
      if (this.payloadInputStream != null)
      {
        this.payloadBytes = IoUtil.readAllBytes(this.payloadInputStream);
        this.payloadInputStream = null;
      }
      if (this.payloadBytes != null)
        return this.payloadBytes.length;
      if (this.payloadStreamProvider != null)
        return this.payloadStreamProvider.getStreamLength();
      return 0;
    }

    private boolean hasPayload()
    {
      return (this.payloadInputStream != null) || (this.payloadBytes != null) || (this.payloadStreamProvider != null);
    }

    private void writePayload(OutputStream paramOutputStream)
      throws IOException
    {
      if (this.payloadBytes != null)
        paramOutputStream.write(this.payloadBytes);
      do
      {
        return;
        if (this.payloadStreamProvider != null)
        {
          IoUtil.copyStream(this.payloadStreamProvider.getInputStream(), paramOutputStream);
          return;
        }
      }
      while (this.payloadInputStream == null);
      IoUtil.copyStream(this.payloadInputStream, paramOutputStream);
    }

    public void close()
    {
      try
      {
        if (isCompletedOrException())
        {
          IoUtil.closeInputStream(this.responseStream);
          IoUtil.closeConnection(this.connection);
          super.close();
        }
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public String getHttpHeaderField(String paramString)
      throws IOException
    {
      return this.connection.getHeaderField(paramString);
    }

    public String getHttpHeaderKey(int paramInt)
      throws IOException
    {
      return this.connection.getHeaderFieldKey(paramInt);
    }

    public String getHttpHeaderValue(int paramInt)
      throws IOException
    {
      return this.connection.getHeaderField(paramInt);
    }

    public long getLastProgressTimestamp()
    {
      return this.lastProgressTimestamp;
    }

    public int getResponseCode()
    {
      try
      {
        checkCompleted();
        int i = this.responseCode;
        return i;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public long getResponseLength()
    {
      try
      {
        checkCompleted();
        long l = this.responseLength;
        return l;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public DataInputStream getResponseStream()
    {
      try
      {
        checkCompleted();
        DataInputStream localDataInputStream = this.responseStream;
        return localDataInputStream;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public String getResponseType()
    {
      try
      {
        checkCompleted();
        String str = this.responseType;
        return str;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public long getWatchdogDelay()
    {
      try
      {
        long l = this.watchdogDelay;
        return l;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    protected void notifyProgress()
    {
      if ((0x1 & this.flags) != 0)
      {
        this.lastProgressTimestamp = Config.getInstance().getClock().currentTimeMillis();
        super.notifyProgress();
      }
    }

    // ERROR //
    public void run()
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_1
      //   2: getstatic 197	com/x/google/common/async/AsyncHttpRequestFactory:logger	Lcom/x/google/debug/LogSource;
      //   5: new 199	java/lang/StringBuilder
      //   8: dup
      //   9: invokespecial 200	java/lang/StringBuilder:<init>	()V
      //   12: ldc 202
      //   14: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   17: aload_0
      //   18: invokevirtual 209	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
      //   21: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   24: invokevirtual 218	com/x/google/debug/LogSource:fine	(Ljava/lang/Object;)V
      //   27: new 220	com/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask
      //   30: dup
      //   31: aload_0
      //   32: getfield 52	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:factory	Lcom/x/google/common/async/AsyncHttpRequestFactory;
      //   35: invokestatic 224	com/x/google/common/async/AsyncHttpRequestFactory:access$000	(Lcom/x/google/common/async/AsyncHttpRequestFactory;)Lcom/x/google/common/task/TaskRunner;
      //   38: invokespecial 227	com/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask:<init>	(Lcom/x/google/common/task/TaskRunner;)V
      //   41: astore_2
      //   42: aload_2
      //   43: aload_0
      //   44: invokevirtual 231	com/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask:setRequest	(Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)V
      //   47: aload_2
      //   48: aload_0
      //   49: invokevirtual 233	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:getWatchdogDelay	()J
      //   52: invokevirtual 237	com/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask:setDelay	(J)V
      //   55: aload_2
      //   56: invokevirtual 240	com/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask:schedule	()V
      //   59: aload_0
      //   60: monitorenter
      //   61: aload_0
      //   62: invokevirtual 243	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:notifyRunning	()V
      //   65: aload_0
      //   66: invokevirtual 244	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:notifyProgress	()V
      //   69: aload_0
      //   70: monitorexit
      //   71: aload_0
      //   72: getfield 50	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:method	Ljava/lang/String;
      //   75: ldc 246
      //   77: invokevirtual 252	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   80: istore 11
      //   82: aload_0
      //   83: getfield 52	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:factory	Lcom/x/google/common/async/AsyncHttpRequestFactory;
      //   86: aload_0
      //   87: getfield 54	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:url	Ljava/lang/String;
      //   90: iload 11
      //   92: invokestatic 256	com/x/google/common/async/AsyncHttpRequestFactory:access$100	(Lcom/x/google/common/async/AsyncHttpRequestFactory;Ljava/lang/String;Z)Lcom/x/google/common/io/GoogleHttpConnection;
      //   95: astore 12
      //   97: aload 12
      //   99: astore 5
      //   101: aload_0
      //   102: monitorenter
      //   103: aload_0
      //   104: invokevirtual 259	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:isRunning	()Z
      //   107: ifne +108 -> 215
      //   110: aload_0
      //   111: monitorexit
      //   112: aload_2
      //   113: invokevirtual 262	com/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask:cancel	()I
      //   116: pop
      //   117: aconst_null
      //   118: invokestatic 130	com/x/google/common/io/IoUtil:closeInputStream	(Ljava/io/InputStream;)V
      //   121: aconst_null
      //   122: invokestatic 265	com/x/google/common/io/IoUtil:closeOutputStream	(Ljava/io/OutputStream;)V
      //   125: aload 5
      //   127: invokestatic 135	com/x/google/common/io/IoUtil:closeConnection	(Lcom/x/google/common/io/GoogleHttpConnection;)V
      //   130: return
      //   131: astore 10
      //   133: aload_0
      //   134: monitorexit
      //   135: aload 10
      //   137: athrow
      //   138: astore 7
      //   140: aconst_null
      //   141: astore 4
      //   143: aconst_null
      //   144: astore 5
      //   146: aload_0
      //   147: getfield 52	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:factory	Lcom/x/google/common/async/AsyncHttpRequestFactory;
      //   150: invokestatic 269	com/x/google/common/async/AsyncHttpRequestFactory:access$200	(Lcom/x/google/common/async/AsyncHttpRequestFactory;)Lcom/x/google/common/io/HttpConnectionFactory;
      //   153: invokeinterface 274 1 0
      //   158: aload_0
      //   159: monitorenter
      //   160: aload_0
      //   161: invokevirtual 277	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:getState	()I
      //   164: iconst_1
      //   165: if_icmpne +9 -> 174
      //   168: aload_0
      //   169: aload 7
      //   171: invokevirtual 281	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:notifyException	(Ljava/lang/Exception;)V
      //   174: aload_0
      //   175: invokevirtual 277	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:getState	()I
      //   178: iconst_3
      //   179: if_icmpne +14 -> 193
      //   182: getstatic 197	com/x/google/common/async/AsyncHttpRequestFactory:logger	Lcom/x/google/debug/LogSource;
      //   185: ldc_w 283
      //   188: aload 7
      //   190: invokevirtual 287	com/x/google/debug/LogSource:severe	(Ljava/lang/Object;Ljava/lang/Object;)V
      //   193: aload_0
      //   194: monitorexit
      //   195: aload_2
      //   196: invokevirtual 262	com/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask:cancel	()I
      //   199: pop
      //   200: aload_1
      //   201: invokestatic 130	com/x/google/common/io/IoUtil:closeInputStream	(Ljava/io/InputStream;)V
      //   204: aload 4
      //   206: invokestatic 265	com/x/google/common/io/IoUtil:closeOutputStream	(Ljava/io/OutputStream;)V
      //   209: aload 5
      //   211: invokestatic 135	com/x/google/common/io/IoUtil:closeConnection	(Lcom/x/google/common/io/GoogleHttpConnection;)V
      //   214: return
      //   215: aload_0
      //   216: aload 5
      //   218: putfield 132	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:connection	Lcom/x/google/common/io/GoogleHttpConnection;
      //   221: aload_0
      //   222: invokevirtual 244	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:notifyProgress	()V
      //   225: aload_0
      //   226: monitorexit
      //   227: aload_0
      //   228: getfield 289	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:type	Ljava/lang/String;
      //   231: ifnull +272 -> 503
      //   234: aload 5
      //   236: ldc_w 291
      //   239: aload_0
      //   240: getfield 289	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:type	Ljava/lang/String;
      //   243: invokeinterface 83 3 0
      //   248: aload_0
      //   249: aload 5
      //   251: invokespecial 293	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:addHttpHeader	(Lcom/x/google/common/io/GoogleHttpConnection;)V
      //   254: aload_0
      //   255: invokespecial 295	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:hasPayload	()Z
      //   258: ifeq +376 -> 634
      //   261: aload_0
      //   262: getfield 63	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:addContentLength	Z
      //   265: ifeq +55 -> 320
      //   268: getstatic 197	com/x/google/common/async/AsyncHttpRequestFactory:logger	Lcom/x/google/debug/LogSource;
      //   271: new 199	java/lang/StringBuilder
      //   274: dup
      //   275: invokespecial 200	java/lang/StringBuilder:<init>	()V
      //   278: ldc_w 297
      //   281: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   284: aload_0
      //   285: invokespecial 299	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:getPayloadLength	()I
      //   288: invokevirtual 302	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
      //   291: ldc_w 304
      //   294: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   297: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   300: invokevirtual 307	com/x/google/debug/LogSource:info	(Ljava/lang/Object;)V
      //   303: aload 5
      //   305: ldc_w 309
      //   308: aload_0
      //   309: invokespecial 299	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:getPayloadLength	()I
      //   312: invokestatic 313	java/lang/Integer:toString	(I)Ljava/lang/String;
      //   315: invokeinterface 83 3 0
      //   320: aload 5
      //   322: invokeinterface 317 1 0
      //   327: astore 24
      //   329: aload 24
      //   331: astore 4
      //   333: aload_0
      //   334: invokespecial 295	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:hasPayload	()Z
      //   337: istore 14
      //   339: iload 14
      //   341: ifeq +14 -> 355
      //   344: aload_0
      //   345: aload 4
      //   347: invokespecial 319	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:writePayload	(Ljava/io/OutputStream;)V
      //   350: aload 4
      //   352: invokestatic 265	com/x/google/common/io/IoUtil:closeOutputStream	(Ljava/io/OutputStream;)V
      //   355: aload 5
      //   357: invokeinterface 321 1 0
      //   362: istore 15
      //   364: aload 5
      //   366: invokeinterface 324 1 0
      //   371: lstore 16
      //   373: aload 5
      //   375: invokeinterface 327 1 0
      //   380: astore 18
      //   382: aload 5
      //   384: invokeinterface 330 1 0
      //   389: astore_1
      //   390: aload_0
      //   391: invokevirtual 244	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:notifyProgress	()V
      //   394: getstatic 197	com/x/google/common/async/AsyncHttpRequestFactory:logger	Lcom/x/google/debug/LogSource;
      //   397: new 199	java/lang/StringBuilder
      //   400: dup
      //   401: invokespecial 200	java/lang/StringBuilder:<init>	()V
      //   404: ldc_w 332
      //   407: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   410: iload 15
      //   412: invokevirtual 302	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
      //   415: ldc_w 334
      //   418: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   421: lload 16
      //   423: invokevirtual 337	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
      //   426: ldc_w 304
      //   429: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   432: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   435: invokevirtual 307	com/x/google/debug/LogSource:info	(Ljava/lang/Object;)V
      //   438: aload 5
      //   440: invokestatic 339	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:debugResponseHeaders	(Lcom/x/google/common/io/GoogleHttpConnection;)V
      //   443: iload 15
      //   445: sipush 200
      //   448: if_icmpne +106 -> 554
      //   451: aload_0
      //   452: getfield 52	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:factory	Lcom/x/google/common/async/AsyncHttpRequestFactory;
      //   455: invokestatic 269	com/x/google/common/async/AsyncHttpRequestFactory:access$200	(Lcom/x/google/common/async/AsyncHttpRequestFactory;)Lcom/x/google/common/io/HttpConnectionFactory;
      //   458: iconst_1
      //   459: invokeinterface 343 2 0
      //   464: pop
      //   465: aload_0
      //   466: monitorenter
      //   467: aload_0
      //   468: invokevirtual 259	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:isRunning	()Z
      //   471: ifne +102 -> 573
      //   474: aload_0
      //   475: monitorexit
      //   476: aload_2
      //   477: invokevirtual 262	com/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask:cancel	()I
      //   480: pop
      //   481: aload_1
      //   482: invokestatic 130	com/x/google/common/io/IoUtil:closeInputStream	(Ljava/io/InputStream;)V
      //   485: aload 4
      //   487: invokestatic 265	com/x/google/common/io/IoUtil:closeOutputStream	(Ljava/io/OutputStream;)V
      //   490: aload 5
      //   492: invokestatic 135	com/x/google/common/io/IoUtil:closeConnection	(Lcom/x/google/common/io/GoogleHttpConnection;)V
      //   495: return
      //   496: astore 13
      //   498: aload_0
      //   499: monitorexit
      //   500: aload 13
      //   502: athrow
      //   503: aload 5
      //   505: ldc_w 291
      //   508: ldc_w 345
      //   511: invokeinterface 83 3 0
      //   516: goto -268 -> 248
      //   519: astore_3
      //   520: aconst_null
      //   521: astore 4
      //   523: aload_2
      //   524: invokevirtual 262	com/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask:cancel	()I
      //   527: pop
      //   528: aload_1
      //   529: invokestatic 130	com/x/google/common/io/IoUtil:closeInputStream	(Ljava/io/InputStream;)V
      //   532: aload 4
      //   534: invokestatic 265	com/x/google/common/io/IoUtil:closeOutputStream	(Ljava/io/OutputStream;)V
      //   537: aload 5
      //   539: invokestatic 135	com/x/google/common/io/IoUtil:closeConnection	(Lcom/x/google/common/io/GoogleHttpConnection;)V
      //   542: aload_3
      //   543: athrow
      //   544: astore 23
      //   546: aload 4
      //   548: invokestatic 265	com/x/google/common/io/IoUtil:closeOutputStream	(Ljava/io/OutputStream;)V
      //   551: aload 23
      //   553: athrow
      //   554: aload_0
      //   555: getfield 52	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:factory	Lcom/x/google/common/async/AsyncHttpRequestFactory;
      //   558: invokestatic 269	com/x/google/common/async/AsyncHttpRequestFactory:access$200	(Lcom/x/google/common/async/AsyncHttpRequestFactory;)Lcom/x/google/common/io/HttpConnectionFactory;
      //   561: invokeinterface 274 1 0
      //   566: goto -101 -> 465
      //   569: astore_3
      //   570: goto -47 -> 523
      //   573: aload_0
      //   574: iload 15
      //   576: putfield 160	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:responseCode	I
      //   579: aload_0
      //   580: lload 16
      //   582: putfield 163	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:responseLength	J
      //   585: aload_0
      //   586: aload 18
      //   588: putfield 169	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:responseType	Ljava/lang/String;
      //   591: aload_0
      //   592: aload_1
      //   593: putfield 126	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:responseStream	Ljava/io/DataInputStream;
      //   596: aload_0
      //   597: invokevirtual 348	com/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl:notifyCompleted	()V
      //   600: aload_0
      //   601: monitorexit
      //   602: aload_2
      //   603: invokevirtual 262	com/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask:cancel	()I
      //   606: pop
      //   607: return
      //   608: astore 20
      //   610: aload_0
      //   611: monitorexit
      //   612: aload 20
      //   614: athrow
      //   615: astore 8
      //   617: aload_0
      //   618: monitorexit
      //   619: aload 8
      //   621: athrow
      //   622: astore_3
      //   623: aconst_null
      //   624: astore_1
      //   625: aconst_null
      //   626: astore 4
      //   628: aconst_null
      //   629: astore 5
      //   631: goto -108 -> 523
      //   634: aconst_null
      //   635: astore 4
      //   637: goto -304 -> 333
      //   640: astore 7
      //   642: aconst_null
      //   643: astore_1
      //   644: aconst_null
      //   645: astore 4
      //   647: goto -501 -> 146
      //   650: astore 7
      //   652: goto -506 -> 146
      //
      // Exception table:
      //   from	to	target	type
      //   61	71	131	finally
      //   133	135	131	finally
      //   59	61	138	java/lang/Exception
      //   71	97	138	java/lang/Exception
      //   135	138	138	java/lang/Exception
      //   103	112	496	finally
      //   215	227	496	finally
      //   498	500	496	finally
      //   101	103	519	finally
      //   227	248	519	finally
      //   248	320	519	finally
      //   320	329	519	finally
      //   500	503	519	finally
      //   503	516	519	finally
      //   344	350	544	finally
      //   146	160	569	finally
      //   333	339	569	finally
      //   350	355	569	finally
      //   355	443	569	finally
      //   451	465	569	finally
      //   465	467	569	finally
      //   546	554	569	finally
      //   554	566	569	finally
      //   612	615	569	finally
      //   619	622	569	finally
      //   467	476	608	finally
      //   573	602	608	finally
      //   610	612	608	finally
      //   160	174	615	finally
      //   174	193	615	finally
      //   193	195	615	finally
      //   617	619	615	finally
      //   59	61	622	finally
      //   71	97	622	finally
      //   135	138	622	finally
      //   101	103	640	java/lang/Exception
      //   227	248	640	java/lang/Exception
      //   248	320	640	java/lang/Exception
      //   320	329	640	java/lang/Exception
      //   500	503	640	java/lang/Exception
      //   503	516	640	java/lang/Exception
      //   333	339	650	java/lang/Exception
      //   350	355	650	java/lang/Exception
      //   355	443	650	java/lang/Exception
      //   451	465	650	java/lang/Exception
      //   465	467	650	java/lang/Exception
      //   546	554	650	java/lang/Exception
      //   554	566	650	java/lang/Exception
      //   612	615	650	java/lang/Exception
    }

    public void setContentType(String paramString)
    {
      try
      {
        this.type = paramString;
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public void setHttpHeader(String paramString1, String paramString2)
    {
      if ((paramString1.toLowerCase().equals("transfer-encoding")) && (paramString2.toLowerCase().equals("chunked")))
        this.addContentLength = false;
      this.httpHeaders.addElement(new String[] { paramString1, paramString2 });
    }

    public void setMethod(String paramString)
    {
      try
      {
        this.method = paramString;
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public void setPayload(InputStreamProvider paramInputStreamProvider)
    {
      try
      {
        this.payloadStreamProvider = paramInputStreamProvider;
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public void setPayload(InputStream paramInputStream)
    {
      try
      {
        this.payloadInputStream = paramInputStream;
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public void setPayload(byte[] paramArrayOfByte)
    {
      try
      {
        this.payloadBytes = paramArrayOfByte;
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public void setWatchdogDelay(long paramLong)
    {
      try
      {
        this.watchdogDelay = paramLong;
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public void submit(AbstractTask paramAbstractTask)
    {
      setTask(paramAbstractTask);
      this.factory.submitRequest(this);
    }

    public String toString()
    {
      return DebugUtil.getLogSource(this) + "[state=" + getState() + "]";
    }

    public void watchdogFired()
    {
      try
      {
        if (getState() == 1)
        {
          if (this.connection != null)
            this.connection.notifyTimeout();
          notifyException(new WatchdogException());
        }
        return;
      }
      finally
      {
      }
    }
  }

  private static class WatchdogTask extends TimerTask
  {
    AsyncHttpRequestFactory.AsyncHttpRequestImpl request;

    WatchdogTask(TaskRunner paramTaskRunner)
    {
      super();
    }

    public void run()
    {
      AsyncHttpRequestFactory.logger.fine("WatchdogTask.run(): request = " + this.request);
      this.request.watchdogFired();
    }

    public void setRequest(AsyncHttpRequestFactory.AsyncHttpRequestImpl paramAsyncHttpRequestImpl)
    {
      this.request = paramAsyncHttpRequestImpl;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.async.AsyncHttpRequestFactory
 * JD-Core Version:    0.6.2
 */