package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import javax.annotation.Nullable;

@GwtCompatible(serializable=true)
final class NullsLastOrdering<T> extends Ordering<T>
  implements Serializable
{
  private static final long serialVersionUID;
  final Ordering<? super T> ordering;

  NullsLastOrdering(Ordering<? super T> paramOrdering)
  {
    this.ordering = paramOrdering;
  }

  public int compare(@Nullable T paramT1, @Nullable T paramT2)
  {
    if (paramT1 == paramT2)
      return 0;
    if (paramT1 == null)
      return 1;
    if (paramT2 == null)
      return -1;
    return this.ordering.compare(paramT1, paramT2);
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this)
      return true;
    if ((paramObject instanceof NullsLastOrdering))
    {
      NullsLastOrdering localNullsLastOrdering = (NullsLastOrdering)paramObject;
      return this.ordering.equals(localNullsLastOrdering.ordering);
    }
    return false;
  }

  public int hashCode()
  {
    return 0xC9177248 ^ this.ordering.hashCode();
  }

  public <S extends T> Ordering<S> nullsFirst()
  {
    return this.ordering.nullsFirst();
  }

  public <S extends T> Ordering<S> nullsLast()
  {
    return this;
  }

  public <S extends T> Ordering<S> reverse()
  {
    return this.ordering.reverse().nullsFirst();
  }

  public String toString()
  {
    return this.ordering + ".nullsLast()";
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.NullsLastOrdering
 * JD-Core Version:    0.6.2
 */