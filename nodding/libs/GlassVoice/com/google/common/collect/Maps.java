package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Equivalence;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Joiner.MapJoiner;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentMap;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
public final class Maps
{
  static final Joiner.MapJoiner STANDARD_JOINER = Collections2.STANDARD_JOINER.withKeyValueSeparator("=");

  private static <K, V1, V2> EntryTransformer<K, V1, V2> asEntryTransformer(Function<? super V1, V2> paramFunction)
  {
    Preconditions.checkNotNull(paramFunction);
    return new EntryTransformer()
    {
      public V2 transformEntry(K paramAnonymousK, V1 paramAnonymousV1)
      {
        return this.val$function.apply(paramAnonymousV1);
      }
    };
  }

  @Beta
  public static <K, V> Map<K, V> asMap(Set<K> paramSet, Function<? super K, V> paramFunction)
  {
    if ((paramSet instanceof SortedSet))
      return asMap((SortedSet)paramSet, paramFunction);
    return new AsMapView(paramSet, paramFunction);
  }

  @Beta
  public static <K, V> SortedMap<K, V> asMap(SortedSet<K> paramSortedSet, Function<? super K, V> paramFunction)
  {
    return new SortedAsMapView(paramSortedSet, paramFunction);
  }

  private static <K, V> Iterator<Map.Entry<K, V>> asSetEntryIterator(Set<K> paramSet, final Function<? super K, V> paramFunction)
  {
    return new TransformedIterator(paramSet.iterator())
    {
      Map.Entry<K, V> transform(K paramAnonymousK)
      {
        return Maps.immutableEntry(paramAnonymousK, paramFunction.apply(paramAnonymousK));
      }
    };
  }

