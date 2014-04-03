package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import javax.annotation.Nullable;

@GwtCompatible(serializable=true)
final class NullsFirstOrdering<T> extends Ordering<T>
  implements Serializable
{
  private static final long serialVersionUID;
  final Ordering<? super T> ordering;

  NullsFirstOrdering(Ordering<? super T> paramOrdering)
  {
    this.ordering = paramOrdering;
  }

  public int compare(@Nullable T paramT1, @Nullable T paramT2)
  {
    if (paramT1 == paramT2)
      return 0;
    if (paramT1 == null)
      return -1;
    if (paramT2 == null)
      return 1;
    return this.ordering.compare(paramT1, paramT2);
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this)
      return true;
    if ((paramObject instanceof NullsFirstOrdering))
    {
      NullsFirstOrdering localNullsFirstOrdering = (NullsFirstOrdering)paramObject;
      return this.ordering.equals(localNullsFirstOrdering.ordering);
    }
    return false;
  }

  public int hashCode()
  {
    return 0x39153A74 ^ this.ordering.hashCode();
  }

  public <S extends T> Ordering<S> nullsFirst()
  {
    return this;
  }

  public <S extends T> Ordering<S> nullsLast()
  {
    return this.ordering.nullsLast();
  }

  public <S extends T> Ordering<S> reverse()
  {
    return this.ordering.reverse().nullsLast();
  }

  public String toString()
  {
    return this.ordering + ".nullsFirst()";
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.NullsFirstOrdering
 * JD-Core Version:    0.6.2
 */