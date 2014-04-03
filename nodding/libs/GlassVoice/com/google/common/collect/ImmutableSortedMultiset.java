package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Set;

@Beta
@GwtIncompatible("hasn't been tested yet")
public abstract class ImmutableSortedMultiset<E> extends ImmutableSortedMultisetFauxverideShim<E>
  implements SortedMultiset<E>
{
  private static final ImmutableSortedMultiset<Comparable> NATURAL_EMPTY_MULTISET = new EmptyImmutableSortedMultiset(NATURAL_ORDER);
  private static final Comparator<Comparable> NATURAL_ORDER = Ordering.natural();
  transient ImmutableSortedMultiset<E> descendingMultiset;

  public static <E> ImmutableSortedMultiset<E> copyOf(Iterable<? extends E> paramIterable)
  {
    return copyOf(Ordering.natural(), paramIterable);
  }

  public static <E> ImmutableSortedMultiset<E> copyOf(Comparator<? super E> paramComparator, Iterable<? extends E> paramIterable)
  {
    if ((paramIterable instanceof ImmutableSortedMultiset))
    {
      ImmutableSortedMultiset localImmutableSortedMultiset = (ImmutableSortedMultiset)paramIterable;
      if (paramComparator.equals(localImmutableSortedMultiset.comparator()))
      {
        if (localImmutableSortedMultiset.isPartialView())
          localImmutableSortedMultiset = copyOfSortedEntries(paramComparator, localImmutableSortedMultiset.entrySet().asList());
        return localImmutableSortedMultiset;
      }
    }
    ArrayList localArrayList = Lists.newArrayList(paramIterable);
    TreeMultiset localTreeMultiset = TreeMultiset.create((Comparator)Preconditions.checkNotNull(paramComparator));
    Iterables.addAll(localTreeMultiset, localArrayList);
    return copyOfSortedEntries(paramComparator, localTreeMultiset.entrySet());
  }

  public static <E> ImmutableSortedMultiset<E> copyOf(Comparator<? super E> paramComparator, Iterator<? extends E> paramIterator)
  {
    Preconditions.checkNotNull(paramComparator);
    return new Builder(paramComparator).addAll(paramIterator).build();
  }

  public static <E> ImmutableSortedMultiset<E> copyOf(Iterator<? extends E> paramIterator)
  {
    return copyOf(Ordering.natural(), paramIterator);
  }

  public static <E extends Comparable<? super E>> ImmutableSortedMultiset<E> copyOf(E[] paramArrayOfE)
  {
    return copyOf(Ordering.natural(), Arrays.asList(paramArrayOfE));
  }

  public static <E> ImmutableSortedMultiset<E> copyOfSorted(SortedMultiset<E> paramSortedMultiset)
  {
    return copyOfSortedEntries(paramSortedMultiset.comparator(), Lists.newArrayList(paramSortedMultiset.entrySet()));
  }

  private static <E> ImmutableSortedMultiset<E> copyOfSortedEntries(Comparator<? super E> paramComparator, Collection<Multiset.Entry<E>> paramCollection)
  {
    if (paramCollection.isEmpty())
      return emptyMultiset(paramComparator);
    ImmutableList.Builder localBuilder = new ImmutableList.Builder(paramCollection.size());
    int[] arrayOfInt = new int[paramCollection.size()];
    long[] arrayOfLong = new long[1 + paramCollection.size()];
    int i = 0;
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      Multiset.Entry localEntry = (Multiset.Entry)localIterator.next();
      localBuilder.add(localEntry.getElement());
      arrayOfInt[i] = localEntry.getCount();
      arrayOfLong[(i + 1)] = (arrayOfLong[i] + arrayOfInt[i]);
      i++;
    }
    return new RegularImmutableSortedMultiset(new RegularImmutableSortedSet(localBuilder.build(), paramComparator), arrayOfInt, arrayOfLong, 0, paramCollection.size());
  }

  static <E> ImmutableSortedMultiset<E> emptyMultiset(Comparator<? super E> paramComparator)
  {
    if (NATURAL_ORDER.equals(paramComparator))
      return NATURAL_EMPTY_MULTISET;
    return new EmptyImmutableSortedMultiset(paramComparator);
  }

  public static <E extends Comparable<E>> Builder<E> naturalOrder()
  {
    return new Builder(Ordering.natural());
  }

  public static <E> ImmutableSortedMultiset<E> of()
  {
    return NATURAL_EMPTY_MULTISET;
  }

  public static <E extends Comparable<? super E>> ImmutableSortedMultiset<E> of(E paramE)
  {
    return new RegularImmutableSortedMultiset((RegularImmutableSortedSet)ImmutableSortedSet.of(paramE), new int[] { 1 }, new long[] { 0L, 1L }, 0, 1);
  }

  public static <E extends Comparable<? super E>> ImmutableSortedMultiset<E> of(E paramE1, E paramE2)
  {
    return copyOf(Ordering.natural(), Arrays.asList(new Comparable[] { paramE1, paramE2 }));
  }

  public static <E extends Comparable<? super E>> ImmutableSortedMultiset<E> of(E paramE1, E paramE2, E paramE3)
  {
    return copyOf(Ordering.natural(), Arrays.asList(new Comparable[] { paramE1, paramE2, paramE3 }));
  }

  public static <E extends Comparable<? super E>> ImmutableSortedMultiset<E> of(E paramE1, E paramE2, E paramE3, E paramE4)
  {
    return copyOf(Ordering.natural(), Arrays.asList(new Comparable[] { paramE1, paramE2, paramE3, paramE4 }));
  }

  public static <E extends Comparable<? super E>> ImmutableSortedMultiset<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5)
  {
    return copyOf(Ordering.natural(), Arrays.asList(new Comparable[] { paramE1, paramE2, paramE3, paramE4, paramE5 }));
  }

  public static <E extends Comparable<? super E>> ImmutableSortedMultiset<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E[] paramArrayOfE)
  {
    ArrayList localArrayList = Lists.newArrayListWithCapacity(6 + paramArrayOfE.length);
    Collections.addAll(localArrayList, new Comparable[] { paramE1, paramE2, paramE3, paramE4, paramE5, paramE6 });
    Collections.addAll(localArrayList, paramArrayOfE);
    return copyOf(Ordering.natural(), localArrayList);
  }

  public static <E> Builder<E> orderedBy(Comparator<E> paramComparator)
  {
    return new Builder(paramComparator);
  }

  public static <E extends Comparable<E>> Builder<E> reverseOrder()
  {
    return new Builder(Ordering.natural().reverse());
  }

  public final Comparator<? super E> comparator()
  {
    return elementSet().comparator();
  }

  public ImmutableSortedMultiset<E> descendingMultiset()
  {
    Object localObject = this.descendingMultiset;
    if (localObject == null)
    {
      localObject = new DescendingImmutableSortedMultiset(this);
      this.descendingMultiset = ((ImmutableSortedMultiset)localObject);
    }
    return localObject;
  }

  public abstract ImmutableSortedSet<E> elementSet();

  public abstract ImmutableSortedMultiset<E> headMultiset(E paramE, BoundType paramBoundType);

  @Deprecated
  public final Multiset.Entry<E> pollFirstEntry()
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public final Multiset.Entry<E> pollLastEntry()
  {
    throw new UnsupportedOperationException();
  }

  public ImmutableSortedMultiset<E> subMultiset(E paramE1, BoundType paramBoundType1, E paramE2, BoundType paramBoundType2)
  {
    if (comparator().compare(paramE1, paramE2) <= 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "Expected lowerBound <= upperBound but %s > %s", new Object[] { paramE1, paramE2 });
      return tailMultiset(paramE1, paramBoundType1).headMultiset(paramE2, paramBoundType2);
    }
  }

  public abstract ImmutableSortedMultiset<E> tailMultiset(E paramE, BoundType paramBoundType);

  Object writeReplace()
  {
    return new SerializedForm(this);
  }

  public static class Builder<E> extends ImmutableMultiset.Builder<E>
  {
    private final Comparator<? super E> comparator;

    public Builder(Comparator<? super E> paramComparator)
    {
      super();
      this.comparator = ((Comparator)Preconditions.checkNotNull(paramComparator));
    }

    public Builder<E> add(E paramE)
    {
      super.add(paramE);
      return this;
    }

    public Builder<E> add(E[] paramArrayOfE)
    {
      super.add(paramArrayOfE);
      return this;
    }

    public Builder<E> addAll(Iterable<? extends E> paramIterable)
    {
      super.addAll(paramIterable);
      return this;
    }

    public Builder<E> addAll(Iterator<? extends E> paramIterator)
    {
      super.addAll(paramIterator);
      return this;
    }

    public Builder<E> addCopies(E paramE, int paramInt)
    {
      super.addCopies(paramE, paramInt);
      return this;
    }

    public ImmutableSortedMultiset<E> build()
    {
      return ImmutableSortedMultiset.copyOfSorted((SortedMultiset)this.contents);
    }

    public Builder<E> setCount(E paramE, int paramInt)
    {
      super.setCount(paramE, paramInt);
      return this;
    }
  }

  private static final class SerializedForm
    implements Serializable
  {
    Comparator comparator;
    int[] counts;
    Object[] elements;

    SerializedForm(SortedMultiset<?> paramSortedMultiset)
    {
      this.comparator = paramSortedMultiset.comparator();
      int i = paramSortedMultiset.entrySet().size();
      this.elements = new Object[i];
      this.counts = new int[i];
      int j = 0;
      Iterator localIterator = paramSortedMultiset.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Multiset.Entry localEntry = (Multiset.Entry)localIterator.next();
        this.elements[j] = localEntry.getElement();
        this.counts[j] = localEntry.getCount();
        j++;
      }
    }

    Object readResolve()
    {
      int i = this.elements.length;
      ImmutableSortedMultiset.Builder localBuilder = ImmutableSortedMultiset.orderedBy(this.comparator);
      for (int j = 0; j < i; j++)
        localBuilder.addCopies(this.elements[j], this.counts[j]);
      return localBuilder.build();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableSortedMultiset
 * JD-Core Version:    0.6.2
 */