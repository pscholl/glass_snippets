package com.google.glass.util;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.glass.predicates.Assert;
import java.util.concurrent.atomic.AtomicReference;

public final class ClockProvider
{
  public static Clock get()
  {
    return (Clock)ClockHolder.instanceRef.get();
  }

  @VisibleForTesting
  public static Clock setForTest(Clock paramClock)
  {
    Assert.assertIsTest();
    return (Clock)ClockHolder.instanceRef.getAndSet(Preconditions.checkNotNull(paramClock, "null clock"));
  }

  private static final class ClockHolder
  {
    private static AtomicReference<Clock> instanceRef = new AtomicReference(new Clock.Impl());
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.ClockProvider
 * JD-Core Version:    0.6.2
 */