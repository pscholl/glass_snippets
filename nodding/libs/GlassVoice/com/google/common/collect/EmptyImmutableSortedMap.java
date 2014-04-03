package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Comparator;
import java.util.Map.Entry;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
final class EmptyImmutableSortedMap<K, V> extends ImmutableSortedMap<K, V>
{
  private final transient ImmutableSortedSet<K> keySet;

  EmptyImmutableSortedMap(Comparator<? super K> paramComparator)
  {
    this.keySet = ImmutableSortedSet.emptySet(paramComparator);
  }

  EmptyImmutableSortedMap(Comparator<? super K> paramComparator, ImmutableSortedMap<K, V> paramImmutableSortedMap)
  {
    super(paramImmutableSortedMap);
    this.keySet = ImmutableSortedSet.emptySet(paramComparator);
  }

  ImmutableSortedMap<K, V> createDescendingMap()
  {
    return new EmptyImmutableSortedMap(Ordering.from(comparator()).reverse(), this);
  }

  ImmutableSet<Map.Entry<K, V>> createEntrySet()
  {
    throw new AssertionError("should never be called");
  }

  public ImmutableSet<Map.Entry<K, V>> entrySet()
  {
    return ImmutableSet.of();
  }

  public V get(@Nullable Object paramObject)
  {
    return null;
  }

  public ImmutableSortedMap<K, V> headMap(K paramK, boolean paramBoolean)
  {
    Preconditions.checkNotNull(paramK);
    return this;
  }

  public boolean isEmpty()
  {
    return true;
  }

  boolean isPartialView()
  {
    return false;
  }

  public ImmutableSortedSet<K> keySet()
  {
    return this.keySet;
  }

  public int size()
  {
    return 0;
  }

  public ImmutableSortedMap<K, V> tailMap(K paramK, boolean paramBoolean)
  {
    Preconditions.checkNotNull(paramK);
    return this;
  }

  public String toString()
  {
    return "{}";
  }

  public ImmutableCollection<V> values()
  {
    return ImmutableList.of();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.EmptyImmutableSortedMap
 * JD-Core Version:    0.6.2
 */