package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Map.Entry;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
final class SingletonImmutableBiMap<K, V> extends ImmutableBiMap<K, V>
{
  transient ImmutableBiMap<V, K> inverse;
  final transient K singleKey;
  final transient V singleValue;

  SingletonImmutableBiMap(K paramK, V paramV)
  {
    this.singleKey = paramK;
    this.singleValue = paramV;
  }

  private SingletonImmutableBiMap(K paramK, V paramV, ImmutableBiMap<V, K> paramImmutableBiMap)
  {
    this.singleKey = paramK;
    this.singleValue = paramV;
    this.inverse = paramImmutableBiMap;
  }

  SingletonImmutableBiMap(Map.Entry<K, V> paramEntry)
  {
    this(paramEntry.getKey(), paramEntry.getValue());
  }

  public boolean containsKey(@Nullable Object paramObject)
  {
    return this.singleKey.equals(paramObject);
  }

  public boolean containsValue(@Nullable Object paramObject)
  {
    return this.singleValue.equals(paramObject);
  }

  ImmutableSet<Map.Entry<K, V>> createEntrySet()
  {
    return ImmutableSet.of(Maps.immutableEntry(this.singleKey, this.singleValue));
  }

  ImmutableSet<K> createKeySet()
  {
    return ImmutableSet.of(this.singleKey);
  }

  public V get(@Nullable Object paramObject)
  {
    if (this.singleKey.equals(paramObject))
      return this.singleValue;
    return null;
  }

  public ImmutableBiMap<V, K> inverse()
  {
    Object localObject = this.inverse;
    if (localObject == null)
    {
      localObject = new SingletonImmutableBiMap(this.singleValue, this.singleKey, this);
      this.inverse = ((ImmutableBiMap)localObject);
    }
    return localObject;
  }

  boolean isPartialView()
  {
    return false;
  }

  public int size()
  {
    return 1;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.SingletonImmutableBiMap
 * JD-Core Version:    0.6.2
 */