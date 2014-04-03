package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
final class SingletonImmutableSet<E> extends ImmutableSet<E>
{
  private transient int cachedHashCode;
  final transient E element;

  SingletonImmutableSet(E paramE)
  {
    this.element = Preconditions.checkNotNull(paramE);
  }

  SingletonImmutableSet(E paramE, int paramInt)
  {
    this.element = paramE;
    this.cachedHashCode = paramInt;
  }

  public boolean contains(Object paramObject)
  {
    return this.element.equals(paramObject);
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this);
    Set localSet;
    do
    {
      return true;
      if (!(paramObject instanceof Set))
        break;
      localSet = (Set)paramObject;
    }
    while ((localSet.size() == 1) && (this.element.equals(localSet.iterator().next())));
    return false;
    return false;
  }

  public final int hashCode()
  {
    int i = this.cachedHashCode;
    if (i == 0)
    {
      i = this.element.hashCode();
      this.cachedHashCode = i;
    }
    return i;
  }

  public boolean isEmpty()
  {
    return false;
  }

  boolean isHashCodeFast()
  {
    return this.cachedHashCode != 0;
  }

  boolean isPartialView()
  {
    return false;
  }

  public UnmodifiableIterator<E> iterator()
  {
    return Iterators.singletonIterator(this.element);
  }

  public int size()
  {
    return 1;
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
 * Qualified Name:     com.google.common.collect.SingletonImmutableSet
 * JD-Core Version:    0.6.2
 */