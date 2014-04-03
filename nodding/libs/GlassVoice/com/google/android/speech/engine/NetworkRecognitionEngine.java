package com.google.android.speech.engine;

import android.util.Log;
import com.google.android.searchcommon.util.ExtraPreconditions;
import com.google.android.searchcommon.util.ExtraPreconditions.ThreadCheck;
import com.google.android.speech.RecognitionResponse;
import com.google.android.speech.audio.AudioInputStreamFactory;
import com.google.android.speech.audio.EndpointerListener;
import com.google.android.speech.callback.Callback;
import com.google.android.speech.exception.AudioRecognizeException;
import com.google.android.speech.exception.AuthFailureException;
import com.google.android.speech.exception.RecognizeException;
import com.google.android.speech.logger.SpeechLibLogger;
import com.google.android.speech.network.NetworkRecognitionRunner;
import com.google.android.speech.network.S3ConnectionFactory;
import com.google.android.speech.network.producers.RequestProducerFactory;
import com.google.android.speech.params.SessionParams;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

public class NetworkRecognitionEngine
  implements RecognitionEngine, RetryCallback.Retrier
{
  private static final boolean DEBUG = false;
  private static final String TAG = "NetworkRecognitionEngine";
  private final ExecutorService mExecutorService;
  private final S3ConnectionFactory mFallback;
  private AudioInputStreamFactory mInputFactory;
  private Callback<RecognitionResponse, RecognizeException> mOriginalCallback;
  private final S3ConnectionFactory mPrimary;
  private final RequestProducerFactory mRequestProducerFactory;
  private RetryCallback mRetryCallback;

  @GuardedBy("mRetryLock")
  private Future<?> mRetryFuture;
  private final Object mRetryLock = new Object();
  private final RetryPolicy mRetryPolicy;
  private NetworkRecognitionRunner mRunner;
  private final ExtraPreconditions.ThreadCheck mSameThread;
  private final SpeechLibLogger mSpeechLibLogger;

  public NetworkRecognitionEngine(S3ConnectionFactory paramS3ConnectionFactory1, @Nullable S3ConnectionFactory paramS3ConnectionFactory2, RetryPolicy paramRetryPolicy, ExecutorService paramExecutorService, RequestProducerFactory paramRequestProducerFactory, SpeechLibLogger paramSpeechLibLogger)
  {
    this.mPrimary = paramS3ConnectionFactory1;
    this.mFallback = paramS3ConnectionFactory2;
    this.mRetryPolicy = paramRetryPolicy;
    this.mExecutorService = ((ExecutorService)Preconditions.checkNotNull(paramExecutorService));
    this.mSameThread = ExtraPreconditions.createSameThreadCheck();
    this.mRequestProducerFactory = paramRequestProducerFactory;
    this.mSpeechLibLogger = paramSpeechLibLogger;
  }

  private void maybeRefreshRequestProduceFactory(RecognizeException paramRecognizeException)
  {
    if ((paramRecognizeException instanceof AuthFailureException))
      this.mRequestProducerFactory.refresh();
  }

  public void close()
  {
    this.mSameThread.check();
    this.mRetryCallback = null;
    this.mOriginalCallback = null;
    this.mInputFactory = null;
    if (this.mRunner != null)
    {
      this.mRunner.close();
      this.mRunner = null;
    }
    synchronized (this.mRetryLock)
    {
      if (this.mRetryFuture != null)
      {
        this.mRetryFuture.cancel(false);
        this.mRetryFuture = null;
      }
      return;
    }
  }

  @VisibleForTesting
  void createAndStartRecognitionRunner(S3ConnectionFactory paramS3ConnectionFactory)
  {
    try
    {
      InputStream localInputStream = this.mInputFactory.createInputStream();
      Preconditions.checkNotNull(localInputStream);
      this.mRunner = new NetworkRecognitionRunner(this.mRetryCallback, LoggingEventListener.getInstance(this.mSpeechLibLogger), paramS3ConnectionFactory, this.mRequestProducerFactory.newRequestProducer(localInputStream));
      this.mRunner.start();
      return;
    }
    catch (IOException localIOException)
    {
      this.mRetryCallback.onError(new AudioRecognizeException("Unable to create stream", localIOException));
    }
  }

  @VisibleForTesting
  void retry(RecognizeException paramRecognizeException)
  {
    if (this.mRetryCallback == null)
      return;
    this.mRetryCallback = new RetryCallback(this.mOriginalCallback, this.mRetryPolicy, this);
    maybeRefreshRequestProduceFactory(paramRecognizeException);
    this.mRunner.close();
    if (this.mFallback != null);
    for (S3ConnectionFactory localS3ConnectionFactory = this.mFallback; ; localS3ConnectionFactory = this.mPrimary)
    {
      createAndStartRecognitionRunner(localS3ConnectionFactory);
      synchronized (this.mRetryLock)
      {
        this.mRetryCallback = null;
        return;
      }
    }
  }

  public void scheduleRetry(final RecognizeException paramRecognizeException)
  {
    synchronized (this.mRetryLock)
    {
      if (this.mRetryFuture == null)
      {
        this.mRetryFuture = this.mExecutorService.submit(new Runnable()
        {
          public void run()
          {
            NetworkRecognitionEngine.this.retry(paramRecognizeException);
          }
        });
        return;
      }
      Log.w("NetworkRecognitionEngine", "Discarding retry request (already active) for: " + paramRecognizeException.getMessage());
    }
  }

  public void startRecognition(AudioInputStreamFactory paramAudioInputStreamFactory, Callback<RecognitionResponse, RecognizeException> paramCallback, SessionParams paramSessionParams, EndpointerListener paramEndpointerListener)
  {
    this.mSameThread.check();
    if (this.mRetryCallback == null);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkState(bool);
      this.mRetryPolicy.reset();
      this.mOriginalCallback = paramCallback;
      this.mRetryCallback = new RetryCallback(paramCallback, this.mRetryPolicy, this);
      this.mInputFactory = paramAudioInputStreamFactory;
      this.mRequestProducerFactory.init(paramSessionParams);
      createAndStartRecognitionRunner(this.mPrimary);
      return;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.engine.NetworkRecognitionEngine
 * JD-Core Version:    0.6.2
 */