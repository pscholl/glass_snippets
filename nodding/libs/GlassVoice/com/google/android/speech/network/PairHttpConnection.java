package com.google.android.speech.network;

import android.util.Log;
import com.google.android.searchcommon.util.ExtraPreconditions;
import com.google.android.searchcommon.util.ExtraPreconditions.ThreadCheck;
import com.google.android.speech.callback.Callback;
import com.google.android.speech.exception.NetworkRecognizeException;
import com.google.android.speech.exception.RecognizeException;
import com.google.android.speech.message.S3RequestStream;
import com.google.android.speech.message.S3ResponseStream;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.io.Closeables;
import com.google.speech.s3.S3.S3Request;
import com.google.speech.s3.S3.S3Response;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.HttpServerInfo;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.PairHttpServerInfo;
import java.io.Closeable;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nonnull;
import javax.annotation.concurrent.GuardedBy;

public class PairHttpConnection
  implements S3Connection
{
  private static final boolean DEBUG = false;
  public static final String READER_DOWN_THREAD_NAME = "PairHttpReaderDown";
  public static final String READER_UP_THREAD_NAME = "PairHttpReaderUp";
  private static final String TAG = "PairHttpConnection";
  private final boolean mAcceptUpstreamResponses;
  private Callback<S3.S3Response, RecognizeException> mCallback;
  private final ConnectionFactory mConnectionFactory;
  private DownloadThread mDownloadThread;
  private S3RequestStream mOutput;
  private final GstaticConfiguration.PairHttpServerInfo mPairHttpServerInfo;

  @GuardedBy("this")
  private ResponseState mResponseState;
  private final ExtraPreconditions.ThreadCheck mSameThreadCheck = ExtraPreconditions.createSameThreadCheck();
  private UpResponseThread mUpResponseThread;
  private URL mUpUrl;
  private HttpURLConnection mUploadConnection;

  public PairHttpConnection(GstaticConfiguration.PairHttpServerInfo paramPairHttpServerInfo, ConnectionFactory paramConnectionFactory, boolean paramBoolean)
  {
    this.mPairHttpServerInfo = paramPairHttpServerInfo;
    this.mConnectionFactory = paramConnectionFactory;
    this.mAcceptUpstreamResponses = paramBoolean;
  }

  private static String generateKey()
  {
    return UUID.randomUUID().toString();
  }

  // ERROR //
  private void handleEndOfData()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 93	com/google/android/speech/network/PairHttpConnection:mOutput	Lcom/google/android/speech/message/S3RequestStream;
    //   4: invokevirtual 98	com/google/android/speech/message/S3RequestStream:close	()V
    //   7: aload_0
    //   8: getfield 100	com/google/android/speech/network/PairHttpConnection:mUploadConnection	Ljava/net/HttpURLConnection;
    //   11: invokevirtual 106	java/net/HttpURLConnection:getResponseCode	()I
    //   14: istore_2
    //   15: aload_0
    //   16: aconst_null
    //   17: putfield 93	com/google/android/speech/network/PairHttpConnection:mOutput	Lcom/google/android/speech/message/S3RequestStream;
    //   20: aload_0
    //   21: iload_2
    //   22: invokespecial 110	com/google/android/speech/network/PairHttpConnection:verifyResponseCodeAndUrl	(I)Z
    //   25: ifne +43 -> 68
    //   28: aload_0
    //   29: getfield 77	com/google/android/speech/network/PairHttpConnection:mCallback	Lcom/google/android/speech/callback/Callback;
    //   32: new 112	com/google/android/speech/exception/NetworkRecognizeException
    //   35: dup
    //   36: ldc 114
    //   38: invokespecial 117	com/google/android/speech/exception/NetworkRecognizeException:<init>	(Ljava/lang/String;)V
    //   41: invokeinterface 123 2 0
    //   46: return
    //   47: astore_1
    //   48: aload_0
    //   49: getfield 77	com/google/android/speech/network/PairHttpConnection:mCallback	Lcom/google/android/speech/callback/Callback;
    //   52: new 112	com/google/android/speech/exception/NetworkRecognizeException
    //   55: dup
    //   56: ldc 125
    //   58: aload_1
    //   59: invokespecial 128	com/google/android/speech/exception/NetworkRecognizeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   62: invokeinterface 123 2 0
    //   67: return
    //   68: aconst_null
    //   69: astore_3
    //   70: aconst_null
    //   71: astore 4
    //   73: aload_0
    //   74: getfield 100	com/google/android/speech/network/PairHttpConnection:mUploadConnection	Ljava/net/HttpURLConnection;
    //   77: invokevirtual 132	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   80: astore_3
    //   81: new 134	com/google/android/speech/message/S3ResponseStream
    //   84: dup
    //   85: aload_3
    //   86: invokespecial 137	com/google/android/speech/message/S3ResponseStream:<init>	(Ljava/io/InputStream;)V
    //   89: astore 10
    //   91: aload 10
    //   93: invokevirtual 141	com/google/android/speech/message/S3ResponseStream:read	()Lcom/google/speech/s3/S3$S3Response;
    //   96: astore 12
    //   98: aload 12
    //   100: astore 6
    //   102: iconst_1
    //   103: istore 7
    //   105: aload 10
    //   107: astore 4
    //   109: iload 7
    //   111: ifeq +69 -> 180
    //   114: aload_0
    //   115: getstatic 146	com/google/android/speech/network/PairHttpConnection$ResponseState:UP	Lcom/google/android/speech/network/PairHttpConnection$ResponseState;
    //   118: invokevirtual 150	com/google/android/speech/network/PairHttpConnection:setResponseState	(Lcom/google/android/speech/network/PairHttpConnection$ResponseState;)Z
    //   121: pop
    //   122: aload 6
    //   124: invokestatic 156	com/google/common/base/Preconditions:checkNotNull	(Ljava/lang/Object;)Ljava/lang/Object;
    //   127: pop
    //   128: aload_0
    //   129: new 158	com/google/android/speech/network/PairHttpConnection$UpResponseThread
    //   132: dup
    //   133: aload_0
    //   134: aload 4
    //   136: aload_0
    //   137: getfield 100	com/google/android/speech/network/PairHttpConnection:mUploadConnection	Ljava/net/HttpURLConnection;
    //   140: aload_0
    //   141: getfield 77	com/google/android/speech/network/PairHttpConnection:mCallback	Lcom/google/android/speech/callback/Callback;
    //   144: aload 6
    //   146: invokespecial 161	com/google/android/speech/network/PairHttpConnection$UpResponseThread:<init>	(Lcom/google/android/speech/network/PairHttpConnection;Lcom/google/android/speech/message/S3ResponseStream;Ljava/net/HttpURLConnection;Lcom/google/android/speech/callback/Callback;Lcom/google/speech/s3/S3$S3Response;)V
    //   149: putfield 163	com/google/android/speech/network/PairHttpConnection:mUpResponseThread	Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;
    //   152: aload_0
    //   153: aconst_null
    //   154: putfield 100	com/google/android/speech/network/PairHttpConnection:mUploadConnection	Ljava/net/HttpURLConnection;
    //   157: aload_0
    //   158: getfield 163	com/google/android/speech/network/PairHttpConnection:mUpResponseThread	Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;
    //   161: invokevirtual 166	com/google/android/speech/network/PairHttpConnection$UpResponseThread:start	()V
    //   164: return
    //   165: astore 5
    //   167: aload_3
    //   168: invokestatic 172	com/google/common/io/Closeables:closeQuietly	(Ljava/io/Closeable;)V
    //   171: aconst_null
    //   172: astore 6
    //   174: iconst_0
    //   175: istore 7
    //   177: goto -68 -> 109
    //   180: aload 4
    //   182: invokestatic 172	com/google/common/io/Closeables:closeQuietly	(Ljava/io/Closeable;)V
    //   185: return
    //   186: astore 11
    //   188: aload 10
    //   190: astore 4
    //   192: goto -25 -> 167
    //
    // Exception table:
    //   from	to	target	type
    //   0	20	47	java/io/IOException
    //   73	91	165	java/io/IOException
    //   91	98	186	java/io/IOException
  }

  private void maybeSetCompressionHeader(HttpURLConnection paramHttpURLConnection, GstaticConfiguration.HttpServerInfo paramHttpServerInfo)
  {
    if (!paramHttpServerInfo.getDisableCompression())
      paramHttpURLConnection.setRequestProperty("X-S3-Send-Compressible", "1");
  }

  private boolean verifyResponseCodeAndUrl(int paramInt)
  {
    if (paramInt != 200)
    {
      Log.w("PairHttpConnection", "[Upload] response code " + paramInt);
      return false;
    }
    if (!this.mUpUrl.getHost().equals(this.mUploadConnection.getURL().getHost()))
    {
      Log.w("PairHttpConnection", "[Upload] unexpected redirect to " + this.mUploadConnection.getURL());
      return false;
    }
    return true;
  }

  public void close()
  {
    this.mSameThreadCheck.check();
    Closeables.closeQuietly(this.mOutput);
    if (this.mUploadConnection != null)
    {
      this.mUploadConnection.disconnect();
      this.mUploadConnection = null;
    }
    Closeables.closeQuietly(this.mUpResponseThread);
    Closeables.closeQuietly(this.mDownloadThread);
  }

  public void connect(Callback<S3.S3Response, RecognizeException> paramCallback, S3.S3Request paramS3Request)
    throws IOException
  {
    this.mSameThreadCheck.check();
    setResponseState(ResponseState.UNKNOWN);
    this.mCallback = ((Callback)Preconditions.checkNotNull(paramCallback));
    String str = generateKey();
    try
    {
      this.mDownloadThread = new DownloadThread(new URL(this.mPairHttpServerInfo.getDown().getUrl() + str), null);
      this.mDownloadThread.start();
      GstaticConfiguration.HttpServerInfo localHttpServerInfo = this.mPairHttpServerInfo.getUp();
      this.mUpUrl = new URL(localHttpServerInfo.getUrl() + str);
      this.mUploadConnection = this.mConnectionFactory.openHttpConnection(localHttpServerInfo, this.mUpUrl);
      IoUtils.addHttpHeaders(this.mUploadConnection, localHttpServerInfo);
      maybeSetCompressionHeader(this.mUploadConnection, localHttpServerInfo);
      this.mUploadConnection.setDoOutput(true);
      this.mUploadConnection.setUseCaches(false);
      this.mUploadConnection.connect();
      this.mOutput = new S3RequestStream(this.mUploadConnection.getOutputStream(), localHttpServerInfo.getHeader(), false);
      this.mOutput.writeHeader(paramS3Request);
      if (!this.mDownloadThread.waitForConnection())
        throw new IOException("Timed out / error during connect");
    }
    catch (IOException localIOException)
    {
      Log.w("PairHttpConnection", "[Upload] Connection error", localIOException);
      close();
      throw localIOException;
    }
  }

  public void send(S3.S3Request paramS3Request)
  {
    this.mSameThreadCheck.check();
    boolean bool;
    if (this.mOutput != null)
      bool = true;
    while (true)
    {
      Preconditions.checkState(bool, "call to send() after close() / error / end of data");
      try
      {
        this.mOutput.write(paramS3Request);
        this.mOutput.flush();
        if (paramS3Request.getEndOfData())
          handleEndOfData();
        return;
        bool = false;
      }
      catch (IOException localIOException)
      {
        this.mCallback.onError(new NetworkRecognizeException("Failed to send request", localIOException));
      }
    }
  }

  @VisibleForTesting
  boolean setResponseState(ResponseState paramResponseState)
  {
    boolean bool1;
    while (true)
    {
      try
      {
        int i = 1.$SwitchMap$com$google$android$speech$network$PairHttpConnection$ResponseState[paramResponseState.ordinal()];
        bool1 = false;
        switch (i)
        {
        default:
          return bool1;
        case 1:
          if (this.mResponseState == ResponseState.DOWN)
          {
            Log.w("PairHttpConnection", "The response is sent in the up and down");
            bool1 = false;
            continue;
          }
          break;
        case 2:
        case 3:
        case 4:
        }
      }
      finally
      {
      }
      this.mResponseState = ResponseState.UP;
      bool1 = true;
    }
    if (this.mResponseState != ResponseState.DOWN_ERROR);
    for (boolean bool3 = true; ; bool3 = false)
    {
      Preconditions.checkState(bool3);
      if (this.mResponseState == ResponseState.UP)
      {
        Log.w("PairHttpConnection", "The response is sent in the up and down");
        bool1 = false;
        break;
      }
      this.mResponseState = ResponseState.DOWN;
      bool1 = true;
      break;
      boolean bool2 = this.mAcceptUpstreamResponses;
      bool1 = false;
      if (!bool2)
        break;
      if (this.mResponseState == ResponseState.DOWN)
      {
        this.mResponseState = ResponseState.DOWN_ERROR;
        bool1 = false;
        break;
      }
      if (this.mResponseState == ResponseState.UP)
      {
        bool1 = true;
        break;
      }
      this.mResponseState = ResponseState.DOWN_ERROR;
      bool1 = true;
      break;
      this.mResponseState = ResponseState.UNKNOWN;
      bool1 = true;
      break;
    }
  }

  @VisibleForTesting
  protected class DownloadThread extends Thread
    implements Closeable
  {
    private final CountDownLatch mConnectedLatch;
    private final URL mDownUrl;
    private volatile boolean mRunning;

    private DownloadThread(URL arg2)
    {
      super();
      Object localObject;
      this.mDownUrl = localObject;
      this.mConnectedLatch = new CountDownLatch(1);
      this.mRunning = true;
    }

    // ERROR //
    private void runDownloadLoop(@Nonnull HttpURLConnection paramHttpURLConnection)
    {
      // Byte code:
      //   0: aload_0
      //   1: aload_1
      //   2: invokespecial 47	com/google/android/speech/network/PairHttpConnection$DownloadThread:verifyResponseCodeAndUrl	(Ljava/net/HttpURLConnection;)Z
      //   5: ifne +42 -> 47
      //   8: aload_0
      //   9: getfield 19	com/google/android/speech/network/PairHttpConnection$DownloadThread:this$0	Lcom/google/android/speech/network/PairHttpConnection;
      //   12: getstatic 53	com/google/android/speech/network/PairHttpConnection$ResponseState:DOWN_ERROR	Lcom/google/android/speech/network/PairHttpConnection$ResponseState;
      //   15: invokevirtual 59	com/google/android/speech/network/PairHttpConnection:setResponseState	(Lcom/google/android/speech/network/PairHttpConnection$ResponseState;)Z
      //   18: ifne +24 -> 42
      //   21: aload_0
      //   22: getfield 19	com/google/android/speech/network/PairHttpConnection$DownloadThread:this$0	Lcom/google/android/speech/network/PairHttpConnection;
      //   25: invokestatic 63	com/google/android/speech/network/PairHttpConnection:access$400	(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/android/speech/callback/Callback;
      //   28: new 65	com/google/android/speech/exception/NetworkRecognizeException
      //   31: dup
      //   32: ldc 67
      //   34: invokespecial 68	com/google/android/speech/exception/NetworkRecognizeException:<init>	(Ljava/lang/String;)V
      //   37: invokeinterface 74 2 0
      //   42: aload_1
      //   43: invokevirtual 80	java/net/HttpURLConnection:disconnect	()V
      //   46: return
      //   47: aconst_null
      //   48: astore_2
      //   49: new 82	com/google/android/speech/message/S3ResponseStream
      //   52: dup
      //   53: aload_1
      //   54: invokevirtual 86	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
      //   57: invokespecial 89	com/google/android/speech/message/S3ResponseStream:<init>	(Ljava/io/InputStream;)V
      //   60: astore_3
      //   61: aload_0
      //   62: getfield 35	com/google/android/speech/network/PairHttpConnection$DownloadThread:mRunning	Z
      //   65: ifeq +43 -> 108
      //   68: aload_3
      //   69: invokevirtual 93	com/google/android/speech/message/S3ResponseStream:read	()Lcom/google/speech/s3/S3$S3Response;
      //   72: astore 7
      //   74: aload_0
      //   75: getfield 19	com/google/android/speech/network/PairHttpConnection$DownloadThread:this$0	Lcom/google/android/speech/network/PairHttpConnection;
      //   78: getstatic 96	com/google/android/speech/network/PairHttpConnection$ResponseState:DOWN	Lcom/google/android/speech/network/PairHttpConnection$ResponseState;
      //   81: invokevirtual 59	com/google/android/speech/network/PairHttpConnection:setResponseState	(Lcom/google/android/speech/network/PairHttpConnection$ResponseState;)Z
      //   84: ifne +33 -> 117
      //   87: aload_0
      //   88: getfield 19	com/google/android/speech/network/PairHttpConnection$DownloadThread:this$0	Lcom/google/android/speech/network/PairHttpConnection;
      //   91: invokestatic 63	com/google/android/speech/network/PairHttpConnection:access$400	(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/android/speech/callback/Callback;
      //   94: new 65	com/google/android/speech/exception/NetworkRecognizeException
      //   97: dup
      //   98: ldc 98
      //   100: invokespecial 68	com/google/android/speech/exception/NetworkRecognizeException:<init>	(Ljava/lang/String;)V
      //   103: invokeinterface 74 2 0
      //   108: aload_3
      //   109: invokestatic 104	com/google/common/io/Closeables:closeQuietly	(Ljava/io/Closeable;)V
      //   112: aload_1
      //   113: invokevirtual 80	java/net/HttpURLConnection:disconnect	()V
      //   116: return
      //   117: aload 7
      //   119: invokevirtual 110	com/google/speech/s3/S3$S3Response:getStatus	()I
      //   122: iconst_2
      //   123: if_icmpeq +12 -> 135
      //   126: aload 7
      //   128: invokevirtual 110	com/google/speech/s3/S3$S3Response:getStatus	()I
      //   131: iconst_1
      //   132: if_icmpne +8 -> 140
      //   135: aload_0
      //   136: iconst_0
      //   137: putfield 35	com/google/android/speech/network/PairHttpConnection$DownloadThread:mRunning	Z
      //   140: aload_0
      //   141: getfield 19	com/google/android/speech/network/PairHttpConnection$DownloadThread:this$0	Lcom/google/android/speech/network/PairHttpConnection;
      //   144: invokestatic 63	com/google/android/speech/network/PairHttpConnection:access$400	(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/android/speech/callback/Callback;
      //   147: aload 7
      //   149: invokeinterface 113 2 0
      //   154: goto -93 -> 61
      //   157: astore 5
      //   159: aload_3
      //   160: astore_2
      //   161: aload_0
      //   162: getfield 35	com/google/android/speech/network/PairHttpConnection$DownloadThread:mRunning	Z
      //   165: ifeq +68 -> 233
      //   168: ldc 115
      //   170: new 117	java/lang/StringBuilder
      //   173: dup
      //   174: invokespecial 119	java/lang/StringBuilder:<init>	()V
      //   177: ldc 121
      //   179: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   182: aload 5
      //   184: invokevirtual 129	java/io/IOException:getMessage	()Ljava/lang/String;
      //   187: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   190: invokevirtual 132	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   193: invokestatic 138	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
      //   196: pop
      //   197: aload_0
      //   198: getfield 19	com/google/android/speech/network/PairHttpConnection$DownloadThread:this$0	Lcom/google/android/speech/network/PairHttpConnection;
      //   201: getstatic 53	com/google/android/speech/network/PairHttpConnection$ResponseState:DOWN_ERROR	Lcom/google/android/speech/network/PairHttpConnection$ResponseState;
      //   204: invokevirtual 59	com/google/android/speech/network/PairHttpConnection:setResponseState	(Lcom/google/android/speech/network/PairHttpConnection$ResponseState;)Z
      //   207: ifne +26 -> 233
      //   210: aload_0
      //   211: getfield 19	com/google/android/speech/network/PairHttpConnection$DownloadThread:this$0	Lcom/google/android/speech/network/PairHttpConnection;
      //   214: invokestatic 63	com/google/android/speech/network/PairHttpConnection:access$400	(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/android/speech/callback/Callback;
      //   217: new 65	com/google/android/speech/exception/NetworkRecognizeException
      //   220: dup
      //   221: ldc 140
      //   223: aload 5
      //   225: invokespecial 143	com/google/android/speech/exception/NetworkRecognizeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
      //   228: invokeinterface 74 2 0
      //   233: aload_2
      //   234: invokestatic 104	com/google/common/io/Closeables:closeQuietly	(Ljava/io/Closeable;)V
      //   237: aload_1
      //   238: invokevirtual 80	java/net/HttpURLConnection:disconnect	()V
      //   241: return
      //   242: astore 4
      //   244: aload_2
      //   245: invokestatic 104	com/google/common/io/Closeables:closeQuietly	(Ljava/io/Closeable;)V
      //   248: aload_1
      //   249: invokevirtual 80	java/net/HttpURLConnection:disconnect	()V
      //   252: aload 4
      //   254: athrow
      //   255: astore 4
      //   257: aload_3
      //   258: astore_2
      //   259: goto -15 -> 244
      //   262: astore 5
      //   264: aconst_null
      //   265: astore_2
      //   266: goto -105 -> 161
      //
      // Exception table:
      //   from	to	target	type
      //   61	108	157	java/io/IOException
      //   117	135	157	java/io/IOException
      //   135	140	157	java/io/IOException
      //   140	154	157	java/io/IOException
      //   49	61	242	finally
      //   161	233	242	finally
      //   61	108	255	finally
      //   117	135	255	finally
      //   135	140	255	finally
      //   140	154	255	finally
      //   49	61	262	java/io/IOException
    }

    private boolean verifyResponseCodeAndUrl(@Nonnull HttpURLConnection paramHttpURLConnection)
    {
      try
      {
        int i = paramHttpURLConnection.getResponseCode();
        if (i != 200)
        {
          Log.w("PairHttpConnection", "[Download] response code " + i);
          return false;
        }
      }
      catch (IOException localIOException)
      {
        Log.w("PairHttpConnection", "[Download] Error opening connection: " + localIOException.getMessage());
        return false;
      }
      if (!this.mDownUrl.getHost().equals(paramHttpURLConnection.getURL().getHost()))
      {
        Log.w("PairHttpConnection", "[Download] redirect to " + paramHttpURLConnection.getURL());
        return false;
      }
      return true;
    }

    public void close()
    {
      this.mRunning = false;
      interrupt();
    }

    public void run()
    {
      HttpURLConnection localHttpURLConnection = null;
      try
      {
        localHttpURLConnection = PairHttpConnection.this.mConnectionFactory.openHttpConnection(PairHttpConnection.this.mPairHttpServerInfo.getDown(), this.mDownUrl);
        IoUtils.addHttpHeaders(localHttpURLConnection, PairHttpConnection.this.mPairHttpServerInfo.getDown());
        PairHttpConnection.this.maybeSetCompressionHeader(localHttpURLConnection, PairHttpConnection.this.mPairHttpServerInfo.getDown());
        localHttpURLConnection.setDoInput(true);
        localHttpURLConnection.setUseCaches(false);
        localHttpURLConnection.connect();
        this.mConnectedLatch.countDown();
        runDownloadLoop((HttpURLConnection)Preconditions.checkNotNull(localHttpURLConnection));
        return;
      }
      catch (IOException localIOException)
      {
        if (localHttpURLConnection != null)
          localHttpURLConnection.disconnect();
        PairHttpConnection.this.setResponseState(PairHttpConnection.ResponseState.DOWN_ERROR);
        this.mRunning = false;
        return;
      }
      finally
      {
        this.mConnectedLatch.countDown();
      }
    }

    public boolean waitForConnection()
    {
      boolean bool;
      if (getState() != Thread.State.NEW)
        bool = true;
      while (true)
      {
        Preconditions.checkState(bool);
        try
        {
          if (!this.mConnectedLatch.await(10L, TimeUnit.SECONDS))
            this.mRunning = false;
          return this.mRunning;
          bool = false;
        }
        catch (InterruptedException localInterruptedException)
        {
          while (true)
            this.mRunning = false;
        }
      }
    }
  }

  @VisibleForTesting
  static enum ResponseState
  {
    static
    {
      DOWN = new ResponseState("DOWN", 2);
      DOWN_ERROR = new ResponseState("DOWN_ERROR", 3);
      ResponseState[] arrayOfResponseState = new ResponseState[4];
      arrayOfResponseState[0] = UNKNOWN;
      arrayOfResponseState[1] = UP;
      arrayOfResponseState[2] = DOWN;
      arrayOfResponseState[3] = DOWN_ERROR;
    }
  }

  @VisibleForTesting
  protected class UpResponseThread extends Thread
    implements Closeable
  {

    @Nonnull
    private final Callback<S3.S3Response, RecognizeException> mCallback;
    private S3.S3Response mFirstResponse;
    private volatile boolean mRunning;

    @Nonnull
    private final S3ResponseStream mS3ResponseStream;

    @Nonnull
    private final HttpURLConnection mUploadConnection;

    public UpResponseThread(HttpURLConnection paramCallback, Callback<S3.S3Response, RecognizeException> paramS3Response, @Nonnull S3.S3Response arg4)
    {
      super();
      this.mS3ResponseStream = paramCallback;
      this.mUploadConnection = paramS3Response;
      Object localObject1;
      this.mCallback = localObject1;
      Object localObject2;
      this.mFirstResponse = localObject2;
      this.mRunning = true;
    }

    public void close()
    {
      this.mRunning = false;
      interrupt();
    }

    public void run()
    {
      try
      {
        while (true)
        {
          if (!this.mRunning)
            break label148;
          if (this.mFirstResponse == null)
            break;
          localObject2 = this.mFirstResponse;
          this.mFirstResponse = null;
          if ((((S3.S3Response)localObject2).getStatus() == 2) || (((S3.S3Response)localObject2).getStatus() == 1))
            this.mRunning = false;
          this.mCallback.onResult(localObject2);
        }
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          if (this.mRunning)
          {
            Log.w("PairHttpConnection", "[Upload] exception - exit" + localIOException.getMessage());
            this.mCallback.onError(new NetworkRecognizeException("Error while reading", localIOException));
          }
          return;
          S3.S3Response localS3Response = this.mS3ResponseStream.read();
          Object localObject2 = localS3Response;
        }
        label148: return;
      }
      finally
      {
        Closeables.closeQuietly(this.mS3ResponseStream);
        this.mUploadConnection.disconnect();
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.PairHttpConnection
 * JD-Core Version:    0.6.2
 */