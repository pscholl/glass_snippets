package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.base.Ticker;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.ThreadSafe;

@Beta
@ThreadSafe
public abstract class RateLimiter
{
  double maxPermits;
  private final Object mutex = new Object();
  private long nextFreeTicketMicros = 0L;
  private final long offsetNanos;
  volatile double stableIntervalMicros;
  double storedPermits;
  private final SleepingTicker ticker;

  private RateLimiter(SleepingTicker paramSleepingTicker)
  {
    this.ticker = paramSleepingTicker;
    this.offsetNanos = paramSleepingTicker.read();
  }

  private static void checkPermits(int paramInt)
  {
    if (paramInt > 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "Requested permits must be positive");
      return;
    }
  }

  public static RateLimiter create(double paramDouble)
  {
    return create(SleepingTicker.SYSTEM_TICKER, paramDouble);
  }

  public static RateLimiter create(double paramDouble, long paramLong, TimeUnit paramTimeUnit)
  {
    return create(SleepingTicker.SYSTEM_TICKER, paramDouble, paramLong, paramTimeUnit);
  }

  @VisibleForTesting
  static RateLimiter create(SleepingTicker paramSleepingTicker, double paramDouble)
  {
    Bursty localBursty = new Bursty(paramSleepingTicker);
    localBursty.setRate(paramDouble);
    return localBursty;
  }

  @VisibleForTesting
  static RateLimiter create(SleepingTicker paramSleepingTicker, double paramDouble, long paramLong, TimeUnit paramTimeUnit)
  {
    WarmingUp localWarmingUp = new WarmingUp(paramSleepingTicker, paramLong, paramTimeUnit);
    localWarmingUp.setRate(paramDouble);
    return localWarmingUp;
  }

  @VisibleForTesting
  static RateLimiter createBursty(SleepingTicker paramSleepingTicker, double paramDouble, int paramInt)
  {
    Bursty localBursty = new Bursty(paramSleepingTicker);
    localBursty.setRate(paramDouble);
    localBursty.maxPermits = paramInt;
    return localBursty;
  }

  private long readSafeMicros()
  {
    return TimeUnit.NANOSECONDS.toMicros(this.ticker.read() - this.offsetNanos);
  }

  private long reserveNextTicket(double paramDouble, long paramLong)
  {
    resync(paramLong);
    long l = this.nextFreeTicketMicros - paramLong;
    double d1 = Math.min(paramDouble, this.storedPermits);
    double d2 = paramDouble - d1;
    this.nextFreeTicketMicros = (storedPermitsToWaitTime(this.storedPermits, d1) + ()(d2 * this.stableIntervalMicros) + this.nextFreeTicketMicros);
    this.storedPermits -= d1;
    return l;
  }

  private void resync(long paramLong)
  {
    if (paramLong > this.nextFreeTicketMicros)
    {
      this.storedPermits = Math.min(this.maxPermits, this.storedPermits + (paramLong - this.nextFreeTicketMicros) / this.stableIntervalMicros);
      this.nextFreeTicketMicros = paramLong;
    }
  }

  public void acquire()
  {
    acquire(1);
  }

  public void acquire(int paramInt)
  {
    checkPermits(paramInt);
    Object localObject1 = this.mutex;
    double d = paramInt;
    try
    {
      long l = reserveNextTicket(d, readSafeMicros());
      this.ticker.sleepMicrosUninterruptibly(l);
      return;
    }
    finally
    {
    }
  }

  abstract void doSetRate(double paramDouble1, double paramDouble2);

  public final double getRate()
  {
    return TimeUnit.SECONDS.toMicros(1L) / this.stableIntervalMicros;
  }

  public final void setRate(double paramDouble)
  {
    if ((paramDouble > 0.0D) && (!Double.isNaN(paramDouble)));
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "rate must be positive");
      synchronized (this.mutex)
      {
        resync(readSafeMicros());
        double d = TimeUnit.SECONDS.toMicros(1L) / paramDouble;
        this.stableIntervalMicros = d;
        doSetRate(paramDouble, d);
        return;
      }
    }
  }

  abstract long storedPermitsToWaitTime(double paramDouble1, double paramDouble2);

  public String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Double.valueOf(1000000.0D / this.stableIntervalMicros);
    return String.format("RateLimiter[stableRate=%3.1fqps]", arrayOfObject);
  }

  public boolean tryAcquire()
  {
    return tryAcquire(1, 0L, TimeUnit.MICROSECONDS);
  }

  public boolean tryAcquire(int paramInt)
  {
    return tryAcquire(paramInt, 0L, TimeUnit.MICROSECONDS);
  }

  public boolean tryAcquire(int paramInt, long paramLong, TimeUnit paramTimeUnit)
  {
    long l1 = paramTimeUnit.toMicros(paramLong);
    checkPermits(paramInt);
    synchronized (this.mutex)
    {
      long l2 = readSafeMicros();
      if (this.nextFreeTicketMicros > l2 + l1)
        return false;
      long l3 = reserveNextTicket(paramInt, l2);
      this.ticker.sleepMicrosUninterruptibly(l3);
      return true;
    }
  }

  public boolean tryAcquire(long paramLong, TimeUnit paramTimeUnit)
  {
    return tryAcquire(1, paramLong, paramTimeUnit);
  }

  private static class Bursty extends RateLimiter
  {
    Bursty(RateLimiter.SleepingTicker paramSleepingTicker)
    {
      super(null);
    }

    void doSetRate(double paramDouble1, double paramDouble2)
    {
      double d1 = 0.0D;
      double d2 = this.maxPermits;
      this.maxPermits = paramDouble1;
      if (d2 == d1);
      while (true)
      {
        this.storedPermits = d1;
        return;
        d1 = this.storedPermits * this.maxPermits / d2;
      }
    }

    long storedPermitsToWaitTime(double paramDouble1, double paramDouble2)
    {
      return 0L;
    }
  }

  @VisibleForTesting
  static abstract class SleepingTicker extends Ticker
  {
    static final SleepingTicker SYSTEM_TICKER = new SleepingTicker()
    {
      public long read()
      {
        return systemTicker().read();
      }

      public void sleepMicrosUninterruptibly(long paramAnonymousLong)
      {
        if (paramAnonymousLong > 0L)
          Uninterruptibles.sleepUninterruptibly(paramAnonymousLong, TimeUnit.MICROSECONDS);
      }
    };

    abstract void sleepMicrosUninterruptibly(long paramLong);
  }

  private static class WarmingUp extends RateLimiter
  {
    private double halfPermits;
    private double slope;
    final long warmupPeriodMicros;

    WarmingUp(RateLimiter.SleepingTicker paramSleepingTicker, long paramLong, TimeUnit paramTimeUnit)
    {
      super(null);
      this.warmupPeriodMicros = paramTimeUnit.toMicros(paramLong);
    }

    private double permitsToTime(double paramDouble)
    {
      return this.stableIntervalMicros + paramDouble * this.slope;
    }

    void doSetRate(double paramDouble1, double paramDouble2)
    {
      double d1 = this.maxPermits;
      this.maxPermits = (this.warmupPeriodMicros / paramDouble2);
      this.halfPermits = (this.maxPermits / 2.0D);
      this.slope = ((paramDouble2 * 3.0D - paramDouble2) / this.halfPermits);
      if (d1 == (1.0D / 0.0D))
      {
        this.storedPermits = 0.0D;
        return;
      }
      if (d1 == 0.0D);
      for (double d2 = this.maxPermits; ; d2 = this.storedPermits * this.maxPermits / d1)
      {
        this.storedPermits = d2;
        return;
      }
    }

    long storedPermitsToWaitTime(double paramDouble1, double paramDouble2)
    {
      double d1 = paramDouble1 - this.halfPermits;
      long l = 0L;
      if (d1 > 0.0D)
      {
        double d2 = Math.min(d1, paramDouble2);
        l = ()(d2 * (permitsToTime(d1) + permitsToTime(d1 - d2)) / 2.0D);
        paramDouble2 -= d2;
      }
      return ()(l + paramDouble2 * this.stableIntervalMicros);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.RateLimiter
 * JD-Core Version:    0.6.2
 */