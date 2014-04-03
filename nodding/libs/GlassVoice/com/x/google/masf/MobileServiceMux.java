package com.x.google.masf;

import com.x.google.common.Clock;
import com.x.google.common.Config;
import com.x.google.common.async.AsyncHttpRequest;
import com.x.google.common.async.AsyncHttpRequestFactory;
import com.x.google.common.io.BaseHttpConnectionFactory;
import com.x.google.common.io.GoogleHttpConnection;
import com.x.google.common.io.HttpConnectionFactory;
import com.x.google.common.io.SequenceInputStream;
import com.x.google.common.task.Task;
import com.x.google.common.task.TaskRunner;
import com.x.google.common.task.TimerTask;
import com.x.google.debug.LogSource;
import com.x.google.masf.protocol.BodyPart;
import com.x.google.masf.protocol.HeaderRequest;
import com.x.google.masf.protocol.MultipartResponse;
import com.x.google.masf.protocol.MultipartResponseBuilder;
import com.x.google.masf.protocol.Request;
import com.x.google.masf.protocol.Request.Listener;
import com.x.google.masf.protocol.Response;
import com.x.google.masf.protocol.SimpleRequest;
import com.x.google.masf.services.resume.ResumableRequest;
import com.x.google.masf.services.resume.ResumeService;
import com.x.google.masf.services.resume.WindowResumeService;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

public class MobileServiceMux extends BaseHttpConnectionFactory
{
  public static final String CONTENT_LOCATION = "Content-Location";
  public static final String CONTENT_TYPE = "application/binary";
  private static final long DEFAULT_WORKER_TIMEOUT = 20000L;
  public static final long HARD_DELAY = 100L;
  private static final int MAX_CONNECTIONS = 3;
  public static final int MAX_DELAYED_REQUESTS = 100;
  public static final int MAX_REQUEST_LENGTH = 32768;
  private static final int NUM_WORKER_THREADS = 1;
  private static final int RESPONSE_CACHE_SIZE = 8;
  public static final long SOFT_DELAY = 10L;
  public static final int STATUS_CODE_SUBREQUEST_TIMED_OUT = 550;
  public static final String STATUS_HEADER = "X-Masf-Response-Code";
  private static LogSource logger = LogSource.getLogSource(MobileServiceMux.class);
  protected static MobileServiceMux mux;
  private AsyncHttpRequestFactory asyncFactory;
  private int bytesReceived = 0;
  private int bytesSent = 0;
  private HttpConnectionFactory connectionFactory;
  protected TimerTask delayedFlushTask;
  protected Hashtable delayedRequestQueue = new Hashtable();
  protected TimerTask flushTask;
  protected long hardDeadline;
  protected HeaderRequest headerRequest;
  private Vector listeners = new Vector();
  private Object mutex = new Object();
  protected long nextFlush;
  protected Hashtable preemptableRequestMap = new Hashtable();
  private int requestId = 0;
  private boolean requireEndToEndSecure = false;
  private OneTimeCache responseCache;
  protected ResumeService resumeService;
  private String secureServerUri;
  private String serverUri;
  protected Vector submitRequestQueue = new Vector();
  protected TaskRunner taskRunner;
  private final long workerTimeout;

  protected MobileServiceMux(Configuration paramConfiguration)
  {
    this.workerTimeout = paramConfiguration.workerTimeout;
    this.headerRequest = new HeaderRequest(paramConfiguration.applicationName, paramConfiguration.applicationVersion, paramConfiguration.platformId, paramConfiguration.distributionChannel, "g");
    this.taskRunner = createTaskRunner();
    this.taskRunner.start();
    this.connectionFactory = Config.getInstance().getConnectionFactory();
    this.serverUri = paramConfiguration.serverUri;
    this.secureServerUri = paramConfiguration.secureServerUri;
    this.asyncFactory = createAsyncHttpRequestFactory();
    this.asyncFactory.start();
    this.resumeService = new WindowResumeService(this, this.taskRunner, this.headerRequest);
    this.responseCache = new OneTimeCache(8);
    this.flushTask = new TimerTask(this.taskRunner, new Runnable()
    {
      public void run()
      {
        synchronized (MobileServiceMux.this.mutex)
        {
          MobileServiceMux.logger.info("Running flush");
          if (Config.getInstance().getClock().currentTimeMillis() < MobileServiceMux.this.nextFlush)
          {
            MobileServiceMux.this.flushTask.setDeadline(MobileServiceMux.this.nextFlush);
            MobileServiceMux.this.flushTask.schedule();
            return;
          }
          MobileServiceMux.this.nextFlush = 0L;
          MobileServiceMux.this.hardDeadline = 0L;
          MobileServiceMux.this.processRequests();
          return;
        }
      }
    });
    this.delayedFlushTask = new TimerTask(this.taskRunner)
    {
      public void run()
      {
        MobileServiceMux.logger.info("Running delayed flush");
        synchronized (MobileServiceMux.this.mutex)
        {
          MobileServiceMux.this.scheduleFlush();
          return;
        }
      }
    };
  }

  public static void deInitialize()
  {
    try
    {
      if (mux != null)
      {
        if (mux.asyncFactory != null)
          mux.asyncFactory.stop();
        if (mux.taskRunner != null)
          mux.taskRunner.stop();
        mux = null;
      }
      return;
    }
    finally
    {
    }
  }

