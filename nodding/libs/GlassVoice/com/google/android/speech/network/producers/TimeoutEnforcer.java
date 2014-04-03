package com.google.android.speech.network.producers;

import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class TimeoutEnforcer
{
  private final long mTimeoutAt;

  public TimeoutEnforcer(long paramLong)
  {
    this.mTimeoutAt = (paramLong + SystemClock.elapsedRealtime());
  }

  public <T> T waitForFuture(Future<T> paramFuture)
    throws IOException
  {
    try
    {
      Object localObject = paramFuture.get(Math.max(0L, this.mTimeoutAt - SystemClock.elapsedRealtime()), TimeUnit.MILLISECONDS);
      return localObject;
    }
    catch (InterruptedException localInterruptedException)
    {
      Thread.currentThread().interrupt();
      throw new IOException(localInterruptedException);
    }
    catch (ExecutionException localExecutionException)
    {
      throw new IOException(localExecutionException);
    }
    catch (TimeoutException localTimeoutException)
    {
      throw new IOException("Timed out waiting for task :", localTimeoutException);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.producers.TimeoutEnforcer
 * JD-Core Version:    0.6.2
 */