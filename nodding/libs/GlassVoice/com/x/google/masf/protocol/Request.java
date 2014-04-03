package com.x.google.masf.protocol;

import com.x.google.common.Clock;
import com.x.google.common.Config;
import com.x.google.debug.LogSource;
import com.x.google.masf.InputStreamProvider;
import java.io.IOException;
import java.io.InputStream;

public abstract class Request extends Block
  implements InputStreamProvider
{
  public static final long DEFAULT_IMMEDIATE_REQUEST_TIMEOUT = 20000L;
  public static final long DEFAULT_RETRY_TIMEOUT = 2000L;
  public static final int DEFAULT_SEND_COUNT = 4;
  public static final long RETRY_IMMEDIATE_DEALINE = 5000L;
  public static final long RETRY_IMMEDIATE_START = 3000L;
  public static final long RETRY_NON_IMMEDIATE_DEALINE = 3600000L;
  private boolean immediate;
  protected Listener listener;
  private LogSource logger = LogSource.getDynamicLogSource(this);
  private String preemptableId;
  private long requestTimeoutPeriod = -1L;
  private boolean responseReceived = false;
  private long retryDeadline = -1L;
  private long retryStartTimestamp = -1L;
  protected long retryTimeout = 2000L;
  private boolean secure = false;
  protected int sentCount = 4;
  private long submitTimestamp = -1L;

  private void adjustRetryTimeout()
  {
    this.retryDeadline = Math.max(this.retryDeadline, this.retryStartTimestamp);
  }

  public abstract void dispose();

  public void flagImmediate()
  {
    this.immediate = true;
  }

  public boolean flagResponseReceived()
  {
    boolean bool = true;
    try
    {
      if (!this.responseReceived)
      {
        this.responseReceived = true;
        return bool;
      }
      bool = false;
    }
    finally
    {
    }
  }

  public void flagSecure()
  {
    this.secure = true;
  }

  public abstract InputStream getInputStream()
    throws IOException;

  public Listener getListener()
  {
    try
    {
      Listener localListener = this.listener;
      return localListener;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getPreemptableId()
  {
    return this.preemptableId;
  }

  public long getRequestTimeoutPeriod()
  {
    return this.requestTimeoutPeriod;
  }

  public long getRetryDeadline()
  {
    return this.retryDeadline;
  }

  public long getRetryStartTimestamp()
  {
    return this.retryStartTimestamp;
  }

  public abstract int getStreamLength()
    throws IOException;

  public boolean isImmediate()
  {
    return this.immediate;
  }

  public boolean isResponseReceived()
  {
    return this.responseReceived;
  }

  public boolean isSecure()
  {
    return this.secure;
  }

  public void setListener(Listener paramListener)
  {
    try
    {
      this.listener = paramListener;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setPreemptableId(String paramString)
  {
    this.preemptableId = paramString;
  }

  public void setRequestTimeoutPeriod(long paramLong)
  {
    this.requestTimeoutPeriod = paramLong;
  }

  public void setRetryTimeout(long paramLong)
  {
    try
    {
      this.retryTimeout = paramLong;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setSentCount(int paramInt)
  {
    try
    {
      this.sentCount = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean shouldRetry(long paramLong)
  {
    try
    {
      boolean bool1;
      if (this.requestTimeoutPeriod != -1L)
      {
        long l1 = this.submitTimestamp;
        long l2 = this.requestTimeoutPeriod;
        boolean bool2 = l1 + l2 < paramLong;
        bool1 = false;
        if (!bool2);
      }
      while (true)
      {
        return bool1;
        int i = this.sentCount;
        bool1 = false;
        if (i > 0)
          bool1 = true;
      }
    }
    finally
    {
    }
  }

  public String toString()
  {
    return super.toString();
  }

  public void updatePreemtableTimeout(long paramLong)
  {
    long l = Config.getInstance().getClock().currentTimeMillis();
    this.retryStartTimestamp = (l + paramLong);
    if (this.immediate);
    for (this.retryDeadline = this.retryStartTimestamp; ; this.retryDeadline = (l + 3600000L))
    {
      adjustRetryTimeout();
      return;
    }
  }

  public void updateProgress(long paramLong)
  {
    if (this.immediate)
    {
      this.retryStartTimestamp = (3000L + paramLong);
      this.retryDeadline = (5000L + paramLong);
    }
  }

  public void updateResendTimeoutOnError(long paramLong)
  {
    try
    {
      this.retryStartTimestamp = (paramLong + this.retryTimeout);
      if (this.immediate);
      long l;
      for (this.retryDeadline = this.retryStartTimestamp; ; this.retryDeadline = l)
      {
        adjustRetryTimeout();
        this.retryTimeout = (2L * this.retryTimeout);
        return;
        l = 3600000L + paramLong;
      }
    }
    finally
    {
    }
  }

  public void updateResendTimeoutOnSent(long paramLong)
  {
    long l = 3000L + paramLong;
    try
    {
      this.retryStartTimestamp = l;
      this.retryDeadline = (5000L + paramLong);
      adjustRetryTimeout();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void updateSentCounter()
  {
    try
    {
      this.sentCount = (-1 + this.sentCount);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void updateSubmit()
  {
    this.logger.fine("updateSubmit");
    if (this.submitTimestamp == -1L)
      this.submitTimestamp = Config.getInstance().getClock().currentTimeMillis();
    if ((isImmediate()) && (getRequestTimeoutPeriod() == -1L))
      this.requestTimeoutPeriod = 20000L;
  }

  public static abstract interface Listener
  {
    public abstract void requestCompleted(Request paramRequest, Response paramResponse);

    public abstract void requestFailed(Request paramRequest, Exception paramException);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.protocol.Request
 * JD-Core Version:    0.6.2
 */