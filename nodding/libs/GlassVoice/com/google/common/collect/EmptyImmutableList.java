package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Collection;
import java.util.List;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
final class EmptyImmutableList extends ImmutableList<Object>
{
  static final EmptyImmutableList INSTANCE = new EmptyImmutableList();
  private static final long serialVersionUID;

  public boolean contains(@Nullable Object paramObject)
  {
    return false;
  }

  public boolean containsAll(Collection<?> paramCollection)
  {
    return paramCollection.isEmpty();
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if ((paramObject instanceof List))
      return ((List)paramObject).isEmpty();
    return false;
  }

  public Object get(int paramInt)
  {
    Preconditions.checkElementIndex(paramInt, 0);
    throw new AssertionError("unreachable");
  }

  public int hashCode()
  {
    return 1;
  }

  public int indexOf(@Nullable Object paramObject)
  {
    return -1;
  }

  public boolean isEmpty()
  {
    return true;
  }

  boolean isPartialView()
  {
    return false;
  }

  public UnmodifiableIterator<Object> iterator()
  {
    return listIterator();
  }

  public int lastIndexOf(@Nullable Object paramObject)
  {
    return -1;
  }

  public UnmodifiableListIterator<Object> listIterator()
  {
    return Iterators.EMPTY_LIST_ITERATOR;
  }

  public UnmodifiableListIterator<Object> listIterator(int paramInt)
  {
    Preconditions.checkPositionIndex(paramInt, 0);
    return Iterators.EMPTY_LIST_ITERATOR;
  }

  Object readResolve()
  {
    return INSTANCE;
  }

  public ImmutableList<Object> reverse()
  {
    return this;
  }

  public int size()
  {
    return 0;
  }

  public ImmutableList<Object> subList(int paramInt1, int paramInt2)
  {
    Preconditions.checkPositionIndexes(paramInt1, paramInt2, 0);
    return this;
  }

  public Object[] toArray()
  {
    return ObjectArrays.EMPTY_ARRAY;
  }

  public <T> T[] toArray(T[] paramArrayOfT)
  {
    if (paramArrayOfT.length > 0)
      paramArrayOfT[0] = null;
    return paramArrayOfT;
  }

  public String toString()
  {
    return "[]";
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.EmptyImmutableList
 * JD-Core Version:    0.6.2
 */