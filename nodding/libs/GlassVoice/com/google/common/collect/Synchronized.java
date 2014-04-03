package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
final class Synchronized
{
  static <K, V> BiMap<K, V> biMap(BiMap<K, V> paramBiMap, @Nullable Object paramObject)
  {
    if (((paramBiMap instanceof SynchronizedBiMap)) || ((paramBiMap instanceof ImmutableBiMap)))
      return paramBiMap;
    return new SynchronizedBiMap(paramBiMap, paramObject, null, null);
  }

  private static <E> Collection<E> collection(Collection<E> paramCollection, @Nullable Object paramObject)
  {
    return new SynchronizedCollection(paramCollection, paramObject, null);
  }

  private static <E> List<E> list(List<E> paramList, @Nullable Object paramObject)
  {
    if ((paramList instanceof RandomAccess))
      return new SynchronizedRandomAccessList(paramList, paramObject);
    return new SynchronizedList(paramList, paramObject);
  }

  static <K, V> ListMultimap<K, V> listMultimap(ListMultimap<K, V> paramListMultimap, @Nullable Object paramObject)
  {
    if (((paramListMultimap instanceof SynchronizedListMultimap)) || ((paramListMultimap instanceof ImmutableListMultimap)))
      return paramListMultimap;
    return new SynchronizedListMultimap(paramListMultimap, paramObject);
  }

  @VisibleForTesting
  static <K, V> Map<K, V> map(Map<K, V> paramMap, @Nullable Object paramObject)
  {
    return new SynchronizedMap(paramMap, paramObject);
  }

  static <K, V> Multimap<K, V> multimap(Multimap<K, V> paramMultimap, @Nullable Object paramObject)
  {
    if (((paramMultimap instanceof SynchronizedMultimap)) || ((paramMultimap instanceof ImmutableMultimap)))
      return paramMultimap;
    return new SynchronizedMultimap(paramMultimap, paramObject);
  }

  static <E> Multiset<E> multiset(Multiset<E> paramMultiset, @Nullable Object paramObject)
  {
    if (((paramMultiset instanceof SynchronizedMultiset)) || ((paramMultiset instanceof ImmutableMultiset)))
      return paramMultiset;
    return new SynchronizedMultiset(paramMultiset, paramObject);
  }

  static <E> Queue<E> queue(Queue<E> paramQueue, @Nullable Object paramObject)
  {
    if ((paramQueue instanceof SynchronizedQueue))
      return paramQueue;
    return new SynchronizedQueue(paramQueue, paramObject);
  }

  @VisibleForTesting
  static <E> Set<E> set(Set<E> paramSet, @Nullable Object paramObject)
  {
    return new SynchronizedSet(paramSet, paramObject);
  }

  static <K, V> SetMultimap<K, V> setMultimap(SetMultimap<K, V> paramSetMultimap, @Nullable Object paramObject)
  {
    if (((paramSetMultimap instanceof SynchronizedSetMultimap)) || ((paramSetMultimap instanceof ImmutableSetMultimap)))
      return paramSetMultimap;
    return new SynchronizedSetMultimap(paramSetMultimap, paramObject);
  }

  static <K, V> SortedMap<K, V> sortedMap(SortedMap<K, V> paramSortedMap, @Nullable Object paramObject)
  {
    return new SynchronizedSortedMap(paramSortedMap, paramObject);
  }

  private static <E> SortedSet<E> sortedSet(SortedSet<E> paramSortedSet, @Nullable Object paramObject)
  {
    return new SynchronizedSortedSet(paramSortedSet, paramObject);
  }

  static <K, V> SortedSetMultimap<K, V> sortedSetMultimap(SortedSetMultimap<K, V> paramSortedSetMultimap, @Nullable Object paramObject)
  {
    if ((paramSortedSetMultimap instanceof SynchronizedSortedSetMultimap))
      return paramSortedSetMultimap;
    return new SynchronizedSortedSetMultimap(paramSortedSetMultimap, paramObject);
  }

  private static <E> Collection<E> typePreservingCollection(Collection<E> paramCollection, @Nullable Object paramObject)
  {
    if ((paramCollection instanceof SortedSet))
      return sortedSet((SortedSet)paramCollection, paramObject);
    if ((paramCollection instanceof Set))
      return set((Set)paramCollection, paramObject);
    if ((paramCollection instanceof List))
      return list((List)paramCollection, paramObject);
    return collection(paramCollection, paramObject);
  }

