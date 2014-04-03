package com.google.glass.util;

import com.google.common.base.Preconditions;
import java.util.Arrays;
import java.util.Random;

public abstract class RetryStrategy
{
  public static final int NO_MAX = -1;

  private static int checkNotNegative(int paramInt)
  {
    if (paramInt >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      return paramInt;
    }
  }

  private static long checkNotNegative(long paramLong)
  {
    if (paramLong >= 0L);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      return paramLong;
    }
  }

  private static double checkPositive(double paramDouble)
  {
    if (paramDouble > 0.0D);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      return paramDouble;
    }
  }

  private static int checkPositive(int paramInt)
  {
    if (paramInt > 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      return paramInt;
    }
  }

  private static int closestInt(double paramDouble)
  {
    return saturatedCast(()paramDouble);
  }

  public static RetryStrategy exponentialBackoff(int paramInt1, double paramDouble, int paramInt2)
  {
    return new ExponentialBackoff(paramInt1, paramDouble, paramInt2);
  }

  public static RetryStrategy exponentialBackoffWithJitter(int paramInt1, double paramDouble, int paramInt2)
  {
    return new ExponentialBackoff(paramInt1, paramDouble, paramInt2, new Random());
  }

  private static int saturatedCast(long paramLong)
  {
    if (paramLong > 2147483647L)
      return 2147483647;
    if (paramLong < -2147483648L)
      return -2147483648;
    return (int)paramLong;
  }

  public abstract int getDelayMillis(int paramInt);

  protected int getDelayMillis(int paramInt, long paramLong)
  {
    checkNotNegative(paramLong);
    if (!tryAgain(paramInt))
      return -1;
    return getDelayMillis(paramInt);
  }

  abstract int getNumAttempts();

  public boolean tryAgain(int paramInt)
  {
    return getDelayMillis(paramInt) >= 0;
  }

  private static class ExponentialBackoff extends RetryStrategy
  {
    final int firstDelayMs;
    final double multiplier;
    final int numAttempts;
    final Random random;

    static
    {
      if (!RetryStrategy.class.desiredAssertionStatus());
      for (boolean bool = true; ; bool = false)
      {
        $assertionsDisabled = bool;
        return;
      }
    }

    ExponentialBackoff(int paramInt1, double paramDouble, int paramInt2)
    {
      this(paramInt1, paramDouble, paramInt2, null);
    }

    ExponentialBackoff(int paramInt1, double paramDouble, int paramInt2, Random paramRandom)
    {
      this.numAttempts = paramInt2;
      this.firstDelayMs = RetryStrategy.checkPositive(paramInt1);
      this.multiplier = RetryStrategy.checkPositive(paramDouble);
      this.random = paramRandom;
    }

    public boolean equals(Object paramObject)
    {
      boolean bool1 = paramObject instanceof ExponentialBackoff;
      boolean bool2 = false;
      if (bool1)
      {
        ExponentialBackoff localExponentialBackoff = (ExponentialBackoff)paramObject;
        int i = this.firstDelayMs;
        int j = localExponentialBackoff.firstDelayMs;
        bool2 = false;
        if (i == j)
        {
          boolean bool3 = this.multiplier < localExponentialBackoff.multiplier;
          bool2 = false;
          if (!bool3)
          {
            int k = this.numAttempts;
            int m = localExponentialBackoff.numAttempts;
            bool2 = false;
            if (k == m)
              bool2 = true;
          }
        }
      }
      return bool2;
    }

    public int getDelayMillis(int paramInt)
    {
      assert (paramInt >= 0);
      int i;
      if (paramInt == 0)
        i = 0;
      do
      {
        return i;
        if (!tryAgain(paramInt))
          return -1;
        i = RetryStrategy.closestInt(this.firstDelayMs * Math.pow(this.multiplier, paramInt - 1));
      }
      while (this.random == null);
      return this.random.nextInt(Math.max(i + 1, i));
    }

    int getNumAttempts()
    {
      return this.numAttempts;
    }

    public int hashCode()
    {
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(this.numAttempts);
      arrayOfObject[1] = Integer.valueOf(this.firstDelayMs);
      arrayOfObject[2] = Double.valueOf(this.multiplier);
      return Arrays.hashCode(arrayOfObject);
    }

    public boolean tryAgain(int paramInt)
    {
      return (-1 == this.numAttempts) || (RetryStrategy.checkNotNegative(paramInt) < this.numAttempts);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.RetryStrategy
 * JD-Core Version:    0.6.2
 */