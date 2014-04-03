package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
abstract class ImmutableSortedSetFauxverideShim<E> extends ImmutableSet<E>
{
  @Deprecated
  public static <E> ImmutableSortedSet.Builder<E> builder()
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public static <E> ImmutableSortedSet<E> copyOf(E[] paramArrayOfE)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public static <E> ImmutableSortedSet<E> of(E paramE)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public static <E> ImmutableSortedSet<E> of(E paramE1, E paramE2)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public static <E> ImmutableSortedSet<E> of(E paramE1, E paramE2, E paramE3)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public static <E> ImmutableSortedSet<E> of(E paramE1, E paramE2, E paramE3, E paramE4)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public static <E> ImmutableSortedSet<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public static <E> ImmutableSortedSet<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E[] paramArrayOfE)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableSortedSetFauxverideShim
 * JD-Core Version:    0.6.2
 */