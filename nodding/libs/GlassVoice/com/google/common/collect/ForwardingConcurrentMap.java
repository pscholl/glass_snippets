package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.concurrent.ConcurrentMap;

@GwtCompatible
public abstract class ForwardingConcurrentMap<K, V> extends ForwardingMap<K, V>
  implements ConcurrentMap<K, V>
{
  protected abstract ConcurrentMap<K, V> delegate();

  public V putIfAbsent(K paramK, V paramV)
  {
    return delegate().putIfAbsent(paramK, paramV);
  }

  public boolean remove(Object paramObject1, Object paramObject2)
  {
    return delegate().remove(paramObject1, paramObject2);
  }

  public V replace(K paramK, V paramV)
  {
    return delegate().replace(paramK, paramV);
  }

  public boolean replace(K paramK, V paramV1, V paramV2)
  {
    return delegate().replace(paramK, paramV1, paramV2);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ForwardingConcurrentMap
 * JD-Core Version:    0.6.2
 */