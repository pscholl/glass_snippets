package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible
abstract class AbstractMultiset<E> extends AbstractCollection<E>
  implements Multiset<E>
{
  private transient Set<E> elementSet;
  private transient Set<Multiset.Entry<E>> entrySet;

  public int add(@Nullable E paramE, int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public boolean add(@Nullable E paramE)
  {
    add(paramE, 1);
    return true;
  }

  public boolean addAll(Collection<? extends E> paramCollection)
  {
    return Multisets.addAllImpl(this, paramCollection);
  }

  public void clear()
  {
    Iterators.clear(entryIterator());
  }

  public boolean contains(@Nullable Object paramObject)
  {
    return count(paramObject) > 0;
  }

  public int count(@Nullable Object paramObject)
  {
    Iterator localIterator = entrySet().iterator();
    while (localIterator.hasNext())
    {
      Multiset.Entry localEntry = (Multiset.Entry)localIterator.next();
      if (Objects.equal(localEntry.getElement(), paramObject))
        return localEntry.getCount();
    }
    return 0;
  }

  Set<E> createElementSet()
  {
    return new ElementSet();
  }

  Set<Multiset.Entry<E>> createEntrySet()
  {
    return new EntrySet();
  }

  abstract int distinctElements();

  public Set<E> elementSet()
  {
    Set localSet = this.elementSet;
    if (localSet == null)
    {
      localSet = createElementSet();
      this.elementSet = localSet;
    }
    return localSet;
  }

  abstract Iterator<Multiset.Entry<E>> entryIterator();

  public Set<Multiset.Entry<E>> entrySet()
  {
    Set localSet = this.entrySet;
    if (localSet == null)
    {
      localSet = createEntrySet();
      this.entrySet = localSet;
    }
    return localSet;
  }

  public boolean equals(@Nullable Object paramObject)
  {
    return Multisets.equalsImpl(this, paramObject);
  }

  public int hashCode()
  {
    return entrySet().hashCode();
  }

  public boolean isEmpty()
  {
    return entrySet().isEmpty();
  }

  public Iterator<E> iterator()
  {
    return Multisets.iteratorImpl(this);
  }

  public int remove(@Nullable Object paramObject, int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public boolean remove(@Nullable Object paramObject)
  {
    return remove(paramObject, 1) > 0;
  }

  public boolean removeAll(Collection<?> paramCollection)
  {
    return Multisets.removeAllImpl(this, paramCollection);
  }

  public boolean retainAll(Collection<?> paramCollection)
  {
    return Multisets.retainAllImpl(this, paramCollection);
  }

  public int setCount(@Nullable E paramE, int paramInt)
  {
    return Multisets.setCountImpl(this, paramE, paramInt);
  }

  public boolean setCount(@Nullable E paramE, int paramInt1, int paramInt2)
  {
    return Multisets.setCountImpl(this, paramE, paramInt1, paramInt2);
  }

  public int size()
  {
    return Multisets.sizeImpl(this);
  }

  public String toString()
  {
    return entrySet().toString();
  }

  class ElementSet extends Multisets.ElementSet<E>
  {
    ElementSet()
    {
    }

    Multiset<E> multiset()
    {
      return AbstractMultiset.this;
    }
  }

  class EntrySet extends Multisets.EntrySet<E>
  {
    EntrySet()
    {
    }

    public Iterator<Multiset.Entry<E>> iterator()
    {
      return AbstractMultiset.this.entryIterator();
    }

    Multiset<E> multiset()
    {
      return AbstractMultiset.this;
    }

    public int size()
    {
      return AbstractMultiset.this.distinctElements();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.AbstractMultiset
 * JD-Core Version:    0.6.2
 */