  private void disposeRequests(Object[] paramArrayOfObject)
  {
    for (int i = 0; i < paramArrayOfObject.length; i++)
    {
      Request localRequest = (Request)paramArrayOfObject[i];
      if (localRequest != null)
        localRequest.dispose();
    }
  }

  private Listener[] getListeners()
  {
    synchronized (this.listeners)
    {
      Listener[] arrayOfListener = new Listener[this.listeners.size()];
      this.listeners.copyInto(arrayOfListener);
      return arrayOfListener;
    }
  }

  private InputStream getMacroRequestPayload(Request[] paramArrayOfRequest)
    throws IOException
  {
    InputStream[] arrayOfInputStream = new InputStream[paramArrayOfRequest.length];
    for (int i = 0; i < paramArrayOfRequest.length; i++)
      arrayOfInputStream[i] = paramArrayOfRequest[i].getInputStream();
    return new SequenceInputStream(this.headerRequest.getInputStream(), new SequenceInputStream(arrayOfInputStream));
  }

  private Request[] getSecureRequests(Request[] paramArrayOfRequest)
  {
    int i = 0;
    int j = 1;
    int k = 0;
    Object localObject1 = null;
    Object localObject2;
    int n;
    if (k < paramArrayOfRequest.length)
      if (paramArrayOfRequest[k].isSecure())
      {
        if (localObject1 == null)
          localObject1 = new Request[paramArrayOfRequest.length];
        logger.fine("Encrypted request " + paramArrayOfRequest[k]);
        localObject1[k] = paramArrayOfRequest[k];
        paramArrayOfRequest[k] = null;
        int i2 = j;
        localObject2 = localObject1;
        n = i2;
      }
    while (true)
    {
      k++;
      int i1 = n;
      localObject1 = localObject2;
      j = i1;
      break;
      if (paramArrayOfRequest[k].isImmediate())
      {
        localObject2 = localObject1;
        n = 0;
        continue;
        if ((j != 0) && (localObject1 != null))
        {
          logger.fine("Sending all the requests encrypted");
          while (i < paramArrayOfRequest.length)
          {
            if (paramArrayOfRequest[i] != null)
            {
              localObject1[i] = paramArrayOfRequest[i];
              paramArrayOfRequest[i] = null;
            }
            i++;
          }
        }
        return localObject1;
      }
      else
      {
        int m = j;
        localObject2 = localObject1;
        n = m;
      }
    }
  }

  private String getServerAddress(boolean paramBoolean)
  {
    if ((paramBoolean) && (isSecureChannelSupported()))
      return this.secureServerUri;
    return this.serverUri;
  }

