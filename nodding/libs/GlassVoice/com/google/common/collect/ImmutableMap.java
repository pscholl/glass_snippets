package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
public abstract class ImmutableMap<K, V>
  implements Map<K, V>, Serializable
{
  private transient ImmutableSet<Map.Entry<K, V>> entrySet;
  private transient ImmutableSet<K> keySet;
  private transient ImmutableSetMultimap<K, V> multimapView;
  private transient ImmutableCollection<V> values;

  public static <K, V> Builder<K, V> builder()
  {
    return new Builder();
  }

  public static <K, V> ImmutableMap<K, V> copyOf(Map<? extends K, ? extends V> paramMap)
  {
    if (((paramMap instanceof ImmutableMap)) && (!(paramMap instanceof ImmutableSortedMap)))
    {
      ImmutableMap localImmutableMap = (ImmutableMap)paramMap;
      if (!localImmutableMap.isPartialView())
        return localImmutableMap;
    }
    else if ((paramMap instanceof EnumMap))
    {
      EnumMap localEnumMap = (EnumMap)paramMap;
      Iterator localIterator = localEnumMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        Preconditions.checkNotNull(localEntry.getKey());
        Preconditions.checkNotNull(localEntry.getValue());
      }
      return ImmutableEnumMap.asImmutable(new EnumMap(localEnumMap));
    }
    Map.Entry[] arrayOfEntry = (Map.Entry[])paramMap.entrySet().toArray(new Map.Entry[0]);
    int i;
    switch (arrayOfEntry.length)
    {
    default:
      i = 0;
    case 0:
    case 1:
    }
    while (i < arrayOfEntry.length)
    {
      arrayOfEntry[i] = entryOf(arrayOfEntry[i].getKey(), arrayOfEntry[i].getValue());
      i++;
      continue;
      return of();
      return new SingletonImmutableBiMap(entryOf(arrayOfEntry[0].getKey(), arrayOfEntry[0].getValue()));
    }
    return new RegularImmutableMap(arrayOfEntry);
  }

  private ImmutableSetMultimap<K, V> createMultimapView()
  {
    ImmutableMap localImmutableMap = viewMapValuesAsSingletonSets();
    return new ImmutableSetMultimap(localImmutableMap, localImmutableMap.size(), null);
  }

  static <K, V> Map.Entry<K, V> entryOf(K paramK, V paramV)
  {
    Preconditions.checkNotNull(paramK, "null key in entry: null=%s", new Object[] { paramV });
    Preconditions.checkNotNull(paramV, "null value in entry: %s=null", new Object[] { paramK });
    return Maps.immutableEntry(paramK, paramV);
  }

  public static <K, V> ImmutableMap<K, V> of()
  {
    return ImmutableBiMap.of();
  }

  public static <K, V> ImmutableMap<K, V> of(K paramK, V paramV)
  {
    return ImmutableBiMap.of(paramK, paramV);
  }

  public static <K, V> ImmutableMap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2)
  {
    Map.Entry[] arrayOfEntry = new Map.Entry[2];
    arrayOfEntry[0] = entryOf(paramK1, paramV1);
    arrayOfEntry[1] = entryOf(paramK2, paramV2);
    return new RegularImmutableMap(arrayOfEntry);
  }

  public static <K, V> ImmutableMap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3)
  {
    Map.Entry[] arrayOfEntry = new Map.Entry[3];
    arrayOfEntry[0] = entryOf(paramK1, paramV1);
    arrayOfEntry[1] = entryOf(paramK2, paramV2);
    arrayOfEntry[2] = entryOf(paramK3, paramV3);
    return new RegularImmutableMap(arrayOfEntry);
  }

  public static <K, V> ImmutableMap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4)
  {
    Map.Entry[] arrayOfEntry = new Map.Entry[4];
    arrayOfEntry[0] = entryOf(paramK1, paramV1);
    arrayOfEntry[1] = entryOf(paramK2, paramV2);
    arrayOfEntry[2] = entryOf(paramK3, paramV3);
    arrayOfEntry[3] = entryOf(paramK4, paramV4);
    return new RegularImmutableMap(arrayOfEntry);
  }

  public static <K, V> ImmutableMap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4, K paramK5, V paramV5)
  {
    Map.Entry[] arrayOfEntry = new Map.Entry[5];
    arrayOfEntry[0] = entryOf(paramK1, paramV1);
    arrayOfEntry[1] = entryOf(paramK2, paramV2);
    arrayOfEntry[2] = entryOf(paramK3, paramV3);
    arrayOfEntry[3] = entryOf(paramK4, paramV4);
    arrayOfEntry[4] = entryOf(paramK5, paramV5);
    return new RegularImmutableMap(arrayOfEntry);
  }

  private ImmutableMap<K, ImmutableSet<V>> viewMapValuesAsSingletonSets()
  {
    return new ImmutableMap()
    {
      public boolean containsKey(@Nullable Object paramAnonymousObject)
      {
        return ImmutableMap.this.containsKey(paramAnonymousObject);
      }

      ImmutableSet<Map.Entry<K, ImmutableSet<V>>> createEntrySet()
      {
        return new ImmutableMapEntrySet()
        {
          public UnmodifiableIterator<Map.Entry<K, ImmutableSet<V>>> iterator()
          {
            return new UnmodifiableIterator()
            {
              public boolean hasNext()
              {
                return this.val$backingIterator.hasNext();
              }

              public Map.Entry<K, ImmutableSet<V>> next()
              {
                return new AbstractMapEntry()
                {
                  public K getKey()
                  {
                    return this.val$backingEntry.getKey();
                  }

                  public ImmutableSet<V> getValue()
                  {
                    return ImmutableSet.of(this.val$backingEntry.getValue());
                  }
                };
              }
            };
          }

          ImmutableMap<K, ImmutableSet<V>> map()
          {
            return ImmutableMap.1MapViewOfValuesAsSingletonSets.this;
          }
        };
      }

      public ImmutableSet<V> get(@Nullable Object paramAnonymousObject)
      {
        Object localObject = ImmutableMap.this.get(paramAnonymousObject);
        if (localObject == null)
          return null;
        return ImmutableSet.of(localObject);
      }

      boolean isPartialView()
      {
        return false;
      }

      public int size()
      {
        return ImmutableMap.this.size();
      }
    };
  }

  @Beta
  public ImmutableSetMultimap<K, V> asMultimap()
  {
    ImmutableSetMultimap localImmutableSetMultimap = this.multimapView;
    if (localImmutableSetMultimap == null)
    {
      localImmutableSetMultimap = createMultimapView();
      this.multimapView = localImmutableSetMultimap;
    }
    return localImmutableSetMultimap;
  }

  @Deprecated
  public final void clear()
  {
    throw new UnsupportedOperationException();
  }

  public boolean containsKey(@Nullable Object paramObject)
  {
    return get(paramObject) != null;
  }

  public boolean containsValue(@Nullable Object paramObject)
  {
    return (paramObject != null) && (Maps.containsValueImpl(this, paramObject));
  }

  abstract ImmutableSet<Map.Entry<K, V>> createEntrySet();

  ImmutableSet<K> createKeySet()
  {
    return new ImmutableMapKeySet(this);
  }

  public ImmutableSet<Map.Entry<K, V>> entrySet()
  {
    ImmutableSet localImmutableSet = this.entrySet;
    if (localImmutableSet == null)
    {
      localImmutableSet = createEntrySet();
      this.entrySet = localImmutableSet;
    }
    return localImmutableSet;
  }

  public boolean equals(@Nullable Object paramObject)
  {
    return Maps.equalsImpl(this, paramObject);
  }

  public abstract V get(@Nullable Object paramObject);

  public int hashCode()
  {
    return entrySet().hashCode();
  }

  public boolean isEmpty()
  {
    return size() == 0;
  }

  abstract boolean isPartialView();

  public ImmutableSet<K> keySet()
  {
    ImmutableSet localImmutableSet = this.keySet;
    if (localImmutableSet == null)
    {
      localImmutableSet = createKeySet();
      this.keySet = localImmutableSet;
    }
    return localImmutableSet;
  }

  @Deprecated
  public final V put(K paramK, V paramV)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public final void putAll(Map<? extends K, ? extends V> paramMap)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public final V remove(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }

  public String toString()
  {
    return Maps.toStringImpl(this);
  }

  public ImmutableCollection<V> values()
  {
    Object localObject = this.values;
    if (localObject == null)
    {
      localObject = new ImmutableMapValues(this);
      this.values = ((ImmutableCollection)localObject);
    }
    return localObject;
  }

  Object writeReplace()
  {
    return new SerializedForm(this);
  }

  public static class Builder<K, V>
  {
    final ArrayList<Map.Entry<K, V>> entries = Lists.newArrayList();

    private static <K, V> ImmutableMap<K, V> fromEntryList(List<Map.Entry<K, V>> paramList)
    {
      switch (paramList.size())
      {
      default:
        return new RegularImmutableMap((Map.Entry[])paramList.toArray(new Map.Entry[paramList.size()]));
      case 0:
        return ImmutableMap.of();
      case 1:
      }
      return new SingletonImmutableBiMap((Map.Entry)Iterables.getOnlyElement(paramList));
    }

    public ImmutableMap<K, V> build()
    {
      return fromEntryList(this.entries);
    }

    public Builder<K, V> put(K paramK, V paramV)
    {
      this.entries.add(ImmutableMap.entryOf(paramK, paramV));
      return this;
    }

    public Builder<K, V> put(Map.Entry<? extends K, ? extends V> paramEntry)
    {
      Object localObject1 = paramEntry.getKey();
      Object localObject2 = paramEntry.getValue();
      if ((paramEntry instanceof ImmutableEntry))
      {
        Preconditions.checkNotNull(localObject1);
        Preconditions.checkNotNull(localObject2);
        this.entries.add(paramEntry);
        return this;
      }
      this.entries.add(ImmutableMap.entryOf(localObject1, localObject2));
      return this;
    }

    public Builder<K, V> putAll(Map<? extends K, ? extends V> paramMap)
    {
      this.entries.ensureCapacity(this.entries.size() + paramMap.size());
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        put(localEntry.getKey(), localEntry.getValue());
      }
      return this;
    }
  }

  static class SerializedForm
    implements Serializable
  {
    private static final long serialVersionUID;
    private final Object[] keys;
    private final Object[] values;

    SerializedForm(ImmutableMap<?, ?> paramImmutableMap)
    {
      this.keys = new Object[paramImmutableMap.size()];
      this.values = new Object[paramImmutableMap.size()];
      int i = 0;
      Iterator localIterator = paramImmutableMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        this.keys[i] = localEntry.getKey();
        this.values[i] = localEntry.getValue();
        i++;
      }
    }

    Object createMap(ImmutableMap.Builder<Object, Object> paramBuilder)
    {
      for (int i = 0; i < this.keys.length; i++)
        paramBuilder.put(this.keys[i], this.values[i]);
      return paramBuilder.build();
    }

    Object readResolve()
    {
      return createMap(new ImmutableMap.Builder());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableMap
 * JD-Core Version:    0.6.2
 */