package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Map.Entry;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
final class RegularImmutableSortedMap<K, V> extends ImmutableSortedMap<K, V>
{
  private final transient RegularImmutableSortedSet<K> keySet;
  private final transient ImmutableList<V> valueList;

  RegularImmutableSortedMap(RegularImmutableSortedSet<K> paramRegularImmutableSortedSet, ImmutableList<V> paramImmutableList)
  {
    this.keySet = paramRegularImmutableSortedSet;
    this.valueList = paramImmutableList;
  }

  RegularImmutableSortedMap(RegularImmutableSortedSet<K> paramRegularImmutableSortedSet, ImmutableList<V> paramImmutableList, ImmutableSortedMap<K, V> paramImmutableSortedMap)
  {
    super(paramImmutableSortedMap);
    this.keySet = paramRegularImmutableSortedSet;
    this.valueList = paramImmutableList;
  }

  private ImmutableSortedMap<K, V> getSubMap(int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) && (paramInt2 == size()))
      return this;
    if (paramInt1 == paramInt2)
      return emptyMap(comparator());
    return from(this.keySet.getSubSet(paramInt1, paramInt2), this.valueList.subList(paramInt1, paramInt2));
  }

  ImmutableSortedMap<K, V> createDescendingMap()
  {
    return new RegularImmutableSortedMap((RegularImmutableSortedSet)this.keySet.descendingSet(), this.valueList.reverse(), this);
  }

  ImmutableSet<Map.Entry<K, V>> createEntrySet()
  {
    return new EntrySet(null);
  }

  public V get(@Nullable Object paramObject)
  {
    int i = this.keySet.indexOf(paramObject);
    if (i == -1)
      return null;
    return this.valueList.get(i);
  }

  public ImmutableSortedMap<K, V> headMap(K paramK, boolean paramBoolean)
  {
    return getSubMap(0, this.keySet.headIndex(Preconditions.checkNotNull(paramK), paramBoolean));
  }

  public ImmutableSortedSet<K> keySet()
  {
    return this.keySet;
  }

  public ImmutableSortedMap<K, V> tailMap(K paramK, boolean paramBoolean)
  {
    return getSubMap(this.keySet.tailIndex(Preconditions.checkNotNull(paramK), paramBoolean), size());
  }

  public ImmutableCollection<V> values()
  {
    return this.valueList;
  }

  private class EntrySet extends ImmutableMapEntrySet<K, V>
  {
    private EntrySet()
    {
    }

    ImmutableList<Map.Entry<K, V>> createAsList()
    {
      return new ImmutableAsList()
      {
        private final ImmutableList<K> keyList = RegularImmutableSortedMap.this.keySet().asList();

        ImmutableCollection<Map.Entry<K, V>> delegateCollection()
        {
          return RegularImmutableSortedMap.EntrySet.this;
        }

        public Map.Entry<K, V> get(int paramAnonymousInt)
        {
          return Maps.immutableEntry(this.keyList.get(paramAnonymousInt), RegularImmutableSortedMap.this.valueList.get(paramAnonymousInt));
        }
      };
    }

    public UnmodifiableIterator<Map.Entry<K, V>> iterator()
    {
      return asList().iterator();
    }

    ImmutableMap<K, V> map()
    {
      return RegularImmutableSortedMap.this;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.RegularImmutableSortedMap
 * JD-Core Version:    0.6.2
 */