package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@GwtCompatible(serializable=true)
final class NaturalOrdering extends Ordering<Comparable>
  implements Serializable
{
  static final NaturalOrdering INSTANCE = new NaturalOrdering();
  private static final long serialVersionUID;

  private Object readResolve()
  {
    return INSTANCE;
  }

  public int binarySearch(List<? extends Comparable> paramList, Comparable paramComparable)
  {
    return Collections.binarySearch(paramList, paramComparable);
  }

  public int compare(Comparable paramComparable1, Comparable paramComparable2)
  {
    Preconditions.checkNotNull(paramComparable1);
    Preconditions.checkNotNull(paramComparable2);
    if (paramComparable1 == paramComparable2)
      return 0;
    return paramComparable1.compareTo(paramComparable2);
  }

  public <S extends Comparable> Ordering<S> reverse()
  {
    return ReverseNaturalOrdering.INSTANCE;
  }

  public <E extends Comparable> List<E> sortedCopy(Iterable<E> paramIterable)
  {
    ArrayList localArrayList = Lists.newArrayList(paramIterable);
    Collections.sort(localArrayList);
    return localArrayList;
  }

  public String toString()
  {
    return "Ordering.natural()";
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.NaturalOrdering
 * JD-Core Version:    0.6.2
 */