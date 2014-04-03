package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedSet;
import javax.annotation.Nullable;

@GwtCompatible
public abstract interface SortedSetMultimap<K, V> extends SetMultimap<K, V>
{
  public abstract Map<K, Collection<V>> asMap();

  public abstract SortedSet<V> get(@Nullable K paramK);

  public abstract SortedSet<V> removeAll(@Nullable Object paramObject);

  public abstract SortedSet<V> replaceValues(K paramK, Iterable<? extends V> paramIterable);

  public abstract Comparator<? super V> valueComparator();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.SortedSetMultimap
 * JD-Core Version:    0.6.2
 */