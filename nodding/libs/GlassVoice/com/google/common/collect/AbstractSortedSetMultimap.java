package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.SortedSet;
import javax.annotation.Nullable;

@GwtCompatible
abstract class AbstractSortedSetMultimap<K, V> extends AbstractSetMultimap<K, V>
  implements SortedSetMultimap<K, V>
{
  private static final long serialVersionUID = 430848587173315748L;

  protected AbstractSortedSetMultimap(Map<K, Collection<V>> paramMap)
  {
    super(paramMap);
  }

  public Map<K, Collection<V>> asMap()
  {
    return super.asMap();
  }

  abstract SortedSet<V> createCollection();

  SortedSet<V> createUnmodifiableEmptyCollection()
  {
    if (valueComparator() == null)
      return Collections.unmodifiableSortedSet(createCollection());
    return ImmutableSortedSet.emptySet(valueComparator());
  }

  public SortedSet<V> get(@Nullable K paramK)
  {
    return (SortedSet)super.get(paramK);
  }

  public SortedSet<V> removeAll(@Nullable Object paramObject)
  {
    return (SortedSet)super.removeAll(paramObject);
  }

  public SortedSet<V> replaceValues(@Nullable K paramK, Iterable<? extends V> paramIterable)
  {
    return (SortedSet)super.replaceValues(paramK, paramIterable);
  }

  public Collection<V> values()
  {
    return super.values();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.AbstractSortedSetMultimap
 * JD-Core Version:    0.6.2
 */