package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Joiner.MapJoiner;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.base.Supplier;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
public final class Multimaps
{
  @GwtIncompatible("untested")
  public static <K, V> Multimap<K, V> filterEntries(Multimap<K, V> paramMultimap, Predicate<? super Map.Entry<K, V>> paramPredicate)
  {
    Preconditions.checkNotNull(paramPredicate);
    if ((paramMultimap instanceof FilteredMultimap))
      return filterFiltered((FilteredMultimap)paramMultimap, paramPredicate);
    return new FilteredEntryMultimap((Multimap)Preconditions.checkNotNull(paramMultimap), paramPredicate);
  }

  private static <K, V> Multimap<K, V> filterFiltered(FilteredMultimap<K, V> paramFilteredMultimap, Predicate<? super Map.Entry<K, V>> paramPredicate)
  {
    Predicate localPredicate = Predicates.and(paramFilteredMultimap.entryPredicate(), paramPredicate);
    return new FilteredEntryMultimap(paramFilteredMultimap.unfiltered, localPredicate);
  }

  @GwtIncompatible("untested")
  public static <K, V> Multimap<K, V> filterKeys(Multimap<K, V> paramMultimap, Predicate<? super K> paramPredicate)
  {
    if ((paramMultimap instanceof FilteredKeyMultimap))
    {
      FilteredKeyMultimap localFilteredKeyMultimap = (FilteredKeyMultimap)paramMultimap;
      Predicate[] arrayOfPredicate = new Predicate[2];
      arrayOfPredicate[0] = localFilteredKeyMultimap.keyPredicate;
      arrayOfPredicate[1] = paramPredicate;
      List localList = Arrays.asList(arrayOfPredicate);
      return new FilteredKeyMultimap(localFilteredKeyMultimap.unfiltered, Predicates.and(localList));
    }
    if ((paramMultimap instanceof FilteredMultimap))
    {
      FilteredMultimap localFilteredMultimap = (FilteredMultimap)paramMultimap;
      return new FilteredEntryMultimap(localFilteredMultimap.unfiltered, Predicates.and(localFilteredMultimap.entryPredicate(), Predicates.compose(paramPredicate, Maps.keyFunction())));
    }
    return new FilteredKeyMultimap(paramMultimap, paramPredicate);
  }

  @GwtIncompatible("untested")
  public static <K, V> Multimap<K, V> filterValues(Multimap<K, V> paramMultimap, Predicate<? super V> paramPredicate)
  {
    return filterEntries(paramMultimap, Predicates.compose(paramPredicate, Maps.valueFunction()));
  }

  public static <K, V> SetMultimap<K, V> forMap(Map<K, V> paramMap)
  {
    return new MapMultimap(paramMap);
  }

  public static <K, V> ImmutableListMultimap<K, V> index(Iterable<V> paramIterable, Function<? super V, K> paramFunction)
  {
    return index(paramIterable.iterator(), paramFunction);
  }

  public static <K, V> ImmutableListMultimap<K, V> index(Iterator<V> paramIterator, Function<? super V, K> paramFunction)
  {
    Preconditions.checkNotNull(paramFunction);
    ImmutableListMultimap.Builder localBuilder = ImmutableListMultimap.builder();
    while (paramIterator.hasNext())
    {
      Object localObject = paramIterator.next();
      Preconditions.checkNotNull(localObject, paramIterator);
      localBuilder.put(paramFunction.apply(localObject), localObject);
    }
    return localBuilder.build();
  }