  private static <E> Set<E> typePreservingSet(Set<E> paramSet, @Nullable Object paramObject)
  {
    if ((paramSet instanceof SortedSet))
      return sortedSet((SortedSet)paramSet, paramObject);
    return set(paramSet, paramObject);
  }

  private static class SynchronizedAsMap<K, V> extends Synchronized.SynchronizedMap<K, Collection<V>>
  {
    private static final long serialVersionUID;
    transient Set<Map.Entry<K, Collection<V>>> asMapEntrySet;
    transient Collection<Collection<V>> asMapValues;

    SynchronizedAsMap(Map<K, Collection<V>> paramMap, @Nullable Object paramObject)
    {
      super(paramObject);
    }

    public boolean containsValue(Object paramObject)
    {
      return values().contains(paramObject);
    }

    public Set<Map.Entry<K, Collection<V>>> entrySet()
    {
      synchronized (this.mutex)
      {
        if (this.asMapEntrySet == null)
          this.asMapEntrySet = new Synchronized.SynchronizedAsMapEntries(delegate().entrySet(), this.mutex);
        Set localSet = this.asMapEntrySet;
        return localSet;
      }
    }

    public Collection<V> get(Object paramObject)
    {
      synchronized (this.mutex)
      {
        Collection localCollection = (Collection)super.get(paramObject);
        if (localCollection == null)
        {
          localObject3 = null;
          return localObject3;
        }
        Object localObject3 = Synchronized.typePreservingCollection(localCollection, this.mutex);
      }
    }

    public Collection<Collection<V>> values()
    {
      synchronized (this.mutex)
      {
        if (this.asMapValues == null)
          this.asMapValues = new Synchronized.SynchronizedAsMapValues(delegate().values(), this.mutex);
        Collection localCollection = this.asMapValues;
        return localCollection;
      }
    }
  }

  private static class SynchronizedAsMapEntries<K, V> extends Synchronized.SynchronizedSet<Map.Entry<K, Collection<V>>>
  {
    private static final long serialVersionUID;

    SynchronizedAsMapEntries(Set<Map.Entry<K, Collection<V>>> paramSet, @Nullable Object paramObject)
    {
      super(paramObject);
    }

    public boolean contains(Object paramObject)
    {
      synchronized (this.mutex)
      {
        boolean bool = Maps.containsEntryImpl(delegate(), paramObject);
        return bool;
      }
    }

    public boolean containsAll(Collection<?> paramCollection)
    {
      synchronized (this.mutex)
      {
        boolean bool = Collections2.containsAllImpl(delegate(), paramCollection);
        return bool;
      }
    }

    public boolean equals(Object paramObject)
    {
      if (paramObject == this)
        return true;
      synchronized (this.mutex)
      {
        boolean bool = Sets.equalsImpl(delegate(), paramObject);
        return bool;
      }
    }

    public Iterator<Map.Entry<K, Collection<V>>> iterator()
    {
      return new ForwardingIterator()
      {
        protected Iterator<Map.Entry<K, Collection<V>>> delegate()
        {
          return this.val$iterator;
        }

        public Map.Entry<K, Collection<V>> next()
        {
          return new ForwardingMapEntry()
          {
            protected Map.Entry<K, Collection<V>> delegate()
            {
              return this.val$entry;
            }

            public Collection<V> getValue()
            {
              return Synchronized.typePreservingCollection((Collection)this.val$entry.getValue(), Synchronized.SynchronizedAsMapEntries.this.mutex);
            }
          };
        }
      };
    }

    public boolean remove(Object paramObject)
    {
      synchronized (this.mutex)
      {
        boolean bool = Maps.removeEntryImpl(delegate(), paramObject);
        return bool;
      }
    }

    public boolean removeAll(Collection<?> paramCollection)
    {
      synchronized (this.mutex)
      {
        boolean bool = Iterators.removeAll(delegate().iterator(), paramCollection);
        return bool;
      }
    }

    public boolean retainAll(Collection<?> paramCollection)
    {
      synchronized (this.mutex)
      {
        boolean bool = Iterators.retainAll(delegate().iterator(), paramCollection);
        return bool;
      }
    }

    public Object[] toArray()
    {
      synchronized (this.mutex)
      {
        Object[] arrayOfObject = ObjectArrays.toArrayImpl(delegate());
        return arrayOfObject;
      }
    }

