package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

@GwtCompatible(serializable=true)
final class ExplicitOrdering<T> extends Ordering<T>
  implements Serializable
{
  private static final long serialVersionUID;
  final ImmutableMap<T, Integer> rankMap;

  ExplicitOrdering(ImmutableMap<T, Integer> paramImmutableMap)
  {
    this.rankMap = paramImmutableMap;
  }

  ExplicitOrdering(List<T> paramList)
  {
    this(buildRankMap(paramList));
  }

  private static <T> ImmutableMap<T, Integer> buildRankMap(List<T> paramList)
  {
    ImmutableMap.Builder localBuilder = ImmutableMap.builder();
    int i = 0;
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      int j = i + 1;
      localBuilder.put(localObject, Integer.valueOf(i));
      i = j;
    }
    return localBuilder.build();
  }

  private int rank(T paramT)
  {
    Integer localInteger = (Integer)this.rankMap.get(paramT);
    if (localInteger == null)
      throw new Ordering.IncomparableValueException(paramT);
    return localInteger.intValue();
  }

  public int compare(T paramT1, T paramT2)
  {
    return rank(paramT1) - rank(paramT2);
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if ((paramObject instanceof ExplicitOrdering))
    {
      ExplicitOrdering localExplicitOrdering = (ExplicitOrdering)paramObject;
      return this.rankMap.equals(localExplicitOrdering.rankMap);
    }
    return false;
  }

  public int hashCode()
  {
    return this.rankMap.hashCode();
  }

  public String toString()
  {
    return "Ordering.explicit(" + this.rankMap.keySet() + ")";
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ExplicitOrdering
 * JD-Core Version:    0.6.2
 */