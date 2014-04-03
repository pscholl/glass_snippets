package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.util.Comparator;
import java.util.NoSuchElementException;

@Beta
@GwtCompatible(emulated=true)
public abstract class ContiguousSet<C extends Comparable> extends ImmutableSortedSet<C>
{
  final DiscreteDomain<C> domain;

  ContiguousSet(DiscreteDomain<C> paramDiscreteDomain)
  {
    super(Ordering.natural());
    this.domain = paramDiscreteDomain;
  }

  public static <C extends Comparable> ContiguousSet<C> create(Range<C> paramRange, DiscreteDomain<C> paramDiscreteDomain)
  {
    Preconditions.checkNotNull(paramRange);
    Preconditions.checkNotNull(paramDiscreteDomain);
    Object localObject = paramRange;
    while (true)
    {
      try
      {
        if (!paramRange.hasLowerBound())
          localObject = ((Range)localObject).intersection(Range.atLeast(paramDiscreteDomain.minValue()));
        if (!paramRange.hasUpperBound())
        {
          Range localRange = ((Range)localObject).intersection(Range.atMost(paramDiscreteDomain.maxValue()));
          localObject = localRange;
        }
        if ((((Range)localObject).isEmpty()) || (Range.compareOrThrow(paramRange.lowerBound.leastValueAbove(paramDiscreteDomain), paramRange.upperBound.greatestValueBelow(paramDiscreteDomain)) > 0))
        {
          i = 1;
          if (i == 0)
            break;
          return new EmptyContiguousSet(paramDiscreteDomain);
        }
      }
      catch (NoSuchElementException localNoSuchElementException)
      {
        throw new IllegalArgumentException(localNoSuchElementException);
      }
      int i = 0;
    }
    return new RegularContiguousSet((Range)localObject, paramDiscreteDomain);
  }

  public ContiguousSet<C> headSet(C paramC)
  {
    return headSetImpl((Comparable)Preconditions.checkNotNull(paramC), false);
  }

  @GwtIncompatible("NavigableSet")
  public ContiguousSet<C> headSet(C paramC, boolean paramBoolean)
  {
    return headSetImpl((Comparable)Preconditions.checkNotNull(paramC), paramBoolean);
  }

  abstract ContiguousSet<C> headSetImpl(C paramC, boolean paramBoolean);

  public abstract ContiguousSet<C> intersection(ContiguousSet<C> paramContiguousSet);

  public abstract Range<C> range();

  public abstract Range<C> range(BoundType paramBoundType1, BoundType paramBoundType2);

  public ContiguousSet<C> subSet(C paramC1, C paramC2)
  {
    Preconditions.checkNotNull(paramC1);
    Preconditions.checkNotNull(paramC2);
    if (comparator().compare(paramC1, paramC2) <= 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      return subSetImpl(paramC1, true, paramC2, false);
    }
  }

  @GwtIncompatible("NavigableSet")
  public ContiguousSet<C> subSet(C paramC1, boolean paramBoolean1, C paramC2, boolean paramBoolean2)
  {
    Preconditions.checkNotNull(paramC1);
    Preconditions.checkNotNull(paramC2);
    if (comparator().compare(paramC1, paramC2) <= 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      return subSetImpl(paramC1, paramBoolean1, paramC2, paramBoolean2);
    }
  }

  abstract ContiguousSet<C> subSetImpl(C paramC1, boolean paramBoolean1, C paramC2, boolean paramBoolean2);

  public ContiguousSet<C> tailSet(C paramC)
  {
    return tailSetImpl((Comparable)Preconditions.checkNotNull(paramC), true);
  }

  @GwtIncompatible("NavigableSet")
  public ContiguousSet<C> tailSet(C paramC, boolean paramBoolean)
  {
    return tailSetImpl((Comparable)Preconditions.checkNotNull(paramC), paramBoolean);
  }

  abstract ContiguousSet<C> tailSetImpl(C paramC, boolean paramBoolean);

  public String toString()
  {
    return range().toString();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ContiguousSet
 * JD-Core Version:    0.6.2
 */