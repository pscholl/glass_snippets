package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Comparator;
import java.util.NoSuchElementException;
import java.util.SortedSet;

@GwtCompatible(emulated=true)
final class SortedMultisets
{
  private static <E> E getElementOrThrow(Multiset.Entry<E> paramEntry)
  {
    if (paramEntry == null)
      throw new NoSuchElementException();
    return paramEntry.getElement();
  }

  static class ElementSet<E> extends Multisets.ElementSet<E>
    implements SortedSet<E>
  {
    private final SortedMultiset<E> multiset;

    ElementSet(SortedMultiset<E> paramSortedMultiset)
    {
      this.multiset = paramSortedMultiset;
    }

    public Comparator<? super E> comparator()
    {
      return multiset().comparator();
    }

    public E first()
    {
      return SortedMultisets.getElementOrThrow(multiset().firstEntry());
    }

    public SortedSet<E> headSet(E paramE)
    {
      return multiset().headMultiset(paramE, BoundType.OPEN).elementSet();
    }

    public E last()
    {
      return SortedMultisets.getElementOrThrow(multiset().lastEntry());
    }

    final SortedMultiset<E> multiset()
    {
      return this.multiset;
    }

    public SortedSet<E> subSet(E paramE1, E paramE2)
    {
      return multiset().subMultiset(paramE1, BoundType.CLOSED, paramE2, BoundType.OPEN).elementSet();
    }

    public SortedSet<E> tailSet(E paramE)
    {
      return multiset().tailMultiset(paramE, BoundType.CLOSED).elementSet();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.SortedMultisets
 * JD-Core Version:    0.6.2
 */