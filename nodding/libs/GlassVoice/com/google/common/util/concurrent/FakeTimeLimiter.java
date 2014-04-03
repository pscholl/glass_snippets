package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

@Beta
public final class FakeTimeLimiter
  implements TimeLimiter
{
  public <T> T callWithTimeout(Callable<T> paramCallable, long paramLong, TimeUnit paramTimeUnit, boolean paramBoolean)
    throws Exception
  {
    Preconditions.checkNotNull(paramTimeUnit);
    return paramCallable.call();
  }

  public <T> T newProxy(T paramT, Class<T> paramClass, long paramLong, TimeUnit paramTimeUnit)
  {
    Preconditions.checkNotNull(paramT);
    Preconditions.checkNotNull(paramClass);
    Preconditions.checkNotNull(paramTimeUnit);
    return paramT;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.FakeTimeLimiter
 * JD-Core Version:    0.6.2
 */