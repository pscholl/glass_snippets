package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
abstract class AbstractMapBasedMultimap<K, V> extends AbstractMultimap<K, V>
  implements Serializable
{
  private static final long serialVersionUID = 2447537837011683357L;
  private transient Map<K, Collection<V>> map;
  private transient int totalSize;

  protected AbstractMapBasedMultimap(Map<K, Collection<V>> paramMap)
  {
    Preconditions.checkArgument(paramMap.isEmpty());
    this.map = paramMap;
  }

  private Collection<V> getOrCreateCollection(@Nullable K paramK)
  {
    Collection localCollection = (Collection)this.map.get(paramK);
    if (localCollection == null)
    {
      localCollection = createCollection(paramK);
      this.map.put(paramK, localCollection);
    }
    return localCollection;
  }

  private Iterator<V> iteratorOrListIterator(Collection<V> paramCollection)
  {
    if ((paramCollection instanceof List))
      return ((List)paramCollection).listIterator();
    return paramCollection.iterator();
  }

  private int removeValuesForKey(Object paramObject)
  {
    Collection localCollection = (Collection)Maps.safeRemove(this.map, paramObject);
    int i = 0;
    if (localCollection != null)
    {
      i = localCollection.size();
      localCollection.clear();
      this.totalSize -= i;
    }
    return i;
  }

  private List<V> wrapList(@Nullable K paramK, List<V> paramList, @Nullable AbstractMapBasedMultimap<K, V>.WrappedCollection paramAbstractMapBasedMultimap)
  {
    if ((paramList instanceof RandomAccess))
      return new RandomAccessWrappedList(paramK, paramList, paramAbstractMapBasedMultimap);
    return new WrappedList(paramK, paramList, paramAbstractMapBasedMultimap);
  }

  Map<K, Collection<V>> backingMap()
  {
    return this.map;
  }

  public void clear()
  {
    Iterator localIterator = this.map.values().iterator();
    while (localIterator.hasNext())
      ((Collection)localIterator.next()).clear();
    this.map.clear();
    this.totalSize = 0;
  }

  public boolean containsKey(@Nullable Object paramObject)
  {
    return this.map.containsKey(paramObject);
  }

  Map<K, Collection<V>> createAsMap()
  {
    if ((this.map instanceof SortedMap))
      return new SortedAsMap((SortedMap)this.map);
    return new AsMap(this.map);
  }

  abstract Collection<V> createCollection();

  Collection<V> createCollection(@Nullable K paramK)
  {
    return createCollection();
  }

  Set<K> createKeySet()
  {
    if ((this.map instanceof SortedMap))
      return new SortedKeySet((SortedMap)this.map);
    return new KeySet(this.map);
  }

  Collection<V> createUnmodifiableEmptyCollection()
  {
    return unmodifiableCollectionSubclass(createCollection());
  }

  public Collection<Map.Entry<K, V>> entries()
  {
    return super.entries();
  }

  Iterator<Map.Entry<K, V>> entryIterator()
  {
    return new EntryIterator();
  }

  public Collection<V> get(@Nullable K paramK)
  {
    Collection localCollection = (Collection)this.map.get(paramK);
    if (localCollection == null)
      localCollection = createCollection(paramK);
    return wrapCollection(paramK, localCollection);
  }

  public boolean put(@Nullable K paramK, @Nullable V paramV)
  {
    Collection localCollection1 = (Collection)this.map.get(paramK);
    if (localCollection1 == null)
    {
      Collection localCollection2 = createCollection(paramK);
      if (localCollection2.add(paramV))
      {
        this.totalSize = (1 + this.totalSize);
        this.map.put(paramK, localCollection2);
        return true;
      }
      throw new AssertionError("New Collection violated the Collection spec");
    }
    if (localCollection1.add(paramV))
    {
      this.totalSize = (1 + this.totalSize);
      return true;
    }
    return false;
  }

  public Collection<V> removeAll(@Nullable Object paramObject)
  {
    Collection localCollection1 = (Collection)this.map.remove(paramObject);
    if (localCollection1 == null)
      return createUnmodifiableEmptyCollection();
    Collection localCollection2 = createCollection();
    localCollection2.addAll(localCollection1);
    this.totalSize -= localCollection1.size();
    localCollection1.clear();
    return unmodifiableCollectionSubclass(localCollection2);
  }

  public Collection<V> replaceValues(@Nullable K paramK, Iterable<? extends V> paramIterable)
  {
    Iterator localIterator = paramIterable.iterator();
    if (!localIterator.hasNext())
      return removeAll(paramK);
    Collection localCollection1 = getOrCreateCollection(paramK);
    Collection localCollection2 = createCollection();
    localCollection2.addAll(localCollection1);
    this.totalSize -= localCollection1.size();
    localCollection1.clear();
    while (localIterator.hasNext())
      if (localCollection1.add(localIterator.next()))
        this.totalSize = (1 + this.totalSize);
    return unmodifiableCollectionSubclass(localCollection2);
  }

  final void setMap(Map<K, Collection<V>> paramMap)
  {
    this.map = paramMap;
    this.totalSize = 0;
    Iterator localIterator = paramMap.values().iterator();
    if (localIterator.hasNext())
    {
      Collection localCollection = (Collection)localIterator.next();
      if (!localCollection.isEmpty());
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool);
        this.totalSize += localCollection.size();
        break;
      }
    }
  }

  public int size()
  {
    return this.totalSize;
  }

  Collection<V> unmodifiableCollectionSubclass(Collection<V> paramCollection)
  {
    if ((paramCollection instanceof SortedSet))
      return Collections.unmodifiableSortedSet((SortedSet)paramCollection);
    if ((paramCollection instanceof Set))
      return Collections.unmodifiableSet((Set)paramCollection);
    if ((paramCollection instanceof List))
      return Collections.unmodifiableList((List)paramCollection);
    return Collections.unmodifiableCollection(paramCollection);
  }

  public Collection<V> values()
  {
    return super.values();
  }

  Collection<V> wrapCollection(@Nullable K paramK, Collection<V> paramCollection)
  {
    if ((paramCollection instanceof SortedSet))
      return new WrappedSortedSet(paramK, (SortedSet)paramCollection, null);
    if ((paramCollection instanceof Set))
      return new WrappedSet(paramK, (Set)paramCollection);
    if ((paramCollection instanceof List))
      return wrapList(paramK, (List)paramCollection, null);
    return new WrappedCollection(paramK, paramCollection, null);
  }

  private class AsMap extends AbstractMap<K, Collection<V>>
  {
    transient Set<Map.Entry<K, Collection<V>>> entrySet;
    final transient Map<K, Collection<V>> submap;

    AsMap()
    {
      Object localObject;
      this.submap = localObject;
    }

    public void clear()
    {
      if (this.submap == AbstractMapBasedMultimap.this.map)
      {
        AbstractMapBasedMultimap.this.clear();
        return;
      }
      Iterators.clear(new AsMapIterator());
    }

    public boolean containsKey(Object paramObject)
    {
      return Maps.safeContainsKey(this.submap, paramObject);
    }

    public Set<Map.Entry<K, Collection<V>>> entrySet()
    {
      Object localObject = this.entrySet;
      if (localObject == null)
      {
        localObject = new AsMapEntries();
        this.entrySet = ((Set)localObject);
      }
      return localObject;
    }

    public boolean equals(@Nullable Object paramObject)
    {
      return (this == paramObject) || (this.submap.equals(paramObject));
    }

    public Collection<V> get(Object paramObject)
    {
      Collection localCollection = (Collection)Maps.safeGet(this.submap, paramObject);
      if (localCollection == null)
        return null;
      return AbstractMapBasedMultimap.this.wrapCollection(paramObject, localCollection);
    }

    public int hashCode()
    {
      return this.submap.hashCode();
    }

    public Set<K> keySet()
    {
      return AbstractMapBasedMultimap.this.keySet();
    }

    public Collection<V> remove(Object paramObject)
    {
      Collection localCollection1 = (Collection)this.submap.remove(paramObject);
      if (localCollection1 == null)
        return null;
      Collection localCollection2 = AbstractMapBasedMultimap.this.createCollection();
      localCollection2.addAll(localCollection1);
      AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, localCollection1.size());
      localCollection1.clear();
      return localCollection2;
    }

    public int size()
    {
      return this.submap.size();
    }

    public String toString()
    {
      return this.submap.toString();
    }

    Map.Entry<K, Collection<V>> wrapEntry(Map.Entry<K, Collection<V>> paramEntry)
    {
      Object localObject = paramEntry.getKey();
      return Maps.immutableEntry(localObject, AbstractMapBasedMultimap.this.wrapCollection(localObject, (Collection)paramEntry.getValue()));
    }

    class AsMapEntries extends Maps.EntrySet<K, Collection<V>>
    {
      AsMapEntries()
      {
      }

      public boolean contains(Object paramObject)
      {
        return Collections2.safeContains(AbstractMapBasedMultimap.AsMap.this.submap.entrySet(), paramObject);
      }

      public Iterator<Map.Entry<K, Collection<V>>> iterator()
      {
        return new AbstractMapBasedMultimap.AsMap.AsMapIterator(AbstractMapBasedMultimap.AsMap.this);
      }

      Map<K, Collection<V>> map()
      {
        return AbstractMapBasedMultimap.AsMap.this;
      }

      public boolean remove(Object paramObject)
      {
        if (!contains(paramObject))
          return false;
        Map.Entry localEntry = (Map.Entry)paramObject;
        AbstractMapBasedMultimap.this.removeValuesForKey(localEntry.getKey());
        return true;
      }
    }

    class AsMapIterator
      implements Iterator<Map.Entry<K, Collection<V>>>
    {
      Collection<V> collection;
      final Iterator<Map.Entry<K, Collection<V>>> delegateIterator = AbstractMapBasedMultimap.AsMap.this.submap.entrySet().iterator();

      AsMapIterator()
      {
      }

      public boolean hasNext()
      {
        return this.delegateIterator.hasNext();
      }

      public Map.Entry<K, Collection<V>> next()
      {
        Map.Entry localEntry = (Map.Entry)this.delegateIterator.next();
        this.collection = ((Collection)localEntry.getValue());
        return AbstractMapBasedMultimap.AsMap.this.wrapEntry(localEntry);
      }

      public void remove()
      {
        this.delegateIterator.remove();
        AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, this.collection.size());
        this.collection.clear();
      }
    }
  }

  private class EntryIterator
    implements Iterator<Map.Entry<K, V>>
  {
    Collection<V> collection;
    K key;
    final Iterator<Map.Entry<K, Collection<V>>> keyIterator = AbstractMapBasedMultimap.this.map.entrySet().iterator();
    Iterator<V> valueIterator;

    EntryIterator()
    {
      if (this.keyIterator.hasNext())
      {
        findValueIteratorAndKey();
        return;
      }
      this.valueIterator = Iterators.emptyModifiableIterator();
    }

    void findValueIteratorAndKey()
    {
      Map.Entry localEntry = (Map.Entry)this.keyIterator.next();
      this.key = localEntry.getKey();
      this.collection = ((Collection)localEntry.getValue());
      this.valueIterator = this.collection.iterator();
    }

    public boolean hasNext()
    {
      return (this.keyIterator.hasNext()) || (this.valueIterator.hasNext());
    }

    public Map.Entry<K, V> next()
    {
      if (!this.valueIterator.hasNext())
        findValueIteratorAndKey();
      return Maps.immutableEntry(this.key, this.valueIterator.next());
    }

    public void remove()
    {
      this.valueIterator.remove();
      if (this.collection.isEmpty())
        this.keyIterator.remove();
      AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
    }
  }

  private class KeySet extends Maps.KeySet<K, Collection<V>>
  {
    final Map<K, Collection<V>> subMap;

    KeySet()
    {
      Object localObject;
      this.subMap = localObject;
    }

    public void clear()
    {
      Iterators.clear(iterator());
    }

    public boolean containsAll(Collection<?> paramCollection)
    {
      return this.subMap.keySet().containsAll(paramCollection);
    }

    public boolean equals(@Nullable Object paramObject)
    {
      return (this == paramObject) || (this.subMap.keySet().equals(paramObject));
    }

    public int hashCode()
    {
      return this.subMap.keySet().hashCode();
    }

    public Iterator<K> iterator()
    {
      return new Iterator()
      {
        Map.Entry<K, Collection<V>> entry;

        public boolean hasNext()
        {
          return this.val$entryIterator.hasNext();
        }

        public K next()
        {
          this.entry = ((Map.Entry)this.val$entryIterator.next());
          return this.entry.getKey();
        }

        public void remove()
        {
          if (this.entry != null);
          for (boolean bool = true; ; bool = false)
          {
            Iterators.checkRemove(bool);
            Collection localCollection = (Collection)this.entry.getValue();
            this.val$entryIterator.remove();
            AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, localCollection.size());
            localCollection.clear();
            return;
          }
        }
      };
    }

    Map<K, Collection<V>> map()
    {
      return this.subMap;
    }

    public boolean remove(Object paramObject)
    {
      Collection localCollection = (Collection)this.subMap.remove(paramObject);
      int i = 0;
      if (localCollection != null)
      {
        i = localCollection.size();
        localCollection.clear();
        AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, i);
      }
      return i > 0;
    }
  }

  private class RandomAccessWrappedList extends AbstractMapBasedMultimap.WrappedList
    implements RandomAccess
  {
    RandomAccessWrappedList(List<V> paramAbstractMapBasedMultimap, @Nullable AbstractMapBasedMultimap<K, V>.WrappedCollection arg3)
    {
      super(paramAbstractMapBasedMultimap, localList, localWrappedCollection);
    }
  }

  private class SortedAsMap extends AbstractMapBasedMultimap<K, V>.AsMap
    implements SortedMap<K, Collection<V>>
  {
    SortedSet<K> sortedKeySet;

    SortedAsMap()
    {
      super(localMap);
    }

    public Comparator<? super K> comparator()
    {
      return sortedMap().comparator();
    }

    SortedSet<K> createKeySet()
    {
      return new AbstractMapBasedMultimap.SortedKeySet(AbstractMapBasedMultimap.this, sortedMap());
    }

    public K firstKey()
    {
      return sortedMap().firstKey();
    }

    public SortedMap<K, Collection<V>> headMap(K paramK)
    {
      return new SortedAsMap(AbstractMapBasedMultimap.this, sortedMap().headMap(paramK));
    }

    public SortedSet<K> keySet()
    {
      SortedSet localSortedSet = this.sortedKeySet;
      if (localSortedSet == null)
      {
        localSortedSet = createKeySet();
        this.sortedKeySet = localSortedSet;
      }
      return localSortedSet;
    }

    public K lastKey()
    {
      return sortedMap().lastKey();
    }

    SortedMap<K, Collection<V>> sortedMap()
    {
      return (SortedMap)this.submap;
    }

    public SortedMap<K, Collection<V>> subMap(K paramK1, K paramK2)
    {
      return new SortedAsMap(AbstractMapBasedMultimap.this, sortedMap().subMap(paramK1, paramK2));
    }

    public SortedMap<K, Collection<V>> tailMap(K paramK)
    {
      return new SortedAsMap(AbstractMapBasedMultimap.this, sortedMap().tailMap(paramK));
    }
  }

  private class SortedKeySet extends AbstractMapBasedMultimap<K, V>.KeySet
    implements SortedSet<K>
  {
    SortedKeySet()
    {
      super(localMap);
    }

    public Comparator<? super K> comparator()
    {
      return sortedMap().comparator();
    }

    public K first()
    {
      return sortedMap().firstKey();
    }

    public SortedSet<K> headSet(K paramK)
    {
      return new SortedKeySet(AbstractMapBasedMultimap.this, sortedMap().headMap(paramK));
    }

    public K last()
    {
      return sortedMap().lastKey();
    }

    SortedMap<K, Collection<V>> sortedMap()
    {
      return (SortedMap)this.subMap;
    }

    public SortedSet<K> subSet(K paramK1, K paramK2)
    {
      return new SortedKeySet(AbstractMapBasedMultimap.this, sortedMap().subMap(paramK1, paramK2));
    }

    public SortedSet<K> tailSet(K paramK)
    {
      return new SortedKeySet(AbstractMapBasedMultimap.this, sortedMap().tailMap(paramK));
    }
  }

  private class WrappedCollection extends AbstractCollection<V>
  {
    final AbstractMapBasedMultimap<K, V>.WrappedCollection ancestor;
    final Collection<V> ancestorDelegate;
    Collection<V> delegate;
    final K key;

    WrappedCollection(Collection<V> paramAbstractMapBasedMultimap, @Nullable AbstractMapBasedMultimap<K, V>.WrappedCollection arg3)
    {
      this.key = paramAbstractMapBasedMultimap;
      Object localObject1;
      this.delegate = localObject1;
      Object localObject2;
      this.ancestor = localObject2;
      if (localObject2 == null);
      for (Collection localCollection = null; ; localCollection = localObject2.getDelegate())
      {
        this.ancestorDelegate = localCollection;
        return;
      }
    }

    public boolean add(V paramV)
    {
      refreshIfEmpty();
      boolean bool1 = this.delegate.isEmpty();
      boolean bool2 = this.delegate.add(paramV);
      if (bool2)
      {
        AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
        if (bool1)
          addToMap();
      }
      return bool2;
    }

    public boolean addAll(Collection<? extends V> paramCollection)
    {
      boolean bool;
      if (paramCollection.isEmpty())
        bool = false;
      int i;
      do
      {
        do
        {
          return bool;
          i = size();
          bool = this.delegate.addAll(paramCollection);
        }
        while (!bool);
        int j = this.delegate.size();
        AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, j - i);
      }
      while (i != 0);
      addToMap();
      return bool;
    }

    void addToMap()
    {
      if (this.ancestor != null)
      {
        this.ancestor.addToMap();
        return;
      }
      AbstractMapBasedMultimap.this.map.put(this.key, this.delegate);
    }

    public void clear()
    {
      int i = size();
      if (i == 0)
        return;
      this.delegate.clear();
      AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, i);
      removeIfEmpty();
    }

    public boolean contains(Object paramObject)
    {
      refreshIfEmpty();
      return this.delegate.contains(paramObject);
    }

    public boolean containsAll(Collection<?> paramCollection)
    {
      refreshIfEmpty();
      return this.delegate.containsAll(paramCollection);
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if (paramObject == this)
        return true;
      refreshIfEmpty();
      return this.delegate.equals(paramObject);
    }

    AbstractMapBasedMultimap<K, V>.WrappedCollection getAncestor()
    {
      return this.ancestor;
    }

    Collection<V> getDelegate()
    {
      return this.delegate;
    }

    K getKey()
    {
      return this.key;
    }

    public int hashCode()
    {
      refreshIfEmpty();
      return this.delegate.hashCode();
    }

    public Iterator<V> iterator()
    {
      refreshIfEmpty();
      return new WrappedIterator();
    }

    void refreshIfEmpty()
    {
      if (this.ancestor != null)
      {
        this.ancestor.refreshIfEmpty();
        if (this.ancestor.getDelegate() != this.ancestorDelegate)
          throw new ConcurrentModificationException();
      }
      else if (this.delegate.isEmpty())
      {
        Collection localCollection = (Collection)AbstractMapBasedMultimap.this.map.get(this.key);
        if (localCollection != null)
          this.delegate = localCollection;
      }
    }

    public boolean remove(Object paramObject)
    {
      refreshIfEmpty();
      boolean bool = this.delegate.remove(paramObject);
      if (bool)
      {
        AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
        removeIfEmpty();
      }
      return bool;
    }

    public boolean removeAll(Collection<?> paramCollection)
    {
      boolean bool;
      if (paramCollection.isEmpty())
        bool = false;
      int i;
      do
      {
        return bool;
        i = size();
        bool = this.delegate.removeAll(paramCollection);
      }
      while (!bool);
      int j = this.delegate.size();
      AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, j - i);
      removeIfEmpty();
      return bool;
    }

    void removeIfEmpty()
    {
      if (this.ancestor != null)
        this.ancestor.removeIfEmpty();
      while (!this.delegate.isEmpty())
        return;
      AbstractMapBasedMultimap.this.map.remove(this.key);
    }

    public boolean retainAll(Collection<?> paramCollection)
    {
      Preconditions.checkNotNull(paramCollection);
      int i = size();
      boolean bool = this.delegate.retainAll(paramCollection);
      if (bool)
      {
        int j = this.delegate.size();
        AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, j - i);
        removeIfEmpty();
      }
      return bool;
    }

    public int size()
    {
      refreshIfEmpty();
      return this.delegate.size();
    }

    public String toString()
    {
      refreshIfEmpty();
      return this.delegate.toString();
    }

    class WrappedIterator
      implements Iterator<V>
    {
      final Iterator<V> delegateIterator;
      final Collection<V> originalDelegate = AbstractMapBasedMultimap.WrappedCollection.this.delegate;

      WrappedIterator()
      {
        this.delegateIterator = AbstractMapBasedMultimap.this.iteratorOrListIterator(AbstractMapBasedMultimap.WrappedCollection.this.delegate);
      }

      WrappedIterator()
      {
        Object localObject;
        this.delegateIterator = localObject;
      }

      Iterator<V> getDelegateIterator()
      {
        validateIterator();
        return this.delegateIterator;
      }

      public boolean hasNext()
      {
        validateIterator();
        return this.delegateIterator.hasNext();
      }

      public V next()
      {
        validateIterator();
        return this.delegateIterator.next();
      }

      public void remove()
      {
        this.delegateIterator.remove();
        AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
        AbstractMapBasedMultimap.WrappedCollection.this.removeIfEmpty();
      }

      void validateIterator()
      {
        AbstractMapBasedMultimap.WrappedCollection.this.refreshIfEmpty();
        if (AbstractMapBasedMultimap.WrappedCollection.this.delegate != this.originalDelegate)
          throw new ConcurrentModificationException();
      }
    }
  }

  private class WrappedList extends AbstractMapBasedMultimap<K, V>.WrappedCollection
    implements List<V>
  {
    WrappedList(List<V> paramAbstractMapBasedMultimap, @Nullable AbstractMapBasedMultimap<K, V>.WrappedCollection arg3)
    {
      super(paramAbstractMapBasedMultimap, localCollection, localWrappedCollection);
    }

    public void add(int paramInt, V paramV)
    {
      refreshIfEmpty();
      boolean bool = getDelegate().isEmpty();
      getListDelegate().add(paramInt, paramV);
      AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
      if (bool)
        addToMap();
    }

    public boolean addAll(int paramInt, Collection<? extends V> paramCollection)
    {
      boolean bool;
      if (paramCollection.isEmpty())
        bool = false;
      int i;
      do
      {
        do
        {
          return bool;
          i = size();
          bool = getListDelegate().addAll(paramInt, paramCollection);
        }
        while (!bool);
        int j = getDelegate().size();
        AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, j - i);
      }
      while (i != 0);
      addToMap();
      return bool;
    }

    public V get(int paramInt)
    {
      refreshIfEmpty();
      return getListDelegate().get(paramInt);
    }

    List<V> getListDelegate()
    {
      return (List)getDelegate();
    }

    public int indexOf(Object paramObject)
    {
      refreshIfEmpty();
      return getListDelegate().indexOf(paramObject);
    }

    public int lastIndexOf(Object paramObject)
    {
      refreshIfEmpty();
      return getListDelegate().lastIndexOf(paramObject);
    }

    public ListIterator<V> listIterator()
    {
      refreshIfEmpty();
      return new WrappedListIterator();
    }

    public ListIterator<V> listIterator(int paramInt)
    {
      refreshIfEmpty();
      return new WrappedListIterator(paramInt);
    }

    public V remove(int paramInt)
    {
      refreshIfEmpty();
      Object localObject = getListDelegate().remove(paramInt);
      AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
      removeIfEmpty();
      return localObject;
    }

    public V set(int paramInt, V paramV)
    {
      refreshIfEmpty();
      return getListDelegate().set(paramInt, paramV);
    }

    public List<V> subList(int paramInt1, int paramInt2)
    {
      refreshIfEmpty();
      AbstractMapBasedMultimap localAbstractMapBasedMultimap = AbstractMapBasedMultimap.this;
      Object localObject = getKey();
      List localList = getListDelegate().subList(paramInt1, paramInt2);
      if (getAncestor() == null);
      while (true)
      {
        return localAbstractMapBasedMultimap.wrapList(localObject, localList, this);
        this = getAncestor();
      }
    }

    private class WrappedListIterator extends AbstractMapBasedMultimap<K, V>.WrappedCollection.WrappedIterator
      implements ListIterator<V>
    {
      WrappedListIterator()
      {
        super();
      }

      public WrappedListIterator(int arg2)
      {
        super(AbstractMapBasedMultimap.WrappedList.this.getListDelegate().listIterator(i));
      }

      private ListIterator<V> getDelegateListIterator()
      {
        return (ListIterator)getDelegateIterator();
      }

      public void add(V paramV)
      {
        boolean bool = AbstractMapBasedMultimap.WrappedList.this.isEmpty();
        getDelegateListIterator().add(paramV);
        AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
        if (bool)
          AbstractMapBasedMultimap.WrappedList.this.addToMap();
      }

      public boolean hasPrevious()
      {
        return getDelegateListIterator().hasPrevious();
      }

      public int nextIndex()
      {
        return getDelegateListIterator().nextIndex();
      }

      public V previous()
      {
        return getDelegateListIterator().previous();
      }

      public int previousIndex()
      {
        return getDelegateListIterator().previousIndex();
      }

      public void set(V paramV)
      {
        getDelegateListIterator().set(paramV);
      }
    }
  }

  private class WrappedSet extends AbstractMapBasedMultimap<K, V>.WrappedCollection
    implements Set<V>
  {
    WrappedSet(Set<V> arg2)
    {
      super(localObject, localCollection, null);
    }

    public boolean removeAll(Collection<?> paramCollection)
    {
      boolean bool;
      if (paramCollection.isEmpty())
        bool = false;
      int i;
      do
      {
        return bool;
        i = size();
        bool = Sets.removeAllImpl((Set)this.delegate, paramCollection);
      }
      while (!bool);
      int j = this.delegate.size();
      AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, j - i);
      removeIfEmpty();
      return bool;
    }
  }

  private class WrappedSortedSet extends AbstractMapBasedMultimap<K, V>.WrappedCollection
    implements SortedSet<V>
  {
    WrappedSortedSet(SortedSet<V> paramAbstractMapBasedMultimap, @Nullable AbstractMapBasedMultimap<K, V>.WrappedCollection arg3)
    {
      super(paramAbstractMapBasedMultimap, localCollection, localWrappedCollection);
    }

    public Comparator<? super V> comparator()
    {
      return getSortedSetDelegate().comparator();
    }

    public V first()
    {
      refreshIfEmpty();
      return getSortedSetDelegate().first();
    }

    SortedSet<V> getSortedSetDelegate()
    {
      return (SortedSet)getDelegate();
    }

    public SortedSet<V> headSet(V paramV)
    {
      refreshIfEmpty();
      AbstractMapBasedMultimap localAbstractMapBasedMultimap = AbstractMapBasedMultimap.this;
      Object localObject = getKey();
      SortedSet localSortedSet = getSortedSetDelegate().headSet(paramV);
      if (getAncestor() == null);
      while (true)
      {
        return new WrappedSortedSet(localAbstractMapBasedMultimap, localObject, localSortedSet, this);
        this = getAncestor();
      }
    }

    public V last()
    {
      refreshIfEmpty();
      return getSortedSetDelegate().last();
    }

    public SortedSet<V> subSet(V paramV1, V paramV2)
    {
      refreshIfEmpty();
      AbstractMapBasedMultimap localAbstractMapBasedMultimap = AbstractMapBasedMultimap.this;
      Object localObject = getKey();
      SortedSet localSortedSet = getSortedSetDelegate().subSet(paramV1, paramV2);
      if (getAncestor() == null);
      while (true)
      {
        return new WrappedSortedSet(localAbstractMapBasedMultimap, localObject, localSortedSet, this);
        this = getAncestor();
      }
    }

    public SortedSet<V> tailSet(V paramV)
    {
      refreshIfEmpty();
      AbstractMapBasedMultimap localAbstractMapBasedMultimap = AbstractMapBasedMultimap.this;
      Object localObject = getKey();
      SortedSet localSortedSet = getSortedSetDelegate().tailSet(paramV);
      if (getAncestor() == null);
      while (true)
      {
        return new WrappedSortedSet(localAbstractMapBasedMultimap, localObject, localSortedSet, this);
        this = getAncestor();
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.AbstractMapBasedMultimap
 * JD-Core Version:    0.6.2
 */