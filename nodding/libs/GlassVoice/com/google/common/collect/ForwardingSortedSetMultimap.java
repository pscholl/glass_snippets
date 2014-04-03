package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Comparator;
import java.util.SortedSet;
import javax.annotation.Nullable;

@GwtCompatible
public abstract class ForwardingSortedSetMultimap<K, V> extends ForwardingSetMultimap<K, V>
  implements SortedSetMultimap<K, V>
{
  protected abstract SortedSetMultimap<K, V> delegate();

  public SortedSet<V> get(@Nullable K paramK)
  {
    return delegate().get(paramK);
  }

  public SortedSet<V> removeAll(@Nullable Object paramObject)
  {
    return delegate().removeAll(paramObject);
  }

  public SortedSet<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
  {
    return delegate().replaceValues(paramK, paramIterable);
  }

  public Comparator<? super V> valueComparator()
  {
    return delegate().valueComparator();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ForwardingSortedSetMultimap
 * JD-Core Version:    0.6.2
 */