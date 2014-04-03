package com.google.android.speech.engine;

import com.google.android.speech.exception.RecognizeException;
import com.google.speech.s3.S3.S3Response;
import javax.annotation.Nullable;

public abstract interface RetryPolicy
{
  public abstract boolean canRetry(RecognizeException paramRecognizeException);

  @Nullable
  public abstract RecognizeException equivalentToError(S3.S3Response paramS3Response);

  public abstract void reset();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.engine.RetryPolicy
 * JD-Core Version:    0.6.2
 */