  public static MobileServiceMux getSingleton()
  {
    try
    {
      MobileServiceMux localMobileServiceMux = mux;
      return localMobileServiceMux;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  private void handleMacroResponse(AsyncHttpRequest paramAsyncHttpRequest, Request[] paramArrayOfRequest)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokeinterface 335 1 0
    //   6: istore_3
    //   7: aload_1
    //   8: invokeinterface 338 1 0
    //   13: astore 4
    //   15: iload_3
    //   16: sipush 502
    //   19: if_icmpne +26 -> 45
    //   22: getstatic 84	com/x/google/masf/MobileServiceMux:logger	Lcom/x/google/debug/LogSource;
    //   25: ldc_w 340
    //   28: invokevirtual 343	com/x/google/debug/LogSource:info	(Ljava/lang/Object;)V
    //   31: aload_0
    //   32: aload_2
    //   33: new 345	com/x/google/masf/ConnectionException
    //   36: dup
    //   37: iload_3
    //   38: invokespecial 346	com/x/google/masf/ConnectionException:<init>	(I)V
    //   41: invokespecial 226	com/x/google/masf/MobileServiceMux:requeueOrFailRequests	([Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V
    //   44: return
    //   45: iload_3
    //   46: sipush 200
    //   49: if_icmpeq +54 -> 103
    //   52: getstatic 84	com/x/google/masf/MobileServiceMux:logger	Lcom/x/google/debug/LogSource;
    //   55: new 298	java/lang/StringBuilder
    //   58: dup
    //   59: invokespecial 299	java/lang/StringBuilder:<init>	()V
    //   62: ldc_w 348
    //   65: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: iload_3
    //   69: invokevirtual 351	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   72: ldc_w 353
    //   75: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 312	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: invokevirtual 343	com/x/google/debug/LogSource:info	(Ljava/lang/Object;)V
    //   84: aload_0
    //   85: aload_2
    //   86: new 345	com/x/google/masf/ConnectionException
    //   89: dup
    //   90: iload_3
    //   91: invokespecial 346	com/x/google/masf/ConnectionException:<init>	(I)V
    //   94: invokespecial 226	com/x/google/masf/MobileServiceMux:requeueOrFailRequests	([Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V
    //   97: aload_0
    //   98: iconst_2
    //   99: invokespecial 356	com/x/google/masf/MobileServiceMux:notifyNetworkError	(I)V
    //   102: return
    //   103: aload 4
    //   105: ifnull +13 -> 118
    //   108: aload 4
    //   110: ldc 11
    //   112: invokevirtual 362	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   115: ifne +28 -> 143
    //   118: getstatic 84	com/x/google/masf/MobileServiceMux:logger	Lcom/x/google/debug/LogSource;
    //   121: ldc_w 364
    //   124: invokevirtual 343	com/x/google/debug/LogSource:info	(Ljava/lang/Object;)V
    //   127: aload_0
    //   128: aload_2
    //   129: new 275	java/io/IOException
    //   132: dup
    //   133: ldc_w 366
    //   136: invokespecial 369	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   139: invokespecial 226	com/x/google/masf/MobileServiceMux:requeueOrFailRequests	([Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V
    //   142: return
    //   143: getstatic 84	com/x/google/masf/MobileServiceMux:logger	Lcom/x/google/debug/LogSource;
    //   146: ldc_w 371
    //   149: invokevirtual 316	com/x/google/debug/LogSource:fine	(Ljava/lang/Object;)V
    //   152: aload_0
    //   153: aload_0
    //   154: getfield 113	com/x/google/masf/MobileServiceMux:bytesReceived	I
    //   157: i2l
    //   158: aload_1
    //   159: invokeinterface 375 1 0
    //   164: ladd
    //   165: l2i
    //   166: putfield 113	com/x/google/masf/MobileServiceMux:bytesReceived	I
    //   169: new 377	com/x/google/masf/protocol/ProtocolReader
    //   172: dup
    //   173: aload_1
    //   174: invokeinterface 381 1 0
    //   179: invokespecial 384	com/x/google/masf/protocol/ProtocolReader:<init>	(Ljava/io/DataInputStream;)V
    //   182: astore 8
    //   184: iconst_0
    //   185: istore 9
    //   187: iload 9
    //   189: aload_2
    //   190: arraylength
    //   191: if_icmpge +355 -> 546
    //   194: aload 8
    //   196: invokevirtual 388	com/x/google/masf/protocol/ProtocolReader:getNextResponse	()Lcom/x/google/masf/protocol/Response;
    //   199: astore 10
    //   201: aload 10
    //   203: ifnull +343 -> 546
    //   206: iconst_0
    //   207: istore 11
    //   209: iload 11
    //   211: aload_2
    //   212: arraylength
    //   213: if_icmpge +397 -> 610
    //   216: aload_2
    //   217: iload 11
    //   219: aaload
    //   220: astore 12
    //   222: getstatic 84	com/x/google/masf/MobileServiceMux:logger	Lcom/x/google/debug/LogSource;
    //   225: new 298	java/lang/StringBuilder
    //   228: dup
    //   229: invokespecial 299	java/lang/StringBuilder:<init>	()V
    //   232: ldc_w 390
    //   235: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   238: aload 12
    //   240: invokevirtual 308	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   243: invokevirtual 312	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   246: invokevirtual 316	com/x/google/debug/LogSource:fine	(Ljava/lang/Object;)V
    //   249: aload 12
    //   251: ifnull +371 -> 622
    //   254: aload 12
    //   256: invokevirtual 393	com/x/google/masf/protocol/Request:getId	()I
    //   259: aload 10
    //   261: invokevirtual 396	com/x/google/masf/protocol/Response:getId	()I
    //   264: if_icmpne +358 -> 622
    //   267: aload_2
    //   268: iload 11
    //   270: aconst_null
    //   271: aastore
    //   272: aload 12
    //   274: ifnull +170 -> 444
    //   277: aload 10
    //   279: instanceof 398
    //   282: ifeq +36 -> 318
    //   285: aload 12
    //   287: instanceof 400
    //   290: ifeq +28 -> 318
    //   293: getstatic 84	com/x/google/masf/MobileServiceMux:logger	Lcom/x/google/debug/LogSource;
    //   296: ldc_w 402
    //   299: invokevirtual 316	com/x/google/debug/LogSource:fine	(Ljava/lang/Object;)V
    //   302: aload_0
    //   303: aload 12
    //   305: checkcast 400	com/x/google/masf/protocol/SimpleRequest
    //   308: aload 10
    //   310: checkcast 398	com/x/google/masf/protocol/MultipartResponse
    //   313: invokespecial 406	com/x/google/masf/MobileServiceMux:removeExtraResponses	(Lcom/x/google/masf/protocol/SimpleRequest;Lcom/x/google/masf/protocol/MultipartResponse;)Lcom/x/google/masf/protocol/Response;
    //   316: astore 10
    //   318: aload 10
    //   320: invokevirtual 409	com/x/google/masf/protocol/Response:getStatusCode	()I
    //   323: istore 13
    //   325: getstatic 84	com/x/google/masf/MobileServiceMux:logger	Lcom/x/google/debug/LogSource;
    //   328: new 298	java/lang/StringBuilder
    //   331: dup
    //   332: invokespecial 299	java/lang/StringBuilder:<init>	()V
    //   335: ldc_w 411
    //   338: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   341: iload 13
    //   343: invokevirtual 351	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   346: invokevirtual 312	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   349: invokevirtual 316	com/x/google/debug/LogSource:fine	(Ljava/lang/Object;)V
    //   352: iload 13
    //   354: sipush 550
    //   357: if_icmpne +38 -> 395
    //   360: aload 10
    //   362: invokevirtual 414	com/x/google/masf/protocol/Response:bufferAndDetach	()V
    //   365: aload_0
    //   366: aload 12
    //   368: new 345	com/x/google/masf/ConnectionException
    //   371: dup
    //   372: iload 13
    //   374: invokespecial 346	com/x/google/masf/ConnectionException:<init>	(I)V
    //   377: invokestatic 162	com/x/google/common/Config:getInstance	()Lcom/x/google/common/Config;
    //   380: invokevirtual 418	com/x/google/common/Config:getClock	()Lcom/x/google/common/Clock;
    //   383: invokeinterface 423 1 0
    //   388: invokespecial 427	com/x/google/masf/MobileServiceMux:requeueRequest	(Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;J)Z
    //   391: pop
    //   392: goto +224 -> 616
    //   395: aload_0
    //   396: aload 12
    //   398: aload 10
    //   400: invokespecial 431	com/x/google/masf/MobileServiceMux:handleResponse	(Lcom/x/google/masf/protocol/Request;Lcom/x/google/masf/protocol/Response;)V
    //   403: goto +213 -> 616
    //   406: astore 7
    //   408: getstatic 84	com/x/google/masf/MobileServiceMux:logger	Lcom/x/google/debug/LogSource;
    //   411: ldc_w 433
    //   414: aload 7
    //   416: invokevirtual 436	com/x/google/debug/LogSource:info	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   419: getstatic 84	com/x/google/masf/MobileServiceMux:logger	Lcom/x/google/debug/LogSource;
    //   422: ldc_w 438
    //   425: invokevirtual 316	com/x/google/debug/LogSource:fine	(Ljava/lang/Object;)V
    //   428: aload_0
    //   429: aload_2
    //   430: new 275	java/io/IOException
    //   433: dup
    //   434: ldc_w 440
    //   437: invokespecial 369	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   440: invokespecial 226	com/x/google/masf/MobileServiceMux:requeueOrFailRequests	([Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V
    //   443: return
    //   444: getstatic 84	com/x/google/masf/MobileServiceMux:logger	Lcom/x/google/debug/LogSource;
    //   447: new 298	java/lang/StringBuilder
    //   450: dup
    //   451: invokespecial 299	java/lang/StringBuilder:<init>	()V
    //   454: ldc_w 442
    //   457: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   460: aload 10
    //   462: invokevirtual 396	com/x/google/masf/protocol/Response:getId	()I
    //   465: invokevirtual 351	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   468: ldc_w 444
    //   471: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   474: invokevirtual 312	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   477: invokevirtual 343	com/x/google/debug/LogSource:info	(Ljava/lang/Object;)V
    //   480: aload 10
    //   482: invokevirtual 447	com/x/google/masf/protocol/Response:getStreamLength	()I
    //   485: newarray byte
    //   487: astore 16
    //   489: aload 10
    //   491: invokevirtual 448	com/x/google/masf/protocol/Response:getInputStream	()Ljava/io/InputStream;
    //   494: aload 16
    //   496: invokevirtual 452	java/io/InputStream:read	([B)I
    //   499: pop
    //   500: aload 10
    //   502: invokevirtual 414	com/x/google/masf/protocol/Response:bufferAndDetach	()V
    //   505: goto +111 -> 616
    //   508: astore 6
    //   510: getstatic 84	com/x/google/masf/MobileServiceMux:logger	Lcom/x/google/debug/LogSource;
    //   513: ldc_w 433
    //   516: aload 6
    //   518: invokevirtual 436	com/x/google/debug/LogSource:info	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   521: getstatic 84	com/x/google/masf/MobileServiceMux:logger	Lcom/x/google/debug/LogSource;
    //   524: ldc_w 438
    //   527: invokevirtual 316	com/x/google/debug/LogSource:fine	(Ljava/lang/Object;)V
    //   530: aload_0
    //   531: aload_2
    //   532: new 275	java/io/IOException
    //   535: dup
    //   536: ldc_w 440
    //   539: invokespecial 369	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   542: invokespecial 226	com/x/google/masf/MobileServiceMux:requeueOrFailRequests	([Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V
    //   545: return
    //   546: aload 8
    //   548: invokevirtual 455	com/x/google/masf/protocol/ProtocolReader:close	()V
    //   551: getstatic 84	com/x/google/masf/MobileServiceMux:logger	Lcom/x/google/debug/LogSource;
    //   554: ldc_w 438
    //   557: invokevirtual 316	com/x/google/debug/LogSource:fine	(Ljava/lang/Object;)V
    //   560: aload_0
    //   561: aload_2
    //   562: new 275	java/io/IOException
    //   565: dup
    //   566: ldc_w 440
    //   569: invokespecial 369	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   572: invokespecial 226	com/x/google/masf/MobileServiceMux:requeueOrFailRequests	([Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V
    //   575: return
    //   576: astore 5
    //   578: getstatic 84	com/x/google/masf/MobileServiceMux:logger	Lcom/x/google/debug/LogSource;
    //   581: ldc_w 438
    //   584: invokevirtual 316	com/x/google/debug/LogSource:fine	(Ljava/lang/Object;)V
    //   587: aload_0
    //   588: aload_2
    //   589: new 275	java/io/IOException
    //   592: dup
    //   593: ldc_w 440
    //   596: invokespecial 369	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   599: invokespecial 226	com/x/google/masf/MobileServiceMux:requeueOrFailRequests	([Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V
    //   602: aload 5
    //   604: athrow
    //   605: astore 15
    //   607: goto -107 -> 500
    //   610: aconst_null
    //   611: astore 12
    //   613: goto -341 -> 272
    //   616: iinc 9 1
    //   619: goto -432 -> 187
    //   622: iinc 11 1
    //   625: goto -416 -> 209
    //
    // Exception table:
    //   from	to	target	type
    //   152	184	406	java/io/IOException
    //   187	201	406	java/io/IOException
    //   209	249	406	java/io/IOException
    //   254	272	406	java/io/IOException
    //   277	318	406	java/io/IOException
    //   318	352	406	java/io/IOException
    //   360	392	406	java/io/IOException
    //   395	403	406	java/io/IOException
    //   444	480	406	java/io/IOException
    //   500	505	406	java/io/IOException
    //   546	551	406	java/io/IOException
    //   152	184	508	java/lang/Throwable
    //   187	201	508	java/lang/Throwable
    //   209	249	508	java/lang/Throwable
    //   254	272	508	java/lang/Throwable
    //   277	318	508	java/lang/Throwable
    //   318	352	508	java/lang/Throwable
    //   360	392	508	java/lang/Throwable
    //   395	403	508	java/lang/Throwable
    //   444	480	508	java/lang/Throwable
    //   480	500	508	java/lang/Throwable
    //   500	505	508	java/lang/Throwable
    //   546	551	508	java/lang/Throwable
    //   152	184	576	finally
    //   187	201	576	finally
    //   209	249	576	finally
    //   254	272	576	finally
    //   277	318	576	finally
    //   318	352	576	finally
    //   360	392	576	finally
    //   395	403	576	finally
    //   408	419	576	finally
    //   444	480	576	finally
    //   480	500	576	finally
    //   500	505	576	finally
    //   510	521	576	finally
    //   546	551	576	finally
    //   480	500	605	java/io/IOException
  }

  private void handleResponse(Request paramRequest, Response paramResponse)
  {
    logger.fine("MobileServiceMux.handleResponse()");
    try
    {
      if (paramRequest.flagResponseReceived())
      {
        Request.Listener localListener = paramRequest.getListener();
        if (localListener != null)
          localListener.requestCompleted(paramRequest, paramResponse);
        notifyRequestComplete(paramRequest);
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      logger.severe("MobileServiceMux.handleResponse(): Unhandled thrown by request listener", localThrowable);
      return;
    }
    finally
    {
      paramResponse.bufferAndDetach();
    }
  }

  public static void initialize(Configuration paramConfiguration)
  {
    try
    {
      if (mux == null)
        mux = new MobileServiceMux(paramConfiguration);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void initialize(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    try
    {
      Configuration localConfiguration = new Configuration();
      localConfiguration.setServerUri(paramString1);
      localConfiguration.setApplicationName(paramString2);
      localConfiguration.setApplicationVersion(paramString3);
      localConfiguration.setPlatformId(paramString4);
      localConfiguration.setDistributionChannel(paramString5);
      initialize(localConfiguration);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void initialize(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, int paramInt)
  {
    try
    {
      Configuration localConfiguration = new Configuration();
      localConfiguration.setServerUri(paramString1);
      localConfiguration.setSecureServerUri(null);
      localConfiguration.setApplicationName(paramString2);
      localConfiguration.setApplicationVersion(paramString3);
      localConfiguration.setPlatformId(paramString4);
      localConfiguration.setDistributionChannel(paramString5);
      localConfiguration.setWorkerTimeout(paramInt);
      initialize(localConfiguration);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private boolean isSecureChannelSupported()
  {
    return this.secureServerUri != null;
  }

  private int nextRequestId()
  {
    try
    {
      int i = 1 + this.requestId;
      this.requestId = i;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void notifyNetworkError(int paramInt)
  {
    Listener[] arrayOfListener = getListeners();
    for (int i = 0; i < arrayOfListener.length; i++)
      arrayOfListener[i].onNetworkError(paramInt);
  }

  private void notifyRequestComplete(Request paramRequest)
  {
    Listener[] arrayOfListener = getListeners();
    for (int i = 0; i < arrayOfListener.length; i++)
      arrayOfListener[i].onRequestComplete(paramRequest);
  }

  private void processRequests(Request[] paramArrayOfRequest, boolean paramBoolean)
  {
    while (true)
    {
      Vector localVector;
      int i;
      int j;
      Request localRequest;
      try
      {
        localVector = new Vector();
        i = this.headerRequest.getStreamLength();
        j = 0;
        if (j >= paramArrayOfRequest.length)
          break label283;
        localRequest = paramArrayOfRequest[j];
        if (localRequest == null)
        {
          k = i;
          break label301;
        }
        if ((localRequest instanceof SimpleRequest))
        {
          String str = ((SimpleRequest)localRequest).getServiceUri();
          if (str != null)
          {
            logger.fine("Looking for " + str + " in response cache");
            synchronized (this.mutex)
            {
              Object localObject3 = this.responseCache.get(str);
              if (localObject3 != null)
              {
                logger.fine("Found cached response for " + str);
                paramArrayOfRequest[j] = null;
                handleResponse(localRequest, (Response)localObject3);
                k = i;
              }
            }
          }
        }
      }
      catch (IOException localIOException)
      {
        requeueOrFailRequests(paramArrayOfRequest, localIOException);
        return;
      }
      logger.fine("Sending request with id " + localRequest.getId());
      if (i + localRequest.getStreamLength() > 32768)
      {
        sendMacroRequest(localVector, paramBoolean);
        i = this.headerRequest.getStreamLength();
        localVector.removeAllElements();
      }
      paramArrayOfRequest[j] = null;
      localVector.addElement(localRequest);
      int k = i + localRequest.getStreamLength();
      break label301;
      label283: scheduleDelayedFlush();
      if (localVector.size() > 0)
      {
        sendMacroRequest(localVector, paramBoolean);
        return;
        label301: j++;
        i = k;
      }
    }
  }

  private void purgePreemptableRequest(String paramString)
  {
    Request localRequest = (Request)this.preemptableRequestMap.get(paramString);
    if (localRequest != null)
    {
      localRequest.setSentCount(0);
      this.delayedRequestQueue.remove(localRequest);
    }
  }

  private Response removeExtraResponses(SimpleRequest paramSimpleRequest, MultipartResponse paramMultipartResponse)
  {
    String str1 = paramSimpleRequest.getServiceUri();
    MultipartResponseBuilder localMultipartResponseBuilder1 = new MultipartResponseBuilder(paramMultipartResponse.getId(), paramMultipartResponse.getStatusCode(), paramMultipartResponse.getRoot());
    Hashtable localHashtable = new Hashtable();
    BodyPart[] arrayOfBodyPart = paramMultipartResponse.getBodyParts();
    int i = 0;
    if (i < arrayOfBodyPart.length)
    {
      BodyPart localBodyPart = arrayOfBodyPart[i];
      String str2 = (String)localBodyPart.getProperties().get("Content-Location");
      MultipartResponseBuilder localMultipartResponseBuilder3;
      if ((str2 != null) && (!str2.equals(str1)))
      {
        localMultipartResponseBuilder3 = (MultipartResponseBuilder)localHashtable.get(str2);
        if (localMultipartResponseBuilder3 == null)
        {
          String str3 = (String)localBodyPart.getProperties().get("X-Masf-Response-Code");
          localHashtable.put(str2, new MultipartResponseBuilder(paramMultipartResponse.getId(), Integer.parseInt(str3), localBodyPart));
        }
      }
      while (true)
      {
        i++;
        break;
        localMultipartResponseBuilder3.addBodyPart(localBodyPart);
        continue;
        localMultipartResponseBuilder1.addBodyPart(localBodyPart);
      }
    }
    Enumeration localEnumeration = localHashtable.keys();
    synchronized (this.mutex)
    {
      if (localEnumeration.hasMoreElements())
      {
        Object localObject3 = localEnumeration.nextElement();
        MultipartResponseBuilder localMultipartResponseBuilder2 = (MultipartResponseBuilder)localHashtable.get(localObject3);
        this.responseCache.put(localObject3, localMultipartResponseBuilder2.toMultipartResponse());
        logger.info("Cached response for " + (String)localObject3);
      }
    }
    return localMultipartResponseBuilder1.toMultipartResponse();
  }

  private void requeueOrFailRequests(Request[] paramArrayOfRequest, Exception paramException)
  {
    int i = 0;
    long l = Config.getInstance().getClock().currentTimeMillis();
    Object localObject1 = this.mutex;
    for (int j = 0; ; j++)
    {
      try
      {
        if (j < paramArrayOfRequest.length)
        {
          if ((paramArrayOfRequest[j] == null) || (!requeueRequest(paramArrayOfRequest[j], paramException, l)))
            continue;
          logger.fine("Requeuing " + paramArrayOfRequest[j]);
          paramArrayOfRequest[j] = null;
          continue;
        }
        scheduleDelayedFlush();
        while (i < paramArrayOfRequest.length)
        {
          if ((paramArrayOfRequest[i] != null) && (paramArrayOfRequest[i].flagResponseReceived()))
          {
            logger.fine("Request failed " + paramArrayOfRequest[i]);
            Request.Listener localListener = paramArrayOfRequest[i].getListener();
            if (localListener != null)
              localListener.requestFailed(paramArrayOfRequest[i], paramException);
          }
          i++;
        }
      }
      finally
      {
      }
      return;
    }
  }

  private boolean requeueRequest(Request paramRequest, Exception paramException, long paramLong)
  {
    if (paramRequest.shouldRetry(paramLong))
    {
      paramRequest.updateResendTimeoutOnError(paramLong);
      logger.info("Resending " + paramRequest);
      this.delayedRequestQueue.put(paramRequest, "");
      return true;
    }
    return false;
  }

  private void scheduleDelayedFlush()
  {
    long l1;
    long l2;
    synchronized (this.mutex)
    {
      this.delayedFlushTask.cancel();
      Enumeration localEnumeration = this.delayedRequestQueue.keys();
      l1 = -1L;
      if (localEnumeration.hasMoreElements())
      {
        Request localRequest = (Request)localEnumeration.nextElement();
        if (localRequest.isResponseReceived())
        {
          this.delayedRequestQueue.remove(localRequest);
          if (localRequest.getPreemptableId() == null)
            break label224;
          this.preemptableRequestMap.remove(localRequest.getPreemptableId());
          l2 = l1;
        }
        else
        {
          l2 = localRequest.getRetryDeadline();
          if (l2 == -1L)
            break label224;
          if ((l1 != -1L) && (l1 <= l2))
            break label224;
        }
      }
      else
      {
        if (l1 == -1L)
        {
          logger.fine("No delay flush required");
          return;
        }
        logger.fine("Scheduling delayed flush: " + (l1 - Config.getInstance().getClock().currentTimeMillis()));
        this.delayedFlushTask.setDeadline(l1);
        this.delayedFlushTask.schedule();
        return;
      }
    }
    while (true)
    {
      l1 = l2;
      break;
      label224: l2 = l1;
    }
  }

  private void scheduleDelayedRequests(long paramLong)
  {
    Enumeration localEnumeration = this.delayedRequestQueue.keys();
    while (localEnumeration.hasMoreElements())
    {
      Request localRequest = (Request)localEnumeration.nextElement();
      if (localRequest.getRetryStartTimestamp() <= paramLong)
      {
        this.delayedRequestQueue.remove(localRequest);
        if (localRequest.getPreemptableId() != null)
          this.preemptableRequestMap.remove(localRequest.getPreemptableId());
        if (localRequest.shouldRetry(paramLong))
        {
          logger.fine("Sending delayed request [" + localRequest + "]");
          this.submitRequestQueue.addElement(localRequest);
        }
      }
      else
      {
        logger.fine("Not sending delayed request [" + localRequest + "]");
      }
    }
  }

  private void scheduleResendRequests(long paramLong)
  {
    for (int i = -1 + this.submitRequestQueue.size(); i >= 0; i--)
    {
      Request localRequest = (Request)this.submitRequestQueue.elementAt(i);
      if ((localRequest.isImmediate()) && (localRequest.shouldRetry(paramLong)))
      {
        logger.fine("Delaying a request [" + localRequest + "]");
        localRequest.updateResendTimeoutOnSent(paramLong);
        this.delayedRequestQueue.put(localRequest, "");
      }
    }
  }

  private void updateSentCounter()
  {
    for (int i = 0; i < this.submitRequestQueue.size(); i++)
      ((Request)this.submitRequestQueue.elementAt(i)).updateSentCounter();
  }

  public void addListener(Listener paramListener)
  {
    synchronized (this.listeners)
    {
      this.listeners.addElement(paramListener);
      return;
    }
  }

  public void cancelResumableRequest(ResumableRequest paramResumableRequest)
  {
    this.resumeService.cancelRequest(paramResumableRequest);
  }

  protected AsyncHttpRequestFactory createAsyncHttpRequestFactory()
  {
    return new AsyncHttpRequestFactory(this.taskRunner, Config.getInstance().getThreadFactory(), this.connectionFactory, "MobileServiceMux AsyncHttpRequestFactory", 3);
  }

  public GoogleHttpConnection createConnection(String paramString, boolean paramBoolean)
    throws SecurityException
  {
    return new MultiplexedHttpConnection(paramString, paramBoolean);
  }

  protected TaskRunner createTaskRunner()
  {
    return new TaskRunner(Config.getInstance().getThreadFactory(), "MobileServiceMux TaskRunner", 1);
  }

  public void disposeResumableRequest(ResumableRequest paramResumableRequest)
  {
    this.resumeService.disposeRequest(paramResumableRequest);
  }

  public void flushRequests()
  {
    processRequests();
  }

  public int getBytesReceived()
  {
    return this.bytesReceived;
  }

  public int getBytesSent()
  {
    return this.bytesSent;
  }

  public boolean getNetworkWorkedThisSession()
  {
    return this.connectionFactory.getNetworkWorkedThisSession();
  }

  public int getResumableChunkSize()
  {
    return this.resumeService.getChunkSize();
  }

  public boolean isEndToEndSecure()
  {
    if (isHttps())
      return this.requireEndToEndSecure;
    return false;
  }

  public boolean isHttps()
  {
    return this.serverUri.startsWith("https:/");
  }

  public int isNetworkAvailable()
  {
    return this.connectionFactory.isNetworkAvailable();
  }

  public int peekRequestId()
  {
    try
    {
      int i = this.requestId;
      int j = i + 1;
      return j;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void processRequests()
  {
    synchronized (this.mutex)
    {
      long l = Config.getInstance().getClock().currentTimeMillis();
      scheduleDelayedRequests(l);
      scheduleResendRequests(l);
      updateSentCounter();
      scheduleDelayedFlush();
      if (this.submitRequestQueue.size() == 0)
        return;
      Request[] arrayOfRequest1 = new Request[this.submitRequestQueue.size()];
      this.submitRequestQueue.copyInto(arrayOfRequest1);
      this.submitRequestQueue.removeAllElements();
      if (isSecureChannelSupported())
      {
        Request[] arrayOfRequest2 = getSecureRequests(arrayOfRequest1);
        if (arrayOfRequest2 != null)
          processRequests(arrayOfRequest2, true);
      }
      processRequests(arrayOfRequest1, false);
      return;
    }
  }

  public void removeListener(Listener paramListener)
  {
    synchronized (this.listeners)
    {
      this.listeners.removeElement(paramListener);
      return;
    }
  }

  public void requireEndToEndSecure(boolean paramBoolean)
    throws IOException
  {
    if (paramBoolean)
      try
      {
        if (!isHttps())
          throw new IOException("End to end secure not possible: not https");
      }
      finally
      {
      }
    this.requireEndToEndSecure = paramBoolean;
  }

  protected void scheduleFlush()
  {
    long l1 = Config.getInstance().getClock().currentTimeMillis();
    long l2 = 10L + l1;
    if (this.nextFlush == 0L)
    {
      this.hardDeadline = (l1 + 100L);
      this.nextFlush = l2;
      logger.fine("1) scheduleFlush [next=" + this.nextFlush + "]");
      this.flushTask.setDeadline(this.nextFlush);
      this.flushTask.schedule();
    }
    do
    {
      return;
      if (l2 < this.hardDeadline)
      {
        this.nextFlush = l2;
        logger.fine("2) scheduleFlush [next=" + this.nextFlush + "]");
        return;
      }
    }
    while (this.nextFlush >= this.hardDeadline);
    this.nextFlush = this.hardDeadline;
    logger.fine("3) scheduleFlush [next=" + this.nextFlush + "]");
  }

  protected void sendMacroRequest(Vector paramVector, boolean paramBoolean)
    throws IOException
  {
    final Request[] arrayOfRequest = new Request[paramVector.size()];
    paramVector.copyInto(arrayOfRequest);
    InputStream localInputStream = getMacroRequestPayload(arrayOfRequest);
    String str = getServerAddress(paramBoolean);
    final AsyncHttpRequest localAsyncHttpRequest = this.asyncFactory.createAsyncHttpRequest(str, 1);
    localAsyncHttpRequest.setMethod("POST");
    final int i = localInputStream.available();
    localAsyncHttpRequest.setPayload(localInputStream);
    localAsyncHttpRequest.setWatchdogDelay(this.workerTimeout);
    localAsyncHttpRequest.setContentType("application/binary");
    Task local4 = new Task(this.taskRunner)
    {
      public void run()
      {
        MobileServiceMux.logger.fine("Macro response received " + localAsyncHttpRequest);
        if (localAsyncHttpRequest.isRunning())
        {
          MobileServiceMux.logger.fine("Macro response received - running");
          Object localObject2 = MobileServiceMux.this.mutex;
          int i = 0;
          try
          {
            while (i < arrayOfRequest.length)
            {
              arrayOfRequest[i].updateProgress(localAsyncHttpRequest.getLastProgressTimestamp());
              i++;
            }
            MobileServiceMux.this.scheduleDelayedFlush();
            return;
          }
          finally
          {
          }
        }
        if (localAsyncHttpRequest.isCompletedOrException())
          try
          {
            if (localAsyncHttpRequest.hasException())
            {
              MobileServiceMux.logger.fine("Macro response received - exception");
              MobileServiceMux.this.requeueOrFailRequests(arrayOfRequest, localAsyncHttpRequest.getException());
            }
            while (true)
            {
              MobileServiceMux.this.disposeRequests(arrayOfRequest);
              MobileServiceMux.access$1312(MobileServiceMux.this, i);
              return;
              MobileServiceMux.logger.fine("Macro response received - complete");
              MobileServiceMux.this.handleMacroResponse(localAsyncHttpRequest, arrayOfRequest);
            }
          }
          finally
          {
            MobileServiceMux.this.scheduleDelayedFlush();
            localAsyncHttpRequest.close();
          }
      }
    };
    logger.fine("Scheduling a submit request");
    localAsyncHttpRequest.submit(local4);
  }

  public void setResumableChunkSize(int paramInt)
  {
    this.resumeService.setChunkSize(paramInt);
  }

  public void submitPreemptableRequest(Request paramRequest, long paramLong, boolean paramBoolean, String paramString)
  {
    if (paramBoolean)
      paramRequest.flagImmediate();
    paramRequest.setPreemptableId(paramString);
    paramRequest.updatePreemtableTimeout(paramLong);
    synchronized (this.mutex)
    {
      purgePreemptableRequest(paramString);
      this.preemptableRequestMap.put(paramString, paramRequest);
      submitRequest(paramRequest, paramBoolean);
      return;
    }
  }

  public void submitRequest(Request paramRequest)
  {
    submitRequest(paramRequest, true);
  }

  public void submitRequest(Request paramRequest, long paramLong)
  {
    submitRequest(paramRequest, paramLong, true);
  }

  public void submitRequest(final Request paramRequest, long paramLong, final boolean paramBoolean)
  {
    Runnable local3 = new Runnable()
    {
      public void run()
      {
        MobileServiceMux.this.submitRequest(paramRequest, paramBoolean);
      }
    };
    TimerTask localTimerTask = new TimerTask(this.taskRunner, local3);
    localTimerTask.setDelay(paramLong);
    localTimerTask.schedule();
  }

  public void submitRequest(Request paramRequest, boolean paramBoolean)
  {
    synchronized (this.mutex)
    {
      paramRequest.updateSubmit();
      paramRequest.setId(nextRequestId());
      if ((paramBoolean) && (paramRequest.getRetryStartTimestamp() == -1L))
      {
        paramRequest.flagImmediate();
        this.submitRequestQueue.addElement(paramRequest);
        scheduleFlush();
        return;
      }
      this.delayedRequestQueue.put(paramRequest, "");
      scheduleDelayedFlush();
    }
  }

  public void submitResumableRequest(ResumableRequest paramResumableRequest)
  {
    this.resumeService.submitRequest(paramResumableRequest);
  }

  public static class Configuration
  {
    private String applicationName;
    private String applicationVersion;
    private String distributionChannel;
    private String platformId;
    private String secureServerUri;
    private String serverUri;
    private long workerTimeout = 20000L;

    public void setApplicationName(String paramString)
    {
      this.applicationName = paramString;
    }

    public void setApplicationVersion(String paramString)
    {
      this.applicationVersion = paramString;
    }

    public void setDistributionChannel(String paramString)
    {
      this.distributionChannel = paramString;
    }

    public void setPlatformId(String paramString)
    {
      this.platformId = paramString;
    }

    public void setSecureServerUri(String paramString)
    {
      this.secureServerUri = paramString;
    }

    public void setServerUri(String paramString)
    {
      this.serverUri = paramString;
    }

    public void setWorkerTimeout(long paramLong)
    {
      this.workerTimeout = paramLong;
    }

    public String toString()
    {
      return super.toString();
    }
  }

  public static abstract interface Listener
  {
    public static final int NETWORK_ACCESS_DENIED = 0;
    public static final int NETWORK_HTTP_FAILURE = 2;
    public static final int NETWORK_PROTOCOL_FAILURE = 1;
    public static final int NETWORK_UNAVAILABLE = 3;

    public abstract void onNetworkError(int paramInt);

    public abstract void onRequestComplete(Request paramRequest);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.MobileServiceMux
 * JD-Core Version:    0.6.2
 */