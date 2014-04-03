package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.List;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
final class SingletonImmutableList<E> extends ImmutableList<E>
{
  final transient E element;

  SingletonImmutableList(E paramE)
  {
    this.element = Preconditions.checkNotNull(paramE);
  }

  public boolean contains(@Nullable Object paramObject)
  {
    return this.element.equals(paramObject);
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this);
    List localList;
    do
    {
      return true;
      if (!(paramObject instanceof List))
        break;
      localList = (List)paramObject;
    }
    while ((localList.size() == 1) && (this.element.equals(localList.get(0))));
    return false;
    return false;
  }

  public E get(int paramInt)
  {
    Preconditions.checkElementIndex(paramInt, 1);
    return this.element;
  }

  public int hashCode()
  {
    return 31 + this.element.hashCode();
  }

  public int indexOf(@Nullable Object paramObject)
  {
    if (this.element.equals(paramObject))
      return 0;
    return -1;
  }

  public boolean isEmpty()
  {
    return false;
  }

  boolean isPartialView()
  {
    return false;
  }

  public UnmodifiableIterator<E> iterator()
  {
    return Iterators.singletonIterator(this.element);
  }

  public int lastIndexOf(@Nullable Object paramObject)
  {
    return indexOf(paramObject);
  }

  public ImmutableList<E> reverse()
  {
    return this;
  }

  public int size()
  {
    return 1;
  }

  public ImmutableList<E> subList(int paramInt1, int paramInt2)
  {
    Preconditions.checkPositionIndexes(paramInt1, paramInt2, 1);
    if (paramInt1 == paramInt2)
      this = ImmutableList.of();
    return this;
  }

  public Object[] toArray()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.element;
    return arrayOfObject;
  }

  public <T> T[] toArray(T[] paramArrayOfT)
  {
    if (paramArrayOfT.length == 0)
      paramArrayOfT = ObjectArrays.newArray(paramArrayOfT, 1);
    while (true)
    {
      paramArrayOfT[0] = this.element;
      return paramArrayOfT;
      if (paramArrayOfT.length > 1)
        paramArrayOfT[1] = null;
    }
  }

  public String toString()
  {
    String str = this.element.toString();
    return 2 + str.length() + '[' + str + ']';
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.SingletonImmutableList
 * JD-Core Version:    0.6.2
 */