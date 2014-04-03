package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Collection;
import java.util.Comparator;
import javax.annotation.Nullable;

final class EmptyImmutableSortedMultiset<E> extends ImmutableSortedMultiset<E>
{
  private final ImmutableSortedSet<E> elementSet;

  EmptyImmutableSortedMultiset(Comparator<? super E> paramComparator)
  {
    this.elementSet = ImmutableSortedSet.emptySet(paramComparator);
  }

  public ImmutableList<E> asList()
  {
    return ImmutableList.of();
  }

  public boolean contains(@Nullable Object paramObject)
  {
    return false;
  }

  public boolean containsAll(Collection<?> paramCollection)
  {
    return paramCollection.isEmpty();
  }

  public int count(@Nullable Object paramObject)
  {
    return 0;
  }

  ImmutableSet<Multiset.Entry<E>> createEntrySet()
  {
    throw new AssertionError("should never be called");
  }

  public ImmutableSortedSet<E> elementSet()
  {
    return this.elementSet;
  }

  public ImmutableSet<Multiset.Entry<E>> entrySet()
  {
    return ImmutableSet.of();
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if ((paramObject instanceof Multiset))
      return ((Multiset)paramObject).isEmpty();
    return false;
  }

  public Multiset.Entry<E> firstEntry()
  {
    return null;
  }

  public int hashCode()
  {
    return 0;
  }

  public ImmutableSortedMultiset<E> headMultiset(E paramE, BoundType paramBoundType)
  {
    Preconditions.checkNotNull(paramE);
    Preconditions.checkNotNull(paramBoundType);
    return this;
  }

  boolean isPartialView()
  {
    return false;
  }

  public UnmodifiableIterator<E> iterator()
  {
    return Iterators.emptyIterator();
  }

  public Multiset.Entry<E> lastEntry()
  {
    return null;
  }

  public int size()
  {
    return 0;
  }

  public ImmutableSortedMultiset<E> tailMultiset(E paramE, BoundType paramBoundType)
  {
    Preconditions.checkNotNull(paramE);
    Preconditions.checkNotNull(paramBoundType);
    return this;
  }

  public Object[] toArray()
  {
    return ObjectArrays.EMPTY_ARRAY;
  }

  public <T> T[] toArray(T[] paramArrayOfT)
  {
    return asList().toArray(paramArrayOfT);
  }

  public String toString()
  {
    return "[]";
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.EmptyImmutableSortedMultiset
 * JD-Core Version:    0.6.2
 */