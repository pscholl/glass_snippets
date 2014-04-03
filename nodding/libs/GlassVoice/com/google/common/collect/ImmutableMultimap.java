package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
public abstract class ImmutableMultimap<K, V> extends AbstractMultimap<K, V>
  implements Serializable
{
  private static final long serialVersionUID;
  final transient ImmutableMap<K, ? extends ImmutableCollection<V>> map;
  final transient int size;

  ImmutableMultimap(ImmutableMap<K, ? extends ImmutableCollection<V>> paramImmutableMap, int paramInt)
  {
    this.map = paramImmutableMap;
    this.size = paramInt;
  }

  public static <K, V> Builder<K, V> builder()
  {
    return new Builder();
  }

  public static <K, V> ImmutableMultimap<K, V> copyOf(Multimap<? extends K, ? extends V> paramMultimap)
  {
    if ((paramMultimap instanceof ImmutableMultimap))
    {
      ImmutableMultimap localImmutableMultimap = (ImmutableMultimap)paramMultimap;
      if (!localImmutableMultimap.isPartialView())
        return localImmutableMultimap;
    }
    return ImmutableListMultimap.copyOf(paramMultimap);
  }

  public static <K, V> ImmutableMultimap<K, V> of()
  {
    return ImmutableListMultimap.of();
  }

  public static <K, V> ImmutableMultimap<K, V> of(K paramK, V paramV)
  {
    return ImmutableListMultimap.of(paramK, paramV);
  }

  public static <K, V> ImmutableMultimap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2)
  {
    return ImmutableListMultimap.of(paramK1, paramV1, paramK2, paramV2);
  }

  public static <K, V> ImmutableMultimap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3)
  {
    return ImmutableListMultimap.of(paramK1, paramV1, paramK2, paramV2, paramK3, paramV3);
  }

  public static <K, V> ImmutableMultimap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4)
  {
    return ImmutableListMultimap.of(paramK1, paramV1, paramK2, paramV2, paramK3, paramV3, paramK4, paramV4);
  }

  public static <K, V> ImmutableMultimap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4, K paramK5, V paramV5)
  {
    return ImmutableListMultimap.of(paramK1, paramV1, paramK2, paramV2, paramK3, paramV3, paramK4, paramV4, paramK5, paramV5);
  }

  public ImmutableMap<K, Collection<V>> asMap()
  {
    return this.map;
  }

  @Deprecated
  public void clear()
  {
    throw new UnsupportedOperationException();
  }

  public boolean containsKey(@Nullable Object paramObject)
  {
    return this.map.containsKey(paramObject);
  }

  Map<K, Collection<V>> createAsMap()
  {
    throw new AssertionError("should never be called");
  }

  ImmutableCollection<Map.Entry<K, V>> createEntries()
  {
    return new EntryCollection(this);
  }

  ImmutableMultiset<K> createKeys()
  {
    return new Keys();
  }

  ImmutableCollection<V> createValues()
  {
    return new Values(this);
  }

  public ImmutableCollection<Map.Entry<K, V>> entries()
  {
    return (ImmutableCollection)super.entries();
  }

  UnmodifiableIterator<Map.Entry<K, V>> entryIterator()
  {
    return new UnmodifiableIterator()
    {
      K key;
      Iterator<V> valueIterator;

      public boolean hasNext()
      {
        return ((this.key != null) && (this.valueIterator.hasNext())) || (this.val$mapIterator.hasNext());
      }

      public Map.Entry<K, V> next()
      {
        if ((this.key == null) || (!this.valueIterator.hasNext()))
        {
          Map.Entry localEntry = (Map.Entry)this.val$mapIterator.next();
          this.key = localEntry.getKey();
          this.valueIterator = ((ImmutableCollection)localEntry.getValue()).iterator();
        }
        return Maps.immutableEntry(this.key, this.valueIterator.next());
      }
    };
  }

  public abstract ImmutableCollection<V> get(K paramK);

  public abstract ImmutableMultimap<V, K> inverse();

  boolean isPartialView()
  {
    return this.map.isPartialView();
  }

  public ImmutableSet<K> keySet()
  {
    return this.map.keySet();
  }

  public ImmutableMultiset<K> keys()
  {
    return (ImmutableMultiset)super.keys();
  }

  @Deprecated
  public boolean put(K paramK, V paramV)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public boolean putAll(Multimap<? extends K, ? extends V> paramMultimap)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public boolean putAll(K paramK, Iterable<? extends V> paramIterable)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public boolean remove(Object paramObject1, Object paramObject2)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public ImmutableCollection<V> removeAll(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public ImmutableCollection<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
  {
    throw new UnsupportedOperationException();
  }

  public int size()
  {
    return this.size;
  }

  public ImmutableCollection<V> values()
  {
    return (ImmutableCollection)super.values();
  }

  public static class Builder<K, V>
  {
    Multimap<K, V> builderMultimap = new ImmutableMultimap.BuilderMultimap();
    Comparator<? super K> keyComparator;
    Comparator<? super V> valueComparator;

    public ImmutableMultimap<K, V> build()
    {
      if (this.valueComparator != null)
      {
        Iterator localIterator2 = this.builderMultimap.asMap().values().iterator();
        while (localIterator2.hasNext())
          Collections.sort((List)localIterator2.next(), this.valueComparator);
      }
      if (this.keyComparator != null)
      {
        ImmutableMultimap.BuilderMultimap localBuilderMultimap = new ImmutableMultimap.BuilderMultimap();
        ArrayList localArrayList = Lists.newArrayList(this.builderMultimap.asMap().entrySet());
        Collections.sort(localArrayList, Ordering.from(this.keyComparator).onResultOf(new Function()
        {
          public K apply(Map.Entry<K, Collection<V>> paramAnonymousEntry)
          {
            return paramAnonymousEntry.getKey();
          }
        }));
        Iterator localIterator1 = localArrayList.iterator();
        while (localIterator1.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator1.next();
          localBuilderMultimap.putAll(localEntry.getKey(), (Iterable)localEntry.getValue());
        }
        this.builderMultimap = localBuilderMultimap;
      }
      return ImmutableMultimap.copyOf(this.builderMultimap);
    }

    public Builder<K, V> orderKeysBy(Comparator<? super K> paramComparator)
    {
      this.keyComparator = ((Comparator)Preconditions.checkNotNull(paramComparator));
      return this;
    }

    public Builder<K, V> orderValuesBy(Comparator<? super V> paramComparator)
    {
      this.valueComparator = ((Comparator)Preconditions.checkNotNull(paramComparator));
      return this;
    }

    public Builder<K, V> put(K paramK, V paramV)
    {
      this.builderMultimap.put(Preconditions.checkNotNull(paramK), Preconditions.checkNotNull(paramV));
      return this;
    }

    public Builder<K, V> put(Map.Entry<? extends K, ? extends V> paramEntry)
    {
      this.builderMultimap.put(Preconditions.checkNotNull(paramEntry.getKey()), Preconditions.checkNotNull(paramEntry.getValue()));
      return this;
    }

    public Builder<K, V> putAll(Multimap<? extends K, ? extends V> paramMultimap)
    {
      Iterator localIterator = paramMultimap.asMap().entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        putAll(localEntry.getKey(), (Iterable)localEntry.getValue());
      }
      return this;
    }

    public Builder<K, V> putAll(K paramK, Iterable<? extends V> paramIterable)
    {
      Collection localCollection = this.builderMultimap.get(Preconditions.checkNotNull(paramK));
      Iterator localIterator = paramIterable.iterator();
      while (localIterator.hasNext())
        localCollection.add(Preconditions.checkNotNull(localIterator.next()));
      return this;
    }

    public Builder<K, V> putAll(K paramK, V[] paramArrayOfV)
    {
      return putAll(paramK, Arrays.asList(paramArrayOfV));
    }
  }

  private static class BuilderMultimap<K, V> extends AbstractMapBasedMultimap<K, V>
  {
    private static final long serialVersionUID;

    BuilderMultimap()
    {
      super();
    }

    Collection<V> createCollection()
    {
      return Lists.newArrayList();
    }
  }

  private static class EntryCollection<K, V> extends ImmutableCollection<Map.Entry<K, V>>
  {
    private static final long serialVersionUID;
    final ImmutableMultimap<K, V> multimap;

    EntryCollection(ImmutableMultimap<K, V> paramImmutableMultimap)
    {
      this.multimap = paramImmutableMultimap;
    }

    public boolean contains(Object paramObject)
    {
      if ((paramObject instanceof Map.Entry))
      {
        Map.Entry localEntry = (Map.Entry)paramObject;
        return this.multimap.containsEntry(localEntry.getKey(), localEntry.getValue());
      }
      return false;
    }

    boolean isPartialView()
    {
      return this.multimap.isPartialView();
    }

    public UnmodifiableIterator<Map.Entry<K, V>> iterator()
    {
      return this.multimap.entryIterator();
    }

    public int size()
    {
      return this.multimap.size();
    }
  }

  @GwtIncompatible("java serialization is not supported")
  static class FieldSettersHolder
  {
    static final Serialization.FieldSetter<ImmutableMultimap> MAP_FIELD_SETTER = Serialization.getFieldSetter(ImmutableMultimap.class, "map");
    static final Serialization.FieldSetter<ImmutableMultimap> SIZE_FIELD_SETTER = Serialization.getFieldSetter(ImmutableMultimap.class, "size");
  }

  class Keys extends ImmutableMultiset<K>
  {
    Keys()
    {
    }

    public boolean contains(@Nullable Object paramObject)
    {
      return ImmutableMultimap.this.containsKey(paramObject);
    }

    public int count(@Nullable Object paramObject)
    {
      Collection localCollection = (Collection)ImmutableMultimap.this.map.get(paramObject);
      if (localCollection == null)
        return 0;
      return localCollection.size();
    }

    ImmutableSet<Multiset.Entry<K>> createEntrySet()
    {
      return new KeysEntrySet(null);
    }

    public Set<K> elementSet()
    {
      return ImmutableMultimap.this.keySet();
    }

    boolean isPartialView()
    {
      return true;
    }

    public int size()
    {
      return ImmutableMultimap.this.size();
    }

    private class KeysEntrySet extends ImmutableMultiset.EntrySet
    {
      private KeysEntrySet()
      {
        super();
      }

      ImmutableList<Multiset.Entry<K>> createAsList()
      {
        return new ImmutableAsList()
        {
          ImmutableCollection<Multiset.Entry<K>> delegateCollection()
          {
            return ImmutableMultimap.Keys.KeysEntrySet.this;
          }

          public Multiset.Entry<K> get(int paramAnonymousInt)
          {
            Map.Entry localEntry = (Map.Entry)this.val$mapEntries.get(paramAnonymousInt);
            return Multisets.immutableEntry(localEntry.getKey(), ((Collection)localEntry.getValue()).size());
          }
        };
      }

      public UnmodifiableIterator<Multiset.Entry<K>> iterator()
      {
        return asList().iterator();
      }

      public int size()
      {
        return ImmutableMultimap.this.keySet().size();
      }
    }
  }

  private static class Values<V> extends ImmutableCollection<V>
  {
    private static final long serialVersionUID;
    final ImmutableMultimap<?, V> multimap;

    Values(ImmutableMultimap<?, V> paramImmutableMultimap)
    {
      this.multimap = paramImmutableMultimap;
    }

    boolean isPartialView()
    {
      return true;
    }

    public UnmodifiableIterator<V> iterator()
    {
      return Maps.valueIterator(this.multimap.entries().iterator());
    }

    public int size()
    {
      return this.multimap.size();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableMultimap
 * JD-Core Version:    0.6.2
 */