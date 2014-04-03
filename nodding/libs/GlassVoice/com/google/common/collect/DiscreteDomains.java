package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

@Deprecated
@GwtCompatible
public final class DiscreteDomains
{
  public static DiscreteDomain<Integer> integers()
  {
    return DiscreteDomain.integers();
  }

  public static DiscreteDomain<Long> longs()
  {
    return DiscreteDomain.longs();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.DiscreteDomains
 * JD-Core Version:    0.6.2
 */