package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
public abstract class ImmutableCollection<E>
  implements Collection<E>, Serializable
{
  static final ImmutableCollection<Object> EMPTY_IMMUTABLE_COLLECTION = new EmptyImmutableCollection(null);
  private transient ImmutableList<E> asList;

  @Deprecated
  public final boolean add(E paramE)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public final boolean addAll(Collection<? extends E> paramCollection)
  {
    throw new UnsupportedOperationException();
  }

  public ImmutableList<E> asList()
  {
    ImmutableList localImmutableList = this.asList;
    if (localImmutableList == null)
    {
      localImmutableList = createAsList();
      this.asList = localImmutableList;
    }
    return localImmutableList;
  }

  @Deprecated
  public final void clear()
  {
    throw new UnsupportedOperationException();
  }

  public boolean contains(@Nullable Object paramObject)
  {
    return (paramObject != null) && (Iterators.contains(iterator(), paramObject));
  }

  public boolean containsAll(Collection<?> paramCollection)
  {
    return Collections2.containsAllImpl(this, paramCollection);
  }

  ImmutableList<E> createAsList()
  {
    switch (size())
    {
    default:
      return new RegularImmutableAsList(this, toArray());
    case 0:
      return ImmutableList.of();
    case 1:
    }
    return ImmutableList.of(iterator().next());
  }

  public boolean isEmpty()
  {
    return size() == 0;
  }

  abstract boolean isPartialView();

  public abstract UnmodifiableIterator<E> iterator();

  @Deprecated
  public final boolean remove(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public final boolean removeAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public final boolean retainAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }

  public Object[] toArray()
  {
    return ObjectArrays.toArrayImpl(this);
  }

  public <T> T[] toArray(T[] paramArrayOfT)
  {
    return ObjectArrays.toArrayImpl(this, paramArrayOfT);
  }

  public String toString()
  {
    return Collections2.toStringImpl(this);
  }

  Object writeReplace()
  {
    return new SerializedForm(toArray());
  }

  private static class ArrayImmutableCollection<E> extends ImmutableCollection<E>
  {
    private final E[] elements;

    ArrayImmutableCollection(E[] paramArrayOfE)
    {
      this.elements = paramArrayOfE;
    }

    ImmutableList<E> createAsList()
    {
      if (this.elements.length == 1)
        return new SingletonImmutableList(this.elements[0]);
      return new RegularImmutableList(this.elements);
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
      return Iterators.forArray(this.elements);
    }

    public int size()
    {
      return this.elements.length;
    }
  }

  public static abstract class Builder<E>
  {
    static final int DEFAULT_INITIAL_CAPACITY = 4;

    @VisibleForTesting
    static int expandedCapacity(int paramInt1, int paramInt2)
    {
      if (paramInt2 < 0)
        throw new AssertionError("cannot store more than MAX_VALUE elements");
      int i = 1 + (paramInt1 + (paramInt1 >> 1));
      if (i < paramInt2)
        i = Integer.highestOneBit(paramInt2 - 1) << 1;
      if (i < 0)
        i = 2147483647;
      return i;
    }

    public abstract Builder<E> add(E paramE);

    public Builder<E> add(E[] paramArrayOfE)
    {
      int i = paramArrayOfE.length;
      for (int j = 0; j < i; j++)
        add(paramArrayOfE[j]);
      return this;
    }

    public Builder<E> addAll(Iterable<? extends E> paramIterable)
    {
      Iterator localIterator = paramIterable.iterator();
      while (localIterator.hasNext())
        add(localIterator.next());
      return this;
    }

    public Builder<E> addAll(Iterator<? extends E> paramIterator)
    {
      while (paramIterator.hasNext())
        add(paramIterator.next());
      return this;
    }

    public abstract ImmutableCollection<E> build();
  }

  private static class EmptyImmutableCollection extends ImmutableCollection<Object>
  {
    private static final Object[] EMPTY_ARRAY = new Object[0];

    public boolean contains(@Nullable Object paramObject)
    {
      return false;
    }

    ImmutableList<Object> createAsList()
    {
      return ImmutableList.of();
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
      return Iterators.EMPTY_LIST_ITERATOR;
    }

    public int size()
    {
      return 0;
    }

    public Object[] toArray()
    {
      return EMPTY_ARRAY;
    }

    public <T> T[] toArray(T[] paramArrayOfT)
    {
      if (paramArrayOfT.length > 0)
        paramArrayOfT[0] = null;
      return paramArrayOfT;
    }
  }

  private static class SerializedForm
    implements Serializable
  {
    private static final long serialVersionUID;
    final Object[] elements;

    SerializedForm(Object[] paramArrayOfObject)
    {
      this.elements = paramArrayOfObject;
    }

    Object readResolve()
    {
      if (this.elements.length == 0)
        return ImmutableCollection.EMPTY_IMMUTABLE_COLLECTION;
      return new ImmutableCollection.ArrayImmutableCollection(Platform.clone(this.elements));
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableCollection
 * JD-Core Version:    0.6.2
 */