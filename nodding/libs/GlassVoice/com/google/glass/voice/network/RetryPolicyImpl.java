package com.google.glass.voice.network;

import android.util.Log;
import com.google.android.speech.engine.RetryPolicy;
import com.google.android.speech.exception.AuthFailureException;
import com.google.android.speech.exception.NetworkRecognizeException;
import com.google.android.speech.exception.RecognizeException;
import com.google.common.base.Supplier;
import com.google.glass.util.Clock;
import com.google.speech.s3.S3.S3Response;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.NetworkRecognizer;

public class RetryPolicyImpl
  implements RetryPolicy
{
  private static final String TAG = RetryPolicyImpl.class.getSimpleName();
  private static final int UNDEFINED = -1;
  private final Clock clock;
  private int counter;
  private int maxRetryTimeoutMsec;
  private final Supplier<GstaticConfiguration.NetworkRecognizer> networkRecognizer;
  private long recognitionStartedTimestamp;

  public RetryPolicyImpl(Supplier<GstaticConfiguration.NetworkRecognizer> paramSupplier, Clock paramClock)
  {
    this.networkRecognizer = paramSupplier;
    this.clock = paramClock;
    reset();
  }

  public boolean canRetry(RecognizeException paramRecognizeException)
  {
    try
    {
      boolean bool;
      if (this.counter == 0)
      {
        Log.d(TAG, "No more retries available.  Giving up");
        bool = false;
      }
      while (true)
      {
        return bool;
        if (this.counter == -1)
        {
          this.counter = ((GstaticConfiguration.NetworkRecognizer)this.networkRecognizer.get()).getMaxRetries();
          this.maxRetryTimeoutMsec = ((GstaticConfiguration.NetworkRecognizer)this.networkRecognizer.get()).getMaxRetryTimeoutMsec();
        }
        if (this.recognitionStartedTimestamp + this.maxRetryTimeoutMsec < this.clock.currentTimeMillis())
        {
          Log.d(TAG, "It's been too long.  Giving up");
          bool = false;
        }
        else if (((paramRecognizeException instanceof NetworkRecognizeException)) || ((paramRecognizeException instanceof AuthFailureException)))
        {
          Log.d(TAG, "Retry available");
          this.counter = (-1 + this.counter);
          bool = true;
        }
        else
        {
          bool = false;
        }
      }
    }
    finally
    {
    }
  }

  public RecognizeException equivalentToError(S3.S3Response paramS3Response)
  {
    try
    {
      if ((paramS3Response.getStatus() == 2) && (AuthFailureException.isAuthErrorCode(paramS3Response.getErrorCode())));
      for (AuthFailureException localAuthFailureException = new AuthFailureException(paramS3Response.getErrorCode()); ; localAuthFailureException = null)
      {
        return localAuthFailureException;
        this.counter = 0;
      }
    }
    finally
    {
    }
  }

  public void reset()
  {
    try
    {
      this.counter = -1;
      this.recognitionStartedTimestamp = this.clock.currentTimeMillis();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.RetryPolicyImpl
 * JD-Core Version:    0.6.2
 */