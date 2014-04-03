package com.google.common.collect;

import javax.annotation.Nullable;

final class DescendingImmutableSortedMultiset<E> extends ImmutableSortedMultiset<E>
{
  private final transient ImmutableSortedMultiset<E> forward;

  DescendingImmutableSortedMultiset(ImmutableSortedMultiset<E> paramImmutableSortedMultiset)
  {
    this.forward = paramImmutableSortedMultiset;
  }

  public int count(@Nullable Object paramObject)
  {
    return this.forward.count(paramObject);
  }

  ImmutableSet<Multiset.Entry<E>> createEntrySet()
  {
    return new ImmutableMultiset.EntrySet(this.forward.entrySet())
    {
      ImmutableList<Multiset.Entry<E>> createAsList()
      {
        return this.val$forwardEntrySet.asList().reverse();
      }

      public UnmodifiableIterator<Multiset.Entry<E>> iterator()
      {
        return asList().iterator();
      }

      public int size()
      {
        return this.val$forwardEntrySet.size();
      }
    };
  }

  public ImmutableSortedMultiset<E> descendingMultiset()
  {
    return this.forward;
  }

  public ImmutableSortedSet<E> elementSet()
  {
    return this.forward.elementSet().descendingSet();
  }

  public Multiset.Entry<E> firstEntry()
  {
    return this.forward.lastEntry();
  }

  public ImmutableSortedMultiset<E> headMultiset(E paramE, BoundType paramBoundType)
  {
    return this.forward.tailMultiset(paramE, paramBoundType).descendingMultiset();
  }

  boolean isPartialView()
  {
    return this.forward.isPartialView();
  }

  public Multiset.Entry<E> lastEntry()
  {
    return this.forward.firstEntry();
  }

  public int size()
  {
    return this.forward.size();
  }

  public ImmutableSortedMultiset<E> tailMultiset(E paramE, BoundType paramBoundType)
  {
    return this.forward.headMultiset(paramE, paramBoundType).descendingMultiset();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.DescendingImmutableSortedMultiset
 * JD-Core Version:    0.6.2
 */