  public static <K, V, M extends Multimap<K, V>> M invertFrom(Multimap<? extends V, ? extends K> paramMultimap, M paramM)
  {
    Preconditions.checkNotNull(paramM);
    Iterator localIterator = paramMultimap.entries().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramM.put(localEntry.getValue(), localEntry.getKey());
    }
    return paramM;
  }

  public static <K, V> ListMultimap<K, V> newListMultimap(Map<K, Collection<V>> paramMap, Supplier<? extends List<V>> paramSupplier)
  {
    return new CustomListMultimap(paramMap, paramSupplier);
  }

  public static <K, V> Multimap<K, V> newMultimap(Map<K, Collection<V>> paramMap, Supplier<? extends Collection<V>> paramSupplier)
  {
    return new CustomMultimap(paramMap, paramSupplier);
  }

  public static <K, V> SetMultimap<K, V> newSetMultimap(Map<K, Collection<V>> paramMap, Supplier<? extends Set<V>> paramSupplier)
  {
    return new CustomSetMultimap(paramMap, paramSupplier);
  }

  public static <K, V> SortedSetMultimap<K, V> newSortedSetMultimap(Map<K, Collection<V>> paramMap, Supplier<? extends SortedSet<V>> paramSupplier)
  {
    return new CustomSortedSetMultimap(paramMap, paramSupplier);
  }

  public static <K, V> ListMultimap<K, V> synchronizedListMultimap(ListMultimap<K, V> paramListMultimap)
  {
    return Synchronized.listMultimap(paramListMultimap, null);
  }

  public static <K, V> Multimap<K, V> synchronizedMultimap(Multimap<K, V> paramMultimap)
  {
    return Synchronized.multimap(paramMultimap, null);
  }

  public static <K, V> SetMultimap<K, V> synchronizedSetMultimap(SetMultimap<K, V> paramSetMultimap)
  {
    return Synchronized.setMultimap(paramSetMultimap, null);
  }

  public static <K, V> SortedSetMultimap<K, V> synchronizedSortedSetMultimap(SortedSetMultimap<K, V> paramSortedSetMultimap)
  {
    return Synchronized.sortedSetMultimap(paramSortedSetMultimap, null);
  }

  public static <K, V1, V2> ListMultimap<K, V2> transformEntries(ListMultimap<K, V1> paramListMultimap, Maps.EntryTransformer<? super K, ? super V1, V2> paramEntryTransformer)
  {
    return new TransformedEntriesListMultimap(paramListMultimap, paramEntryTransformer);
  }

  public static <K, V1, V2> Multimap<K, V2> transformEntries(Multimap<K, V1> paramMultimap, Maps.EntryTransformer<? super K, ? super V1, V2> paramEntryTransformer)
  {
    return new TransformedEntriesMultimap(paramMultimap, paramEntryTransformer);
  }

  public static <K, V1, V2> ListMultimap<K, V2> transformValues(ListMultimap<K, V1> paramListMultimap, Function<? super V1, V2> paramFunction)
  {
    Preconditions.checkNotNull(paramFunction);
    return transformEntries(paramListMultimap, new Maps.EntryTransformer()
    {
      public V2 transformEntry(K paramAnonymousK, V1 paramAnonymousV1)
      {
        return this.val$function.apply(paramAnonymousV1);
      }
    });
  }

  public static <K, V1, V2> Multimap<K, V2> transformValues(Multimap<K, V1> paramMultimap, Function<? super V1, V2> paramFunction)
  {
    Preconditions.checkNotNull(paramFunction);
    return transformEntries(paramMultimap, new Maps.EntryTransformer()
    {
      public V2 transformEntry(K paramAnonymousK, V1 paramAnonymousV1)
      {
        return this.val$function.apply(paramAnonymousV1);
      }
    });
  }

  private static <K, V> Set<Map.Entry<K, Collection<V>>> unmodifiableAsMapEntries(Set<Map.Entry<K, Collection<V>>> paramSet)
  {
    return new UnmodifiableAsMapEntries(Collections.unmodifiableSet(paramSet));
  }

  private static <K, V> Map.Entry<K, Collection<V>> unmodifiableAsMapEntry(Map.Entry<K, Collection<V>> paramEntry)
  {
    Preconditions.checkNotNull(paramEntry);
    return new AbstractMapEntry()
    {
      public K getKey()
      {
        return this.val$entry.getKey();
      }

      public Collection<V> getValue()
      {
        return Multimaps.unmodifiableValueCollection((Collection)this.val$entry.getValue());
      }
    };
  }

  private static <K, V> Collection<Map.Entry<K, V>> unmodifiableEntries(Collection<Map.Entry<K, V>> paramCollection)
  {
    if ((paramCollection instanceof Set))
      return Maps.unmodifiableEntrySet((Set)paramCollection);
    return new Maps.UnmodifiableEntries(Collections.unmodifiableCollection(paramCollection));
  }

  @Deprecated
  public static <K, V> ListMultimap<K, V> unmodifiableListMultimap(ImmutableListMultimap<K, V> paramImmutableListMultimap)
  {
    return (ListMultimap)Preconditions.checkNotNull(paramImmutableListMultimap);
  }

  public static <K, V> ListMultimap<K, V> unmodifiableListMultimap(ListMultimap<K, V> paramListMultimap)
  {
    if (((paramListMultimap instanceof UnmodifiableListMultimap)) || ((paramListMultimap instanceof ImmutableListMultimap)))
      return paramListMultimap;
    return new UnmodifiableListMultimap(paramListMultimap);
  }

  @Deprecated
  public static <K, V> Multimap<K, V> unmodifiableMultimap(ImmutableMultimap<K, V> paramImmutableMultimap)
  {
    return (Multimap)Preconditions.checkNotNull(paramImmutableMultimap);
  }

  public static <K, V> Multimap<K, V> unmodifiableMultimap(Multimap<K, V> paramMultimap)
  {
    if (((paramMultimap instanceof UnmodifiableMultimap)) || ((paramMultimap instanceof ImmutableMultimap)))
      return paramMultimap;
    return new UnmodifiableMultimap(paramMultimap);
  }

  @Deprecated
  public static <K, V> SetMultimap<K, V> unmodifiableSetMultimap(ImmutableSetMultimap<K, V> paramImmutableSetMultimap)
  {
    return (SetMultimap)Preconditions.checkNotNull(paramImmutableSetMultimap);
  }

  public static <K, V> SetMultimap<K, V> unmodifiableSetMultimap(SetMultimap<K, V> paramSetMultimap)
  {
    if (((paramSetMultimap instanceof UnmodifiableSetMultimap)) || ((paramSetMultimap instanceof ImmutableSetMultimap)))
      return paramSetMultimap;
    return new UnmodifiableSetMultimap(paramSetMultimap);
  }

  public static <K, V> SortedSetMultimap<K, V> unmodifiableSortedSetMultimap(SortedSetMultimap<K, V> paramSortedSetMultimap)
  {
    if ((paramSortedSetMultimap instanceof UnmodifiableSortedSetMultimap))
      return paramSortedSetMultimap;
    return new UnmodifiableSortedSetMultimap(paramSortedSetMultimap);
  }

  private static <V> Collection<V> unmodifiableValueCollection(Collection<V> paramCollection)
  {
    if ((paramCollection instanceof SortedSet))
      return Collections.unmodifiableSortedSet((SortedSet)paramCollection);
    if ((paramCollection instanceof Set))
      return Collections.unmodifiableSet((Set)paramCollection);
    if ((paramCollection instanceof List))
      return Collections.unmodifiableList((List)paramCollection);
    return Collections.unmodifiableCollection(paramCollection);
  }

  static abstract class AsMap<K, V> extends Maps.ImprovedAbstractMap<K, Collection<V>>
  {
    public void clear()
    {
      multimap().clear();
    }

    public boolean containsKey(Object paramObject)
    {
      return multimap().containsKey(paramObject);
    }

    protected Set<Map.Entry<K, Collection<V>>> createEntrySet()
    {
      return new EntrySet();
    }

    abstract Iterator<Map.Entry<K, Collection<V>>> entryIterator();

    public Collection<V> get(Object paramObject)
    {
      if (containsKey(paramObject))
        return multimap().get(paramObject);
      return null;
    }

    public boolean isEmpty()
    {
      return multimap().isEmpty();
    }

    public Set<K> keySet()
    {
      return multimap().keySet();
    }

    abstract Multimap<K, V> multimap();

    public Collection<V> remove(Object paramObject)
    {
      if (containsKey(paramObject))
        return multimap().removeAll(paramObject);
      return null;
    }

    void removeValuesForKey(Object paramObject)
    {
      multimap().removeAll(paramObject);
    }

    public abstract int size();

    class EntrySet extends Maps.EntrySet<K, Collection<V>>
    {
      EntrySet()
      {
      }

      public Iterator<Map.Entry<K, Collection<V>>> iterator()
      {
        return Multimaps.AsMap.this.entryIterator();
      }

      Map<K, Collection<V>> map()
      {
        return Multimaps.AsMap.this;
      }

      public boolean remove(Object paramObject)
      {
        if (!contains(paramObject))
          return false;
        Map.Entry localEntry = (Map.Entry)paramObject;
        Multimaps.AsMap.this.removeValuesForKey(localEntry.getKey());
        return true;
      }
    }
  }

  private static class CustomListMultimap<K, V> extends AbstractListMultimap<K, V>
  {

    @GwtIncompatible("java serialization not supported")
    private static final long serialVersionUID;
    transient Supplier<? extends List<V>> factory;

    CustomListMultimap(Map<K, Collection<V>> paramMap, Supplier<? extends List<V>> paramSupplier)
    {
      super();
      this.factory = ((Supplier)Preconditions.checkNotNull(paramSupplier));
    }

    @GwtIncompatible("java.io.ObjectInputStream")
    private void readObject(ObjectInputStream paramObjectInputStream)
      throws IOException, ClassNotFoundException
    {
      paramObjectInputStream.defaultReadObject();
      this.factory = ((Supplier)paramObjectInputStream.readObject());
      setMap((Map)paramObjectInputStream.readObject());
    }

    @GwtIncompatible("java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream paramObjectOutputStream)
      throws IOException
    {
      paramObjectOutputStream.defaultWriteObject();
      paramObjectOutputStream.writeObject(this.factory);
      paramObjectOutputStream.writeObject(backingMap());
    }

    protected List<V> createCollection()
    {
      return (List)this.factory.get();
    }
  }

  private static class CustomMultimap<K, V> extends AbstractMapBasedMultimap<K, V>
  {

    @GwtIncompatible("java serialization not supported")
    private static final long serialVersionUID;
    transient Supplier<? extends Collection<V>> factory;

    CustomMultimap(Map<K, Collection<V>> paramMap, Supplier<? extends Collection<V>> paramSupplier)
    {
      super();
      this.factory = ((Supplier)Preconditions.checkNotNull(paramSupplier));
    }

    @GwtIncompatible("java.io.ObjectInputStream")
    private void readObject(ObjectInputStream paramObjectInputStream)
      throws IOException, ClassNotFoundException
    {
      paramObjectInputStream.defaultReadObject();
      this.factory = ((Supplier)paramObjectInputStream.readObject());
      setMap((Map)paramObjectInputStream.readObject());
    }

    @GwtIncompatible("java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream paramObjectOutputStream)
      throws IOException
    {
      paramObjectOutputStream.defaultWriteObject();
      paramObjectOutputStream.writeObject(this.factory);
      paramObjectOutputStream.writeObject(backingMap());
    }

    protected Collection<V> createCollection()
    {
      return (Collection)this.factory.get();
    }
  }

  private static class CustomSetMultimap<K, V> extends AbstractSetMultimap<K, V>
  {

    @GwtIncompatible("not needed in emulated source")
    private static final long serialVersionUID;
    transient Supplier<? extends Set<V>> factory;

    CustomSetMultimap(Map<K, Collection<V>> paramMap, Supplier<? extends Set<V>> paramSupplier)
    {
      super();
      this.factory = ((Supplier)Preconditions.checkNotNull(paramSupplier));
    }

    @GwtIncompatible("java.io.ObjectInputStream")
    private void readObject(ObjectInputStream paramObjectInputStream)
      throws IOException, ClassNotFoundException
    {
      paramObjectInputStream.defaultReadObject();
      this.factory = ((Supplier)paramObjectInputStream.readObject());
      setMap((Map)paramObjectInputStream.readObject());
    }

    @GwtIncompatible("java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream paramObjectOutputStream)
      throws IOException
    {
      paramObjectOutputStream.defaultWriteObject();
      paramObjectOutputStream.writeObject(this.factory);
      paramObjectOutputStream.writeObject(backingMap());
    }

    protected Set<V> createCollection()
    {
      return (Set)this.factory.get();
    }
  }

  private static class CustomSortedSetMultimap<K, V> extends AbstractSortedSetMultimap<K, V>
  {

    @GwtIncompatible("not needed in emulated source")
    private static final long serialVersionUID;
    transient Supplier<? extends SortedSet<V>> factory;
    transient Comparator<? super V> valueComparator;

    CustomSortedSetMultimap(Map<K, Collection<V>> paramMap, Supplier<? extends SortedSet<V>> paramSupplier)
    {
      super();
      this.factory = ((Supplier)Preconditions.checkNotNull(paramSupplier));
      this.valueComparator = ((SortedSet)paramSupplier.get()).comparator();
    }

    @GwtIncompatible("java.io.ObjectInputStream")
    private void readObject(ObjectInputStream paramObjectInputStream)
      throws IOException, ClassNotFoundException
    {
      paramObjectInputStream.defaultReadObject();
      this.factory = ((Supplier)paramObjectInputStream.readObject());
      this.valueComparator = ((SortedSet)this.factory.get()).comparator();
      setMap((Map)paramObjectInputStream.readObject());
    }

    @GwtIncompatible("java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream paramObjectOutputStream)
      throws IOException
    {
      paramObjectOutputStream.defaultWriteObject();
      paramObjectOutputStream.writeObject(this.factory);
      paramObjectOutputStream.writeObject(backingMap());
    }

    protected SortedSet<V> createCollection()
    {
      return (SortedSet)this.factory.get();
    }

    public Comparator<? super V> valueComparator()
    {
      return this.valueComparator;
    }
  }

  static abstract class Entries<K, V> extends AbstractCollection<Map.Entry<K, V>>
  {
    public void clear()
    {
      multimap().clear();
    }

    public boolean contains(@Nullable Object paramObject)
    {
      if ((paramObject instanceof Map.Entry))
      {
        Map.Entry localEntry = (Map.Entry)paramObject;
        return multimap().containsEntry(localEntry.getKey(), localEntry.getValue());
      }
      return false;
    }

    abstract Multimap<K, V> multimap();

    public boolean remove(@Nullable Object paramObject)
    {
      if ((paramObject instanceof Map.Entry))
      {
        Map.Entry localEntry = (Map.Entry)paramObject;
        return multimap().remove(localEntry.getKey(), localEntry.getValue());
      }
      return false;
    }

    public int size()
    {
      return multimap().size();
    }
  }

  static abstract class EntrySet<K, V> extends Multimaps.Entries<K, V>
    implements Set<Map.Entry<K, V>>
  {
    public boolean equals(@Nullable Object paramObject)
    {
      return Sets.equalsImpl(this, paramObject);
    }

    public int hashCode()
    {
      return Sets.hashCodeImpl(this);
    }
  }

  static class Keys<K, V> extends AbstractMultiset<K>
  {
    final Multimap<K, V> multimap;

    Keys(Multimap<K, V> paramMultimap)
    {
      this.multimap = paramMultimap;
    }

    public void clear()
    {
      this.multimap.clear();
    }

    public boolean contains(@Nullable Object paramObject)
    {
      return this.multimap.containsKey(paramObject);
    }

    public int count(@Nullable Object paramObject)
    {
      Collection localCollection = (Collection)Maps.safeGet(this.multimap.asMap(), paramObject);
      if (localCollection == null)
        return 0;
      return localCollection.size();
    }

    Set<Multiset.Entry<K>> createEntrySet()
    {
      return new KeysEntrySet();
    }

    int distinctElements()
    {
      return this.multimap.asMap().size();
    }

    public Set<K> elementSet()
    {
      return this.multimap.keySet();
    }

    Iterator<Multiset.Entry<K>> entryIterator()
    {
      return new TransformedIterator(this.multimap.asMap().entrySet().iterator())
      {
        Multiset.Entry<K> transform(final Map.Entry<K, Collection<V>> paramAnonymousEntry)
        {
          return new Multisets.AbstractEntry()
          {
            public int getCount()
            {
              return ((Collection)paramAnonymousEntry.getValue()).size();
            }

            public K getElement()
            {
              return paramAnonymousEntry.getKey();
            }
          };
        }
      };
    }

    public Iterator<K> iterator()
    {
      return Maps.keyIterator(this.multimap.entries().iterator());
    }

    public int remove(@Nullable Object paramObject, int paramInt)
    {
      boolean bool;
      int i;
      if (paramInt >= 0)
      {
        bool = true;
        Preconditions.checkArgument(bool);
        if (paramInt != 0)
          break label29;
        i = count(paramObject);
      }
      label29: Collection localCollection;
      do
      {
        return i;
        bool = false;
        break;
        localCollection = (Collection)Maps.safeGet(this.multimap.asMap(), paramObject);
        i = 0;
      }
      while (localCollection == null);
      int j = localCollection.size();
      if (paramInt >= j)
        localCollection.clear();
      while (true)
      {
        return j;
        Iterator localIterator = localCollection.iterator();
        for (int k = 0; k < paramInt; k++)
        {
          localIterator.next();
          localIterator.remove();
        }
      }
    }

    class KeysEntrySet extends Multisets.EntrySet<K>
    {
      KeysEntrySet()
      {
      }

      public boolean contains(@Nullable Object paramObject)
      {
        boolean bool1 = paramObject instanceof Multiset.Entry;
        boolean bool2 = false;
        if (bool1)
        {
          Multiset.Entry localEntry = (Multiset.Entry)paramObject;
          Collection localCollection = (Collection)Multimaps.Keys.this.multimap.asMap().get(localEntry.getElement());
          bool2 = false;
          if (localCollection != null)
          {
            int i = localCollection.size();
            int j = localEntry.getCount();
            bool2 = false;
            if (i == j)
              bool2 = true;
          }
        }
        return bool2;
      }

      public boolean isEmpty()
      {
        return Multimaps.Keys.this.multimap.isEmpty();
      }

      public Iterator<Multiset.Entry<K>> iterator()
      {
        return Multimaps.Keys.this.entryIterator();
      }

      Multiset<K> multiset()
      {
        return Multimaps.Keys.this;
      }

      public boolean remove(@Nullable Object paramObject)
      {
        if ((paramObject instanceof Multiset.Entry))
        {
          Multiset.Entry localEntry = (Multiset.Entry)paramObject;
          Collection localCollection = (Collection)Multimaps.Keys.this.multimap.asMap().get(localEntry.getElement());
          if ((localCollection != null) && (localCollection.size() == localEntry.getCount()))
          {
            localCollection.clear();
            return true;
          }
        }
        return false;
      }

      public int size()
      {
        return Multimaps.Keys.this.distinctElements();
      }
    }
  }

  private static class MapMultimap<K, V>
    implements SetMultimap<K, V>, Serializable
  {
    private static final Joiner.MapJoiner JOINER = Joiner.on("], ").withKeyValueSeparator("=[").useForNull("null");
    private static final long serialVersionUID = 7845222491160860175L;
    transient Map<K, Collection<V>> asMap;
    final Map<K, V> map;

    MapMultimap(Map<K, V> paramMap)
    {
      this.map = ((Map)Preconditions.checkNotNull(paramMap));
    }

    public Map<K, Collection<V>> asMap()
    {
      Object localObject = this.asMap;
      if (localObject == null)
      {
        localObject = new AsMap();
        this.asMap = ((Map)localObject);
      }
      return localObject;
    }

    public void clear()
    {
      this.map.clear();
    }

    public boolean containsEntry(Object paramObject1, Object paramObject2)
    {
      return this.map.entrySet().contains(Maps.immutableEntry(paramObject1, paramObject2));
    }

    public boolean containsKey(Object paramObject)
    {
      return this.map.containsKey(paramObject);
    }

    public boolean containsValue(Object paramObject)
    {
      return this.map.containsValue(paramObject);
    }

    public Set<Map.Entry<K, V>> entries()
    {
      return this.map.entrySet();
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if (paramObject == this);
      Multimap localMultimap;
      do
      {
        return true;
        if (!(paramObject instanceof Multimap))
          break;
        localMultimap = (Multimap)paramObject;
      }
      while ((size() == localMultimap.size()) && (asMap().equals(localMultimap.asMap())));
      return false;
      return false;
    }

    public Set<V> get(final K paramK)
    {
      return new Sets.ImprovedAbstractSet()
      {
        public Iterator<V> iterator()
        {
          return new Iterator()
          {
            int i;

            public boolean hasNext()
            {
              return (this.i == 0) && (Multimaps.MapMultimap.this.map.containsKey(Multimaps.MapMultimap.1.this.val$key));
            }

            public V next()
            {
              if (!hasNext())
                throw new NoSuchElementException();
              this.i = (1 + this.i);
              return Multimaps.MapMultimap.this.map.get(Multimaps.MapMultimap.1.this.val$key);
            }

            public void remove()
            {
              int j = 1;
              if (this.i == j);
              while (true)
              {
                Preconditions.checkState(j);
                this.i = -1;
                Multimaps.MapMultimap.this.map.remove(Multimaps.MapMultimap.1.this.val$key);
                return;
                int k = 0;
              }
            }
          };
        }

        public int size()
        {
          if (Multimaps.MapMultimap.this.map.containsKey(paramK))
            return 1;
          return 0;
        }
      };
    }

    public int hashCode()
    {
      return this.map.hashCode();
    }

    public boolean isEmpty()
    {
      return this.map.isEmpty();
    }

    public Set<K> keySet()
    {
      return this.map.keySet();
    }

    public Multiset<K> keys()
    {
      return new Multimaps.Keys(this);
    }

    public boolean put(K paramK, V paramV)
    {
      throw new UnsupportedOperationException();
    }

    public boolean putAll(Multimap<? extends K, ? extends V> paramMultimap)
    {
      throw new UnsupportedOperationException();
    }

    public boolean putAll(K paramK, Iterable<? extends V> paramIterable)
    {
      throw new UnsupportedOperationException();
    }

    public boolean remove(Object paramObject1, Object paramObject2)
    {
      return this.map.entrySet().remove(Maps.immutableEntry(paramObject1, paramObject2));
    }

    public Set<V> removeAll(Object paramObject)
    {
      HashSet localHashSet = new HashSet(2);
      if (!this.map.containsKey(paramObject))
        return localHashSet;
      localHashSet.add(this.map.remove(paramObject));
      return localHashSet;
    }

    public Set<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
    {
      throw new UnsupportedOperationException();
    }

    public int size()
    {
      return this.map.size();
    }

    public String toString()
    {
      if (this.map.isEmpty())
        return "{}";
      StringBuilder localStringBuilder = Collections2.newStringBuilderForCollection(this.map.size()).append('{');
      JOINER.appendTo(localStringBuilder, this.map);
      return "]}";
    }

    public Collection<V> values()
    {
      return this.map.values();
    }

    class AsMap extends Maps.ImprovedAbstractMap<K, Collection<V>>
    {
      AsMap()
      {
      }

      public boolean containsKey(Object paramObject)
      {
        return Multimaps.MapMultimap.this.map.containsKey(paramObject);
      }

      protected Set<Map.Entry<K, Collection<V>>> createEntrySet()
      {
        return new Multimaps.MapMultimap.AsMapEntries(Multimaps.MapMultimap.this);
      }

      public Collection<V> get(Object paramObject)
      {
        Set localSet = Multimaps.MapMultimap.this.get(paramObject);
        if (localSet.isEmpty())
          localSet = null;
        return localSet;
      }

      public Collection<V> remove(Object paramObject)
      {
        Set localSet = Multimaps.MapMultimap.this.removeAll(paramObject);
        if (localSet.isEmpty())
          localSet = null;
        return localSet;
      }
    }

    class AsMapEntries extends Sets.ImprovedAbstractSet<Map.Entry<K, Collection<V>>>
    {
      AsMapEntries()
      {
      }

      public boolean contains(Object paramObject)
      {
        int i = 1;
        if (!(paramObject instanceof Map.Entry));
        Map.Entry localEntry;
        do
        {
          return false;
          localEntry = (Map.Entry)paramObject;
        }
        while (!(localEntry.getValue() instanceof Set));
        Set localSet = (Set)localEntry.getValue();
        if ((localSet.size() == i) && (Multimaps.MapMultimap.this.containsEntry(localEntry.getKey(), localSet.iterator().next())));
        while (true)
        {
          return i;
          int j = 0;
        }
      }

      public Iterator<Map.Entry<K, Collection<V>>> iterator()
      {
        return new TransformedIterator(Multimaps.MapMultimap.this.map.keySet().iterator())
        {
          Map.Entry<K, Collection<V>> transform(final K paramAnonymousK)
          {
            return new AbstractMapEntry()
            {
              public K getKey()
              {
                return paramAnonymousK;
              }

              public Collection<V> getValue()
              {
                return Multimaps.MapMultimap.this.get(paramAnonymousK);
              }
            };
          }
        };
      }

      public boolean remove(Object paramObject)
      {
        int i = 1;
        if (!(paramObject instanceof Map.Entry));
        Map.Entry localEntry;
        do
        {
          return false;
          localEntry = (Map.Entry)paramObject;
        }
        while (!(localEntry.getValue() instanceof Set));
        Set localSet = (Set)localEntry.getValue();
        if ((localSet.size() == i) && (Multimaps.MapMultimap.this.map.entrySet().remove(Maps.immutableEntry(localEntry.getKey(), localSet.iterator().next()))));
        while (true)
        {
          return i;
          int j = 0;
        }
      }

      public int size()
      {
        return Multimaps.MapMultimap.this.map.size();
      }
    }
  }

  private static final class TransformedEntriesListMultimap<K, V1, V2> extends Multimaps.TransformedEntriesMultimap<K, V1, V2>
    implements ListMultimap<K, V2>
  {
    TransformedEntriesListMultimap(ListMultimap<K, V1> paramListMultimap, Maps.EntryTransformer<? super K, ? super V1, V2> paramEntryTransformer)
    {
      super(paramEntryTransformer);
    }

    public List<V2> get(K paramK)
    {
      return transform(paramK, this.fromMultimap.get(paramK));
    }

    public List<V2> removeAll(Object paramObject)
    {
      return transform(paramObject, this.fromMultimap.removeAll(paramObject));
    }

    public List<V2> replaceValues(K paramK, Iterable<? extends V2> paramIterable)
    {
      throw new UnsupportedOperationException();
    }

    List<V2> transform(final K paramK, Collection<V1> paramCollection)
    {
      return Lists.transform((List)paramCollection, new Function()
      {
        public V2 apply(V1 paramAnonymousV1)
        {
          return Multimaps.TransformedEntriesListMultimap.this.transformer.transformEntry(paramK, paramAnonymousV1);
        }
      });
    }
  }

  private static class TransformedEntriesMultimap<K, V1, V2> extends AbstractMultimap<K, V2>
  {
    final Multimap<K, V1> fromMultimap;
    final Maps.EntryTransformer<? super K, ? super V1, V2> transformer;

    TransformedEntriesMultimap(Multimap<K, V1> paramMultimap, Maps.EntryTransformer<? super K, ? super V1, V2> paramEntryTransformer)
    {
      this.fromMultimap = ((Multimap)Preconditions.checkNotNull(paramMultimap));
      this.transformer = ((Maps.EntryTransformer)Preconditions.checkNotNull(paramEntryTransformer));
    }

    public void clear()
    {
      this.fromMultimap.clear();
    }

    public boolean containsEntry(Object paramObject1, Object paramObject2)
    {
      return get(paramObject1).contains(paramObject2);
    }

    public boolean containsKey(Object paramObject)
    {
      return this.fromMultimap.containsKey(paramObject);
    }

    public boolean containsValue(Object paramObject)
    {
      return values().contains(paramObject);
    }

    Map<K, Collection<V2>> createAsMap()
    {
      return Maps.transformEntries(this.fromMultimap.asMap(), new Maps.EntryTransformer()
      {
        public Collection<V2> transformEntry(K paramAnonymousK, Collection<V1> paramAnonymousCollection)
        {
          return Multimaps.TransformedEntriesMultimap.this.transform(paramAnonymousK, paramAnonymousCollection);
        }
      });
    }

    Collection<V2> createValues()
    {
      return Collections2.transform(this.fromMultimap.entries(), new Function()
      {
        public V2 apply(Map.Entry<K, V1> paramAnonymousEntry)
        {
          return Multimaps.TransformedEntriesMultimap.this.transformer.transformEntry(paramAnonymousEntry.getKey(), paramAnonymousEntry.getValue());
        }
      });
    }

    Iterator<Map.Entry<K, V2>> entryIterator()
    {
      return Iterators.transform(this.fromMultimap.entries().iterator(), new Function()
      {
        public Map.Entry<K, V2> apply(final Map.Entry<K, V1> paramAnonymousEntry)
        {
          return new AbstractMapEntry()
          {
            public K getKey()
            {
              return paramAnonymousEntry.getKey();
            }

            public V2 getValue()
            {
              return Multimaps.TransformedEntriesMultimap.this.transformer.transformEntry(paramAnonymousEntry.getKey(), paramAnonymousEntry.getValue());
            }
          };
        }
      });
    }

    public Collection<V2> get(K paramK)
    {
      return transform(paramK, this.fromMultimap.get(paramK));
    }

    public boolean isEmpty()
    {
      return this.fromMultimap.isEmpty();
    }

    public Set<K> keySet()
    {
      return this.fromMultimap.keySet();
    }

    public Multiset<K> keys()
    {
      return this.fromMultimap.keys();
    }

    public boolean put(K paramK, V2 paramV2)
    {
      throw new UnsupportedOperationException();
    }

    public boolean putAll(Multimap<? extends K, ? extends V2> paramMultimap)
    {
      throw new UnsupportedOperationException();
    }

    public boolean putAll(K paramK, Iterable<? extends V2> paramIterable)
    {
      throw new UnsupportedOperationException();
    }

    public boolean remove(Object paramObject1, Object paramObject2)
    {
      return get(paramObject1).remove(paramObject2);
    }

    public Collection<V2> removeAll(Object paramObject)
    {
      return transform(paramObject, this.fromMultimap.removeAll(paramObject));
    }

    public Collection<V2> replaceValues(K paramK, Iterable<? extends V2> paramIterable)
    {
      throw new UnsupportedOperationException();
    }

    public int size()
    {
      return this.fromMultimap.size();
    }

    Collection<V2> transform(K paramK, Collection<V1> paramCollection)
    {
      Multimaps.ValueFunction localValueFunction = new Multimaps.ValueFunction(paramK, this.transformer);
      if ((paramCollection instanceof List))
        return Lists.transform((List)paramCollection, localValueFunction);
      return Collections2.transform(paramCollection, localValueFunction);
    }
  }

  static class UnmodifiableAsMapEntries<K, V> extends ForwardingSet<Map.Entry<K, Collection<V>>>
  {
    private final Set<Map.Entry<K, Collection<V>>> delegate;

    UnmodifiableAsMapEntries(Set<Map.Entry<K, Collection<V>>> paramSet)
    {
      this.delegate = paramSet;
    }

    public boolean contains(Object paramObject)
    {
      return Maps.containsEntryImpl(delegate(), paramObject);
    }

    public boolean containsAll(Collection<?> paramCollection)
    {
      return standardContainsAll(paramCollection);
    }

    protected Set<Map.Entry<K, Collection<V>>> delegate()
    {
      return this.delegate;
    }

    public boolean equals(@Nullable Object paramObject)
    {
      return standardEquals(paramObject);
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
          return Multimaps.unmodifiableAsMapEntry((Map.Entry)this.val$iterator.next());
        }
      };
    }

    public Object[] toArray()
    {
      return standardToArray();
    }

    public <T> T[] toArray(T[] paramArrayOfT)
    {
      return standardToArray(paramArrayOfT);
    }
  }

  private static class UnmodifiableAsMapValues<V> extends ForwardingCollection<Collection<V>>
  {
    final Collection<Collection<V>> delegate;

    UnmodifiableAsMapValues(Collection<Collection<V>> paramCollection)
    {
      this.delegate = Collections.unmodifiableCollection(paramCollection);
    }

    public boolean contains(Object paramObject)
    {
      return standardContains(paramObject);
    }

    public boolean containsAll(Collection<?> paramCollection)
    {
      return standardContainsAll(paramCollection);
    }

    protected Collection<Collection<V>> delegate()
    {
      return this.delegate;
    }

    public Iterator<Collection<V>> iterator()
    {
      return new UnmodifiableIterator()
      {
        public boolean hasNext()
        {
          return this.val$iterator.hasNext();
        }

        public Collection<V> next()
        {
          return Multimaps.unmodifiableValueCollection((Collection)this.val$iterator.next());
        }
      };
    }

    public Object[] toArray()
    {
      return standardToArray();
    }

    public <T> T[] toArray(T[] paramArrayOfT)
    {
      return standardToArray(paramArrayOfT);
    }
  }

  private static class UnmodifiableListMultimap<K, V> extends Multimaps.UnmodifiableMultimap<K, V>
    implements ListMultimap<K, V>
  {
    private static final long serialVersionUID;

    UnmodifiableListMultimap(ListMultimap<K, V> paramListMultimap)
    {
      super();
    }

    public ListMultimap<K, V> delegate()
    {
      return (ListMultimap)super.delegate();
    }

    public List<V> get(K paramK)
    {
      return Collections.unmodifiableList(delegate().get(paramK));
    }

    public List<V> removeAll(Object paramObject)
    {
      throw new UnsupportedOperationException();
    }

    public List<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
    {
      throw new UnsupportedOperationException();
    }
  }

  private static class UnmodifiableMultimap<K, V> extends ForwardingMultimap<K, V>
    implements Serializable
  {
    private static final long serialVersionUID;
    final Multimap<K, V> delegate;
    transient Collection<Map.Entry<K, V>> entries;
    transient Set<K> keySet;
    transient Multiset<K> keys;
    transient Map<K, Collection<V>> map;
    transient Collection<V> values;

    UnmodifiableMultimap(Multimap<K, V> paramMultimap)
    {
      this.delegate = ((Multimap)Preconditions.checkNotNull(paramMultimap));
    }

    public Map<K, Collection<V>> asMap()
    {
      Object localObject = this.map;
      if (localObject == null)
      {
        localObject = new ForwardingMap()
        {
          Collection<Collection<V>> asMapValues;
          Set<Map.Entry<K, Collection<V>>> entrySet;

          public boolean containsValue(Object paramAnonymousObject)
          {
            return values().contains(paramAnonymousObject);
          }

          protected Map<K, Collection<V>> delegate()
          {
            return this.val$unmodifiableMap;
          }

          public Set<Map.Entry<K, Collection<V>>> entrySet()
          {
            Set localSet = this.entrySet;
            if (localSet == null)
            {
              localSet = Multimaps.unmodifiableAsMapEntries(this.val$unmodifiableMap.entrySet());
              this.entrySet = localSet;
            }
            return localSet;
          }

          public Collection<V> get(Object paramAnonymousObject)
          {
            Collection localCollection = (Collection)this.val$unmodifiableMap.get(paramAnonymousObject);
            if (localCollection == null)
              return null;
            return Multimaps.unmodifiableValueCollection(localCollection);
          }

          public Collection<Collection<V>> values()
          {
            Object localObject = this.asMapValues;
            if (localObject == null)
            {
              localObject = new Multimaps.UnmodifiableAsMapValues(this.val$unmodifiableMap.values());
              this.asMapValues = ((Collection)localObject);
            }
            return localObject;
          }
        };
        this.map = ((Map)localObject);
      }
      return localObject;
    }

    public void clear()
    {
      throw new UnsupportedOperationException();
    }

    protected Multimap<K, V> delegate()
    {
      return this.delegate;
    }

    public Collection<Map.Entry<K, V>> entries()
    {
      Collection localCollection = this.entries;
      if (localCollection == null)
      {
        localCollection = Multimaps.unmodifiableEntries(this.delegate.entries());
        this.entries = localCollection;
      }
      return localCollection;
    }

    public Collection<V> get(K paramK)
    {
      return Multimaps.unmodifiableValueCollection(this.delegate.get(paramK));
    }

    public Set<K> keySet()
    {
      Set localSet = this.keySet;
      if (localSet == null)
      {
        localSet = Collections.unmodifiableSet(this.delegate.keySet());
        this.keySet = localSet;
      }
      return localSet;
    }

    public Multiset<K> keys()
    {
      Multiset localMultiset = this.keys;
      if (localMultiset == null)
      {
        localMultiset = Multisets.unmodifiableMultiset(this.delegate.keys());
        this.keys = localMultiset;
      }
      return localMultiset;
    }

    public boolean put(K paramK, V paramV)
    {
      throw new UnsupportedOperationException();
    }

    public boolean putAll(Multimap<? extends K, ? extends V> paramMultimap)
    {
      throw new UnsupportedOperationException();
    }

    public boolean putAll(K paramK, Iterable<? extends V> paramIterable)
    {
      throw new UnsupportedOperationException();
    }

    public boolean remove(Object paramObject1, Object paramObject2)
    {
      throw new UnsupportedOperationException();
    }

    public Collection<V> removeAll(Object paramObject)
    {
      throw new UnsupportedOperationException();
    }

    public Collection<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
    {
      throw new UnsupportedOperationException();
    }

    public Collection<V> values()
    {
      Collection localCollection = this.values;
      if (localCollection == null)
      {
        localCollection = Collections.unmodifiableCollection(this.delegate.values());
        this.values = localCollection;
      }
      return localCollection;
    }
  }

  private static class UnmodifiableSetMultimap<K, V> extends Multimaps.UnmodifiableMultimap<K, V>
    implements SetMultimap<K, V>
  {
    private static final long serialVersionUID;

    UnmodifiableSetMultimap(SetMultimap<K, V> paramSetMultimap)
    {
      super();
    }

    public SetMultimap<K, V> delegate()
    {
      return (SetMultimap)super.delegate();
    }

    public Set<Map.Entry<K, V>> entries()
    {
      return Maps.unmodifiableEntrySet(delegate().entries());
    }

    public Set<V> get(K paramK)
    {
      return Collections.unmodifiableSet(delegate().get(paramK));
    }

    public Set<V> removeAll(Object paramObject)
    {
      throw new UnsupportedOperationException();
    }

    public Set<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
    {
      throw new UnsupportedOperationException();
    }
  }

  private static class UnmodifiableSortedSetMultimap<K, V> extends Multimaps.UnmodifiableSetMultimap<K, V>
    implements SortedSetMultimap<K, V>
  {
    private static final long serialVersionUID;

    UnmodifiableSortedSetMultimap(SortedSetMultimap<K, V> paramSortedSetMultimap)
    {
      super();
    }

    public SortedSetMultimap<K, V> delegate()
    {
      return (SortedSetMultimap)super.delegate();
    }

    public SortedSet<V> get(K paramK)
    {
      return Collections.unmodifiableSortedSet(delegate().get(paramK));
    }

    public SortedSet<V> removeAll(Object paramObject)
    {
      throw new UnsupportedOperationException();
    }

    public SortedSet<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
    {
      throw new UnsupportedOperationException();
    }

    public Comparator<? super V> valueComparator()
    {
      return delegate().valueComparator();
    }
  }

  static final class ValueFunction<K, V1, V2>
    implements Function<V1, V2>
  {
    private final K key;
    private final Maps.EntryTransformer<? super K, ? super V1, V2> transformer;

    ValueFunction(K paramK, Maps.EntryTransformer<? super K, ? super V1, V2> paramEntryTransformer)
    {
      this.key = paramK;
      this.transformer = paramEntryTransformer;
    }

    public V2 apply(@Nullable V1 paramV1)
    {
      return this.transformer.transformEntry(this.key, paramV1);
    }
  }

  static class Values<K, V> extends AbstractCollection<V>
  {
    final Multimap<K, V> multimap;

    Values(Multimap<K, V> paramMultimap)
    {
      this.multimap = paramMultimap;
    }

    public void clear()
    {
      this.multimap.clear();
    }

    public boolean contains(@Nullable Object paramObject)
    {
      return this.multimap.containsValue(paramObject);
    }

    public Iterator<V> iterator()
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
 * Qualified Name:     com.google.common.collect.Multimaps
 * JD-Core Version:    0.6.2
 */