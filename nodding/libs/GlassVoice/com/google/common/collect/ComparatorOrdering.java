package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import javax.annotation.Nullable;

@GwtCompatible(serializable=true)
final class ComparatorOrdering<T> extends Ordering<T>
  implements Serializable
{
  private static final long serialVersionUID;
  final Comparator<T> comparator;

  ComparatorOrdering(Comparator<T> paramComparator)
  {
    this.comparator = ((Comparator)Preconditions.checkNotNull(paramComparator));
  }

  public int binarySearch(List<? extends T> paramList, T paramT)
  {
    return Collections.binarySearch(paramList, paramT, this.comparator);
  }

  public int compare(T paramT1, T paramT2)
  {
    return this.comparator.compare(paramT1, paramT2);
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this)
      return true;
    if ((paramObject instanceof ComparatorOrdering))
    {
      ComparatorOrdering localComparatorOrdering = (ComparatorOrdering)paramObject;
      return this.comparator.equals(localComparatorOrdering.comparator);
    }
    return false;
  }

  public int hashCode()
  {
    return this.comparator.hashCode();
  }

  public <E extends T> ImmutableList<E> immutableSortedCopy(Iterable<E> paramIterable)
  {
    Object[] arrayOfObject = (Object[])Iterables.toArray(paramIterable);
    int i = arrayOfObject.length;
    for (int j = 0; j < i; j++)
      Preconditions.checkNotNull(arrayOfObject[j]);
    Arrays.sort(arrayOfObject, this.comparator);
    return ImmutableList.asImmutableList(arrayOfObject);
  }

  public <E extends T> List<E> sortedCopy(Iterable<E> paramIterable)
  {
    ArrayList localArrayList = Lists.newArrayList(paramIterable);
    Collections.sort(localArrayList, this.comparator);
    return localArrayList;
  }

  public String toString()
  {
    return this.comparator.toString();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ComparatorOrdering
 * JD-Core Version:    0.6.2
 */