package com.google.android.speech.engine;

import com.google.android.speech.RecognitionResponse;
import com.google.android.speech.callback.Callback;
import com.google.android.speech.exception.RecognizeException;
import com.google.common.annotations.VisibleForTesting;
import com.google.speech.s3.S3.S3Response;

public class RetryCallback
  implements Callback<S3.S3Response, RecognizeException>
{
  private final Callback<RecognitionResponse, RecognizeException> mCallback;
  private boolean mInvalid;
  private final Retrier mResender;
  private final RetryPolicy mRetryPolicy;

  RetryCallback(Callback<RecognitionResponse, RecognizeException> paramCallback, RetryPolicy paramRetryPolicy, Retrier paramRetrier)
  {
    this.mCallback = paramCallback;
    this.mRetryPolicy = paramRetryPolicy;
    this.mResender = paramRetrier;
    this.mInvalid = false;
  }

  @VisibleForTesting
  void invalidate()
  {
    this.mInvalid = true;
  }

  public void onError(RecognizeException paramRecognizeException)
  {
    while (true)
    {
      try
      {
        boolean bool = this.mInvalid;
        if (bool)
          return;
        paramRecognizeException.setEngine(2);
        if (this.mRetryPolicy.canRetry(paramRecognizeException))
        {
          invalidate();
          this.mResender.scheduleRetry(paramRecognizeException);
          continue;
        }
      }
      finally
      {
      }
      this.mCallback.onError(paramRecognizeException);
    }
  }

  public void onResult(S3.S3Response paramS3Response)
  {
    while (true)
    {
      try
      {
        boolean bool = this.mInvalid;
        if (bool)
          return;
        RecognizeException localRecognizeException = this.mRetryPolicy.equivalentToError(paramS3Response);
        if (localRecognizeException != null)
        {
          onError(localRecognizeException);
          continue;
        }
      }
      finally
      {
      }
      this.mCallback.onResult(RecognitionResponse.createNetworkResponse(paramS3Response));
    }
  }

  public static abstract interface Retrier
  {
    public abstract void scheduleRetry(RecognizeException paramRecognizeException);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.engine.RetryCallback
 * JD-Core Version:    0.6.2
 */