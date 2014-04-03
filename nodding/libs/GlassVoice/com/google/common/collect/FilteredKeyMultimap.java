package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible
class FilteredKeyMultimap<K, V> extends FilteredMultimap<K, V>
{
  final Predicate<? super K> keyPredicate;

  FilteredKeyMultimap(Multimap<K, V> paramMultimap, Predicate<? super K> paramPredicate)
  {
    super(paramMultimap);
    this.keyPredicate = ((Predicate)Preconditions.checkNotNull(paramPredicate));
  }

  public void clear()
  {
    keySet().clear();
  }

  public boolean containsKey(@Nullable Object paramObject)
  {
    if (this.unfiltered.containsKey(paramObject))
      return this.keyPredicate.apply(paramObject);
    return false;
  }

  Map<K, Collection<V>> createAsMap()
  {
    return Maps.filterKeys(this.unfiltered.asMap(), this.keyPredicate);
  }

  Collection<Map.Entry<K, V>> createEntries()
  {
    return new Multimaps.Entries()
    {
      public Iterator<Map.Entry<K, V>> iterator()
      {
        return FilteredKeyMultimap.this.entryIterator();
      }

      Multimap<K, V> multimap()
      {
        return FilteredKeyMultimap.this;
      }

      public boolean remove(@Nullable Object paramAnonymousObject)
      {
        if ((paramAnonymousObject instanceof Map.Entry))
        {
          Map.Entry localEntry = (Map.Entry)paramAnonymousObject;
          if ((FilteredKeyMultimap.this.unfiltered.containsEntry(localEntry.getKey(), localEntry.getValue())) && (FilteredKeyMultimap.this.keyPredicate.apply(localEntry.getKey())))
            return FilteredKeyMultimap.this.unfiltered.remove(localEntry.getKey(), localEntry.getValue());
        }
        return false;
      }

      public boolean removeAll(Collection<?> paramAnonymousCollection)
      {
        Predicate localPredicate = Predicates.and(Predicates.compose(FilteredKeyMultimap.this.keyPredicate, Maps.keyFunction()), Predicates.in(paramAnonymousCollection));
        return Iterators.removeIf(FilteredKeyMultimap.this.unfiltered.entries().iterator(), localPredicate);
      }

      public boolean retainAll(Collection<?> paramAnonymousCollection)
      {
        Predicate localPredicate = Predicates.and(Predicates.compose(FilteredKeyMultimap.this.keyPredicate, Maps.keyFunction()), Predicates.not(Predicates.in(paramAnonymousCollection)));
        return Iterators.removeIf(FilteredKeyMultimap.this.unfiltered.entries().iterator(), localPredicate);
      }
    };
  }

  Set<K> createKeySet()
  {
    return Sets.filter(this.unfiltered.keySet(), this.keyPredicate);
  }

  Multiset<K> createKeys()
  {
    return Multisets.filter(this.unfiltered.keys(), this.keyPredicate);
  }

  Iterator<Map.Entry<K, V>> entryIterator()
  {
    return Iterators.filter(this.unfiltered.entries().iterator(), Predicates.compose(this.keyPredicate, Maps.keyFunction()));
  }

  Predicate<? super Map.Entry<K, V>> entryPredicate()
  {
    return Predicates.compose(this.keyPredicate, Maps.keyFunction());
  }

  public Collection<V> get(K paramK)
  {
    if (this.keyPredicate.apply(paramK))
      return this.unfiltered.get(paramK);
    if ((this.unfiltered instanceof SetMultimap))
      return new AddRejectingSet(paramK);
    return new AddRejectingList(paramK);
  }

  public Collection<V> removeAll(Object paramObject)
  {
    if (containsKey(paramObject))
      return this.unfiltered.removeAll(paramObject);
    return unmodifiableEmptyCollection();
  }

  public int size()
  {
    int i = 0;
    Iterator localIterator = asMap().values().iterator();
    while (localIterator.hasNext())
      i += ((Collection)localIterator.next()).size();
    return i;
  }

  Collection<V> unmodifiableEmptyCollection()
  {
    if ((this.unfiltered instanceof SetMultimap))
      return ImmutableSet.of();
    return ImmutableList.of();
  }

  static class AddRejectingList<K, V> extends ForwardingList<V>
  {
    final K key;

    AddRejectingList(K paramK)
    {
      this.key = paramK;
    }

    public void add(int paramInt, V paramV)
    {
      Preconditions.checkPositionIndex(paramInt, 0);
      throw new IllegalArgumentException("Key does not satisfy predicate: " + this.key);
    }

    public boolean add(V paramV)
    {
      add(0, paramV);
      return true;
    }

    public boolean addAll(int paramInt, Collection<? extends V> paramCollection)
    {
      Preconditions.checkNotNull(paramCollection);
      Preconditions.checkPositionIndex(paramInt, 0);
      throw new IllegalArgumentException("Key does not satisfy predicate: " + this.key);
    }

    public boolean addAll(Collection<? extends V> paramCollection)
    {
      addAll(0, paramCollection);
      return true;
    }

    protected List<V> delegate()
    {
      return Collections.emptyList();
    }
  }

  static class AddRejectingSet<K, V> extends ForwardingSet<V>
  {
    final K key;

    AddRejectingSet(K paramK)
    {
      this.key = paramK;
    }

    public boolean add(V paramV)
    {
      throw new IllegalArgumentException("Key does not satisfy predicate: " + this.key);
    }

    public boolean addAll(Collection<? extends V> paramCollection)
    {
      Preconditions.checkNotNull(paramCollection);
      throw new IllegalArgumentException("Key does not satisfy predicate: " + this.key);
    }

    protected Set<V> delegate()
    {
      return Collections.emptySet();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.FilteredKeyMultimap
 * JD-Core Version:    0.6.2
 */