    public <T> T[] toArray(T[] paramArrayOfT)
    {
      synchronized (this.mutex)
      {
        Object[] arrayOfObject = ObjectArrays.toArrayImpl(delegate(), paramArrayOfT);
        return arrayOfObject;
      }
    }
  }

  private static class SynchronizedAsMapValues<V> extends Synchronized.SynchronizedCollection<Collection<V>>
  {
    private static final long serialVersionUID;

    SynchronizedAsMapValues(Collection<Collection<V>> paramCollection, @Nullable Object paramObject)
    {
      super(paramObject, null);
    }

    public Iterator<Collection<V>> iterator()
    {
      return new ForwardingIterator()
      {
        protected Iterator<Collection<V>> delegate()
        {
          return this.val$iterator;
        }

        public Collection<V> next()
        {
          return Synchronized.typePreservingCollection((Collection)super.next(), Synchronized.SynchronizedAsMapValues.this.mutex);
        }
      };
    }
  }

  @VisibleForTesting
  static class SynchronizedBiMap<K, V> extends Synchronized.SynchronizedMap<K, V>
    implements BiMap<K, V>, Serializable
  {
    private static final long serialVersionUID;
    private transient BiMap<V, K> inverse;
    private transient Set<V> valueSet;

    private SynchronizedBiMap(BiMap<K, V> paramBiMap, @Nullable Object paramObject, @Nullable BiMap<V, K> paramBiMap1)
    {
      super(paramObject);
      this.inverse = paramBiMap1;
    }

    BiMap<K, V> delegate()
    {
      return (BiMap)super.delegate();
    }

    public V forcePut(K paramK, V paramV)
    {
      synchronized (this.mutex)
      {
        Object localObject3 = delegate().forcePut(paramK, paramV);
        return localObject3;
      }
    }

    public BiMap<V, K> inverse()
    {
      synchronized (this.mutex)
      {
        if (this.inverse == null)
          this.inverse = new SynchronizedBiMap(delegate().inverse(), this.mutex, this);
        BiMap localBiMap = this.inverse;
        return localBiMap;
      }
    }

    public Set<V> values()
    {
      synchronized (this.mutex)
      {
        if (this.valueSet == null)
          this.valueSet = Synchronized.set(delegate().values(), this.mutex);
        Set localSet = this.valueSet;
        return localSet;
      }
    }
  }

