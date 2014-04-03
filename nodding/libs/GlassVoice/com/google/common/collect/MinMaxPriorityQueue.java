package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import java.util.AbstractQueue;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Queue;

@Beta
public final class MinMaxPriorityQueue<E> extends AbstractQueue<E>
{
  private static final int DEFAULT_CAPACITY = 11;
  private static final int EVEN_POWERS_OF_TWO = 1431655765;
  private static final int ODD_POWERS_OF_TWO = -1431655766;
  private final MinMaxPriorityQueue<E>.Heap maxHeap;

  @VisibleForTesting
  final int maximumSize;
  private final MinMaxPriorityQueue<E>.Heap minHeap;
  private int modCount;
  private Object[] queue;
  private int size;

  private MinMaxPriorityQueue(Builder<? super E> paramBuilder, int paramInt)
  {
    Ordering localOrdering = paramBuilder.ordering();
    this.minHeap = new Heap(localOrdering);
    this.maxHeap = new Heap(localOrdering.reverse());
    this.minHeap.otherHeap = this.maxHeap;
    this.maxHeap.otherHeap = this.minHeap;
    this.maximumSize = paramBuilder.maximumSize;
    this.queue = new Object[paramInt];
  }

  private int calculateNewCapacity()
  {
    int i = this.queue.length;
    if (i < 64);
    for (int j = 2 * (i + 1); ; j = IntMath.checkedMultiply(i / 2, 3))
      return capAtMaximumSize(j, this.maximumSize);
  }

  private static int capAtMaximumSize(int paramInt1, int paramInt2)
  {
    return 1 + Math.min(paramInt1 - 1, paramInt2);
  }

  public static <E extends Comparable<E>> MinMaxPriorityQueue<E> create()
  {
    return new Builder(Ordering.natural(), null).create();
  }

  public static <E extends Comparable<E>> MinMaxPriorityQueue<E> create(Iterable<? extends E> paramIterable)
  {
    return new Builder(Ordering.natural(), null).create(paramIterable);
  }

  public static Builder<Comparable> expectedSize(int paramInt)
  {
    return new Builder(Ordering.natural(), null).expectedSize(paramInt);
  }

  private MoveDesc<E> fillHole(int paramInt, E paramE)
  {
    Heap localHeap = heapForIndex(paramInt);
    int i = localHeap.fillHoleAt(paramInt);
    int j = localHeap.bubbleUpAlternatingLevels(i, paramE);
    if (j == i)
      return localHeap.tryCrossOverAndBubbleUp(paramInt, i, paramE);
    if (j < paramInt)
      return new MoveDesc(paramE, elementData(paramInt));
    return null;
  }

  private int getMaxElementIndex()
  {
    switch (this.size)
    {
    default:
      if (this.maxHeap.compareElements(1, 2) > 0)
        break;
    case 2:
      return 1;
    case 1:
      return 0;
    }
    return 2;
  }

  private void growIfNeeded()
  {
    if (this.size > this.queue.length)
    {
      Object[] arrayOfObject = new Object[calculateNewCapacity()];
      System.arraycopy(this.queue, 0, arrayOfObject, 0, this.queue.length);
      this.queue = arrayOfObject;
    }
  }

  private MinMaxPriorityQueue<E>.Heap heapForIndex(int paramInt)
  {
    if (isEvenLevel(paramInt))
      return this.minHeap;
    return this.maxHeap;
  }

  @VisibleForTesting
  static int initialQueueSize(int paramInt1, int paramInt2, Iterable<?> paramIterable)
  {
    if (paramInt1 == -1);
    for (int i = 11; ; i = paramInt1)
    {
      if ((paramIterable instanceof Collection))
        i = Math.max(i, ((Collection)paramIterable).size());
      return capAtMaximumSize(i, paramInt2);
    }
  }

