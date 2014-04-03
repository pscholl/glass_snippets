package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
public abstract class ImmutableSortedMap<K, V> extends ImmutableSortedMapFauxverideShim<K, V>
  implements SortedMap<K, V>
{
  private static final ImmutableSortedMap<Comparable, Object> NATURAL_EMPTY_MAP = new EmptyImmutableSortedMap(NATURAL_ORDER);
  private static final Comparator<Comparable> NATURAL_ORDER = Ordering.natural();
  private static final long serialVersionUID;
  private transient ImmutableSortedMap<K, V> descendingMap;

  ImmutableSortedMap()
  {
  }

  ImmutableSortedMap(ImmutableSortedMap<K, V> paramImmutableSortedMap)
  {
    this.descendingMap = paramImmutableSortedMap;
  }

  public static <K, V> ImmutableSortedMap<K, V> copyOf(Map<? extends K, ? extends V> paramMap)
  {
    return copyOfInternal(paramMap, Ordering.natural());
  }

  public static <K, V> ImmutableSortedMap<K, V> copyOf(Map<? extends K, ? extends V> paramMap, Comparator<? super K> paramComparator)
  {
    return copyOfInternal(paramMap, (Comparator)Preconditions.checkNotNull(paramComparator));
  }

  private static <K, V> ImmutableSortedMap<K, V> copyOfInternal(Map<? extends K, ? extends V> paramMap, Comparator<? super K> paramComparator)
  {
    boolean bool1 = paramMap instanceof SortedMap;
    boolean bool2 = false;
    Comparator localComparator;
    if (bool1)
    {
      localComparator = ((SortedMap)paramMap).comparator();
      if (localComparator != null)
        break label69;
      if (paramComparator != NATURAL_ORDER)
        break label64;
      bool2 = true;
    }
    while ((bool2) && ((paramMap instanceof ImmutableSortedMap)))
    {
      ImmutableSortedMap localImmutableSortedMap = (ImmutableSortedMap)paramMap;
      if (localImmutableSortedMap.isPartialView())
        break;
      return localImmutableSortedMap;
      label64: bool2 = false;
      continue;
      label69: bool2 = paramComparator.equals(localComparator);
    }
    Map.Entry[] arrayOfEntry = (Map.Entry[])paramMap.entrySet().toArray(new Map.Entry[0]);
    for (int i = 0; i < arrayOfEntry.length; i++)
    {
      Map.Entry localEntry = arrayOfEntry[i];
      arrayOfEntry[i] = entryOf(localEntry.getKey(), localEntry.getValue());
    }
    List localList = Arrays.asList(arrayOfEntry);
    if (!bool2)
    {
      sortEntries(localList, paramComparator);
      validateEntries(localList, paramComparator);
    }
    return fromSortedEntries(paramComparator, localList);
  }

  public static <K, V> ImmutableSortedMap<K, V> copyOfSorted(SortedMap<K, ? extends V> paramSortedMap)
  {
    Comparator localComparator = paramSortedMap.comparator();
    if (localComparator == null)
      localComparator = NATURAL_ORDER;
    return copyOfInternal(paramSortedMap, localComparator);
  }

  static <K, V> ImmutableSortedMap<K, V> emptyMap(Comparator<? super K> paramComparator)
  {
    if (Ordering.natural().equals(paramComparator))
      return of();
    return new EmptyImmutableSortedMap(paramComparator);
  }

  static <K, V> ImmutableSortedMap<K, V> from(ImmutableSortedSet<K> paramImmutableSortedSet, ImmutableList<V> paramImmutableList)
  {
    if (paramImmutableSortedSet.isEmpty())
      return emptyMap(paramImmutableSortedSet.comparator());
    return new RegularImmutableSortedMap((RegularImmutableSortedSet)paramImmutableSortedSet, paramImmutableList);
  }

  static <K, V> ImmutableSortedMap<K, V> fromSortedEntries(Comparator<? super K> paramComparator, Collection<? extends Map.Entry<? extends K, ? extends V>> paramCollection)
  {
    if (paramCollection.isEmpty())
      return emptyMap(paramComparator);
    ImmutableList.Builder localBuilder1 = ImmutableList.builder();
    ImmutableList.Builder localBuilder2 = ImmutableList.builder();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localBuilder1.add(localEntry.getKey());
      localBuilder2.add(localEntry.getValue());
    }
    return new RegularImmutableSortedMap(new RegularImmutableSortedSet(localBuilder1.build(), paramComparator), localBuilder2.build());
  }

  public static <K extends Comparable<?>, V> Builder<K, V> naturalOrder()
  {
    return new Builder(Ordering.natural());
  }

  public static <K, V> ImmutableSortedMap<K, V> of()
  {
    return NATURAL_EMPTY_MAP;
  }

  public static <K extends Comparable<? super K>, V> ImmutableSortedMap<K, V> of(K paramK, V paramV)
  {
    return from(ImmutableSortedSet.of(paramK), ImmutableList.of(paramV));
  }

  public static <K extends Comparable<? super K>, V> ImmutableSortedMap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2)
  {
    return new Builder(Ordering.natural()).put(paramK1, paramV1).put(paramK2, paramV2).build();
  }

  public static <K extends Comparable<? super K>, V> ImmutableSortedMap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3)
  {
    return new Builder(Ordering.natural()).put(paramK1, paramV1).put(paramK2, paramV2).put(paramK3, paramV3).build();
  }

  public static <K extends Comparable<? super K>, V> ImmutableSortedMap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4)
  {
    return new Builder(Ordering.natural()).put(paramK1, paramV1).put(paramK2, paramV2).put(paramK3, paramV3).put(paramK4, paramV4).build();
  }

  public static <K extends Comparable<? super K>, V> ImmutableSortedMap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4, K paramK5, V paramV5)
  {
    return new Builder(Ordering.natural()).put(paramK1, paramV1).put(paramK2, paramV2).put(paramK3, paramV3).put(paramK4, paramV4).put(paramK5, paramV5).build();
  }

  public static <K, V> Builder<K, V> orderedBy(Comparator<K> paramComparator)
  {
    return new Builder(paramComparator);
  }

  public static <K extends Comparable<?>, V> Builder<K, V> reverseOrder()
  {
    return new Builder(Ordering.natural().reverse());
  }

  private static <K, V> void sortEntries(List<Map.Entry<K, V>> paramList, Comparator<? super K> paramComparator)
  {
    Collections.sort(paramList, new Comparator()
    {
      public int compare(Map.Entry<K, V> paramAnonymousEntry1, Map.Entry<K, V> paramAnonymousEntry2)
      {
        return this.val$comparator.compare(paramAnonymousEntry1.getKey(), paramAnonymousEntry2.getKey());
      }
    });
  }

  private static <K, V> void validateEntries(List<Map.Entry<K, V>> paramList, Comparator<? super K> paramComparator)
  {
    for (int i = 1; i < paramList.size(); i++)
      if (paramComparator.compare(((Map.Entry)paramList.get(i - 1)).getKey(), ((Map.Entry)paramList.get(i)).getKey()) == 0)
        throw new IllegalArgumentException("Duplicate keys in mappings " + paramList.get(i - 1) + " and " + paramList.get(i));
  }

  public Map.Entry<K, V> ceilingEntry(K paramK)
  {
    return tailMap(paramK, true).firstEntry();
  }

  public K ceilingKey(K paramK)
  {
    return Maps.keyOrNull(ceilingEntry(paramK));
  }

  public Comparator<? super K> comparator()
  {
    return keySet().comparator();
  }

  public boolean containsValue(@Nullable Object paramObject)
  {
    return values().contains(paramObject);
  }

  abstract ImmutableSortedMap<K, V> createDescendingMap();

  public ImmutableSortedSet<K> descendingKeySet()
  {
    return keySet().descendingSet();
  }

  public ImmutableSortedMap<K, V> descendingMap()
  {
    ImmutableSortedMap localImmutableSortedMap = this.descendingMap;
    if (localImmutableSortedMap == null)
    {
      localImmutableSortedMap = createDescendingMap();
      this.descendingMap = localImmutableSortedMap;
    }
    return localImmutableSortedMap;
  }

  public ImmutableSet<Map.Entry<K, V>> entrySet()
  {
    return super.entrySet();
  }

  public Map.Entry<K, V> firstEntry()
  {
    if (isEmpty())
      return null;
    return (Map.Entry)entrySet().asList().get(0);
  }

  public K firstKey()
  {
    return keySet().first();
  }

  public Map.Entry<K, V> floorEntry(K paramK)
  {
    return headMap(paramK, true).lastEntry();
  }

  public K floorKey(K paramK)
  {
    return Maps.keyOrNull(floorEntry(paramK));
  }

  public ImmutableSortedMap<K, V> headMap(K paramK)
  {
    return headMap(paramK, false);
  }

  public abstract ImmutableSortedMap<K, V> headMap(K paramK, boolean paramBoolean);

  public Map.Entry<K, V> higherEntry(K paramK)
  {
    return tailMap(paramK, false).firstEntry();
  }

  public K higherKey(K paramK)
  {
    return Maps.keyOrNull(higherEntry(paramK));
  }

  boolean isPartialView()
  {
    return (keySet().isPartialView()) || (values().isPartialView());
  }

  public abstract ImmutableSortedSet<K> keySet();

  public Map.Entry<K, V> lastEntry()
  {
    if (isEmpty())
      return null;
    return (Map.Entry)entrySet().asList().get(-1 + size());
  }

  public K lastKey()
  {
    return keySet().last();
  }

  public Map.Entry<K, V> lowerEntry(K paramK)
  {
    return headMap(paramK, false).lastEntry();
  }

  public K lowerKey(K paramK)
  {
    return Maps.keyOrNull(lowerEntry(paramK));
  }

  public ImmutableSortedSet<K> navigableKeySet()
  {
    return keySet();
  }

  @Deprecated
  public final Map.Entry<K, V> pollFirstEntry()
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public final Map.Entry<K, V> pollLastEntry()
  {
    throw new UnsupportedOperationException();
  }

  public int size()
  {
    return values().size();
  }

  public ImmutableSortedMap<K, V> subMap(K paramK1, K paramK2)
  {
    return subMap(paramK1, true, paramK2, false);
  }

  public ImmutableSortedMap<K, V> subMap(K paramK1, boolean paramBoolean1, K paramK2, boolean paramBoolean2)
  {
    Preconditions.checkNotNull(paramK1);
    Preconditions.checkNotNull(paramK2);
    if (comparator().compare(paramK1, paramK2) <= 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "expected fromKey <= toKey but %s > %s", new Object[] { paramK1, paramK2 });
      return headMap(paramK2, paramBoolean2).tailMap(paramK1, paramBoolean1);
    }
  }

  public ImmutableSortedMap<K, V> tailMap(K paramK)
  {
    return tailMap(paramK, true);
  }

  public abstract ImmutableSortedMap<K, V> tailMap(K paramK, boolean paramBoolean);

  public abstract ImmutableCollection<V> values();

  Object writeReplace()
  {
    return new SerializedForm(this);
  }

  public static class Builder<K, V> extends ImmutableMap.Builder<K, V>
  {
    private final Comparator<? super K> comparator;

    public Builder(Comparator<? super K> paramComparator)
    {
      this.comparator = ((Comparator)Preconditions.checkNotNull(paramComparator));
    }

    public ImmutableSortedMap<K, V> build()
    {
      ImmutableSortedMap.sortEntries(this.entries, this.comparator);
      ImmutableSortedMap.validateEntries(this.entries, this.comparator);
      return ImmutableSortedMap.fromSortedEntries(this.comparator, this.entries);
    }

    public Builder<K, V> put(K paramK, V paramV)
    {
      this.entries.add(ImmutableMap.entryOf(paramK, paramV));
      return this;
    }

    public Builder<K, V> put(Map.Entry<? extends K, ? extends V> paramEntry)
    {
      super.put(paramEntry);
      return this;
    }

    public Builder<K, V> putAll(Map<? extends K, ? extends V> paramMap)
    {
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        put(localEntry.getKey(), localEntry.getValue());
      }
      return this;
    }
  }

  private static class SerializedForm extends ImmutableMap.SerializedForm
  {
    private static final long serialVersionUID;
    private final Comparator<Object> comparator;

    SerializedForm(ImmutableSortedMap<?, ?> paramImmutableSortedMap)
    {
      super();
      this.comparator = paramImmutableSortedMap.comparator();
    }

    Object readResolve()
    {
      return createMap(new ImmutableSortedMap.Builder(this.comparator));
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableSortedMap
 * JD-Core Version:    0.6.2
 */