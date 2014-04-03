package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.util.Comparator;
import java.util.Iterator;
import java.util.SortedSet;

@Beta
@GwtCompatible(emulated=true)
public abstract interface SortedMultiset<E> extends SortedMultisetBridge<E>, SortedIterable<E>
{
  public abstract Comparator<? super E> comparator();

  public abstract SortedMultiset<E> descendingMultiset();

  public abstract SortedSet<E> elementSet();

  public abstract Multiset.Entry<E> firstEntry();

  public abstract SortedMultiset<E> headMultiset(E paramE, BoundType paramBoundType);

  public abstract Iterator<E> iterator();

  public abstract Multiset.Entry<E> lastEntry();

  public abstract Multiset.Entry<E> pollFirstEntry();

  public abstract Multiset.Entry<E> pollLastEntry();

  public abstract SortedMultiset<E> subMultiset(E paramE1, BoundType paramBoundType1, E paramE2, BoundType paramBoundType2);

  public abstract SortedMultiset<E> tailMultiset(E paramE, BoundType paramBoundType);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.SortedMultiset
 * JD-Core Version:    0.6.2
 */