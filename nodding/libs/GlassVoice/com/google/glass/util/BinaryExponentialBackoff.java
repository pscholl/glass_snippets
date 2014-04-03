package com.google.glass.util;

import android.os.Handler;
import java.io.Closeable;

public class BinaryExponentialBackoff
  implements Closeable
{
  private final Callbacks callbacks;
  private final int delayMillis;
  private final Handler handler = new Handler();
  private boolean hasSubmittedRunnable;
  private boolean isFinished;
  private final int maxRetryCount;
  private int retryCount;

  static
  {
    if (!BinaryExponentialBackoff.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public BinaryExponentialBackoff(int paramInt1, int paramInt2, Callbacks paramCallbacks)
  {
    this.callbacks = paramCallbacks;
    this.delayMillis = paramInt1;
    this.maxRetryCount = paramInt2;
    this.retryCount = 0;
    this.isFinished = false;
    this.hasSubmittedRunnable = false;
    paramCallbacks.onTry(this, this.retryCount);
  }

  public void close()
  {
    this.handler.removeCallbacksAndMessages(null);
    this.isFinished = true;
  }

  public void retry()
  {
    assert (!this.isFinished);
    assert (!this.hasSubmittedRunnable);
    this.retryCount = (1 + this.retryCount);
    if (this.retryCount > this.maxRetryCount)
    {
      this.isFinished = true;
      this.callbacks.onFailure(this);
      return;
    }
    int i = (int)Math.floor(Math.random() * (1 << this.retryCount)) * this.delayMillis;
    this.hasSubmittedRunnable = true;
    this.handler.postDelayed(new Runnable()
    {
      public void run()
      {
        BinaryExponentialBackoff.access$002(BinaryExponentialBackoff.this, false);
        BinaryExponentialBackoff.this.callbacks.onTry(BinaryExponentialBackoff.this, BinaryExponentialBackoff.this.retryCount);
      }
    }
    , i);
  }

  public void success()
  {
    assert (!this.isFinished);
    assert (!this.hasSubmittedRunnable);
    this.isFinished = true;
    this.callbacks.onSuccess(this);
  }

  public static abstract interface Callbacks
  {
    public abstract void onFailure(BinaryExponentialBackoff paramBinaryExponentialBackoff);

    public abstract void onSuccess(BinaryExponentialBackoff paramBinaryExponentialBackoff);

    public abstract void onTry(BinaryExponentialBackoff paramBinaryExponentialBackoff, int paramInt);
  }

  public static class SimpleCallbacks
    implements BinaryExponentialBackoff.Callbacks
  {
    public void onFailure(BinaryExponentialBackoff paramBinaryExponentialBackoff)
    {
    }

    public void onSuccess(BinaryExponentialBackoff paramBinaryExponentialBackoff)
    {
    }

    public void onTry(BinaryExponentialBackoff paramBinaryExponentialBackoff, int paramInt)
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.BinaryExponentialBackoff
 * JD-Core Version:    0.6.2
 */