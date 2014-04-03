package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Map.Entry;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible
public abstract class ForwardingSetMultimap<K, V> extends ForwardingMultimap<K, V>
  implements SetMultimap<K, V>
{
  protected abstract SetMultimap<K, V> delegate();

  public Set<Map.Entry<K, V>> entries()
  {
    return delegate().entries();
  }

  public Set<V> get(@Nullable K paramK)
  {
    return delegate().get(paramK);
  }

  public Set<V> removeAll(@Nullable Object paramObject)
  {
    return delegate().removeAll(paramObject);
  }

  public Set<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
  {
    return delegate().replaceValues(paramK, paramIterable);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ForwardingSetMultimap
 * JD-Core Version:    0.6.2
 */