package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import javax.annotation.Nullable;

final class RegularImmutableSortedMultiset<E> extends ImmutableSortedMultiset<E>
{
  private final transient int[] counts;
  private final transient long[] cumulativeCounts;
  private final transient RegularImmutableSortedSet<E> elementSet;
  private final transient int length;
  private final transient int offset;

  RegularImmutableSortedMultiset(RegularImmutableSortedSet<E> paramRegularImmutableSortedSet, int[] paramArrayOfInt, long[] paramArrayOfLong, int paramInt1, int paramInt2)
  {
    this.elementSet = paramRegularImmutableSortedSet;
    this.counts = paramArrayOfInt;
    this.cumulativeCounts = paramArrayOfLong;
    this.offset = paramInt1;
    this.length = paramInt2;
  }

  private Multiset.Entry<E> getEntry(int paramInt)
  {
    return Multisets.immutableEntry(this.elementSet.asList().get(paramInt), this.counts[(paramInt + this.offset)]);
  }

  public int count(@Nullable Object paramObject)
  {
    int i = this.elementSet.indexOf(paramObject);
    if (i == -1)
      return 0;
    return this.counts[(i + this.offset)];
  }

  ImmutableSet<Multiset.Entry<E>> createEntrySet()
  {
    return new EntrySet(null);
  }

  public ImmutableSortedSet<E> elementSet()
  {
    return this.elementSet;
  }

  public Multiset.Entry<E> firstEntry()
  {
    return getEntry(0);
  }

  ImmutableSortedMultiset<E> getSubMultiset(int paramInt1, int paramInt2)
  {
    Preconditions.checkPositionIndexes(paramInt1, paramInt2, this.length);
    if (paramInt1 == paramInt2)
      this = emptyMultiset(comparator());
    while ((paramInt1 == 0) && (paramInt2 == this.length))
      return this;
    return new RegularImmutableSortedMultiset((RegularImmutableSortedSet)this.elementSet.getSubSet(paramInt1, paramInt2), this.counts, this.cumulativeCounts, paramInt1 + this.offset, paramInt2 - paramInt1);
  }

  public ImmutableSortedMultiset<E> headMultiset(E paramE, BoundType paramBoundType)
  {
    RegularImmutableSortedSet localRegularImmutableSortedSet = this.elementSet;
    if (Preconditions.checkNotNull(paramBoundType) == BoundType.CLOSED);
    for (boolean bool = true; ; bool = false)
      return getSubMultiset(0, localRegularImmutableSortedSet.headIndex(paramE, bool));
  }

  boolean isPartialView()
  {
    return (this.offset > 0) || (this.length < this.counts.length);
  }

  public Multiset.Entry<E> lastEntry()
  {
    return getEntry(-1 + this.length);
  }

  public int size()
  {
    return Ints.saturatedCast(this.cumulativeCounts[(this.offset + this.length)] - this.cumulativeCounts[this.offset]);
  }

  public ImmutableSortedMultiset<E> tailMultiset(E paramE, BoundType paramBoundType)
  {
    RegularImmutableSortedSet localRegularImmutableSortedSet = this.elementSet;
    if (Preconditions.checkNotNull(paramBoundType) == BoundType.CLOSED);
    for (boolean bool = true; ; bool = false)
      return getSubMultiset(localRegularImmutableSortedSet.tailIndex(paramE, bool), this.length);
  }

  private final class EntrySet extends ImmutableMultiset.EntrySet
  {
    private EntrySet()
    {
      super();
    }

    ImmutableList<Multiset.Entry<E>> createAsList()
    {
      return new ImmutableAsList()
      {
        ImmutableCollection<Multiset.Entry<E>> delegateCollection()
        {
          return RegularImmutableSortedMultiset.EntrySet.this;
        }

        public Multiset.Entry<E> get(int paramAnonymousInt)
        {
          return RegularImmutableSortedMultiset.this.getEntry(paramAnonymousInt);
        }
      };
    }

    public UnmodifiableIterator<Multiset.Entry<E>> iterator()
    {
      return asList().iterator();
    }

    public int size()
    {
      return RegularImmutableSortedMultiset.this.length;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.RegularImmutableSortedMultiset
 * JD-Core Version:    0.6.2
 */