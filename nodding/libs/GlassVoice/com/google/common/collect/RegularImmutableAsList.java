package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
class RegularImmutableAsList<E> extends ImmutableAsList<E>
{
  private final ImmutableCollection<E> delegate;
  private final ImmutableList<? extends E> delegateList;

  RegularImmutableAsList(ImmutableCollection<E> paramImmutableCollection, ImmutableList<? extends E> paramImmutableList)
  {
    this.delegate = paramImmutableCollection;
    this.delegateList = paramImmutableList;
  }

  RegularImmutableAsList(ImmutableCollection<E> paramImmutableCollection, Object[] paramArrayOfObject)
  {
    this(paramImmutableCollection, ImmutableList.asImmutableList(paramArrayOfObject));
  }

  ImmutableCollection<E> delegateCollection()
  {
    return this.delegate;
  }

  ImmutableList<? extends E> delegateList()
  {
    return this.delegateList;
  }

  public boolean equals(Object paramObject)
  {
    return this.delegateList.equals(paramObject);
  }

  public E get(int paramInt)
  {
    return this.delegateList.get(paramInt);
  }

  public int hashCode()
  {
    return this.delegateList.hashCode();
  }

  public int indexOf(Object paramObject)
  {
    return this.delegateList.indexOf(paramObject);
  }

  public int lastIndexOf(Object paramObject)
  {
    return this.delegateList.lastIndexOf(paramObject);
  }

  public UnmodifiableListIterator<E> listIterator(int paramInt)
  {
    return this.delegateList.listIterator(paramInt);
  }

  public Object[] toArray()
  {
    return this.delegateList.toArray();
  }

  public <T> T[] toArray(T[] paramArrayOfT)
  {
    return this.delegateList.toArray(paramArrayOfT);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.RegularImmutableAsList
 * JD-Core Version:    0.6.2
 */