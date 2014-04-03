package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;

@Deprecated
@Beta
@GwtCompatible
public final class Ranges
{
  public static <C extends Comparable<?>> Range<C> all()
  {
    return Range.all();
  }

  public static <C extends Comparable<?>> Range<C> atLeast(C paramC)
  {
    return Range.atLeast(paramC);
  }

  public static <C extends Comparable<?>> Range<C> atMost(C paramC)
  {
    return Range.atMost(paramC);
  }

  public static <C extends Comparable<?>> Range<C> closed(C paramC1, C paramC2)
  {
    return Range.closed(paramC1, paramC2);
  }

  public static <C extends Comparable<?>> Range<C> closedOpen(C paramC1, C paramC2)
  {
    return Range.closedOpen(paramC1, paramC2);
  }

  public static <C extends Comparable<?>> Range<C> downTo(C paramC, BoundType paramBoundType)
  {
    return Range.downTo(paramC, paramBoundType);
  }

  public static <C extends Comparable<?>> Range<C> encloseAll(Iterable<C> paramIterable)
  {
    return Range.encloseAll(paramIterable);
  }

  public static <C extends Comparable<?>> Range<C> greaterThan(C paramC)
  {
    return Range.greaterThan(paramC);
  }

  public static <C extends Comparable<?>> Range<C> lessThan(C paramC)
  {
    return Range.lessThan(paramC);
  }

  public static <C extends Comparable<?>> Range<C> open(C paramC1, C paramC2)
  {
    return Range.open(paramC1, paramC2);
  }

  public static <C extends Comparable<?>> Range<C> openClosed(C paramC1, C paramC2)
  {
    return Range.openClosed(paramC1, paramC2);
  }

  public static <C extends Comparable<?>> Range<C> range(C paramC1, BoundType paramBoundType1, C paramC2, BoundType paramBoundType2)
  {
    return Range.range(paramC1, paramBoundType1, paramC2, paramBoundType2);
  }

  public static <C extends Comparable<?>> Range<C> singleton(C paramC)
  {
    return Range.singleton(paramC);
  }

  public static <C extends Comparable<?>> Range<C> upTo(C paramC, BoundType paramBoundType)
  {
    return Range.upTo(paramC, paramBoundType);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.Ranges
 * JD-Core Version:    0.6.2
 */