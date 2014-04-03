package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import javax.annotation.Nullable;

@GwtCompatible
final class CartesianList<E> extends AbstractList<List<E>>
{
  private final transient ImmutableList<List<E>> axes;
  private final transient int[] axesSizeProduct;

  CartesianList(ImmutableList<List<E>> paramImmutableList)
  {
    this.axes = paramImmutableList;
    int[] arrayOfInt = new int[1 + paramImmutableList.size()];
    arrayOfInt[paramImmutableList.size()] = 1;
    try
    {
      for (int i = -1 + paramImmutableList.size(); i >= 0; i--)
        arrayOfInt[i] = IntMath.checkedMultiply(arrayOfInt[(i + 1)], ((List)paramImmutableList.get(i)).size());
    }
    catch (ArithmeticException localArithmeticException)
    {
      throw new IllegalArgumentException("Cartesian product too large; must have size at most Integer.MAX_VALUE");
    }
    this.axesSizeProduct = arrayOfInt;
  }

  static <E> List<List<E>> create(List<? extends List<? extends E>> paramList)
  {
    ImmutableList.Builder localBuilder = new ImmutableList.Builder(paramList.size());
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      ImmutableList localImmutableList = ImmutableList.copyOf((List)localIterator.next());
      if (localImmutableList.isEmpty())
        return ImmutableList.of();
      localBuilder.add(localImmutableList);
    }
    return new CartesianList(localBuilder.build());
  }

  private int getAxisIndexForProductIndex(int paramInt1, int paramInt2)
  {
    return paramInt1 / this.axesSizeProduct[(paramInt2 + 1)] % ((List)this.axes.get(paramInt2)).size();
  }

  public boolean contains(@Nullable Object paramObject)
  {
    if (!(paramObject instanceof List))
      return false;
    List localList = (List)paramObject;
    if (localList.size() != this.axes.size())
      return false;
    ListIterator localListIterator = localList.listIterator();
    while (localListIterator.hasNext())
    {
      int i = localListIterator.nextIndex();
      if (!((List)this.axes.get(i)).contains(localListIterator.next()))
        return false;
    }
    return true;
  }

  public ImmutableList<E> get(final int paramInt)
  {
    Preconditions.checkElementIndex(paramInt, size());
    return new ImmutableList()
    {
      public E get(int paramAnonymousInt)
      {
        Preconditions.checkElementIndex(paramAnonymousInt, size());
        int i = CartesianList.this.getAxisIndexForProductIndex(paramInt, paramAnonymousInt);
        return ((List)CartesianList.this.axes.get(paramAnonymousInt)).get(i);
      }

      boolean isPartialView()
      {
        return true;
      }

      public int size()
      {
        return CartesianList.this.axes.size();
      }
    };
  }

  public int indexOf(Object paramObject)
  {
    int i;
    if (!(paramObject instanceof List))
      i = -1;
    while (true)
    {
      return i;
      List localList1 = (List)paramObject;
      if (localList1.size() != this.axes.size())
        return -1;
      Iterator localIterator1 = localList1.iterator();
      i = 0;
      Iterator localIterator2 = this.axes.iterator();
      while (localIterator2.hasNext())
      {
        List localList2 = (List)localIterator2.next();
        int j = localList2.indexOf(localIterator1.next());
        if (j == -1)
          return -1;
        i = j + i * localList2.size();
      }
    }
  }

  public int lastIndexOf(Object paramObject)
  {
    int i;
    if (!(paramObject instanceof List))
      i = -1;
    while (true)
    {
      return i;
      List localList1 = (List)paramObject;
      if (localList1.size() != this.axes.size())
        return -1;
      Iterator localIterator1 = localList1.iterator();
      i = 0;
      Iterator localIterator2 = this.axes.iterator();
      while (localIterator2.hasNext())
      {
        List localList2 = (List)localIterator2.next();
        int j = localList2.lastIndexOf(localIterator1.next());
        if (j == -1)
          return -1;
        i = j + i * localList2.size();
      }
    }
  }

  public int size()
  {
    return this.axesSizeProduct[0];
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.CartesianList
 * JD-Core Version:    0.6.2
 */