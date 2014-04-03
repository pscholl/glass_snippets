package com.google.glass.sync;

import android.os.SystemClock;
import com.google.glass.logging.Log;
import com.google.glass.util.RetryStrategy;
import java.util.concurrent.TimeUnit;

@Deprecated
public abstract class BackOffSyncHandler
  implements SyncStatusReporter
{
  private static final double BACKOFF_EXPONENT = 2.0D;
  private static final int RETRY_DELAY_MILLIS = 1000;
  private long nextSyncTime;
  private int numFailures;
  private int numServerFailures;
  private final RetryStrategy retryStrategy;

  public BackOffSyncHandler()
  {
    this(RetryStrategy.exponentialBackoffWithJitter(1000, 2.0D, -1));
  }

  public BackOffSyncHandler(RetryStrategy paramRetryStrategy)
  {
    this.retryStrategy = paramRetryStrategy;
  }

  public long getDelayRemainingSecs()
  {
    long l = SystemClock.uptimeMillis();
    if (l >= this.nextSyncTime)
      return 0L;
    return TimeUnit.MILLISECONDS.toSeconds(this.nextSyncTime - l);
  }

  protected abstract String getTag();

  public void handleFail(int paramInt)
  {
    this.numFailures = (1 + this.numFailures);
    if (5 != paramInt)
      this.numServerFailures = (1 + this.numServerFailures);
    long l = this.retryStrategy.getDelayMillis(this.numFailures);
    if (l >= 0L)
    {
      this.nextSyncTime = (Math.min(TimeUnit.MINUTES.toMillis(60L), l) + SystemClock.uptimeMillis());
      String str = getTag();
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      arrayOfObject[1] = Integer.valueOf(this.numFailures);
      arrayOfObject[2] = Integer.valueOf(this.numServerFailures);
      Log.d(str, "Sync failed [errorCode=%s, numFailures=%s, numServerFailures=%s].", arrayOfObject);
      return;
    }
    throw new AssertionError("We should never stop trying when we use RetryStrategy.NO_MAX");
  }

  public void handleSuccess()
  {
    this.numFailures = 0;
    this.numServerFailures = 0;
  }

  public boolean hasFailures()
  {
    return this.numFailures > 0;
  }

  public boolean hasServerFailures()
  {
    return this.numServerFailures > 0;
  }

  public boolean shouldRetry()
  {
    long l = this.nextSyncTime - SystemClock.uptimeMillis();
    if ((this.retryStrategy.tryAgain(this.numServerFailures)) && (l <= 0L));
    for (boolean bool = true; ; bool = false)
    {
      if (!bool)
      {
        String str = getTag();
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Long.valueOf(l);
        Log.d(str, "Backing off for %s ms", arrayOfObject);
      }
      return bool;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.sync.BackOffSyncHandler
 * JD-Core Version:    0.6.2
 */