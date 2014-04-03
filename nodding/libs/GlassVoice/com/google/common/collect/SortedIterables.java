package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Comparator;
import java.util.SortedSet;

@GwtCompatible
final class SortedIterables
{
  public static <E> Comparator<? super E> comparator(SortedSet<E> paramSortedSet)
  {
    Object localObject = paramSortedSet.comparator();
    if (localObject == null)
      localObject = Ordering.natural();
    return localObject;
  }

  public static boolean hasSameComparator(Comparator<?> paramComparator, Iterable<?> paramIterable)
  {
    Preconditions.checkNotNull(paramComparator);
    Preconditions.checkNotNull(paramIterable);
    if ((paramIterable instanceof SortedSet));
    for (Comparator localComparator = comparator((SortedSet)paramIterable); ; localComparator = ((SortedIterable)paramIterable).comparator())
    {
      return paramComparator.equals(localComparator);
      if (!(paramIterable instanceof SortedIterable))
        break;
    }
    return false;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.SortedIterables
 * JD-Core Version:    0.6.2
 */