package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
class RegularImmutableList<E> extends ImmutableList<E>
{
  private final transient Object[] array;
  private final transient int offset;
  private final transient int size;

  RegularImmutableList(Object[] paramArrayOfObject)
  {
    this(paramArrayOfObject, 0, paramArrayOfObject.length);
  }

  RegularImmutableList(Object[] paramArrayOfObject, int paramInt1, int paramInt2)
  {
    this.offset = paramInt1;
    this.size = paramInt2;
    this.array = paramArrayOfObject;
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this);
    while (true)
    {
      return true;
      if (!(paramObject instanceof List))
        return false;
      List localList = (List)paramObject;
      if (size() != localList.size())
        return false;
      int i = this.offset;
      if ((paramObject instanceof RegularImmutableList))
      {
        RegularImmutableList localRegularImmutableList = (RegularImmutableList)paramObject;
        int k = localRegularImmutableList.offset;
        while (k < localRegularImmutableList.offset + localRegularImmutableList.size)
        {
          Object[] arrayOfObject2 = this.array;
          int m = i + 1;
          if (!arrayOfObject2[i].equals(localRegularImmutableList.array[k]))
            return false;
          k++;
          i = m;
        }
      }
      else
      {
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          Object localObject = localIterator.next();
          Object[] arrayOfObject1 = this.array;
          int j = i + 1;
          if (!arrayOfObject1[i].equals(localObject))
            return false;
          i = j;
        }
      }
    }
  }

  public E get(int paramInt)
  {
    Preconditions.checkElementIndex(paramInt, this.size);
    return this.array[(paramInt + this.offset)];
  }

  public boolean isEmpty()
  {
    return false;
  }

  boolean isPartialView()
  {
    return (this.offset != 0) || (this.size != this.array.length);
  }

  public UnmodifiableListIterator<E> listIterator(int paramInt)
  {
    return Iterators.forArray(this.array, this.offset, this.size, paramInt);
  }

  public int size()
  {
    return this.size;
  }

  ImmutableList<E> subListUnchecked(int paramInt1, int paramInt2)
  {
    return new RegularImmutableList(this.array, paramInt1 + this.offset, paramInt2 - paramInt1);
  }

  public Object[] toArray()
  {
    Object[] arrayOfObject = new Object[size()];
    System.arraycopy(this.array, this.offset, arrayOfObject, 0, this.size);
    return arrayOfObject;
  }

  public <T> T[] toArray(T[] paramArrayOfT)
  {
    if (paramArrayOfT.length < this.size)
      paramArrayOfT = ObjectArrays.newArray(paramArrayOfT, this.size);
    while (true)
    {
      System.arraycopy(this.array, this.offset, paramArrayOfT, 0, this.size);
      return paramArrayOfT;
      if (paramArrayOfT.length > this.size)
        paramArrayOfT[this.size] = null;
    }
  }

  public String toString()
  {
    StringBuilder localStringBuilder = Collections2.newStringBuilderForCollection(size()).append('[').append(this.array[this.offset]);
    for (int i = 1 + this.offset; i < this.offset + this.size; i++)
      localStringBuilder.append(", ").append(this.array[i]);
    return ']';
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.RegularImmutableList
 * JD-Core Version:    0.6.2
 */