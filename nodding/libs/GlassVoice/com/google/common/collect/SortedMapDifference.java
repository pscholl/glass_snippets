package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.SortedMap;

@GwtCompatible
public abstract interface SortedMapDifference<K, V> extends MapDifference<K, V>
{
  public abstract SortedMap<K, MapDifference.ValueDifference<V>> entriesDiffering();

  public abstract SortedMap<K, V> entriesInCommon();

  public abstract SortedMap<K, V> entriesOnlyOnLeft();

  public abstract SortedMap<K, V> entriesOnlyOnRight();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.SortedMapDifference
 * JD-Core Version:    0.6.2
 */