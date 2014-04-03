package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import java.util.Map.Entry;

@GwtCompatible
abstract class FilteredMultimap<K, V> extends AbstractMultimap<K, V>
{
  final Multimap<K, V> unfiltered;

  FilteredMultimap(Multimap<K, V> paramMultimap)
  {
    this.unfiltered = ((Multimap)Preconditions.checkNotNull(paramMultimap));
  }

  abstract Predicate<? super Map.Entry<K, V>> entryPredicate();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.FilteredMultimap
 * JD-Core Version:    0.6.2
 */