package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
abstract class AbstractMapBasedMultiset<E> extends AbstractMultiset<E>
  implements Serializable
{

  @GwtIncompatible("not needed in emulated source.")
  private static final long serialVersionUID = -2250766705698539974L;
  private transient Map<E, Count> backingMap;
  private transient long size;

  protected AbstractMapBasedMultiset(Map<E, Count> paramMap)
  {
    this.backingMap = ((Map)Preconditions.checkNotNull(paramMap));
    this.size = super.size();
  }

  private static int getAndSet(Count paramCount, int paramInt)
  {
    if (paramCount == null)
      return 0;
    return paramCount.getAndSet(paramInt);
  }

  @GwtIncompatible("java.io.ObjectStreamException")
  private void readObjectNoData()
    throws ObjectStreamException
  {
    throw new InvalidObjectException("Stream data required");
  }

  public int add(@Nullable E paramE, int paramInt)
  {
    if (paramInt == 0)
      return count(paramE);
    if (paramInt > 0);
    Count localCount;
    for (boolean bool1 = true; ; bool1 = false)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(paramInt);
      Preconditions.checkArgument(bool1, "occurrences cannot be negative: %s", arrayOfObject1);
      localCount = (Count)this.backingMap.get(paramE);
      if (localCount != null)
        break;
      i = 0;
      this.backingMap.put(paramE, new Count(paramInt));
      this.size += paramInt;
      return i;
    }
    int i = localCount.get();
    long l = i + paramInt;
    if (l <= 2147483647L);
    for (boolean bool2 = true; ; bool2 = false)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Long.valueOf(l);
      Preconditions.checkArgument(bool2, "too many occurrences: %s", arrayOfObject2);
      localCount.getAndAdd(paramInt);
      break;
    }
  }

  public void clear()
  {
    Iterator localIterator = this.backingMap.values().iterator();
    while (localIterator.hasNext())
      ((Count)localIterator.next()).set(0);
    this.backingMap.clear();
    this.size = 0L;
  }

  public int count(@Nullable Object paramObject)
  {
    Count localCount = (Count)Maps.safeGet(this.backingMap, paramObject);
    if (localCount == null)
      return 0;
    return localCount.get();
  }

  int distinctElements()
  {
    return this.backingMap.size();
  }

  Iterator<Multiset.Entry<E>> entryIterator()
  {
    return new Iterator()
    {
      Map.Entry<E, Count> toRemove;

      public boolean hasNext()
      {
        return this.val$backingEntries.hasNext();
      }

      public Multiset.Entry<E> next()
      {
        final Map.Entry localEntry = (Map.Entry)this.val$backingEntries.next();
        this.toRemove = localEntry;
        return new Multisets.AbstractEntry()
        {
          public int getCount()
          {
            int i = ((Count)localEntry.getValue()).get();
            if (i == 0)
            {
              Count localCount = (Count)AbstractMapBasedMultiset.this.backingMap.get(getElement());
              if (localCount != null)
                i = localCount.get();
            }
            return i;
          }

          public E getElement()
          {
            return localEntry.getKey();
          }
        };
      }

      public void remove()
      {
        if (this.toRemove != null);
        for (boolean bool = true; ; bool = false)
        {
          Iterators.checkRemove(bool);
          AbstractMapBasedMultiset.access$122(AbstractMapBasedMultiset.this, ((Count)this.toRemove.getValue()).getAndSet(0));
          this.val$backingEntries.remove();
          this.toRemove = null;
          return;
        }
      }
    };
  }

  public Set<Multiset.Entry<E>> entrySet()
  {
    return super.entrySet();
  }

  public Iterator<E> iterator()
  {
    return new MapBasedMultisetIterator();
  }

  public int remove(@Nullable Object paramObject, int paramInt)
  {
    int i;
    if (paramInt == 0)
      i = count(paramObject);
    boolean bool;
    Count localCount;
    do
    {
      return i;
      if (paramInt <= 0)
        break;
      bool = true;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      Preconditions.checkArgument(bool, "occurrences cannot be negative: %s", arrayOfObject);
      localCount = (Count)this.backingMap.get(paramObject);
      i = 0;
    }
    while (localCount == null);
    int j = localCount.get();
    int k;
    if (j > paramInt)
      k = paramInt;
    while (true)
    {
      localCount.addAndGet(-k);
      this.size -= k;
      return j;
      bool = false;
      break;
      k = j;
      this.backingMap.remove(paramObject);
    }
  }

  void setBackingMap(Map<E, Count> paramMap)
  {
    this.backingMap = paramMap;
  }

  public int setCount(@Nullable E paramE, int paramInt)
  {
    Multisets.checkNonnegative(paramInt, "count");
    int i;
    if (paramInt == 0)
      i = getAndSet((Count)this.backingMap.remove(paramE), paramInt);
    while (true)
    {
      this.size += paramInt - i;
      return i;
      Count localCount = (Count)this.backingMap.get(paramE);
      i = getAndSet(localCount, paramInt);
      if (localCount == null)
        this.backingMap.put(paramE, new Count(paramInt));
    }
  }

  public int size()
  {
    return Ints.saturatedCast(this.size);
  }

  private class MapBasedMultisetIterator
    implements Iterator<E>
  {
    boolean canRemove;
    Map.Entry<E, Count> currentEntry;
    final Iterator<Map.Entry<E, Count>> entryIterator = AbstractMapBasedMultiset.this.backingMap.entrySet().iterator();
    int occurrencesLeft;

    MapBasedMultisetIterator()
    {
    }

    public boolean hasNext()
    {
      return (this.occurrencesLeft > 0) || (this.entryIterator.hasNext());
    }

    public E next()
    {
      if (this.occurrencesLeft == 0)
      {
        this.currentEntry = ((Map.Entry)this.entryIterator.next());
        this.occurrencesLeft = ((Count)this.currentEntry.getValue()).get();
      }
      this.occurrencesLeft = (-1 + this.occurrencesLeft);
      this.canRemove = true;
      return this.currentEntry.getKey();
    }

    public void remove()
    {
      Preconditions.checkState(this.canRemove, "no calls to next() since the last call to remove()");
      if (((Count)this.currentEntry.getValue()).get() <= 0)
        throw new ConcurrentModificationException();
      if (((Count)this.currentEntry.getValue()).addAndGet(-1) == 0)
        this.entryIterator.remove();
      AbstractMapBasedMultiset.access$110(AbstractMapBasedMultiset.this);
      this.canRemove = false;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.AbstractMapBasedMultiset
 * JD-Core Version:    0.6.2
 */