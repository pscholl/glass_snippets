package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Supplier;
import java.util.concurrent.atomic.AtomicLong;

@GwtCompatible(emulated=true)
final class LongAddables
{
  private static final Supplier<LongAddable> SUPPLIER;

  static
  {
    try
    {
      new LongAdder();
      localObject = new Supplier()
      {
        public LongAddable get()
        {
          return new LongAdder();
        }
      };
      SUPPLIER = (Supplier)localObject;
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        Object localObject = new Supplier()
        {
          public LongAddable get()
          {
            return new LongAddables.PureJavaLongAddable(null);
          }
        };
    }
  }

  public static LongAddable create()
  {
    return (LongAddable)SUPPLIER.get();
  }

  private static final class PureJavaLongAddable extends AtomicLong
    implements LongAddable
  {
    public void add(long paramLong)
    {
      getAndAdd(paramLong);
    }

    public void increment()
    {
      getAndIncrement();
    }

    public long sum()
    {
      return get();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.cache.LongAddables
 * JD-Core Version:    0.6.2
 */