package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import java.io.Serializable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.SortedSet;
import javax.annotation.Nullable;

@GwtCompatible
public final class Range<C extends Comparable>
  implements Predicate<C>, Serializable
{
  private static final Range<Comparable> ALL = new Range(Cut.belowAll(), Cut.aboveAll());
  private static final Function<Range, Cut> LOWER_BOUND_FN = new Function()
  {
    public Cut apply(Range paramAnonymousRange)
    {
      return paramAnonymousRange.lowerBound;
    }
  };
  static final Ordering<Range<?>> RANGE_LEX_ORDERING;
  private static final Function<Range, Cut> UPPER_BOUND_FN = new Function()
  {
    public Cut apply(Range paramAnonymousRange)
    {
      return paramAnonymousRange.upperBound;
    }
  };
  private static final long serialVersionUID;
  final Cut<C> lowerBound;
  final Cut<C> upperBound;

  static
  {
    RANGE_LEX_ORDERING = new Ordering()
    {
      public int compare(Range<?> paramAnonymousRange1, Range<?> paramAnonymousRange2)
      {
        return ComparisonChain.start().compare(paramAnonymousRange1.lowerBound, paramAnonymousRange2.lowerBound).compare(paramAnonymousRange1.upperBound, paramAnonymousRange2.upperBound).result();
      }
    };
  }

  private Range(Cut<C> paramCut1, Cut<C> paramCut2)
  {
    if ((paramCut1.compareTo(paramCut2) > 0) || (paramCut1 == Cut.aboveAll()) || (paramCut2 == Cut.belowAll()))
      throw new IllegalArgumentException("Invalid range: " + toString(paramCut1, paramCut2));
    this.lowerBound = ((Cut)Preconditions.checkNotNull(paramCut1));
    this.upperBound = ((Cut)Preconditions.checkNotNull(paramCut2));
  }

  public static <C extends Comparable<?>> Range<C> all()
  {
    return ALL;
  }

  public static <C extends Comparable<?>> Range<C> atLeast(C paramC)
  {
    return create(Cut.belowValue(paramC), Cut.aboveAll());
  }

  public static <C extends Comparable<?>> Range<C> atMost(C paramC)
  {
    return create(Cut.belowAll(), Cut.aboveValue(paramC));
  }

  private static <T> SortedSet<T> cast(Iterable<T> paramIterable)
  {
    return (SortedSet)paramIterable;
  }

  public static <C extends Comparable<?>> Range<C> closed(C paramC1, C paramC2)
  {
    return create(Cut.belowValue(paramC1), Cut.aboveValue(paramC2));
  }

  public static <C extends Comparable<?>> Range<C> closedOpen(C paramC1, C paramC2)
  {
    return create(Cut.belowValue(paramC1), Cut.belowValue(paramC2));
  }

  static int compareOrThrow(Comparable paramComparable1, Comparable paramComparable2)
  {
    return paramComparable1.compareTo(paramComparable2);
  }

  static <C extends Comparable<?>> Range<C> create(Cut<C> paramCut1, Cut<C> paramCut2)
  {
    return new Range(paramCut1, paramCut2);
  }

  public static <C extends Comparable<?>> Range<C> downTo(C paramC, BoundType paramBoundType)
  {
    switch (4.$SwitchMap$com$google$common$collect$BoundType[paramBoundType.ordinal()])
    {
    default:
      throw new AssertionError();
    case 1:
      return greaterThan(paramC);
    case 2:
    }
    return atLeast(paramC);
  }

  public static <C extends Comparable<?>> Range<C> encloseAll(Iterable<C> paramIterable)
  {
    Preconditions.checkNotNull(paramIterable);
    if ((paramIterable instanceof ContiguousSet))
      return ((ContiguousSet)paramIterable).range();
    Iterator localIterator = paramIterable.iterator();
    Comparable localComparable1 = (Comparable)Preconditions.checkNotNull(localIterator.next());
    Comparable localComparable3;
    for (Comparable localComparable2 = localComparable1; localIterator.hasNext(); localComparable2 = (Comparable)Ordering.natural().max(localComparable2, localComparable3))
    {
      localComparable3 = (Comparable)Preconditions.checkNotNull(localIterator.next());
      localComparable1 = (Comparable)Ordering.natural().min(localComparable1, localComparable3);
    }
    return closed(localComparable1, localComparable2);
  }

  public static <C extends Comparable<?>> Range<C> greaterThan(C paramC)
  {
    return create(Cut.aboveValue(paramC), Cut.aboveAll());
  }

  public static <C extends Comparable<?>> Range<C> lessThan(C paramC)
  {
    return create(Cut.belowAll(), Cut.belowValue(paramC));
  }

  static <C extends Comparable<?>> Function<Range<C>, Cut<C>> lowerBoundFn()
  {
    return LOWER_BOUND_FN;
  }

  public static <C extends Comparable<?>> Range<C> open(C paramC1, C paramC2)
  {
    return create(Cut.aboveValue(paramC1), Cut.belowValue(paramC2));
  }

  public static <C extends Comparable<?>> Range<C> openClosed(C paramC1, C paramC2)
  {
    return create(Cut.aboveValue(paramC1), Cut.aboveValue(paramC2));
  }

  public static <C extends Comparable<?>> Range<C> range(C paramC1, BoundType paramBoundType1, C paramC2, BoundType paramBoundType2)
  {
    Preconditions.checkNotNull(paramBoundType1);
    Preconditions.checkNotNull(paramBoundType2);
    Cut localCut1;
    if (paramBoundType1 == BoundType.OPEN)
    {
      localCut1 = Cut.aboveValue(paramC1);
      if (paramBoundType2 != BoundType.OPEN)
        break label53;
    }
    label53: for (Cut localCut2 = Cut.belowValue(paramC2); ; localCut2 = Cut.aboveValue(paramC2))
    {
      return create(localCut1, localCut2);
      localCut1 = Cut.belowValue(paramC1);
      break;
    }
  }

  public static <C extends Comparable<?>> Range<C> singleton(C paramC)
  {
    return closed(paramC, paramC);
  }

  private static String toString(Cut<?> paramCut1, Cut<?> paramCut2)
  {
    StringBuilder localStringBuilder = new StringBuilder(16);
    paramCut1.describeAsLowerBound(localStringBuilder);
    localStringBuilder.append('‥');
    paramCut2.describeAsUpperBound(localStringBuilder);
    return localStringBuilder.toString();
  }

  public static <C extends Comparable<?>> Range<C> upTo(C paramC, BoundType paramBoundType)
  {
    switch (4.$SwitchMap$com$google$common$collect$BoundType[paramBoundType.ordinal()])
    {
    default:
      throw new AssertionError();
    case 1:
      return lessThan(paramC);
    case 2:
    }
    return atMost(paramC);
  }

  static <C extends Comparable<?>> Function<Range<C>, Cut<C>> upperBoundFn()
  {
    return UPPER_BOUND_FN;
  }

  public boolean apply(C paramC)
  {
    return contains(paramC);
  }

  @Deprecated
  @Beta
  @GwtCompatible(serializable=false)
  public ContiguousSet<C> asSet(DiscreteDomain<C> paramDiscreteDomain)
  {
    return ContiguousSet.create(this, paramDiscreteDomain);
  }

  public Range<C> canonical(DiscreteDomain<C> paramDiscreteDomain)
  {
    Preconditions.checkNotNull(paramDiscreteDomain);
    Cut localCut1 = this.lowerBound.canonical(paramDiscreteDomain);
    Cut localCut2 = this.upperBound.canonical(paramDiscreteDomain);
    if ((localCut1 == this.lowerBound) && (localCut2 == this.upperBound))
      return this;
    return create(localCut1, localCut2);
  }

  public boolean contains(C paramC)
  {
    Preconditions.checkNotNull(paramC);
    return (this.lowerBound.isLessThan(paramC)) && (!this.upperBound.isLessThan(paramC));
  }

  public boolean containsAll(Iterable<? extends C> paramIterable)
  {
    if (Iterables.isEmpty(paramIterable));
    Iterator localIterator;
    do
      while (!localIterator.hasNext())
      {
        return true;
        if ((paramIterable instanceof SortedSet))
        {
          SortedSet localSortedSet = cast(paramIterable);
          Comparator localComparator = localSortedSet.comparator();
          if ((Ordering.natural().equals(localComparator)) || (localComparator == null))
          {
            if ((contains((Comparable)localSortedSet.first())) && (contains((Comparable)localSortedSet.last())));
            for (boolean bool = true; ; bool = false)
              return bool;
          }
        }
        localIterator = paramIterable.iterator();
      }
    while (contains((Comparable)localIterator.next()));
    return false;
  }

  public boolean encloses(Range<C> paramRange)
  {
    return (this.lowerBound.compareTo(paramRange.lowerBound) <= 0) && (this.upperBound.compareTo(paramRange.upperBound) >= 0);
  }

  public boolean equals(@Nullable Object paramObject)
  {
    boolean bool1 = paramObject instanceof Range;
    boolean bool2 = false;
    if (bool1)
    {
      Range localRange = (Range)paramObject;
      boolean bool3 = this.lowerBound.equals(localRange.lowerBound);
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = this.upperBound.equals(localRange.upperBound);
        bool2 = false;
        if (bool4)
          bool2 = true;
      }
    }
    return bool2;
  }

  public boolean hasLowerBound()
  {
    return this.lowerBound != Cut.belowAll();
  }

  public boolean hasUpperBound()
  {
    return this.upperBound != Cut.aboveAll();
  }

  public int hashCode()
  {
    return 31 * this.lowerBound.hashCode() + this.upperBound.hashCode();
  }

  public Range<C> intersection(Range<C> paramRange)
  {
    int i = this.lowerBound.compareTo(paramRange.lowerBound);
    int j = this.upperBound.compareTo(paramRange.upperBound);
    if ((i >= 0) && (j <= 0))
      return this;
    if ((i <= 0) && (j >= 0))
      return paramRange;
    Cut localCut1;
    if (i >= 0)
    {
      localCut1 = this.lowerBound;
      if (j > 0)
        break label81;
    }
    label81: for (Cut localCut2 = this.upperBound; ; localCut2 = paramRange.upperBound)
    {
      return create(localCut1, localCut2);
      localCut1 = paramRange.lowerBound;
      break;
    }
  }

  public boolean isConnected(Range<C> paramRange)
  {
    return (this.lowerBound.compareTo(paramRange.upperBound) <= 0) && (paramRange.lowerBound.compareTo(this.upperBound) <= 0);
  }

  public boolean isEmpty()
  {
    return this.lowerBound.equals(this.upperBound);
  }

  public BoundType lowerBoundType()
  {
    return this.lowerBound.typeAsLowerBound();
  }

  public C lowerEndpoint()
  {
    return this.lowerBound.endpoint();
  }

  Object readResolve()
  {
    if (equals(ALL))
      this = all();
    return this;
  }

  public Range<C> span(Range<C> paramRange)
  {
    int i = this.lowerBound.compareTo(paramRange.lowerBound);
    int j = this.upperBound.compareTo(paramRange.upperBound);
    if ((i <= 0) && (j >= 0))
      return this;
    if ((i >= 0) && (j <= 0))
      return paramRange;
    Cut localCut1;
    if (i <= 0)
    {
      localCut1 = this.lowerBound;
      if (j < 0)
        break label81;
    }
    label81: for (Cut localCut2 = this.upperBound; ; localCut2 = paramRange.upperBound)
    {
      return create(localCut1, localCut2);
      localCut1 = paramRange.lowerBound;
      break;
    }
  }

  public String toString()
  {
    return toString(this.lowerBound, this.upperBound);
  }

  public BoundType upperBoundType()
  {
    return this.upperBound.typeAsUpperBound();
  }

  public C upperEndpoint()
  {
    return this.upperBound.endpoint();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.Range
 * JD-Core Version:    0.6.2
 */