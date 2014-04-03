package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
final class RegularImmutableSortedSet<E> extends ImmutableSortedSet<E>
{
  private final transient ImmutableList<E> elements;

  RegularImmutableSortedSet(ImmutableList<E> paramImmutableList, Comparator<? super E> paramComparator)
  {
    super(paramComparator);
    this.elements = paramImmutableList;
    if (!paramImmutableList.isEmpty());
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      return;
    }
  }

  private int unsafeBinarySearch(Object paramObject)
    throws ClassCastException
  {
    return Collections.binarySearch(this.elements, paramObject, unsafeComparator());
  }

  public E ceiling(E paramE)
  {
    int i = tailIndex(paramE, true);
    if (i == size())
      return null;
    return this.elements.get(i);
  }

  public boolean contains(Object paramObject)
  {
    boolean bool = false;
    if (paramObject != null);
    try
    {
      int i = unsafeBinarySearch(paramObject);
      bool = false;
      if (i >= 0)
        bool = true;
      return bool;
    }
    catch (ClassCastException localClassCastException)
    {
    }
    return false;
  }

  public boolean containsAll(Collection<?> paramCollection)
  {
    int i = 1;
    boolean bool;
    if ((!SortedIterables.hasSameComparator(comparator(), paramCollection)) || (paramCollection.size() <= i))
      bool = super.containsAll(paramCollection);
    while (true)
    {
      return bool;
      UnmodifiableIterator localUnmodifiableIterator = iterator();
      Iterator localIterator = paramCollection.iterator();
      Object localObject1 = localIterator.next();
      try
      {
        while (true)
          if (localUnmodifiableIterator.hasNext())
          {
            int j = unsafeCompare(localUnmodifiableIterator.next(), localObject1);
            if (j == 0)
            {
              if (!localIterator.hasNext())
                break;
              Object localObject2 = localIterator.next();
              localObject1 = localObject2;
              continue;
            }
            if (j > 0)
              return false;
          }
      }
      catch (NullPointerException localNullPointerException)
      {
        return false;
      }
      catch (ClassCastException localClassCastException)
      {
        return false;
      }
    }
    return false;
  }

  ImmutableList<E> createAsList()
  {
    return new ImmutableSortedAsList(this, this.elements);
  }

  ImmutableSortedSet<E> createDescendingSet()
  {
    return new RegularImmutableSortedSet(this.elements.reverse(), Ordering.from(this.comparator).reverse());
  }

  @GwtIncompatible("NavigableSet")
  public UnmodifiableIterator<E> descendingIterator()
  {
    return this.elements.reverse().iterator();
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this);
    Set localSet;
    while (true)
    {
      return true;
      if (!(paramObject instanceof Set))
        return false;
      localSet = (Set)paramObject;
      if (size() != localSet.size())
        return false;
      if (SortedIterables.hasSameComparator(this.comparator, localSet))
      {
        Iterator localIterator = localSet.iterator();
        try
        {
          UnmodifiableIterator localUnmodifiableIterator = iterator();
          int i;
          do
          {
            if (!localUnmodifiableIterator.hasNext())
              break;
            Object localObject1 = localUnmodifiableIterator.next();
            Object localObject2 = localIterator.next();
            if (localObject2 == null)
              break label107;
            i = unsafeCompare(localObject1, localObject2);
          }
          while (i == 0);
          label107: return false;
        }
        catch (ClassCastException localClassCastException)
        {
          return false;
        }
        catch (NoSuchElementException localNoSuchElementException)
        {
          return false;
        }
      }
    }
    return containsAll(localSet);
  }

  public E first()
  {
    return this.elements.get(0);
  }

  public E floor(E paramE)
  {
    int i = -1 + headIndex(paramE, true);
    if (i == -1)
      return null;
    return this.elements.get(i);
  }

  ImmutableSortedSet<E> getSubSet(int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) && (paramInt2 == size()))
      return this;
    if (paramInt1 < paramInt2)
      return new RegularImmutableSortedSet(this.elements.subList(paramInt1, paramInt2), this.comparator);
    return emptySet(this.comparator);
  }

  int headIndex(E paramE, boolean paramBoolean)
  {
    ImmutableList localImmutableList = this.elements;
    Object localObject = Preconditions.checkNotNull(paramE);
    Comparator localComparator = comparator();
    if (paramBoolean);
    for (SortedLists.KeyPresentBehavior localKeyPresentBehavior = SortedLists.KeyPresentBehavior.FIRST_AFTER; ; localKeyPresentBehavior = SortedLists.KeyPresentBehavior.FIRST_PRESENT)
      return SortedLists.binarySearch(localImmutableList, localObject, localComparator, localKeyPresentBehavior, SortedLists.KeyAbsentBehavior.NEXT_HIGHER);
  }

  ImmutableSortedSet<E> headSetImpl(E paramE, boolean paramBoolean)
  {
    return getSubSet(0, headIndex(paramE, paramBoolean));
  }

  public E higher(E paramE)
  {
    int i = tailIndex(paramE, false);
    if (i == size())
      return null;
    return this.elements.get(i);
  }

  int indexOf(@Nullable Object paramObject)
  {
    if (paramObject == null)
      return -1;
    while (true)
    {
      try
      {
        int i = SortedLists.binarySearch(this.elements, paramObject, unsafeComparator(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.INVERTED_INSERTION_INDEX);
        j = i;
        if (j >= 0)
          return j;
      }
      catch (ClassCastException localClassCastException)
      {
        return -1;
      }
      int j = -1;
    }
  }

  public boolean isEmpty()
  {
    return false;
  }

  boolean isPartialView()
  {
    return this.elements.isPartialView();
  }

  public UnmodifiableIterator<E> iterator()
  {
    return this.elements.iterator();
  }

  public E last()
  {
    return this.elements.get(-1 + size());
  }

  public E lower(E paramE)
  {
    int i = -1 + headIndex(paramE, false);
    if (i == -1)
      return null;
    return this.elements.get(i);
  }

  public int size()
  {
    return this.elements.size();
  }

  ImmutableSortedSet<E> subSetImpl(E paramE1, boolean paramBoolean1, E paramE2, boolean paramBoolean2)
  {
    return tailSetImpl(paramE1, paramBoolean1).headSetImpl(paramE2, paramBoolean2);
  }

  int tailIndex(E paramE, boolean paramBoolean)
  {
    ImmutableList localImmutableList = this.elements;
    Object localObject = Preconditions.checkNotNull(paramE);
    Comparator localComparator = comparator();
    if (paramBoolean);
    for (SortedLists.KeyPresentBehavior localKeyPresentBehavior = SortedLists.KeyPresentBehavior.FIRST_PRESENT; ; localKeyPresentBehavior = SortedLists.KeyPresentBehavior.FIRST_AFTER)
      return SortedLists.binarySearch(localImmutableList, localObject, localComparator, localKeyPresentBehavior, SortedLists.KeyAbsentBehavior.NEXT_HIGHER);
  }

  ImmutableSortedSet<E> tailSetImpl(E paramE, boolean paramBoolean)
  {
    return getSubSet(tailIndex(paramE, paramBoolean), size());
  }

  public Object[] toArray()
  {
    return this.elements.toArray();
  }

  public <T> T[] toArray(T[] paramArrayOfT)
  {
    return this.elements.toArray(paramArrayOfT);
  }

  Comparator<Object> unsafeComparator()
  {
    return this.comparator;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.RegularImmutableSortedSet
 * JD-Core Version:    0.6.2
 */