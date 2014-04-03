package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Map;
import javax.annotation.Nullable;

@GwtCompatible
public abstract interface MapDifference<K, V>
{
  public abstract boolean areEqual();

  public abstract Map<K, ValueDifference<V>> entriesDiffering();

  public abstract Map<K, V> entriesInCommon();

  public abstract Map<K, V> entriesOnlyOnLeft();

  public abstract Map<K, V> entriesOnlyOnRight();

  public abstract boolean equals(@Nullable Object paramObject);

  public abstract int hashCode();

  public static abstract interface ValueDifference<V>
  {
    public abstract boolean equals(@Nullable Object paramObject);

    public abstract int hashCode();

    public abstract V leftValue();

    public abstract V rightValue();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.MapDifference
 * JD-Core Version:    0.6.2
 */