  @VisibleForTesting
  static class SynchronizedCollection<E> extends Synchronized.SynchronizedObject
    implements Collection<E>
  {
    private static final long serialVersionUID;

    private SynchronizedCollection(Collection<E> paramCollection, @Nullable Object paramObject)
    {
      super(paramObject);
    }

    public boolean add(E paramE)
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().add(paramE);
        return bool;
      }
    }

    public boolean addAll(Collection<? extends E> paramCollection)
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().addAll(paramCollection);
        return bool;
      }
    }

    public void clear()
    {
      synchronized (this.mutex)
      {
        delegate().clear();
        return;
      }
    }

    public boolean contains(Object paramObject)
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().contains(paramObject);
        return bool;
      }
    }

    public boolean containsAll(Collection<?> paramCollection)
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().containsAll(paramCollection);
        return bool;
      }
    }

    Collection<E> delegate()
    {
      return (Collection)super.delegate();
    }

    public boolean isEmpty()
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().isEmpty();
        return bool;
      }
    }

    public Iterator<E> iterator()
    {
      return delegate().iterator();
    }

    public boolean remove(Object paramObject)
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().remove(paramObject);
        return bool;
      }
    }

    public boolean removeAll(Collection<?> paramCollection)
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().removeAll(paramCollection);
        return bool;
      }
    }

    public boolean retainAll(Collection<?> paramCollection)
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().retainAll(paramCollection);
        return bool;
      }
    }

    public int size()
    {
      synchronized (this.mutex)
      {
        int i = delegate().size();
        return i;
      }
    }

    public Object[] toArray()
    {
      synchronized (this.mutex)
      {
        Object[] arrayOfObject = delegate().toArray();
        return arrayOfObject;
      }
    }

    public <T> T[] toArray(T[] paramArrayOfT)
    {
      synchronized (this.mutex)
      {
        Object[] arrayOfObject = delegate().toArray(paramArrayOfT);
        return arrayOfObject;
      }
    }
  }

  private static class SynchronizedList<E> extends Synchronized.SynchronizedCollection<E>
    implements List<E>
  {
    private static final long serialVersionUID;

    SynchronizedList(List<E> paramList, @Nullable Object paramObject)
    {
      super(paramObject, null);
    }

    public void add(int paramInt, E paramE)
    {
      synchronized (this.mutex)
      {
        delegate().add(paramInt, paramE);
        return;
      }
    }

    public boolean addAll(int paramInt, Collection<? extends E> paramCollection)
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().addAll(paramInt, paramCollection);
        return bool;
      }
    }

    List<E> delegate()
    {
      return (List)super.delegate();
    }

    public boolean equals(Object paramObject)
    {
      if (paramObject == this)
        return true;
      synchronized (this.mutex)
      {
        boolean bool = delegate().equals(paramObject);
        return bool;
      }
    }

    public E get(int paramInt)
    {
      synchronized (this.mutex)
      {
        Object localObject3 = delegate().get(paramInt);
        return localObject3;
      }
    }

    public int hashCode()
    {
      synchronized (this.mutex)
      {
        int i = delegate().hashCode();
        return i;
      }
    }

    public int indexOf(Object paramObject)
    {
      synchronized (this.mutex)
      {
        int i = delegate().indexOf(paramObject);
        return i;
      }
    }

    public int lastIndexOf(Object paramObject)
    {
      synchronized (this.mutex)
      {
        int i = delegate().lastIndexOf(paramObject);
        return i;
      }
    }

    public ListIterator<E> listIterator()
    {
      return delegate().listIterator();
    }

    public ListIterator<E> listIterator(int paramInt)
    {
      return delegate().listIterator(paramInt);
    }

    public E remove(int paramInt)
    {
      synchronized (this.mutex)
      {
        Object localObject3 = delegate().remove(paramInt);
        return localObject3;
      }
    }

    public E set(int paramInt, E paramE)
    {
      synchronized (this.mutex)
      {
        Object localObject3 = delegate().set(paramInt, paramE);
        return localObject3;
      }
    }

    public List<E> subList(int paramInt1, int paramInt2)
    {
      synchronized (this.mutex)
      {
        List localList = Synchronized.list(delegate().subList(paramInt1, paramInt2), this.mutex);
        return localList;
      }
    }
  }

  private static class SynchronizedListMultimap<K, V> extends Synchronized.SynchronizedMultimap<K, V>
    implements ListMultimap<K, V>
  {
    private static final long serialVersionUID;

    SynchronizedListMultimap(ListMultimap<K, V> paramListMultimap, @Nullable Object paramObject)
    {
      super(paramObject);
    }

    ListMultimap<K, V> delegate()
    {
      return (ListMultimap)super.delegate();
    }

    public List<V> get(K paramK)
    {
      synchronized (this.mutex)
      {
        List localList = Synchronized.list(delegate().get(paramK), this.mutex);
        return localList;
      }
    }

    public List<V> removeAll(Object paramObject)
    {
      synchronized (this.mutex)
      {
        List localList = delegate().removeAll(paramObject);
        return localList;
      }
    }

    public List<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
    {
      synchronized (this.mutex)
      {
        List localList = delegate().replaceValues(paramK, paramIterable);
        return localList;
      }
    }
  }

  private static class SynchronizedMap<K, V> extends Synchronized.SynchronizedObject
    implements Map<K, V>
  {
    private static final long serialVersionUID;
    transient Set<Map.Entry<K, V>> entrySet;
    transient Set<K> keySet;
    transient Collection<V> values;

    SynchronizedMap(Map<K, V> paramMap, @Nullable Object paramObject)
    {
      super(paramObject);
    }

    public void clear()
    {
      synchronized (this.mutex)
      {
        delegate().clear();
        return;
      }
    }

    public boolean containsKey(Object paramObject)
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().containsKey(paramObject);
        return bool;
      }
    }

    public boolean containsValue(Object paramObject)
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().containsValue(paramObject);
        return bool;
      }
    }

    Map<K, V> delegate()
    {
      return (Map)super.delegate();
    }

    public Set<Map.Entry<K, V>> entrySet()
    {
      synchronized (this.mutex)
      {
        if (this.entrySet == null)
          this.entrySet = Synchronized.set(delegate().entrySet(), this.mutex);
        Set localSet = this.entrySet;
        return localSet;
      }
    }

    public boolean equals(Object paramObject)
    {
      if (paramObject == this)
        return true;
      synchronized (this.mutex)
      {
        boolean bool = delegate().equals(paramObject);
        return bool;
      }
    }

    public V get(Object paramObject)
    {
      synchronized (this.mutex)
      {
        Object localObject3 = delegate().get(paramObject);
        return localObject3;
      }
    }

    public int hashCode()
    {
      synchronized (this.mutex)
      {
        int i = delegate().hashCode();
        return i;
      }
    }

    public boolean isEmpty()
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().isEmpty();
        return bool;
      }
    }

    public Set<K> keySet()
    {
      synchronized (this.mutex)
      {
        if (this.keySet == null)
          this.keySet = Synchronized.set(delegate().keySet(), this.mutex);
        Set localSet = this.keySet;
        return localSet;
      }
    }

    public V put(K paramK, V paramV)
    {
      synchronized (this.mutex)
      {
        Object localObject3 = delegate().put(paramK, paramV);
        return localObject3;
      }
    }

    public void putAll(Map<? extends K, ? extends V> paramMap)
    {
      synchronized (this.mutex)
      {
        delegate().putAll(paramMap);
        return;
      }
    }

    public V remove(Object paramObject)
    {
      synchronized (this.mutex)
      {
        Object localObject3 = delegate().remove(paramObject);
        return localObject3;
      }
    }

    public int size()
    {
      synchronized (this.mutex)
      {
        int i = delegate().size();
        return i;
      }
    }

    public Collection<V> values()
    {
      synchronized (this.mutex)
      {
        if (this.values == null)
          this.values = Synchronized.collection(delegate().values(), this.mutex);
        Collection localCollection = this.values;
        return localCollection;
      }
    }
  }

  private static class SynchronizedMultimap<K, V> extends Synchronized.SynchronizedObject
    implements Multimap<K, V>
  {
    private static final long serialVersionUID;
    transient Map<K, Collection<V>> asMap;
    transient Collection<Map.Entry<K, V>> entries;
    transient Set<K> keySet;
    transient Multiset<K> keys;
    transient Collection<V> valuesCollection;

    SynchronizedMultimap(Multimap<K, V> paramMultimap, @Nullable Object paramObject)
    {
      super(paramObject);
    }

    public Map<K, Collection<V>> asMap()
    {
      synchronized (this.mutex)
      {
        if (this.asMap == null)
          this.asMap = new Synchronized.SynchronizedAsMap(delegate().asMap(), this.mutex);
        Map localMap = this.asMap;
        return localMap;
      }
    }

    public void clear()
    {
      synchronized (this.mutex)
      {
        delegate().clear();
        return;
      }
    }

    public boolean containsEntry(Object paramObject1, Object paramObject2)
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().containsEntry(paramObject1, paramObject2);
        return bool;
      }
    }

    public boolean containsKey(Object paramObject)
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().containsKey(paramObject);
        return bool;
      }
    }

    public boolean containsValue(Object paramObject)
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().containsValue(paramObject);
        return bool;
      }
    }

    Multimap<K, V> delegate()
    {
      return (Multimap)super.delegate();
    }

    public Collection<Map.Entry<K, V>> entries()
    {
      synchronized (this.mutex)
      {
        if (this.entries == null)
          this.entries = Synchronized.typePreservingCollection(delegate().entries(), this.mutex);
        Collection localCollection = this.entries;
        return localCollection;
      }
    }

    public boolean equals(Object paramObject)
    {
      if (paramObject == this)
        return true;
      synchronized (this.mutex)
      {
        boolean bool = delegate().equals(paramObject);
        return bool;
      }
    }

    public Collection<V> get(K paramK)
    {
      synchronized (this.mutex)
      {
        Collection localCollection = Synchronized.typePreservingCollection(delegate().get(paramK), this.mutex);
        return localCollection;
      }
    }

    public int hashCode()
    {
      synchronized (this.mutex)
      {
        int i = delegate().hashCode();
        return i;
      }
    }

    public boolean isEmpty()
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().isEmpty();
        return bool;
      }
    }

    public Set<K> keySet()
    {
      synchronized (this.mutex)
      {
        if (this.keySet == null)
          this.keySet = Synchronized.typePreservingSet(delegate().keySet(), this.mutex);
        Set localSet = this.keySet;
        return localSet;
      }
    }

    public Multiset<K> keys()
    {
      synchronized (this.mutex)
      {
        if (this.keys == null)
          this.keys = Synchronized.multiset(delegate().keys(), this.mutex);
        Multiset localMultiset = this.keys;
        return localMultiset;
      }
    }

    public boolean put(K paramK, V paramV)
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().put(paramK, paramV);
        return bool;
      }
    }

    public boolean putAll(Multimap<? extends K, ? extends V> paramMultimap)
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().putAll(paramMultimap);
        return bool;
      }
    }

    public boolean putAll(K paramK, Iterable<? extends V> paramIterable)
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().putAll(paramK, paramIterable);
        return bool;
      }
    }

    public boolean remove(Object paramObject1, Object paramObject2)
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().remove(paramObject1, paramObject2);
        return bool;
      }
    }

    public Collection<V> removeAll(Object paramObject)
    {
      synchronized (this.mutex)
      {
        Collection localCollection = delegate().removeAll(paramObject);
        return localCollection;
      }
    }

    public Collection<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
    {
      synchronized (this.mutex)
      {
        Collection localCollection = delegate().replaceValues(paramK, paramIterable);
        return localCollection;
      }
    }

    public int size()
    {
      synchronized (this.mutex)
      {
        int i = delegate().size();
        return i;
      }
    }

    public Collection<V> values()
    {
      synchronized (this.mutex)
      {
        if (this.valuesCollection == null)
          this.valuesCollection = Synchronized.collection(delegate().values(), this.mutex);
        Collection localCollection = this.valuesCollection;
        return localCollection;
      }
    }
  }

  private static class SynchronizedMultiset<E> extends Synchronized.SynchronizedCollection<E>
    implements Multiset<E>
  {
    private static final long serialVersionUID;
    transient Set<E> elementSet;
    transient Set<Multiset.Entry<E>> entrySet;

    SynchronizedMultiset(Multiset<E> paramMultiset, @Nullable Object paramObject)
    {
      super(paramObject, null);
    }

    public int add(E paramE, int paramInt)
    {
      synchronized (this.mutex)
      {
        int i = delegate().add(paramE, paramInt);
        return i;
      }
    }

    public int count(Object paramObject)
    {
      synchronized (this.mutex)
      {
        int i = delegate().count(paramObject);
        return i;
      }
    }

    Multiset<E> delegate()
    {
      return (Multiset)super.delegate();
    }

    public Set<E> elementSet()
    {
      synchronized (this.mutex)
      {
        if (this.elementSet == null)
          this.elementSet = Synchronized.typePreservingSet(delegate().elementSet(), this.mutex);
        Set localSet = this.elementSet;
        return localSet;
      }
    }

    public Set<Multiset.Entry<E>> entrySet()
    {
      synchronized (this.mutex)
      {
        if (this.entrySet == null)
          this.entrySet = Synchronized.typePreservingSet(delegate().entrySet(), this.mutex);
        Set localSet = this.entrySet;
        return localSet;
      }
    }

    public boolean equals(Object paramObject)
    {
      if (paramObject == this)
        return true;
      synchronized (this.mutex)
      {
        boolean bool = delegate().equals(paramObject);
        return bool;
      }
    }

    public int hashCode()
    {
      synchronized (this.mutex)
      {
        int i = delegate().hashCode();
        return i;
      }
    }

    public int remove(Object paramObject, int paramInt)
    {
      synchronized (this.mutex)
      {
        int i = delegate().remove(paramObject, paramInt);
        return i;
      }
    }

    public int setCount(E paramE, int paramInt)
    {
      synchronized (this.mutex)
      {
        int i = delegate().setCount(paramE, paramInt);
        return i;
      }
    }

    public boolean setCount(E paramE, int paramInt1, int paramInt2)
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().setCount(paramE, paramInt1, paramInt2);
        return bool;
      }
    }
  }

  static class SynchronizedObject
    implements Serializable
  {

    @GwtIncompatible("not needed in emulated source")
    private static final long serialVersionUID;
    final Object delegate;
    final Object mutex;

    SynchronizedObject(Object paramObject1, @Nullable Object paramObject2)
    {
      this.delegate = Preconditions.checkNotNull(paramObject1);
      if (paramObject2 == null)
        paramObject2 = this;
      this.mutex = paramObject2;
    }

    @GwtIncompatible("java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream paramObjectOutputStream)
      throws IOException
    {
      synchronized (this.mutex)
      {
        paramObjectOutputStream.defaultWriteObject();
        return;
      }
    }

    Object delegate()
    {
      return this.delegate;
    }

    public String toString()
    {
      synchronized (this.mutex)
      {
        String str = this.delegate.toString();
        return str;
      }
    }
  }

  private static class SynchronizedQueue<E> extends Synchronized.SynchronizedCollection<E>
    implements Queue<E>
  {
    private static final long serialVersionUID;

    SynchronizedQueue(Queue<E> paramQueue, @Nullable Object paramObject)
    {
      super(paramObject, null);
    }

    Queue<E> delegate()
    {
      return (Queue)super.delegate();
    }

    public E element()
    {
      synchronized (this.mutex)
      {
        Object localObject3 = delegate().element();
        return localObject3;
      }
    }

    public boolean offer(E paramE)
    {
      synchronized (this.mutex)
      {
        boolean bool = delegate().offer(paramE);
        return bool;
      }
    }

    public E peek()
    {
      synchronized (this.mutex)
      {
        Object localObject3 = delegate().peek();
        return localObject3;
      }
    }

    public E poll()
    {
      synchronized (this.mutex)
      {
        Object localObject3 = delegate().poll();
        return localObject3;
      }
    }

    public E remove()
    {
      synchronized (this.mutex)
      {
        Object localObject3 = delegate().remove();
        return localObject3;
      }
    }
  }

  private static class SynchronizedRandomAccessList<E> extends Synchronized.SynchronizedList<E>
    implements RandomAccess
  {
    private static final long serialVersionUID;

    SynchronizedRandomAccessList(List<E> paramList, @Nullable Object paramObject)
    {
      super(paramObject);
    }
  }

  static class SynchronizedSet<E> extends Synchronized.SynchronizedCollection<E>
    implements Set<E>
  {
    private static final long serialVersionUID;

    SynchronizedSet(Set<E> paramSet, @Nullable Object paramObject)
    {
      super(paramObject, null);
    }

    Set<E> delegate()
    {
      return (Set)super.delegate();
    }

    public boolean equals(Object paramObject)
    {
      if (paramObject == this)
        return true;
      synchronized (this.mutex)
      {
        boolean bool = delegate().equals(paramObject);
        return bool;
      }
    }

    public int hashCode()
    {
      synchronized (this.mutex)
      {
        int i = delegate().hashCode();
        return i;
      }
    }
  }

  private static class SynchronizedSetMultimap<K, V> extends Synchronized.SynchronizedMultimap<K, V>
    implements SetMultimap<K, V>
  {
    private static final long serialVersionUID;
    transient Set<Map.Entry<K, V>> entrySet;

    SynchronizedSetMultimap(SetMultimap<K, V> paramSetMultimap, @Nullable Object paramObject)
    {
      super(paramObject);
    }

    SetMultimap<K, V> delegate()
    {
      return (SetMultimap)super.delegate();
    }

    public Set<Map.Entry<K, V>> entries()
    {
      synchronized (this.mutex)
      {
        if (this.entrySet == null)
          this.entrySet = Synchronized.set(delegate().entries(), this.mutex);
        Set localSet = this.entrySet;
        return localSet;
      }
    }

    public Set<V> get(K paramK)
    {
      synchronized (this.mutex)
      {
        Set localSet = Synchronized.set(delegate().get(paramK), this.mutex);
        return localSet;
      }
    }

    public Set<V> removeAll(Object paramObject)
    {
      synchronized (this.mutex)
      {
        Set localSet = delegate().removeAll(paramObject);
        return localSet;
      }
    }

    public Set<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
    {
      synchronized (this.mutex)
      {
        Set localSet = delegate().replaceValues(paramK, paramIterable);
        return localSet;
      }
    }
  }

  static class SynchronizedSortedMap<K, V> extends Synchronized.SynchronizedMap<K, V>
    implements SortedMap<K, V>
  {
    private static final long serialVersionUID;

    SynchronizedSortedMap(SortedMap<K, V> paramSortedMap, @Nullable Object paramObject)
    {
      super(paramObject);
    }

    public Comparator<? super K> comparator()
    {
      synchronized (this.mutex)
      {
        Comparator localComparator = delegate().comparator();
        return localComparator;
      }
    }

    SortedMap<K, V> delegate()
    {
      return (SortedMap)super.delegate();
    }

    public K firstKey()
    {
      synchronized (this.mutex)
      {
        Object localObject3 = delegate().firstKey();
        return localObject3;
      }
    }

    public SortedMap<K, V> headMap(K paramK)
    {
      synchronized (this.mutex)
      {
        SortedMap localSortedMap = Synchronized.sortedMap(delegate().headMap(paramK), this.mutex);
        return localSortedMap;
      }
    }

    public K lastKey()
    {
      synchronized (this.mutex)
      {
        Object localObject3 = delegate().lastKey();
        return localObject3;
      }
    }

    public SortedMap<K, V> subMap(K paramK1, K paramK2)
    {
      synchronized (this.mutex)
      {
        SortedMap localSortedMap = Synchronized.sortedMap(delegate().subMap(paramK1, paramK2), this.mutex);
        return localSortedMap;
      }
    }

    public SortedMap<K, V> tailMap(K paramK)
    {
      synchronized (this.mutex)
      {
        SortedMap localSortedMap = Synchronized.sortedMap(delegate().tailMap(paramK), this.mutex);
        return localSortedMap;
      }
    }
  }

  static class SynchronizedSortedSet<E> extends Synchronized.SynchronizedSet<E>
    implements SortedSet<E>
  {
    private static final long serialVersionUID;

    SynchronizedSortedSet(SortedSet<E> paramSortedSet, @Nullable Object paramObject)
    {
      super(paramObject);
    }

    public Comparator<? super E> comparator()
    {
      synchronized (this.mutex)
      {
        Comparator localComparator = delegate().comparator();
        return localComparator;
      }
    }

    SortedSet<E> delegate()
    {
      return (SortedSet)super.delegate();
    }

    public E first()
    {
      synchronized (this.mutex)
      {
        Object localObject3 = delegate().first();
        return localObject3;
      }
    }

    public SortedSet<E> headSet(E paramE)
    {
      synchronized (this.mutex)
      {
        SortedSet localSortedSet = Synchronized.sortedSet(delegate().headSet(paramE), this.mutex);
        return localSortedSet;
      }
    }

    public E last()
    {
      synchronized (this.mutex)
      {
        Object localObject3 = delegate().last();
        return localObject3;
      }
    }

    public SortedSet<E> subSet(E paramE1, E paramE2)
    {
      synchronized (this.mutex)
      {
        SortedSet localSortedSet = Synchronized.sortedSet(delegate().subSet(paramE1, paramE2), this.mutex);
        return localSortedSet;
      }
    }

    public SortedSet<E> tailSet(E paramE)
    {
      synchronized (this.mutex)
      {
        SortedSet localSortedSet = Synchronized.sortedSet(delegate().tailSet(paramE), this.mutex);
        return localSortedSet;
      }
    }
  }

  private static class SynchronizedSortedSetMultimap<K, V> extends Synchronized.SynchronizedSetMultimap<K, V>
    implements SortedSetMultimap<K, V>
  {
    private static final long serialVersionUID;

    SynchronizedSortedSetMultimap(SortedSetMultimap<K, V> paramSortedSetMultimap, @Nullable Object paramObject)
    {
      super(paramObject);
    }

    SortedSetMultimap<K, V> delegate()
    {
      return (SortedSetMultimap)super.delegate();
    }

    public SortedSet<V> get(K paramK)
    {
      synchronized (this.mutex)
      {
        SortedSet localSortedSet = Synchronized.sortedSet(delegate().get(paramK), this.mutex);
        return localSortedSet;
      }
    }

    public SortedSet<V> removeAll(Object paramObject)
    {
      synchronized (this.mutex)
      {
        SortedSet localSortedSet = delegate().removeAll(paramObject);
        return localSortedSet;
      }
    }

    public SortedSet<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
    {
      synchronized (this.mutex)
      {
        SortedSet localSortedSet = delegate().replaceValues(paramK, paramIterable);
        return localSortedSet;
      }
    }

    public Comparator<? super V> valueComparator()
    {
      synchronized (this.mutex)
      {
        Comparator localComparator = delegate().valueComparator();
        return localComparator;
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.Synchronized
 * JD-Core Version:    0.6.2
 */