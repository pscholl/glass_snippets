package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Iterator;
import javax.annotation.Nullable;

@GwtCompatible(serializable=true)
final class LexicographicalOrdering<T> extends Ordering<Iterable<T>>
  implements Serializable
{
  private static final long serialVersionUID;
  final Ordering<? super T> elementOrder;

  LexicographicalOrdering(Ordering<? super T> paramOrdering)
  {
    this.elementOrder = paramOrdering;
  }

  public int compare(Iterable<T> paramIterable1, Iterable<T> paramIterable2)
  {
    Iterator localIterator1 = paramIterable1.iterator();
    Iterator localIterator2 = paramIterable2.iterator();
    while (localIterator1.hasNext())
    {
      if (!localIterator2.hasNext())
        return 1;
      int i = this.elementOrder.compare(localIterator1.next(), localIterator2.next());
      if (i != 0)
        return i;
    }
    if (localIterator2.hasNext())
      return -1;
    return 0;
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this)
      return true;
    if ((paramObject instanceof LexicographicalOrdering))
    {
      LexicographicalOrdering localLexicographicalOrdering = (LexicographicalOrdering)paramObject;
      return this.elementOrder.equals(localLexicographicalOrdering.elementOrder);
    }
    return false;
  }

  public int hashCode()
  {
    return 0x7BB78CF5 ^ this.elementOrder.hashCode();
  }

  public String toString()
  {
    return this.elementOrder + ".lexicographical()";
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.LexicographicalOrdering
 * JD-Core Version:    0.6.2
 */