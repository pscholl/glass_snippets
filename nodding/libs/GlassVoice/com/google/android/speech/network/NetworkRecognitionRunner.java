package com.google.android.speech.network;

import android.util.Log;
import com.google.android.searchcommon.util.ConcurrentUtils;
import com.google.android.speech.callback.Callback;
import com.google.android.speech.exception.NetworkRecognizeException;
import com.google.android.speech.exception.RecognizeException;
import com.google.android.speech.network.producers.S3RequestProducer;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.io.Closeables;
import com.google.speech.s3.S3.S3Request;
import com.google.speech.s3.S3.S3Response;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import javax.annotation.Nullable;

public class NetworkRecognitionRunner
  implements Closeable
{
  private static final boolean DBG = false;
  private static final boolean DBG_SOCKET_BLOCKING = false;
  private static final String TAG = "VS.NetworkRecognitionRunner";
  private final WrapperCallback mCallback;
  private final Runnable mCloseConnectionRunnable = new Runnable()
  {
    public void run()
    {
      Closeables.closeQuietly(NetworkRecognitionRunner.this.mS3Connection);
      NetworkRecognitionRunner.access$102(NetworkRecognitionRunner.this, null);
    }
  };
  private final S3ConnectionFactory mConnectionFactory;
  private Future<?> mCurrentRecognition;
  private final NetworkEventListener mNetworkEventListener;
  private final Runnable mNetworkLoopRunnable = new Runnable()
  {
    public void run()
    {
      NetworkRecognitionRunner.this.runNetworkLoop();
    }
  };
  private final S3RequestProducer mRequestProducer;
  private final ExecutorService mRunnerThread;

  @Nullable
  private S3Connection mS3Connection;

  public NetworkRecognitionRunner(Callback<S3.S3Response, RecognizeException> paramCallback, NetworkEventListener paramNetworkEventListener, S3ConnectionFactory paramS3ConnectionFactory, S3RequestProducer paramS3RequestProducer)
  {
    this(paramCallback, paramNetworkEventListener, paramS3ConnectionFactory, paramS3RequestProducer, ConcurrentUtils.createSafeScheduledExecutorService(1, "NetworkRunner"));
  }

  @VisibleForTesting
  NetworkRecognitionRunner(Callback<S3.S3Response, RecognizeException> paramCallback, NetworkEventListener paramNetworkEventListener, S3ConnectionFactory paramS3ConnectionFactory, S3RequestProducer paramS3RequestProducer, ExecutorService paramExecutorService)
  {
    this.mCallback = new WrapperCallback(paramCallback, paramNetworkEventListener);
    this.mNetworkEventListener = paramNetworkEventListener;
    this.mConnectionFactory = paramS3ConnectionFactory;
    this.mRequestProducer = paramS3RequestProducer;
    this.mRunnerThread = paramExecutorService;
  }

  @Nullable
  private Future<?> cancel()
  {
    Future localFuture1 = this.mCurrentRecognition;
    Future localFuture2 = null;
    if (localFuture1 != null)
    {
      this.mCurrentRecognition.cancel(true);
      localFuture2 = this.mCurrentRecognition;
      this.mCurrentRecognition = null;
    }
    return localFuture2;
  }

  private static void checkInterrupted()
    throws InterruptedException
  {
    if (Thread.currentThread().isInterrupted())
      throw new InterruptedException();
  }

  private void runNetworkLoop()
  {
    try
    {
      this.mNetworkEventListener.onConnectionStarted();
      this.mS3Connection = this.mConnectionFactory.create();
      checkInterrupted();
      S3.S3Request localS3Request1 = this.mRequestProducer.next();
      this.mS3Connection.connect(this.mCallback, localS3Request1);
      this.mNetworkEventListener.onConnectionFinished();
      checkInterrupted();
      while (true)
      {
        S3.S3Request localS3Request2 = this.mRequestProducer.next();
        if (localS3Request2 == null)
          break;
        checkInterrupted();
        this.mS3Connection.send(localS3Request2);
        this.mNetworkEventListener.onDataSent();
      }
    }
    catch (IOException localIOException)
    {
      this.mCallback.onError(new NetworkRecognizeException("Error in network recognizer: ", localIOException));
      this.mNetworkEventListener.onError();
      Closeables.closeQuietly(this.mS3Connection);
      this.mS3Connection = null;
      return;
      this.mNetworkEventListener.onDataComplete();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
    }
    finally
    {
      Closeables.closeQuietly(this.mRequestProducer);
    }
  }

  public void close()
  {
    this.mCallback.invalidate();
    if (cancel() == null)
    {
      if (!this.mRunnerThread.isShutdown())
        Preconditions.checkState(this.mRunnerThread.shutdownNow().isEmpty());
      return;
    }
    this.mRunnerThread.execute(this.mCloseConnectionRunnable);
    this.mRunnerThread.shutdown();
  }

  public void finalize()
    throws Throwable
  {
    if (this.mS3Connection != null)
    {
      Log.e("VS.NetworkRecognitionRunner", "Recognition runner not closed, connection: " + this.mS3Connection);
      Closeables.closeQuietly(this.mS3Connection);
    }
    super.finalize();
  }

  @VisibleForTesting
  Callback<S3.S3Response, RecognizeException> getWrappedCallbackForTesting()
  {
    return this.mCallback;
  }

  public void start()
  {
    if (this.mCurrentRecognition == null);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkState(bool, "Duplicate call to start.");
      this.mCurrentRecognition = this.mRunnerThread.submit(this.mNetworkLoopRunnable);
      return;
    }
  }

  static class WrapperCallback
    implements Callback<S3.S3Response, RecognizeException>
  {
    private final Callback<S3.S3Response, RecognizeException> mDelegate;
    private volatile boolean mInvalid;
    private final NetworkEventListener mNetworkEventListener;

    WrapperCallback(Callback<S3.S3Response, RecognizeException> paramCallback, NetworkEventListener paramNetworkEventListener)
    {
      this.mDelegate = paramCallback;
      this.mNetworkEventListener = paramNetworkEventListener;
    }

    void invalidate()
    {
      this.mInvalid = true;
    }

    public void onError(RecognizeException paramRecognizeException)
    {
      if (!this.mInvalid)
        this.mDelegate.onError(paramRecognizeException);
      this.mNetworkEventListener.onError();
    }

    public void onResult(S3.S3Response paramS3Response)
    {
      if (!this.mInvalid)
        this.mDelegate.onResult(paramS3Response);
      this.mNetworkEventListener.onDataReceived();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.NetworkRecognitionRunner
 * JD-Core Version:    0.6.2
 */