  static int capacity(int paramInt)
  {
    if (paramInt < 3)
    {
      if (paramInt >= 0);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool);
        return paramInt + 1;
      }
    }
    if (paramInt < 1073741824)
      return paramInt + paramInt / 3;
    return 2147483647;
  }

  static <K, V> boolean containsEntryImpl(Collection<Map.Entry<K, V>> paramCollection, Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry))
      return false;
    return paramCollection.contains(unmodifiableEntry((Map.Entry)paramObject));
  }

  static boolean containsKeyImpl(Map<?, ?> paramMap, @Nullable Object paramObject)
  {
    return Iterators.contains(keyIterator(paramMap.entrySet().iterator()), paramObject);
  }

  static boolean containsValueImpl(Map<?, ?> paramMap, @Nullable Object paramObject)
  {
    return Iterators.contains(valueIterator(paramMap.entrySet().iterator()), paramObject);
  }

  public static <K, V> MapDifference<K, V> difference(Map<? extends K, ? extends V> paramMap1, Map<? extends K, ? extends V> paramMap2)
  {
    if ((paramMap1 instanceof SortedMap))
      return difference((SortedMap)paramMap1, paramMap2);
    return difference(paramMap1, paramMap2, Equivalence.equals());
  }

  @Beta
  public static <K, V> MapDifference<K, V> difference(Map<? extends K, ? extends V> paramMap1, Map<? extends K, ? extends V> paramMap2, Equivalence<? super V> paramEquivalence)
  {
    Preconditions.checkNotNull(paramEquivalence);
    HashMap localHashMap1 = newHashMap();
    HashMap localHashMap2 = new HashMap(paramMap2);
    HashMap localHashMap3 = newHashMap();
    HashMap localHashMap4 = newHashMap();
    int i = 1;
    Iterator localIterator = paramMap1.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject1 = localEntry.getKey();
      Object localObject2 = localEntry.getValue();
      if (paramMap2.containsKey(localObject1))
      {
        Object localObject3 = localHashMap2.remove(localObject1);
        if (paramEquivalence.equivalent(localObject2, localObject3))
        {
          localHashMap3.put(localObject1, localObject2);
        }
        else
        {
          localHashMap4.put(localObject1, ValueDifferenceImpl.create(localObject2, localObject3));
          i = 0;
        }
      }
      else
      {
        localHashMap1.put(localObject1, localObject2);
        i = 0;
      }
    }
    if ((i != 0) && (localHashMap2.isEmpty()));
    for (boolean bool = true; ; bool = false)
      return mapDifference(bool, localHashMap1, localHashMap2, localHashMap3, localHashMap4);
  }

  public static <K, V> SortedMapDifference<K, V> difference(SortedMap<K, ? extends V> paramSortedMap, Map<? extends K, ? extends V> paramMap)
  {
    Preconditions.checkNotNull(paramSortedMap);
    Preconditions.checkNotNull(paramMap);
    Comparator localComparator = orNaturalOrder(paramSortedMap.comparator());
    TreeMap localTreeMap1 = newTreeMap(localComparator);
    TreeMap localTreeMap2 = newTreeMap(localComparator);
    localTreeMap2.putAll(paramMap);
    TreeMap localTreeMap3 = newTreeMap(localComparator);
    TreeMap localTreeMap4 = newTreeMap(localComparator);
    int i = 1;
    Iterator localIterator = paramSortedMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject1 = localEntry.getKey();
      Object localObject2 = localEntry.getValue();
      if (paramMap.containsKey(localObject1))
      {
        Object localObject3 = localTreeMap2.remove(localObject1);
        if (Objects.equal(localObject2, localObject3))
        {
          localTreeMap3.put(localObject1, localObject2);
        }
        else
        {
          localTreeMap4.put(localObject1, ValueDifferenceImpl.create(localObject2, localObject3));
          i = 0;
        }
      }
      else
      {
        localTreeMap1.put(localObject1, localObject2);
        i = 0;
      }
    }
    if ((i != 0) && (localTreeMap2.isEmpty()));
    for (boolean bool = true; ; bool = false)
      return sortedMapDifference(bool, localTreeMap1, localTreeMap2, localTreeMap3, localTreeMap4);
  }

  static boolean equalsImpl(Map<?, ?> paramMap, Object paramObject)
  {
    if (paramMap == paramObject)
      return true;
    if ((paramObject instanceof Map))
    {
      Map localMap = (Map)paramObject;
      return paramMap.entrySet().equals(localMap.entrySet());
    }
    return false;
  }

  public static <K, V> BiMap<K, V> filterEntries(BiMap<K, V> paramBiMap, Predicate<? super Map.Entry<K, V>> paramPredicate)
  {
    Preconditions.checkNotNull(paramBiMap);
    Preconditions.checkNotNull(paramPredicate);
    if ((paramBiMap instanceof FilteredEntryBiMap))
      return filterFiltered((FilteredEntryBiMap)paramBiMap, paramPredicate);
    return new FilteredEntryBiMap(paramBiMap, paramPredicate);
  }

  public static <K, V> Map<K, V> filterEntries(Map<K, V> paramMap, Predicate<? super Map.Entry<K, V>> paramPredicate)
  {
    if ((paramMap instanceof SortedMap))
      return filterEntries((SortedMap)paramMap, paramPredicate);
    if ((paramMap instanceof BiMap))
      return filterEntries((BiMap)paramMap, paramPredicate);
    Preconditions.checkNotNull(paramPredicate);
    if ((paramMap instanceof AbstractFilteredMap))
      return filterFiltered((AbstractFilteredMap)paramMap, paramPredicate);
    return new FilteredEntryMap((Map)Preconditions.checkNotNull(paramMap), paramPredicate);
  }

  public static <K, V> SortedMap<K, V> filterEntries(SortedMap<K, V> paramSortedMap, Predicate<? super Map.Entry<K, V>> paramPredicate)
  {
    Preconditions.checkNotNull(paramPredicate);
    if ((paramSortedMap instanceof FilteredEntrySortedMap))
      return filterFiltered((FilteredEntrySortedMap)paramSortedMap, paramPredicate);
    return new FilteredEntrySortedMap((SortedMap)Preconditions.checkNotNull(paramSortedMap), paramPredicate);
  }

  private static <K, V> BiMap<K, V> filterFiltered(FilteredEntryBiMap<K, V> paramFilteredEntryBiMap, Predicate<? super Map.Entry<K, V>> paramPredicate)
  {
    Predicate localPredicate = Predicates.and(paramFilteredEntryBiMap.predicate, paramPredicate);
    return new FilteredEntryBiMap(paramFilteredEntryBiMap.unfiltered(), localPredicate);
  }

  private static <K, V> Map<K, V> filterFiltered(AbstractFilteredMap<K, V> paramAbstractFilteredMap, Predicate<? super Map.Entry<K, V>> paramPredicate)
  {
    Predicate localPredicate = Predicates.and(paramAbstractFilteredMap.predicate, paramPredicate);
    return new FilteredEntryMap(paramAbstractFilteredMap.unfiltered, localPredicate);
  }

  private static <K, V> SortedMap<K, V> filterFiltered(FilteredEntrySortedMap<K, V> paramFilteredEntrySortedMap, Predicate<? super Map.Entry<K, V>> paramPredicate)
  {
    Predicate localPredicate = Predicates.and(paramFilteredEntrySortedMap.predicate, paramPredicate);
    return new FilteredEntrySortedMap(paramFilteredEntrySortedMap.sortedMap(), localPredicate);
  }

  public static <K, V> BiMap<K, V> filterKeys(BiMap<K, V> paramBiMap, Predicate<? super K> paramPredicate)
  {
    Preconditions.checkNotNull(paramPredicate);
    return filterEntries(paramBiMap, new KeyPredicate(paramPredicate));
  }

  public static <K, V> Map<K, V> filterKeys(Map<K, V> paramMap, Predicate<? super K> paramPredicate)
  {
    if ((paramMap instanceof SortedMap))
      return filterKeys((SortedMap)paramMap, paramPredicate);
    if ((paramMap instanceof BiMap))
      return filterKeys((BiMap)paramMap, paramPredicate);
    Preconditions.checkNotNull(paramPredicate);
    KeyPredicate localKeyPredicate = new KeyPredicate(paramPredicate);
    if ((paramMap instanceof AbstractFilteredMap))
      return filterFiltered((AbstractFilteredMap)paramMap, localKeyPredicate);
    return new FilteredKeyMap((Map)Preconditions.checkNotNull(paramMap), paramPredicate, localKeyPredicate);
  }

  public static <K, V> SortedMap<K, V> filterKeys(SortedMap<K, V> paramSortedMap, Predicate<? super K> paramPredicate)
  {
    return filterEntries(paramSortedMap, new KeyPredicate(paramPredicate));
  }

  public static <K, V> BiMap<K, V> filterValues(BiMap<K, V> paramBiMap, Predicate<? super V> paramPredicate)
  {
    return filterEntries(paramBiMap, new ValuePredicate(paramPredicate));
  }

  public static <K, V> Map<K, V> filterValues(Map<K, V> paramMap, Predicate<? super V> paramPredicate)
  {
    if ((paramMap instanceof SortedMap))
      return filterValues((SortedMap)paramMap, paramPredicate);
    if ((paramMap instanceof BiMap))
      return filterValues((BiMap)paramMap, paramPredicate);
    return filterEntries(paramMap, new ValuePredicate(paramPredicate));
  }

  public static <K, V> SortedMap<K, V> filterValues(SortedMap<K, V> paramSortedMap, Predicate<? super V> paramPredicate)
  {
    return filterEntries(paramSortedMap, new ValuePredicate(paramPredicate));
  }

  @GwtIncompatible("java.util.Properties")
  public static ImmutableMap<String, String> fromProperties(Properties paramProperties)
  {
    ImmutableMap.Builder localBuilder = ImmutableMap.builder();
    Enumeration localEnumeration = paramProperties.propertyNames();
    while (localEnumeration.hasMoreElements())
    {
      String str = (String)localEnumeration.nextElement();
      localBuilder.put(str, paramProperties.getProperty(str));
    }
    return localBuilder.build();
  }

  @GwtCompatible(serializable=true)
  public static <K, V> Map.Entry<K, V> immutableEntry(@Nullable K paramK, @Nullable V paramV)
  {
    return new ImmutableEntry(paramK, paramV);
  }

  @Beta
  @GwtCompatible(serializable=true)
  public static <K extends Enum<K>, V> ImmutableMap<K, V> immutableEnumMap(Map<K, V> paramMap)
  {
    if ((paramMap instanceof ImmutableEnumMap))
      return (ImmutableEnumMap)paramMap;
    if (paramMap.isEmpty())
      return ImmutableMap.of();
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Preconditions.checkNotNull(localEntry.getKey());
      Preconditions.checkNotNull(localEntry.getValue());
    }
    return ImmutableEnumMap.asImmutable(new EnumMap(paramMap));
  }

  static <K> Function<Map.Entry<K, ?>, K> keyFunction()
  {
    return EntryFunction.KEY;
  }

  static <K, V> Iterator<K> keyIterator(Iterator<Map.Entry<K, V>> paramIterator)
  {
    return new TransformedIterator(paramIterator)
    {
      K transform(Map.Entry<K, V> paramAnonymousEntry)
      {
        return paramAnonymousEntry.getKey();
      }
    };
  }

  @Nullable
  static <K> K keyOrNull(@Nullable Map.Entry<K, ?> paramEntry)
  {
    if (paramEntry == null)
      return null;
    return paramEntry.getKey();
  }

  private static <K, V> MapDifference<K, V> mapDifference(boolean paramBoolean, Map<K, V> paramMap1, Map<K, V> paramMap2, Map<K, V> paramMap3, Map<K, MapDifference.ValueDifference<V>> paramMap)
  {
    return new MapDifferenceImpl(paramBoolean, Collections.unmodifiableMap(paramMap1), Collections.unmodifiableMap(paramMap2), Collections.unmodifiableMap(paramMap3), Collections.unmodifiableMap(paramMap));
  }

  public static <K, V> ConcurrentMap<K, V> newConcurrentMap()
  {
    return new MapMaker().makeMap();
  }

  public static <K extends Enum<K>, V> EnumMap<K, V> newEnumMap(Class<K> paramClass)
  {
    return new EnumMap((Class)Preconditions.checkNotNull(paramClass));
  }

  public static <K extends Enum<K>, V> EnumMap<K, V> newEnumMap(Map<K, ? extends V> paramMap)
  {
    return new EnumMap(paramMap);
  }

  public static <K, V> HashMap<K, V> newHashMap()
  {
    return new HashMap();
  }

  public static <K, V> HashMap<K, V> newHashMap(Map<? extends K, ? extends V> paramMap)
  {
    return new HashMap(paramMap);
  }

  public static <K, V> HashMap<K, V> newHashMapWithExpectedSize(int paramInt)
  {
    return new HashMap(capacity(paramInt));
  }

  public static <K, V> IdentityHashMap<K, V> newIdentityHashMap()
  {
    return new IdentityHashMap();
  }

  public static <K, V> LinkedHashMap<K, V> newLinkedHashMap()
  {
    return new LinkedHashMap();
  }

  public static <K, V> LinkedHashMap<K, V> newLinkedHashMap(Map<? extends K, ? extends V> paramMap)
  {
    return new LinkedHashMap(paramMap);
  }

  public static <K extends Comparable, V> TreeMap<K, V> newTreeMap()
  {
    return new TreeMap();
  }

  public static <C, K extends C, V> TreeMap<K, V> newTreeMap(@Nullable Comparator<C> paramComparator)
  {
    return new TreeMap(paramComparator);
  }

  public static <K, V> TreeMap<K, V> newTreeMap(SortedMap<K, ? extends V> paramSortedMap)
  {
    return new TreeMap(paramSortedMap);
  }

  static <E> Comparator<E> orNaturalOrder(@Nullable Comparator<? super E> paramComparator)
  {
    if (paramComparator != null)
      return paramComparator;
    return Ordering.natural();
  }

  static <K, V> void putAllImpl(Map<K, V> paramMap, Map<? extends K, ? extends V> paramMap1)
  {
    Iterator localIterator = paramMap1.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramMap.put(localEntry.getKey(), localEntry.getValue());
    }
  }

  static <K, V> boolean removeEntryImpl(Collection<Map.Entry<K, V>> paramCollection, Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry))
      return false;
    return paramCollection.remove(unmodifiableEntry((Map.Entry)paramObject));
  }

  private static <E> Set<E> removeOnlySet(Set<E> paramSet)
  {
    return new ForwardingSet()
    {
      public boolean add(E paramAnonymousE)
      {
        throw new UnsupportedOperationException();
      }

      public boolean addAll(Collection<? extends E> paramAnonymousCollection)
      {
        throw new UnsupportedOperationException();
      }

      protected Set<E> delegate()
      {
        return this.val$set;
      }
    };
  }

  private static <E> SortedSet<E> removeOnlySortedSet(SortedSet<E> paramSortedSet)
  {
    return new ForwardingSortedSet()
    {
      public boolean add(E paramAnonymousE)
      {
        throw new UnsupportedOperationException();
      }

      public boolean addAll(Collection<? extends E> paramAnonymousCollection)
      {
        throw new UnsupportedOperationException();
      }

      protected SortedSet<E> delegate()
      {
        return this.val$set;
      }

      public SortedSet<E> headSet(E paramAnonymousE)
      {
        return Maps.removeOnlySortedSet(super.headSet(paramAnonymousE));
      }

      public SortedSet<E> subSet(E paramAnonymousE1, E paramAnonymousE2)
      {
        return Maps.removeOnlySortedSet(super.subSet(paramAnonymousE1, paramAnonymousE2));
      }

      public SortedSet<E> tailSet(E paramAnonymousE)
      {
        return Maps.removeOnlySortedSet(super.tailSet(paramAnonymousE));
      }
    };
  }

  static boolean safeContainsKey(Map<?, ?> paramMap, Object paramObject)
  {
    Preconditions.checkNotNull(paramMap);
    try
    {
      boolean bool = paramMap.containsKey(paramObject);
      return bool;
    }
    catch (ClassCastException localClassCastException)
    {
      return false;
    }
    catch (NullPointerException localNullPointerException)
    {
    }
    return false;
  }

  static <V> V safeGet(Map<?, V> paramMap, Object paramObject)
  {
    Preconditions.checkNotNull(paramMap);
    try
    {
      Object localObject = paramMap.get(paramObject);
      return localObject;
    }
    catch (ClassCastException localClassCastException)
    {
      return null;
    }
    catch (NullPointerException localNullPointerException)
    {
    }
    return null;
  }

  static <V> V safeRemove(Map<?, V> paramMap, Object paramObject)
  {
    Preconditions.checkNotNull(paramMap);
    try
    {
      Object localObject = paramMap.remove(paramObject);
      return localObject;
    }
    catch (ClassCastException localClassCastException)
    {
      return null;
    }
    catch (NullPointerException localNullPointerException)
    {
    }
    return null;
  }

  private static <K, V> SortedMapDifference<K, V> sortedMapDifference(boolean paramBoolean, SortedMap<K, V> paramSortedMap1, SortedMap<K, V> paramSortedMap2, SortedMap<K, V> paramSortedMap3, SortedMap<K, MapDifference.ValueDifference<V>> paramSortedMap)
  {
    return new SortedMapDifferenceImpl(paramBoolean, Collections.unmodifiableSortedMap(paramSortedMap1), Collections.unmodifiableSortedMap(paramSortedMap2), Collections.unmodifiableSortedMap(paramSortedMap3), Collections.unmodifiableSortedMap(paramSortedMap));
  }

  public static <K, V> BiMap<K, V> synchronizedBiMap(BiMap<K, V> paramBiMap)
  {
    return Synchronized.biMap(paramBiMap, null);
  }

  @Beta
  public static <K, V> ImmutableMap<K, V> toMap(Iterable<K> paramIterable, Function<? super K, V> paramFunction)
  {
    return toMap(paramIterable.iterator(), paramFunction);
  }

  @Beta
  public static <K, V> ImmutableMap<K, V> toMap(Iterator<K> paramIterator, Function<? super K, V> paramFunction)
  {
    Preconditions.checkNotNull(paramFunction);
    LinkedHashMap localLinkedHashMap = newLinkedHashMap();
    while (paramIterator.hasNext())
    {
      Object localObject = paramIterator.next();
      localLinkedHashMap.put(localObject, paramFunction.apply(localObject));
    }
    return ImmutableMap.copyOf(localLinkedHashMap);
  }

  static String toStringImpl(Map<?, ?> paramMap)
  {
    StringBuilder localStringBuilder = Collections2.newStringBuilderForCollection(paramMap.size()).append('{');
    STANDARD_JOINER.appendTo(localStringBuilder, paramMap);
    return '}';
  }

  public static <K, V1, V2> Map<K, V2> transformEntries(Map<K, V1> paramMap, EntryTransformer<? super K, ? super V1, V2> paramEntryTransformer)
  {
    if ((paramMap instanceof SortedMap))
      return transformEntries((SortedMap)paramMap, paramEntryTransformer);
    return new TransformedEntriesMap(paramMap, paramEntryTransformer);
  }

  public static <K, V1, V2> SortedMap<K, V2> transformEntries(SortedMap<K, V1> paramSortedMap, EntryTransformer<? super K, ? super V1, V2> paramEntryTransformer)
  {
    return new TransformedEntriesSortedMap(paramSortedMap, paramEntryTransformer);
  }

  public static <K, V1, V2> Map<K, V2> transformValues(Map<K, V1> paramMap, Function<? super V1, V2> paramFunction)
  {
    return transformEntries(paramMap, asEntryTransformer(paramFunction));
  }

  public static <K, V1, V2> SortedMap<K, V2> transformValues(SortedMap<K, V1> paramSortedMap, Function<? super V1, V2> paramFunction)
  {
    return transformEntries(paramSortedMap, asEntryTransformer(paramFunction));
  }

  public static <K, V> ImmutableMap<K, V> uniqueIndex(Iterable<V> paramIterable, Function<? super V, K> paramFunction)
  {
    return uniqueIndex(paramIterable.iterator(), paramFunction);
  }

  public static <K, V> ImmutableMap<K, V> uniqueIndex(Iterator<V> paramIterator, Function<? super V, K> paramFunction)
  {
    Preconditions.checkNotNull(paramFunction);
    ImmutableMap.Builder localBuilder = ImmutableMap.builder();
    while (paramIterator.hasNext())
    {
      Object localObject = paramIterator.next();
      localBuilder.put(paramFunction.apply(localObject), localObject);
    }
    return localBuilder.build();
  }

  public static <K, V> BiMap<K, V> unmodifiableBiMap(BiMap<? extends K, ? extends V> paramBiMap)
  {
    return new UnmodifiableBiMap(paramBiMap, null);
  }

  static <K, V> Map.Entry<K, V> unmodifiableEntry(Map.Entry<K, V> paramEntry)
  {
    Preconditions.checkNotNull(paramEntry);
    return new AbstractMapEntry()
    {
      public K getKey()
      {
        return this.val$entry.getKey();
      }

      public V getValue()
      {
        return this.val$entry.getValue();
      }
    };
  }

  static <K, V> Set<Map.Entry<K, V>> unmodifiableEntrySet(Set<Map.Entry<K, V>> paramSet)
  {
    return new UnmodifiableEntrySet(Collections.unmodifiableSet(paramSet));
  }

  static <V> Function<Map.Entry<?, V>, V> valueFunction()
  {
    return EntryFunction.VALUE;
  }

  static <K, V> UnmodifiableIterator<V> valueIterator(UnmodifiableIterator<Map.Entry<K, V>> paramUnmodifiableIterator)
  {
    return new UnmodifiableIterator()
    {
      public boolean hasNext()
      {
        return this.val$entryIterator.hasNext();
      }

      public V next()
      {
        return ((Map.Entry)this.val$entryIterator.next()).getValue();
      }
    };
  }

  static <K, V> Iterator<V> valueIterator(Iterator<Map.Entry<K, V>> paramIterator)
  {
    return new TransformedIterator(paramIterator)
    {
      V transform(Map.Entry<K, V> paramAnonymousEntry)
      {
        return paramAnonymousEntry.getValue();
      }
    };
  }

  @Nullable
  static <V> V valueOrNull(@Nullable Map.Entry<?, V> paramEntry)
  {
    if (paramEntry == null)
      return null;
    return paramEntry.getValue();
  }

  private static abstract class AbstractFilteredMap<K, V> extends AbstractMap<K, V>
  {
    final Predicate<? super Map.Entry<K, V>> predicate;
    final Map<K, V> unfiltered;
    Collection<V> values;

    AbstractFilteredMap(Map<K, V> paramMap, Predicate<? super Map.Entry<K, V>> paramPredicate)
    {
      this.unfiltered = paramMap;
      this.predicate = paramPredicate;
    }

    boolean apply(Object paramObject, V paramV)
    {
      return this.predicate.apply(Maps.immutableEntry(paramObject, paramV));
    }

    public boolean containsKey(Object paramObject)
    {
      return (this.unfiltered.containsKey(paramObject)) && (apply(paramObject, this.unfiltered.get(paramObject)));
    }

    public V get(Object paramObject)
    {
      Object localObject = this.unfiltered.get(paramObject);
      if ((localObject != null) && (apply(paramObject, localObject)))
        return localObject;
      return null;
    }

    public boolean isEmpty()
    {
      return entrySet().isEmpty();
    }

    public V put(K paramK, V paramV)
    {
      Preconditions.checkArgument(apply(paramK, paramV));
      return this.unfiltered.put(paramK, paramV);
    }

    public void putAll(Map<? extends K, ? extends V> paramMap)
    {
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        Preconditions.checkArgument(apply(localEntry.getKey(), localEntry.getValue()));
      }
      this.unfiltered.putAll(paramMap);
    }

    public V remove(Object paramObject)
    {
      if (containsKey(paramObject))
        return this.unfiltered.remove(paramObject);
      return null;
    }

    public Collection<V> values()
    {
      Object localObject = this.values;
      if (localObject == null)
      {
        localObject = new Values();
        this.values = ((Collection)localObject);
      }
      return localObject;
    }

    class Values extends AbstractCollection<V>
    {
      Values()
      {
      }

      public void clear()
      {
        Maps.AbstractFilteredMap.this.entrySet().clear();
      }

      public boolean isEmpty()
      {
        return Maps.AbstractFilteredMap.this.entrySet().isEmpty();
      }

      public Iterator<V> iterator()
      {
        return new UnmodifiableIterator()
        {
          public boolean hasNext()
          {
            return this.val$entryIterator.hasNext();
          }

          public V next()
          {
            return ((Map.Entry)this.val$entryIterator.next()).getValue();
          }
        };
      }

      public boolean remove(Object paramObject)
      {
        Iterator localIterator = Maps.AbstractFilteredMap.this.unfiltered.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          if ((Objects.equal(paramObject, localEntry.getValue())) && (Maps.AbstractFilteredMap.this.predicate.apply(localEntry)))
          {
            localIterator.remove();
            return true;
          }
        }
        return false;
      }

      public boolean removeAll(Collection<?> paramCollection)
      {
        Preconditions.checkNotNull(paramCollection);
        boolean bool = false;
        Iterator localIterator = Maps.AbstractFilteredMap.this.unfiltered.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          if ((paramCollection.contains(localEntry.getValue())) && (Maps.AbstractFilteredMap.this.predicate.apply(localEntry)))
          {
            localIterator.remove();
            bool = true;
          }
        }
        return bool;
      }

      public boolean retainAll(Collection<?> paramCollection)
      {
        Preconditions.checkNotNull(paramCollection);
        boolean bool = false;
        Iterator localIterator = Maps.AbstractFilteredMap.this.unfiltered.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          if ((!paramCollection.contains(localEntry.getValue())) && (Maps.AbstractFilteredMap.this.predicate.apply(localEntry)))
          {
            localIterator.remove();
            bool = true;
          }
        }
        return bool;
      }

      public int size()
      {
        return Maps.AbstractFilteredMap.this.entrySet().size();
      }

      public Object[] toArray()
      {
        return Lists.newArrayList(iterator()).toArray();
      }

      public <T> T[] toArray(T[] paramArrayOfT)
      {
        return Lists.newArrayList(iterator()).toArray(paramArrayOfT);
      }
    }
  }

  private static class AsMapView<K, V> extends Maps.ImprovedAbstractMap<K, V>
  {
    final Function<? super K, V> function;
    private final Set<K> set;

    AsMapView(Set<K> paramSet, Function<? super K, V> paramFunction)
    {
      this.set = ((Set)Preconditions.checkNotNull(paramSet));
      this.function = ((Function)Preconditions.checkNotNull(paramFunction));
    }

    Set<K> backingSet()
    {
      return this.set;
    }

    public void clear()
    {
      backingSet().clear();
    }

    public boolean containsKey(@Nullable Object paramObject)
    {
      return backingSet().contains(paramObject);
    }

    protected Set<Map.Entry<K, V>> createEntrySet()
    {
      return new Maps.EntrySet()
      {
        public Iterator<Map.Entry<K, V>> iterator()
        {
          return Maps.asSetEntryIterator(Maps.AsMapView.this.backingSet(), Maps.AsMapView.this.function);
        }

        Map<K, V> map()
        {
          return Maps.AsMapView.this;
        }
      };
    }

    public V get(@Nullable Object paramObject)
    {
      if (backingSet().contains(paramObject))
        return this.function.apply(paramObject);
      return null;
    }

    public Set<K> keySet()
    {
      return Maps.removeOnlySet(backingSet());
    }

    public V remove(@Nullable Object paramObject)
    {
      if (backingSet().remove(paramObject))
        return this.function.apply(paramObject);
      return null;
    }

    public int size()
    {
      return backingSet().size();
    }

    public Collection<V> values()
    {
      return Collections2.transform(this.set, this.function);
    }
  }

  private static abstract enum EntryFunction
    implements Function<Map.Entry, Object>
  {
    static
    {
      EntryFunction[] arrayOfEntryFunction = new EntryFunction[2];
      arrayOfEntryFunction[0] = KEY;
      arrayOfEntryFunction[1] = VALUE;
    }
  }

  static abstract class EntrySet<K, V> extends Sets.ImprovedAbstractSet<Map.Entry<K, V>>
  {
    public void clear()
    {
      map().clear();
    }

    public boolean contains(Object paramObject)
    {
      boolean bool1 = paramObject instanceof Map.Entry;
      boolean bool2 = false;
      if (bool1)
      {
        Map.Entry localEntry = (Map.Entry)paramObject;
        Object localObject1 = localEntry.getKey();
        Object localObject2 = map().get(localObject1);
        boolean bool3 = Objects.equal(localObject2, localEntry.getValue());
        bool2 = false;
        if (bool3)
          if (localObject2 == null)
          {
            boolean bool4 = map().containsKey(localObject1);
            bool2 = false;
            if (!bool4);
          }
          else
          {
            bool2 = true;
          }
      }
      return bool2;
    }

    public boolean isEmpty()
    {
      return map().isEmpty();
    }

    abstract Map<K, V> map();

    public boolean remove(Object paramObject)
    {
      if (contains(paramObject))
      {
        Map.Entry localEntry = (Map.Entry)paramObject;
        return map().keySet().remove(localEntry.getKey());
      }
      return false;
    }

    public boolean removeAll(Collection<?> paramCollection)
    {
      boolean bool1;
      Iterator localIterator;
      try
      {
        boolean bool2 = super.removeAll((Collection)Preconditions.checkNotNull(paramCollection));
        bool1 = bool2;
        return bool1;
      }
      catch (UnsupportedOperationException localUnsupportedOperationException)
      {
        bool1 = true;
        localIterator = paramCollection.iterator();
      }
      while (localIterator.hasNext())
        bool1 |= remove(localIterator.next());
    }

    public boolean retainAll(Collection<?> paramCollection)
    {
      try
      {
        boolean bool = super.retainAll((Collection)Preconditions.checkNotNull(paramCollection));
        return bool;
      }
      catch (UnsupportedOperationException localUnsupportedOperationException)
      {
        HashSet localHashSet = Sets.newHashSetWithExpectedSize(paramCollection.size());
        Iterator localIterator = paramCollection.iterator();
        while (localIterator.hasNext())
        {
          Object localObject = localIterator.next();
          if (contains(localObject))
            localHashSet.add(((Map.Entry)localObject).getKey());
        }
        return map().keySet().retainAll(localHashSet);
      }
    }

    public int size()
    {
      return map().size();
    }
  }

  public static abstract interface EntryTransformer<K, V1, V2>
  {
    public abstract V2 transformEntry(@Nullable K paramK, @Nullable V1 paramV1);
  }

  static final class FilteredEntryBiMap<K, V> extends Maps.FilteredEntryMap<K, V>
    implements BiMap<K, V>
  {
    private final BiMap<V, K> inverse;

    FilteredEntryBiMap(BiMap<K, V> paramBiMap, Predicate<? super Map.Entry<K, V>> paramPredicate)
    {
      super(paramPredicate);
      this.inverse = new FilteredEntryBiMap(paramBiMap.inverse(), inversePredicate(paramPredicate), this);
    }

    private FilteredEntryBiMap(BiMap<K, V> paramBiMap, Predicate<? super Map.Entry<K, V>> paramPredicate, BiMap<V, K> paramBiMap1)
    {
      super(paramPredicate);
      this.inverse = paramBiMap1;
    }

    private static <K, V> Predicate<Map.Entry<V, K>> inversePredicate(Predicate<? super Map.Entry<K, V>> paramPredicate)
    {
      return new Predicate()
      {
        public boolean apply(Map.Entry<V, K> paramAnonymousEntry)
        {
          return this.val$forwardPredicate.apply(Maps.immutableEntry(paramAnonymousEntry.getValue(), paramAnonymousEntry.getKey()));
        }
      };
    }

    public V forcePut(@Nullable K paramK, @Nullable V paramV)
    {
      Preconditions.checkArgument(this.predicate.apply(Maps.immutableEntry(paramK, paramV)));
      return unfiltered().forcePut(paramK, paramV);
    }

    public BiMap<V, K> inverse()
    {
      return this.inverse;
    }

    BiMap<K, V> unfiltered()
    {
      return (BiMap)this.unfiltered;
    }

    public Set<V> values()
    {
      return this.inverse.keySet();
    }
  }

  static class FilteredEntryMap<K, V> extends Maps.AbstractFilteredMap<K, V>
  {
    Set<Map.Entry<K, V>> entrySet;
    final Set<Map.Entry<K, V>> filteredEntrySet = Sets.filter(paramMap.entrySet(), this.predicate);
    Set<K> keySet;

    FilteredEntryMap(Map<K, V> paramMap, Predicate<? super Map.Entry<K, V>> paramPredicate)
    {
      super(paramPredicate);
    }

    Set<K> createKeySet()
    {
      return new KeySet(null);
    }

    public Set<Map.Entry<K, V>> entrySet()
    {
      Object localObject = this.entrySet;
      if (localObject == null)
      {
        localObject = new EntrySet(null);
        this.entrySet = ((Set)localObject);
      }
      return localObject;
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

    private class EntrySet extends ForwardingSet<Map.Entry<K, V>>
    {
      private EntrySet()
      {
      }

      protected Set<Map.Entry<K, V>> delegate()
      {
        return Maps.FilteredEntryMap.this.filteredEntrySet;
      }

      public Iterator<Map.Entry<K, V>> iterator()
      {
        return new UnmodifiableIterator()
        {
          public boolean hasNext()
          {
            return this.val$iterator.hasNext();
          }

          public Map.Entry<K, V> next()
          {
            return new ForwardingMapEntry()
            {
              protected Map.Entry<K, V> delegate()
              {
                return this.val$entry;
              }

              public V setValue(V paramAnonymous2V)
              {
                Preconditions.checkArgument(Maps.FilteredEntryMap.this.apply(this.val$entry.getKey(), paramAnonymous2V));
                return super.setValue(paramAnonymous2V);
              }
            };
          }
        };
      }
    }

    private class KeySet extends Sets.ImprovedAbstractSet<K>
    {
      private KeySet()
      {
      }

      public void clear()
      {
        Maps.FilteredEntryMap.this.filteredEntrySet.clear();
      }

      public boolean contains(Object paramObject)
      {
        return Maps.FilteredEntryMap.this.containsKey(paramObject);
      }

      public Iterator<K> iterator()
      {
        return new UnmodifiableIterator()
        {
          public boolean hasNext()
          {
            return this.val$iterator.hasNext();
          }

          public K next()
          {
            return ((Map.Entry)this.val$iterator.next()).getKey();
          }
        };
      }

      public boolean remove(Object paramObject)
      {
        if (Maps.FilteredEntryMap.this.containsKey(paramObject))
        {
          Maps.FilteredEntryMap.this.unfiltered.remove(paramObject);
          return true;
        }
        return false;
      }

      public boolean retainAll(Collection<?> paramCollection)
      {
        Preconditions.checkNotNull(paramCollection);
        boolean bool = false;
        Iterator localIterator = Maps.FilteredEntryMap.this.unfiltered.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          if ((Maps.FilteredEntryMap.this.predicate.apply(localEntry)) && (!paramCollection.contains(localEntry.getKey())))
          {
            localIterator.remove();
            bool = true;
          }
        }
        return bool;
      }

      public int size()
      {
        return Maps.FilteredEntryMap.this.filteredEntrySet.size();
      }

      public Object[] toArray()
      {
        return Lists.newArrayList(iterator()).toArray();
      }

      public <T> T[] toArray(T[] paramArrayOfT)
      {
        return Lists.newArrayList(iterator()).toArray(paramArrayOfT);
      }
    }
  }

  private static class FilteredEntrySortedMap<K, V> extends Maps.FilteredEntryMap<K, V>
    implements SortedMap<K, V>
  {
    FilteredEntrySortedMap(SortedMap<K, V> paramSortedMap, Predicate<? super Map.Entry<K, V>> paramPredicate)
    {
      super(paramPredicate);
    }

    public Comparator<? super K> comparator()
    {
      return sortedMap().comparator();
    }

    public K firstKey()
    {
      return keySet().iterator().next();
    }

    public SortedMap<K, V> headMap(K paramK)
    {
      return new FilteredEntrySortedMap(sortedMap().headMap(paramK), this.predicate);
    }

    public K lastKey()
    {
      Object localObject;
      for (SortedMap localSortedMap = sortedMap(); ; localSortedMap = sortedMap().headMap(localObject))
      {
        localObject = localSortedMap.lastKey();
        if (apply(localObject, this.unfiltered.get(localObject)))
          return localObject;
      }
    }

    SortedMap<K, V> sortedMap()
    {
      return (SortedMap)this.unfiltered;
    }

    public SortedMap<K, V> subMap(K paramK1, K paramK2)
    {
      return new FilteredEntrySortedMap(sortedMap().subMap(paramK1, paramK2), this.predicate);
    }

    public SortedMap<K, V> tailMap(K paramK)
    {
      return new FilteredEntrySortedMap(sortedMap().tailMap(paramK), this.predicate);
    }
  }

  private static class FilteredKeyMap<K, V> extends Maps.AbstractFilteredMap<K, V>
  {
    Set<Map.Entry<K, V>> entrySet;
    Predicate<? super K> keyPredicate;
    Set<K> keySet;

    FilteredKeyMap(Map<K, V> paramMap, Predicate<? super K> paramPredicate, Predicate<Map.Entry<K, V>> paramPredicate1)
    {
      super(paramPredicate1);
      this.keyPredicate = paramPredicate;
    }

    public boolean containsKey(Object paramObject)
    {
      return (this.unfiltered.containsKey(paramObject)) && (this.keyPredicate.apply(paramObject));
    }

    public Set<Map.Entry<K, V>> entrySet()
    {
      Set localSet = this.entrySet;
      if (localSet == null)
      {
        localSet = Sets.filter(this.unfiltered.entrySet(), this.predicate);
        this.entrySet = localSet;
      }
      return localSet;
    }

    public Set<K> keySet()
    {
      Set localSet = this.keySet;
      if (localSet == null)
      {
        localSet = Sets.filter(this.unfiltered.keySet(), this.keyPredicate);
        this.keySet = localSet;
      }
      return localSet;
    }
  }

  @GwtCompatible
  static abstract class ImprovedAbstractMap<K, V> extends AbstractMap<K, V>
  {
    private Set<Map.Entry<K, V>> entrySet;
    private Set<K> keySet;
    private Collection<V> values;

    protected abstract Set<Map.Entry<K, V>> createEntrySet();

    public Set<Map.Entry<K, V>> entrySet()
    {
      Set localSet = this.entrySet;
      if (localSet == null)
      {
        localSet = createEntrySet();
        this.entrySet = localSet;
      }
      return localSet;
    }

    public Set<K> keySet()
    {
      Object localObject = this.keySet;
      if (localObject == null)
      {
        localObject = new Maps.KeySet()
        {
          Map<K, V> map()
          {
            return Maps.ImprovedAbstractMap.this;
          }
        };
        this.keySet = ((Set)localObject);
      }
      return localObject;
    }

    public Collection<V> values()
    {
      Object localObject = this.values;
      if (localObject == null)
      {
        localObject = new Maps.Values()
        {
          Map<K, V> map()
          {
            return Maps.ImprovedAbstractMap.this;
          }
        };
        this.values = ((Collection)localObject);
      }
      return localObject;
    }
  }

  private static final class KeyPredicate<K, V>
    implements Predicate<Map.Entry<K, V>>
  {
    private final Predicate<? super K> keyPredicate;

    KeyPredicate(Predicate<? super K> paramPredicate)
    {
      this.keyPredicate = ((Predicate)Preconditions.checkNotNull(paramPredicate));
    }

    public boolean apply(Map.Entry<K, V> paramEntry)
    {
      return this.keyPredicate.apply(paramEntry.getKey());
    }
  }

  static abstract class KeySet<K, V> extends Sets.ImprovedAbstractSet<K>
  {
    public void clear()
    {
      map().clear();
    }

    public boolean contains(Object paramObject)
    {
      return map().containsKey(paramObject);
    }

    public boolean isEmpty()
    {
      return map().isEmpty();
    }

    public Iterator<K> iterator()
    {
      return Maps.keyIterator(map().entrySet().iterator());
    }

    abstract Map<K, V> map();

    public boolean remove(Object paramObject)
    {
      if (contains(paramObject))
      {
        map().remove(paramObject);
        return true;
      }
      return false;
    }

    public int size()
    {
      return map().size();
    }
  }

  static class MapDifferenceImpl<K, V>
    implements MapDifference<K, V>
  {
    final boolean areEqual;
    final Map<K, MapDifference.ValueDifference<V>> differences;
    final Map<K, V> onBoth;
    final Map<K, V> onlyOnLeft;
    final Map<K, V> onlyOnRight;

    MapDifferenceImpl(boolean paramBoolean, Map<K, V> paramMap1, Map<K, V> paramMap2, Map<K, V> paramMap3, Map<K, MapDifference.ValueDifference<V>> paramMap)
    {
      this.areEqual = paramBoolean;
      this.onlyOnLeft = paramMap1;
      this.onlyOnRight = paramMap2;
      this.onBoth = paramMap3;
      this.differences = paramMap;
    }

    public boolean areEqual()
    {
      return this.areEqual;
    }

    public Map<K, MapDifference.ValueDifference<V>> entriesDiffering()
    {
      return this.differences;
    }

    public Map<K, V> entriesInCommon()
    {
      return this.onBoth;
    }

    public Map<K, V> entriesOnlyOnLeft()
    {
      return this.onlyOnLeft;
    }

    public Map<K, V> entriesOnlyOnRight()
    {
      return this.onlyOnRight;
    }

    public boolean equals(Object paramObject)
    {
      if (paramObject == this);
      MapDifference localMapDifference;
      do
      {
        return true;
        if (!(paramObject instanceof MapDifference))
          break;
        localMapDifference = (MapDifference)paramObject;
      }
      while ((entriesOnlyOnLeft().equals(localMapDifference.entriesOnlyOnLeft())) && (entriesOnlyOnRight().equals(localMapDifference.entriesOnlyOnRight())) && (entriesInCommon().equals(localMapDifference.entriesInCommon())) && (entriesDiffering().equals(localMapDifference.entriesDiffering())));
      return false;
      return false;
    }

    public int hashCode()
    {
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = entriesOnlyOnLeft();
      arrayOfObject[1] = entriesOnlyOnRight();
      arrayOfObject[2] = entriesInCommon();
      arrayOfObject[3] = entriesDiffering();
      return Objects.hashCode(arrayOfObject);
    }

    public String toString()
    {
      if (this.areEqual)
        return "equal";
      StringBuilder localStringBuilder = new StringBuilder("not equal");
      if (!this.onlyOnLeft.isEmpty())
        localStringBuilder.append(": only on left=").append(this.onlyOnLeft);
      if (!this.onlyOnRight.isEmpty())
        localStringBuilder.append(": only on right=").append(this.onlyOnRight);
      if (!this.differences.isEmpty())
        localStringBuilder.append(": value differences=").append(this.differences);
      return localStringBuilder.toString();
    }
  }

  private static class SortedAsMapView<K, V> extends Maps.AsMapView<K, V>
    implements SortedMap<K, V>
  {
    SortedAsMapView(SortedSet<K> paramSortedSet, Function<? super K, V> paramFunction)
    {
      super(paramFunction);
    }

    SortedSet<K> backingSet()
    {
      return (SortedSet)super.backingSet();
    }

    public Comparator<? super K> comparator()
    {
      return backingSet().comparator();
    }

    public K firstKey()
    {
      return backingSet().first();
    }

    public SortedMap<K, V> headMap(K paramK)
    {
      return Maps.asMap(backingSet().headSet(paramK), this.function);
    }

    public Set<K> keySet()
    {
      return Maps.removeOnlySortedSet(backingSet());
    }

    public K lastKey()
    {
      return backingSet().last();
    }

    public SortedMap<K, V> subMap(K paramK1, K paramK2)
    {
      return Maps.asMap(backingSet().subSet(paramK1, paramK2), this.function);
    }

    public SortedMap<K, V> tailMap(K paramK)
    {
      return Maps.asMap(backingSet().tailSet(paramK), this.function);
    }
  }

  static class SortedMapDifferenceImpl<K, V> extends Maps.MapDifferenceImpl<K, V>
    implements SortedMapDifference<K, V>
  {
    SortedMapDifferenceImpl(boolean paramBoolean, SortedMap<K, V> paramSortedMap1, SortedMap<K, V> paramSortedMap2, SortedMap<K, V> paramSortedMap3, SortedMap<K, MapDifference.ValueDifference<V>> paramSortedMap)
    {
      super(paramSortedMap1, paramSortedMap2, paramSortedMap3, paramSortedMap);
    }

    public SortedMap<K, MapDifference.ValueDifference<V>> entriesDiffering()
    {
      return (SortedMap)super.entriesDiffering();
    }

    public SortedMap<K, V> entriesInCommon()
    {
      return (SortedMap)super.entriesInCommon();
    }

    public SortedMap<K, V> entriesOnlyOnLeft()
    {
      return (SortedMap)super.entriesOnlyOnLeft();
    }

    public SortedMap<K, V> entriesOnlyOnRight()
    {
      return (SortedMap)super.entriesOnlyOnRight();
    }
  }

  static class TransformedEntriesMap<K, V1, V2> extends AbstractMap<K, V2>
  {
    Set<Map.Entry<K, V2>> entrySet;
    final Map<K, V1> fromMap;
    final Maps.EntryTransformer<? super K, ? super V1, V2> transformer;
    Collection<V2> values;

    TransformedEntriesMap(Map<K, V1> paramMap, Maps.EntryTransformer<? super K, ? super V1, V2> paramEntryTransformer)
    {
      this.fromMap = ((Map)Preconditions.checkNotNull(paramMap));
      this.transformer = ((Maps.EntryTransformer)Preconditions.checkNotNull(paramEntryTransformer));
    }

    public void clear()
    {
      this.fromMap.clear();
    }

    public boolean containsKey(Object paramObject)
    {
      return this.fromMap.containsKey(paramObject);
    }

    public Set<Map.Entry<K, V2>> entrySet()
    {
      Object localObject = this.entrySet;
      if (localObject == null)
      {
        localObject = new Maps.EntrySet()
        {
          public Iterator<Map.Entry<K, V2>> iterator()
          {
            return new TransformedIterator(Maps.TransformedEntriesMap.this.fromMap.entrySet().iterator())
            {
              Map.Entry<K, V2> transform(final Map.Entry<K, V1> paramAnonymous2Entry)
              {
                return new AbstractMapEntry()
                {
                  public K getKey()
                  {
                    return paramAnonymous2Entry.getKey();
                  }

                  public V2 getValue()
                  {
                    return Maps.TransformedEntriesMap.this.transformer.transformEntry(paramAnonymous2Entry.getKey(), paramAnonymous2Entry.getValue());
                  }
                };
              }
            };
          }

          Map<K, V2> map()
          {
            return Maps.TransformedEntriesMap.this;
          }
        };
        this.entrySet = ((Set)localObject);
      }
      return localObject;
    }

    public V2 get(Object paramObject)
    {
      Object localObject = this.fromMap.get(paramObject);
      if ((localObject != null) || (this.fromMap.containsKey(paramObject)))
        return this.transformer.transformEntry(paramObject, localObject);
      return null;
    }

    public Set<K> keySet()
    {
      return this.fromMap.keySet();
    }

    public V2 remove(Object paramObject)
    {
      if (this.fromMap.containsKey(paramObject))
        return this.transformer.transformEntry(paramObject, this.fromMap.remove(paramObject));
      return null;
    }

    public int size()
    {
      return this.fromMap.size();
    }

    public Collection<V2> values()
    {
      Object localObject = this.values;
      if (localObject == null)
      {
        localObject = new Maps.Values()
        {
          Map<K, V2> map()
          {
            return Maps.TransformedEntriesMap.this;
          }
        };
        this.values = ((Collection)localObject);
      }
      return localObject;
    }
  }

  static class TransformedEntriesSortedMap<K, V1, V2> extends Maps.TransformedEntriesMap<K, V1, V2>
    implements SortedMap<K, V2>
  {
    TransformedEntriesSortedMap(SortedMap<K, V1> paramSortedMap, Maps.EntryTransformer<? super K, ? super V1, V2> paramEntryTransformer)
    {
      super(paramEntryTransformer);
    }

    public Comparator<? super K> comparator()
    {
      return fromMap().comparator();
    }

    public K firstKey()
    {
      return fromMap().firstKey();
    }

    protected SortedMap<K, V1> fromMap()
    {
      return (SortedMap)this.fromMap;
    }

    public SortedMap<K, V2> headMap(K paramK)
    {
      return Maps.transformEntries(fromMap().headMap(paramK), this.transformer);
    }

    public K lastKey()
    {
      return fromMap().lastKey();
    }

    public SortedMap<K, V2> subMap(K paramK1, K paramK2)
    {
      return Maps.transformEntries(fromMap().subMap(paramK1, paramK2), this.transformer);
    }

    public SortedMap<K, V2> tailMap(K paramK)
    {
      return Maps.transformEntries(fromMap().tailMap(paramK), this.transformer);
    }
  }

  private static class UnmodifiableBiMap<K, V> extends ForwardingMap<K, V>
    implements BiMap<K, V>, Serializable
  {
    private static final long serialVersionUID;
    final BiMap<? extends K, ? extends V> delegate;
    BiMap<V, K> inverse;
    final Map<K, V> unmodifiableMap;
    transient Set<V> values;

    UnmodifiableBiMap(BiMap<? extends K, ? extends V> paramBiMap, @Nullable BiMap<V, K> paramBiMap1)
    {
      this.unmodifiableMap = Collections.unmodifiableMap(paramBiMap);
      this.delegate = paramBiMap;
      this.inverse = paramBiMap1;
    }

    protected Map<K, V> delegate()
    {
      return this.unmodifiableMap;
    }

    public V forcePut(K paramK, V paramV)
    {
      throw new UnsupportedOperationException();
    }

    public BiMap<V, K> inverse()
    {
      Object localObject = this.inverse;
      if (localObject == null)
      {
        localObject = new UnmodifiableBiMap(this.delegate.inverse(), this);
        this.inverse = ((BiMap)localObject);
      }
      return localObject;
    }

    public Set<V> values()
    {
      Set localSet = this.values;
      if (localSet == null)
      {
        localSet = Collections.unmodifiableSet(this.delegate.values());
        this.values = localSet;
      }
      return localSet;
    }
  }

  static class UnmodifiableEntries<K, V> extends ForwardingCollection<Map.Entry<K, V>>
  {
    private final Collection<Map.Entry<K, V>> entries;

    UnmodifiableEntries(Collection<Map.Entry<K, V>> paramCollection)
    {
      this.entries = paramCollection;
    }

    public boolean add(Map.Entry<K, V> paramEntry)
    {
      throw new UnsupportedOperationException();
    }

    public boolean addAll(Collection<? extends Map.Entry<K, V>> paramCollection)
    {
      throw new UnsupportedOperationException();
    }

    public void clear()
    {
      throw new UnsupportedOperationException();
    }

    protected Collection<Map.Entry<K, V>> delegate()
    {
      return this.entries;
    }

    public Iterator<Map.Entry<K, V>> iterator()
    {
      return new ForwardingIterator()
      {
        protected Iterator<Map.Entry<K, V>> delegate()
        {
          return this.val$delegate;
        }

        public Map.Entry<K, V> next()
        {
          return Maps.unmodifiableEntry((Map.Entry)super.next());
        }

        public void remove()
        {
          throw new UnsupportedOperationException();
        }
      };
    }

    public boolean remove(Object paramObject)
    {
      throw new UnsupportedOperationException();
    }

    public boolean removeAll(Collection<?> paramCollection)
    {
      throw new UnsupportedOperationException();
    }

    public boolean retainAll(Collection<?> paramCollection)
    {
      throw new UnsupportedOperationException();
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

  static class UnmodifiableEntrySet<K, V> extends Maps.UnmodifiableEntries<K, V>
    implements Set<Map.Entry<K, V>>
  {
    UnmodifiableEntrySet(Set<Map.Entry<K, V>> paramSet)
    {
      super();
    }

    public boolean equals(@Nullable Object paramObject)
    {
      return Sets.equalsImpl(this, paramObject);
    }

    public int hashCode()
    {
      return Sets.hashCodeImpl(this);
    }
  }

  static class ValueDifferenceImpl<V>
    implements MapDifference.ValueDifference<V>
  {
    private final V left;
    private final V right;

    private ValueDifferenceImpl(@Nullable V paramV1, @Nullable V paramV2)
    {
      this.left = paramV1;
      this.right = paramV2;
    }

    static <V> MapDifference.ValueDifference<V> create(@Nullable V paramV1, @Nullable V paramV2)
    {
      return new ValueDifferenceImpl(paramV1, paramV2);
    }

    public boolean equals(@Nullable Object paramObject)
    {
      boolean bool1 = paramObject instanceof MapDifference.ValueDifference;
      boolean bool2 = false;
      if (bool1)
      {
        MapDifference.ValueDifference localValueDifference = (MapDifference.ValueDifference)paramObject;
        boolean bool3 = Objects.equal(this.left, localValueDifference.leftValue());
        bool2 = false;
        if (bool3)
        {
          boolean bool4 = Objects.equal(this.right, localValueDifference.rightValue());
          bool2 = false;
          if (bool4)
            bool2 = true;
        }
      }
      return bool2;
    }

    public int hashCode()
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = this.left;
      arrayOfObject[1] = this.right;
      return Objects.hashCode(arrayOfObject);
    }

    public V leftValue()
    {
      return this.left;
    }

    public V rightValue()
    {
      return this.right;
    }

    public String toString()
    {
      return "(" + this.left + ", " + this.right + ")";
    }
  }

  private static final class ValuePredicate<K, V>
    implements Predicate<Map.Entry<K, V>>
  {
    private final Predicate<? super V> valuePredicate;

    ValuePredicate(Predicate<? super V> paramPredicate)
    {
      this.valuePredicate = ((Predicate)Preconditions.checkNotNull(paramPredicate));
    }

    public boolean apply(Map.Entry<K, V> paramEntry)
    {
      return this.valuePredicate.apply(paramEntry.getValue());
    }
  }

  static abstract class Values<K, V> extends AbstractCollection<V>
  {
    public void clear()
    {
      map().clear();
    }

    public boolean contains(@Nullable Object paramObject)
    {
      return map().containsValue(paramObject);
    }

    public boolean isEmpty()
    {
      return map().isEmpty();
    }

    public Iterator<V> iterator()
    {
      return Maps.valueIterator(map().entrySet().iterator());
    }

    abstract Map<K, V> map();

    public boolean remove(Object paramObject)
    {
      try
      {
        boolean bool = super.remove(paramObject);
        return bool;
      }
      catch (UnsupportedOperationException localUnsupportedOperationException)
      {
        Iterator localIterator = map().entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          if (Objects.equal(paramObject, localEntry.getValue()))
          {
            map().remove(localEntry.getKey());
            return true;
          }
        }
      }
      return false;
    }

    public boolean removeAll(Collection<?> paramCollection)
    {
      try
      {
        boolean bool = super.removeAll((Collection)Preconditions.checkNotNull(paramCollection));
        return bool;
      }
      catch (UnsupportedOperationException localUnsupportedOperationException)
      {
        HashSet localHashSet = Sets.newHashSet();
        Iterator localIterator = map().entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          if (paramCollection.contains(localEntry.getValue()))
            localHashSet.add(localEntry.getKey());
        }
        return map().keySet().removeAll(localHashSet);
      }
    }

    public boolean retainAll(Collection<?> paramCollection)
    {
      try
      {
        boolean bool = super.retainAll((Collection)Preconditions.checkNotNull(paramCollection));
        return bool;
      }
      catch (UnsupportedOperationException localUnsupportedOperationException)
      {
        HashSet localHashSet = Sets.newHashSet();
        Iterator localIterator = map().entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          if (paramCollection.contains(localEntry.getValue()))
            localHashSet.add(localEntry.getKey());
        }
        return map().keySet().retainAll(localHashSet);
      }
    }

    public int size()
    {
      return map().size();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.Maps
 * JD-Core Version:    0.6.2
 */