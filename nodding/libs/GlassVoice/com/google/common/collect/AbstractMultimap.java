package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible
abstract class AbstractMultimap<K, V>
  implements Multimap<K, V>
{
  private transient Map<K, Collection<V>> asMap;
  private transient Collection<Map.Entry<K, V>> entries;
  private transient Set<K> keySet;
  private transient Multiset<K> keys;
  private transient Collection<V> values;

  public Map<K, Collection<V>> asMap()
  {
    Map localMap = this.asMap;
    if (localMap == null)
    {
      localMap = createAsMap();
      this.asMap = localMap;
    }
    return localMap;
  }

  public boolean containsEntry(@Nullable Object paramObject1, @Nullable Object paramObject2)
  {
    Collection localCollection = (Collection)asMap().get(paramObject1);
    return (localCollection != null) && (localCollection.contains(paramObject2));
  }

  public boolean containsValue(@Nullable Object paramObject)
  {
    Iterator localIterator = asMap().values().iterator();
    while (localIterator.hasNext())
      if (((Collection)localIterator.next()).contains(paramObject))
        return true;
    return false;
  }

  abstract Map<K, Collection<V>> createAsMap();

  Collection<Map.Entry<K, V>> createEntries()
  {
    if ((this instanceof SetMultimap))
      return new Multimaps.EntrySet()
      {
        public Iterator<Map.Entry<K, V>> iterator()
        {
          return AbstractMultimap.this.entryIterator();
        }

        Multimap<K, V> multimap()
        {
          return AbstractMultimap.this;
        }
      };
    return new Multimaps.Entries()
    {
      public Iterator<Map.Entry<K, V>> iterator()
      {
        return AbstractMultimap.this.entryIterator();
      }

      Multimap<K, V> multimap()
      {
        return AbstractMultimap.this;
      }
    };
  }

  Set<K> createKeySet()
  {
    return new Maps.KeySet()
    {
      Map<K, Collection<V>> map()
      {
        return AbstractMultimap.this.asMap();
      }
    };
  }

  Multiset<K> createKeys()
  {
    return new Multimaps.Keys(this);
  }

  Collection<V> createValues()
  {
    return new Multimaps.Values(this);
  }

  public Collection<Map.Entry<K, V>> entries()
  {
    Collection localCollection = this.entries;
    if (localCollection == null)
    {
      localCollection = createEntries();
      this.entries = localCollection;
    }
    return localCollection;
  }

  abstract Iterator<Map.Entry<K, V>> entryIterator();

  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this)
      return true;
    if ((paramObject instanceof Multimap))
    {
      Multimap localMultimap = (Multimap)paramObject;
      return asMap().equals(localMultimap.asMap());
    }
    return false;
  }

  public int hashCode()
  {
    return asMap().hashCode();
  }

  public boolean isEmpty()
  {
    return size() == 0;
  }

  public Set<K> keySet()
  {
    Set localSet = this.keySet;
    if (localSet == null)
    {
      localSet = createKeySet();
      this.keySet = localSet;
    }
    return localSet;
  }

  public Multiset<K> keys()
  {
    Multiset localMultiset = this.keys;
    if (localMultiset == null)
    {
      localMultiset = createKeys();
      this.keys = localMultiset;
    }
    return localMultiset;
  }

  public boolean put(@Nullable K paramK, @Nullable V paramV)
  {
    return get(paramK).add(paramV);
  }

  public boolean putAll(Multimap<? extends K, ? extends V> paramMultimap)
  {
    boolean bool = false;
    Iterator localIterator = paramMultimap.entries().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      bool |= put(localEntry.getKey(), localEntry.getValue());
    }
    return bool;
  }

  public boolean putAll(@Nullable K paramK, Iterable<? extends V> paramIterable)
  {
    Preconditions.checkNotNull(paramIterable);
    return (paramIterable.iterator().hasNext()) && (Iterables.addAll(get(paramK), paramIterable));
  }

  public boolean remove(@Nullable Object paramObject1, @Nullable Object paramObject2)
  {
    Collection localCollection = (Collection)asMap().get(paramObject1);
    return (localCollection != null) && (localCollection.remove(paramObject2));
  }

  public Collection<V> replaceValues(@Nullable K paramK, Iterable<? extends V> paramIterable)
  {
    Preconditions.checkNotNull(paramIterable);
    Collection localCollection = removeAll(paramK);
    putAll(paramK, paramIterable);
    return localCollection;
  }

  public String toString()
  {
    return asMap().toString();
  }

  public Collection<V> values()
  {
    Collection localCollection = this.values;
    if (localCollection == null)
    {
      localCollection = createValues();
      this.values = localCollection;
    }
    return localCollection;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.AbstractMultimap
 * JD-Core Version:    0.6.2
 */