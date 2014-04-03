package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Collection;
import javax.annotation.Nullable;

@GwtCompatible(serializable=true)
final class EmptyImmutableMultiset extends ImmutableMultiset<Object>
{
  static final EmptyImmutableMultiset INSTANCE = new EmptyImmutableMultiset();
  private static final long serialVersionUID;

  public ImmutableList<Object> asList()
  {
    return ImmutableList.of();
  }

  public boolean contains(@Nullable Object paramObject)
  {
    return false;
  }

  public boolean containsAll(Collection<?> paramCollection)
  {
    return paramCollection.isEmpty();
  }

  public int count(@Nullable Object paramObject)
  {
    return 0;
  }

  ImmutableSet<Multiset.Entry<Object>> createEntrySet()
  {
    throw new AssertionError("should never be called");
  }

  public ImmutableSet<Object> elementSet()
  {
    return ImmutableSet.of();
  }

  public ImmutableSet<Multiset.Entry<Object>> entrySet()
  {
    return ImmutableSet.of();
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if ((paramObject instanceof Multiset))
      return ((Multiset)paramObject).isEmpty();
    return false;
  }

  public int hashCode()
  {
    return 0;
  }

  boolean isPartialView()
  {
    return false;
  }

  public UnmodifiableIterator<Object> iterator()
  {
    return Iterators.emptyIterator();
  }

  Object readResolve()
  {
    return INSTANCE;
  }

  public int size()
  {
    return 0;
  }

  public Object[] toArray()
  {
    return ObjectArrays.EMPTY_ARRAY;
  }

  public <T> T[] toArray(T[] paramArrayOfT)
  {
    return asList().toArray(paramArrayOfT);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.EmptyImmutableMultiset
 * JD-Core Version:    0.6.2
 */