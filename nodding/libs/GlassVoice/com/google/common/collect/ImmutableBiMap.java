package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Collection;
import java.util.Map;
import java.util.Map.Entry;

@GwtCompatible(emulated=true, serializable=true)
public abstract class ImmutableBiMap<K, V> extends ImmutableMap<K, V>
  implements BiMap<K, V>
{
  public static <K, V> Builder<K, V> builder()
  {
    return new Builder();
  }

  public static <K, V> ImmutableBiMap<K, V> copyOf(Map<? extends K, ? extends V> paramMap)
  {
    if ((paramMap instanceof ImmutableBiMap))
    {
      ImmutableBiMap localImmutableBiMap = (ImmutableBiMap)paramMap;
      if (!localImmutableBiMap.isPartialView())
        return localImmutableBiMap;
    }
    return fromEntries(ImmutableList.copyOf(paramMap.entrySet()));
  }

  static <K, V> ImmutableBiMap<K, V> fromEntries(Collection<? extends Map.Entry<? extends K, ? extends V>> paramCollection)
  {
    switch (paramCollection.size())
    {
    default:
      return new RegularImmutableBiMap(paramCollection);
    case 0:
      return of();
    case 1:
    }
    Map.Entry localEntry = (Map.Entry)Iterables.getOnlyElement(paramCollection);
    return new SingletonImmutableBiMap(localEntry.getKey(), localEntry.getValue());
  }

  public static <K, V> ImmutableBiMap<K, V> of()
  {
    return EmptyImmutableBiMap.INSTANCE;
  }

  public static <K, V> ImmutableBiMap<K, V> of(K paramK, V paramV)
  {
    Preconditions.checkNotNull(paramK, "null key in entry: null=%s", new Object[] { paramV });
    Preconditions.checkNotNull(paramV, "null value in entry: %s=null", new Object[] { paramK });
    return new SingletonImmutableBiMap(paramK, paramV);
  }

  public static <K, V> ImmutableBiMap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2)
  {
    return new Builder().put(paramK1, paramV1).put(paramK2, paramV2).build();
  }

  public static <K, V> ImmutableBiMap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3)
  {
    return new Builder().put(paramK1, paramV1).put(paramK2, paramV2).put(paramK3, paramV3).build();
  }

  public static <K, V> ImmutableBiMap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4)
  {
    return new Builder().put(paramK1, paramV1).put(paramK2, paramV2).put(paramK3, paramV3).put(paramK4, paramV4).build();
  }

  public static <K, V> ImmutableBiMap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4, K paramK5, V paramV5)
  {
    return new Builder().put(paramK1, paramV1).put(paramK2, paramV2).put(paramK3, paramV3).put(paramK4, paramV4).put(paramK5, paramV5).build();
  }

  @Deprecated
  public V forcePut(K paramK, V paramV)
  {
    throw new UnsupportedOperationException();
  }

  public abstract ImmutableBiMap<V, K> inverse();

  public ImmutableSet<V> values()
  {
    return inverse().keySet();
  }

  Object writeReplace()
  {
    return new SerializedForm(this);
  }

  public static final class Builder<K, V> extends ImmutableMap.Builder<K, V>
  {
    public ImmutableBiMap<K, V> build()
    {
      return ImmutableBiMap.fromEntries(this.entries);
    }

    public Builder<K, V> put(K paramK, V paramV)
    {
      super.put(paramK, paramV);
      return this;
    }

    public Builder<K, V> putAll(Map<? extends K, ? extends V> paramMap)
    {
      super.putAll(paramMap);
      return this;
    }
  }

  private static class SerializedForm extends ImmutableMap.SerializedForm
  {
    private static final long serialVersionUID;

    SerializedForm(ImmutableBiMap<?, ?> paramImmutableBiMap)
    {
      super();
    }

    Object readResolve()
    {
      return createMap(new ImmutableBiMap.Builder());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableBiMap
 * JD-Core Version:    0.6.2
 */