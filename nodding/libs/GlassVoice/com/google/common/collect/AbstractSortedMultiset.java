package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Comparator;
import java.util.Iterator;
import java.util.SortedSet;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
abstract class AbstractSortedMultiset<E> extends AbstractMultiset<E>
  implements SortedMultiset<E>
{

  @GwtTransient
  final Comparator<? super E> comparator;
  private transient SortedMultiset<E> descendingMultiset;

  AbstractSortedMultiset()
  {
    this(Ordering.natural());
  }

  AbstractSortedMultiset(Comparator<? super E> paramComparator)
  {
    this.comparator = ((Comparator)Preconditions.checkNotNull(paramComparator));
  }

  public Comparator<? super E> comparator()
  {
    return this.comparator;
  }

  SortedMultiset<E> createDescendingMultiset()
  {
    return new DescendingMultiset()
    {
      Iterator<Multiset.Entry<E>> entryIterator()
      {
        return AbstractSortedMultiset.this.descendingEntryIterator();
      }

      SortedMultiset<E> forwardMultiset()
      {
        return AbstractSortedMultiset.this;
      }

      public Iterator<E> iterator()
      {
        return AbstractSortedMultiset.this.descendingIterator();
      }
    };
  }

  SortedSet<E> createElementSet()
  {
    return new SortedMultisets.ElementSet(this);
  }

  abstract Iterator<Multiset.Entry<E>> descendingEntryIterator();

  Iterator<E> descendingIterator()
  {
    return Multisets.iteratorImpl(descendingMultiset());
  }

  public SortedMultiset<E> descendingMultiset()
  {
    SortedMultiset localSortedMultiset = this.descendingMultiset;
    if (localSortedMultiset == null)
    {
      localSortedMultiset = createDescendingMultiset();
      this.descendingMultiset = localSortedMultiset;
    }
    return localSortedMultiset;
  }

  public SortedSet<E> elementSet()
  {
    return (SortedSet)super.elementSet();
  }

  public Multiset.Entry<E> firstEntry()
  {
    Iterator localIterator = entryIterator();
    if (localIterator.hasNext())
      return (Multiset.Entry)localIterator.next();
    return null;
  }

  public Multiset.Entry<E> lastEntry()
  {
    Iterator localIterator = descendingEntryIterator();
    if (localIterator.hasNext())
      return (Multiset.Entry)localIterator.next();
    return null;
  }

  public Multiset.Entry<E> pollFirstEntry()
  {
    Iterator localIterator = entryIterator();
    if (localIterator.hasNext())
    {
      Multiset.Entry localEntry1 = (Multiset.Entry)localIterator.next();
      Multiset.Entry localEntry2 = Multisets.immutableEntry(localEntry1.getElement(), localEntry1.getCount());
      localIterator.remove();
      return localEntry2;
    }
    return null;
  }

  public Multiset.Entry<E> pollLastEntry()
  {
    Iterator localIterator = descendingEntryIterator();
    if (localIterator.hasNext())
    {
      Multiset.Entry localEntry1 = (Multiset.Entry)localIterator.next();
      Multiset.Entry localEntry2 = Multisets.immutableEntry(localEntry1.getElement(), localEntry1.getCount());
      localIterator.remove();
      return localEntry2;
    }
    return null;
  }

  public SortedMultiset<E> subMultiset(@Nullable E paramE1, BoundType paramBoundType1, @Nullable E paramE2, BoundType paramBoundType2)
  {
    Preconditions.checkNotNull(paramBoundType1);
    Preconditions.checkNotNull(paramBoundType2);
    return tailMultiset(paramE1, paramBoundType1).headMultiset(paramE2, paramBoundType2);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.AbstractSortedMultiset
 * JD-Core Version:    0.6.2
 */