  @VisibleForTesting
  static boolean isEvenLevel(int paramInt)
  {
    int i = paramInt + 1;
    if (i > 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkState(bool, "negative index");
      if ((0x55555555 & i) <= (0xAAAAAAAA & i))
        break;
      return true;
    }
    return false;
  }

  public static Builder<Comparable> maximumSize(int paramInt)
  {
    return new Builder(Ordering.natural(), null).maximumSize(paramInt);
  }

  public static <B> Builder<B> orderedBy(Comparator<B> paramComparator)
  {
    return new Builder(paramComparator, null);
  }

  private E removeAndGet(int paramInt)
  {
    Object localObject = elementData(paramInt);
    removeAt(paramInt);
    return localObject;
  }

  public boolean add(E paramE)
  {
    offer(paramE);
    return true;
  }

  public boolean addAll(Collection<? extends E> paramCollection)
  {
    boolean bool = false;
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      offer(localIterator.next());
      bool = true;
    }
    return bool;
  }

  @VisibleForTesting
  int capacity()
  {
    return this.queue.length;
  }

  public void clear()
  {
    for (int i = 0; i < this.size; i++)
      this.queue[i] = null;
    this.size = 0;
  }

  public Comparator<? super E> comparator()
  {
    return this.minHeap.ordering;
  }

  E elementData(int paramInt)
  {
    return this.queue[paramInt];
  }

  @VisibleForTesting
  boolean isIntact()
  {
    for (int i = 1; i < this.size; i++)
      if (!heapForIndex(i).verifyIndex(i))
        return false;
    return true;
  }

  public Iterator<E> iterator()
  {
    return new QueueIterator(null);
  }

  public boolean offer(E paramE)
  {
    Preconditions.checkNotNull(paramE);
    this.modCount = (1 + this.modCount);
    int i = this.size;
    this.size = (i + 1);
    growIfNeeded();
    heapForIndex(i).bubbleUp(i, paramE);
    return (this.size <= this.maximumSize) || (pollLast() != paramE);
  }

  public E peek()
  {
    if (isEmpty())
      return null;
    return elementData(0);
  }

  public E peekFirst()
  {
    return peek();
  }

  public E peekLast()
  {
    if (isEmpty())
      return null;
    return elementData(getMaxElementIndex());
  }

  public E poll()
  {
    if (isEmpty())
      return null;
    return removeAndGet(0);
  }

  public E pollFirst()
  {
    return poll();
  }

  public E pollLast()
  {
    if (isEmpty())
      return null;
    return removeAndGet(getMaxElementIndex());
  }

  @VisibleForTesting
  MoveDesc<E> removeAt(int paramInt)
  {
    Object localObject1 = null;
    Preconditions.checkPositionIndex(paramInt, this.size);
    this.modCount = (1 + this.modCount);
    this.size = (-1 + this.size);
    if (this.size == paramInt)
      this.queue[this.size] = null;
    Object localObject2;
    int i;
    Object localObject3;
    do
    {
      return localObject1;
      localObject2 = elementData(this.size);
      i = heapForIndex(this.size).getCorrectLastElement(localObject2);
      localObject3 = elementData(this.size);
      this.queue[this.size] = null;
      localObject1 = fillHole(paramInt, localObject3);
    }
    while (i >= paramInt);
    if (localObject1 == null)
      return new MoveDesc(localObject2, localObject3);
    return new MoveDesc(localObject2, ((MoveDesc)localObject1).replaced);
  }

  public E removeFirst()
  {
    return remove();
  }

  public E removeLast()
  {
    if (isEmpty())
      throw new NoSuchElementException();
    return removeAndGet(getMaxElementIndex());
  }

  public int size()
  {
    return this.size;
  }

  public Object[] toArray()
  {
    Object[] arrayOfObject = new Object[this.size];
    System.arraycopy(this.queue, 0, arrayOfObject, 0, this.size);
    return arrayOfObject;
  }

  @Beta
  public static final class Builder<B>
  {
    private static final int UNSET_EXPECTED_SIZE = -1;
    private final Comparator<B> comparator;
    private int expectedSize = -1;
    private int maximumSize = 2147483647;

    private Builder(Comparator<B> paramComparator)
    {
      this.comparator = ((Comparator)Preconditions.checkNotNull(paramComparator));
    }

    private <T extends B> Ordering<T> ordering()
    {
      return Ordering.from(this.comparator);
    }

    public <T extends B> MinMaxPriorityQueue<T> create()
    {
      return create(Collections.emptySet());
    }

    public <T extends B> MinMaxPriorityQueue<T> create(Iterable<? extends T> paramIterable)
    {
      MinMaxPriorityQueue localMinMaxPriorityQueue = new MinMaxPriorityQueue(this, MinMaxPriorityQueue.initialQueueSize(this.expectedSize, this.maximumSize, paramIterable), null);
      Iterator localIterator = paramIterable.iterator();
      while (localIterator.hasNext())
        localMinMaxPriorityQueue.offer(localIterator.next());
      return localMinMaxPriorityQueue;
    }

    public Builder<B> expectedSize(int paramInt)
    {
      if (paramInt >= 0);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool);
        this.expectedSize = paramInt;
        return this;
      }
    }

    public Builder<B> maximumSize(int paramInt)
    {
      if (paramInt > 0);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool);
        this.maximumSize = paramInt;
        return this;
      }
    }
  }

  private class Heap
  {
    final Ordering<E> ordering;
    MinMaxPriorityQueue<E>.Heap otherHeap;

    Heap()
    {
      Object localObject;
      this.ordering = localObject;
    }

    private int getGrandparentIndex(int paramInt)
    {
      return getParentIndex(getParentIndex(paramInt));
    }

    private int getLeftChildIndex(int paramInt)
    {
      return 1 + paramInt * 2;
    }

    private int getParentIndex(int paramInt)
    {
      return (paramInt - 1) / 2;
    }

    private int getRightChildIndex(int paramInt)
    {
      return 2 + paramInt * 2;
    }

    private boolean verifyIndex(int paramInt)
    {
      if ((getLeftChildIndex(paramInt) < MinMaxPriorityQueue.this.size) && (compareElements(paramInt, getLeftChildIndex(paramInt)) > 0));
      while (((getRightChildIndex(paramInt) < MinMaxPriorityQueue.this.size) && (compareElements(paramInt, getRightChildIndex(paramInt)) > 0)) || ((paramInt > 0) && (compareElements(paramInt, getParentIndex(paramInt)) > 0)) || ((paramInt > 2) && (compareElements(getGrandparentIndex(paramInt), paramInt) > 0)))
        return false;
      return true;
    }

    void bubbleUp(int paramInt, E paramE)
    {
      int i = crossOverUp(paramInt, paramE);
      if (i == paramInt);
      for (Heap localHeap = this; ; localHeap = this.otherHeap)
      {
        localHeap.bubbleUpAlternatingLevels(paramInt, paramE);
        return;
        paramInt = i;
      }
    }

    int bubbleUpAlternatingLevels(int paramInt, E paramE)
    {
      while (true)
      {
        int i;
        Object localObject;
        if (paramInt > 2)
        {
          i = getGrandparentIndex(paramInt);
          localObject = MinMaxPriorityQueue.this.elementData(i);
          if (this.ordering.compare(localObject, paramE) > 0);
        }
        else
        {
          MinMaxPriorityQueue.this.queue[paramInt] = paramE;
          return paramInt;
        }
        MinMaxPriorityQueue.this.queue[paramInt] = localObject;
        paramInt = i;
      }
    }

    int compareElements(int paramInt1, int paramInt2)
    {
      return this.ordering.compare(MinMaxPriorityQueue.this.elementData(paramInt1), MinMaxPriorityQueue.this.elementData(paramInt2));
    }

    int crossOver(int paramInt, E paramE)
    {
      int i = findMinChild(paramInt);
      if ((i > 0) && (this.ordering.compare(MinMaxPriorityQueue.this.elementData(i), paramE) < 0))
      {
        MinMaxPriorityQueue.this.queue[paramInt] = MinMaxPriorityQueue.this.elementData(i);
        MinMaxPriorityQueue.this.queue[i] = paramE;
        return i;
      }
      return crossOverUp(paramInt, paramE);
    }

    int crossOverUp(int paramInt, E paramE)
    {
      if (paramInt == 0)
      {
        MinMaxPriorityQueue.this.queue[0] = paramE;
        return 0;
      }
      int i = getParentIndex(paramInt);
      Object localObject1 = MinMaxPriorityQueue.this.elementData(i);
      if (i != 0)
      {
        int j = getRightChildIndex(getParentIndex(i));
        if ((j != i) && (getLeftChildIndex(j) >= MinMaxPriorityQueue.this.size))
        {
          Object localObject2 = MinMaxPriorityQueue.this.elementData(j);
          if (this.ordering.compare(localObject2, localObject1) < 0)
          {
            i = j;
            localObject1 = localObject2;
          }
        }
      }
      if (this.ordering.compare(localObject1, paramE) < 0)
      {
        MinMaxPriorityQueue.this.queue[paramInt] = localObject1;
        MinMaxPriorityQueue.this.queue[i] = paramE;
        return i;
      }
      MinMaxPriorityQueue.this.queue[paramInt] = paramE;
      return paramInt;
    }

    int fillHoleAt(int paramInt)
    {
      while (true)
      {
        int i = findMinGrandChild(paramInt);
        if (i <= 0)
          break;
        MinMaxPriorityQueue.this.queue[paramInt] = MinMaxPriorityQueue.this.elementData(i);
        paramInt = i;
      }
      return paramInt;
    }

    int findMin(int paramInt1, int paramInt2)
    {
      int j;
      if (paramInt1 >= MinMaxPriorityQueue.this.size)
      {
        j = -1;
        return j;
      }
      if (paramInt1 > 0);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkState(bool);
        int i = paramInt2 + Math.min(paramInt1, MinMaxPriorityQueue.this.size - paramInt2);
        j = paramInt1;
        for (int k = paramInt1 + 1; k < i; k++)
          if (compareElements(k, j) < 0)
            j = k;
        break;
      }
    }

    int findMinChild(int paramInt)
    {
      return findMin(getLeftChildIndex(paramInt), 2);
    }

    int findMinGrandChild(int paramInt)
    {
      int i = getLeftChildIndex(paramInt);
      if (i < 0)
        return -1;
      return findMin(getLeftChildIndex(i), 4);
    }

    int getCorrectLastElement(E paramE)
    {
      int i = getParentIndex(MinMaxPriorityQueue.this.size);
      if (i != 0)
      {
        int j = getRightChildIndex(getParentIndex(i));
        if ((j != i) && (getLeftChildIndex(j) >= MinMaxPriorityQueue.this.size))
        {
          Object localObject = MinMaxPriorityQueue.this.elementData(j);
          if (this.ordering.compare(localObject, paramE) < 0)
          {
            MinMaxPriorityQueue.this.queue[j] = paramE;
            MinMaxPriorityQueue.this.queue[MinMaxPriorityQueue.this.size] = localObject;
            return j;
          }
        }
      }
      return MinMaxPriorityQueue.this.size;
    }

    MinMaxPriorityQueue.MoveDesc<E> tryCrossOverAndBubbleUp(int paramInt1, int paramInt2, E paramE)
    {
      int i = crossOver(paramInt2, paramE);
      if (i == paramInt2);
      while (true)
      {
        return null;
        if (i < paramInt1);
        for (Object localObject = MinMaxPriorityQueue.this.elementData(paramInt1); this.otherHeap.bubbleUpAlternatingLevels(i, paramE) < paramInt1; localObject = MinMaxPriorityQueue.this.elementData(getParentIndex(paramInt1)))
          return new MinMaxPriorityQueue.MoveDesc(paramE, localObject);
      }
    }
  }

  static class MoveDesc<E>
  {
    final E replaced;
    final E toTrickle;

    MoveDesc(E paramE1, E paramE2)
    {
      this.toTrickle = paramE1;
      this.replaced = paramE2;
    }
  }

  private class QueueIterator
    implements Iterator<E>
  {
    private boolean canRemove;
    private int cursor = -1;
    private int expectedModCount = MinMaxPriorityQueue.this.modCount;
    private Queue<E> forgetMeNot;
    private E lastFromForgetMeNot;
    private List<E> skipMe;

    private QueueIterator()
    {
    }

    private boolean containsExact(Iterable<E> paramIterable, E paramE)
    {
      Iterator localIterator = paramIterable.iterator();
      while (localIterator.hasNext())
        if (localIterator.next() == paramE)
          return true;
      return false;
    }

    private int nextNotInSkipMe(int paramInt)
    {
      if (this.skipMe != null)
        while ((paramInt < MinMaxPriorityQueue.this.size()) && (containsExact(this.skipMe, MinMaxPriorityQueue.this.elementData(paramInt))))
          paramInt++;
      return paramInt;
    }

    void checkModCount()
    {
      if (MinMaxPriorityQueue.this.modCount != this.expectedModCount)
        throw new ConcurrentModificationException();
    }

    public boolean hasNext()
    {
      checkModCount();
      return (nextNotInSkipMe(1 + this.cursor) < MinMaxPriorityQueue.this.size()) || ((this.forgetMeNot != null) && (!this.forgetMeNot.isEmpty()));
    }

    public E next()
    {
      checkModCount();
      int i = nextNotInSkipMe(1 + this.cursor);
      if (i < MinMaxPriorityQueue.this.size())
      {
        this.cursor = i;
        this.canRemove = true;
        return MinMaxPriorityQueue.this.elementData(this.cursor);
      }
      if (this.forgetMeNot != null)
      {
        this.cursor = MinMaxPriorityQueue.this.size();
        this.lastFromForgetMeNot = this.forgetMeNot.poll();
        if (this.lastFromForgetMeNot != null)
        {
          this.canRemove = true;
          return this.lastFromForgetMeNot;
        }
      }
      throw new NoSuchElementException("iterator moved past last element in queue.");
    }

    public void remove()
    {
      Preconditions.checkState(this.canRemove, "no calls to remove() since the last call to next()");
      checkModCount();
      this.canRemove = false;
      this.expectedModCount = (1 + this.expectedModCount);
      if (this.cursor < MinMaxPriorityQueue.this.size())
      {
        MinMaxPriorityQueue.MoveDesc localMoveDesc = MinMaxPriorityQueue.this.removeAt(this.cursor);
        if (localMoveDesc != null)
        {
          if (this.forgetMeNot == null)
          {
            this.forgetMeNot = new LinkedList();
            this.skipMe = new ArrayList(3);
          }
          this.forgetMeNot.add(localMoveDesc.toTrickle);
          this.skipMe.add(localMoveDesc.replaced);
        }
        this.cursor = (-1 + this.cursor);
        return;
      }
      Preconditions.checkState(removeExact(this.lastFromForgetMeNot));
      this.lastFromForgetMeNot = null;
    }

    boolean removeExact(Object paramObject)
    {
      for (int i = 0; i < MinMaxPriorityQueue.this.size; i++)
        if (MinMaxPriorityQueue.this.queue[i] == paramObject)
        {
          MinMaxPriorityQueue.this.removeAt(i);
          return true;
        }
      return false;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.MinMaxPriorityQueue
 * JD-Core Version:    0.6.2
 */