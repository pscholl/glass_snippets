package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Comparator;
import java.util.Iterator;

@GwtCompatible
abstract interface SortedIterable<T> extends Iterable<T>
{
  public abstract Comparator<? super T> comparator();

  public abstract Iterator<T> iterator();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.SortedIterable
 * JD-Core Version:    0.6.2
 */