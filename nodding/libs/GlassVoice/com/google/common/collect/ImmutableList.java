package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
public abstract class ImmutableList<E> extends ImmutableCollection<E>
  implements List<E>, RandomAccess
{
  static <E> ImmutableList<E> asImmutableList(Object[] paramArrayOfObject)
  {
    switch (paramArrayOfObject.length)
    {
    default:
      return construct(paramArrayOfObject);
    case 0:
      return of();
    case 1:
    }
    return new SingletonImmutableList(paramArrayOfObject[0]);
  }

  public static <E> Builder<E> builder()
  {
    return new Builder();
  }

  private static <E> ImmutableList<E> construct(Object[] paramArrayOfObject)
  {
    for (int i = 0; i < paramArrayOfObject.length; i++)
      ObjectArrays.checkElementNotNull(paramArrayOfObject[i], i);
    return new RegularImmutableList(paramArrayOfObject);
  }

  private static <E> ImmutableList<E> copyFromCollection(Collection<? extends E> paramCollection)
  {
    return asImmutableList(paramCollection.toArray());
  }

  public static <E> ImmutableList<E> copyOf(Iterable<? extends E> paramIterable)
  {
    Preconditions.checkNotNull(paramIterable);
    if ((paramIterable instanceof Collection))
      return copyOf(Collections2.cast(paramIterable));
    return copyOf(paramIterable.iterator());
  }

  public static <E> ImmutableList<E> copyOf(Collection<? extends E> paramCollection)
  {
    if ((paramCollection instanceof ImmutableCollection))
    {
      ImmutableList localImmutableList = ((ImmutableCollection)paramCollection).asList();
      if (localImmutableList.isPartialView())
        localImmutableList = copyFromCollection(localImmutableList);
      return localImmutableList;
    }
    return copyFromCollection(paramCollection);
  }

  public static <E> ImmutableList<E> copyOf(Iterator<? extends E> paramIterator)
  {
    if (!paramIterator.hasNext())
      return of();
    Object localObject = paramIterator.next();
    if (!paramIterator.hasNext())
      return of(localObject);
    return new Builder().add(localObject).addAll(paramIterator).build();
  }

  public static <E> ImmutableList<E> copyOf(E[] paramArrayOfE)
  {
    switch (paramArrayOfE.length)
    {
    default:
      return construct((Object[])paramArrayOfE.clone());
    case 0:
      return of();
    case 1:
    }
    return new SingletonImmutableList(paramArrayOfE[0]);
  }

  public static <E> ImmutableList<E> of()
  {
    return EmptyImmutableList.INSTANCE;
  }

  public static <E> ImmutableList<E> of(E paramE)
  {
    return new SingletonImmutableList(paramE);
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2)
  {
    return construct(new Object[] { paramE1, paramE2 });
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2, E paramE3)
  {
    return construct(new Object[] { paramE1, paramE2, paramE3 });
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2, E paramE3, E paramE4)
  {
    return construct(new Object[] { paramE1, paramE2, paramE3, paramE4 });
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5)
  {
    return construct(new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5 });
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6)
  {
    return construct(new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5, paramE6 });
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E paramE7)
  {
    return construct(new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5, paramE6, paramE7 });
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E paramE7, E paramE8)
  {
    return construct(new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5, paramE6, paramE7, paramE8 });
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E paramE7, E paramE8, E paramE9)
  {
    return construct(new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5, paramE6, paramE7, paramE8, paramE9 });
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E paramE7, E paramE8, E paramE9, E paramE10)
  {
    return construct(new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5, paramE6, paramE7, paramE8, paramE9, paramE10 });
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E paramE7, E paramE8, E paramE9, E paramE10, E paramE11)
  {
    return construct(new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5, paramE6, paramE7, paramE8, paramE9, paramE10, paramE11 });
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E paramE7, E paramE8, E paramE9, E paramE10, E paramE11, E paramE12, E[] paramArrayOfE)
  {
    Object[] arrayOfObject = new Object[12 + paramArrayOfE.length];
    arrayOfObject[0] = paramE1;
    arrayOfObject[1] = paramE2;
    arrayOfObject[2] = paramE3;
    arrayOfObject[3] = paramE4;
    arrayOfObject[4] = paramE5;
    arrayOfObject[5] = paramE6;
    arrayOfObject[6] = paramE7;
    arrayOfObject[7] = paramE8;
    arrayOfObject[8] = paramE9;
    arrayOfObject[9] = paramE10;
    arrayOfObject[10] = paramE11;
    arrayOfObject[11] = paramE12;
    System.arraycopy(paramArrayOfE, 0, arrayOfObject, 12, paramArrayOfE.length);
    return construct(arrayOfObject);
  }

  private void readObject(ObjectInputStream paramObjectInputStream)
    throws InvalidObjectException
  {
    throw new InvalidObjectException("Use SerializedForm");
  }

  @Deprecated
  public final void add(int paramInt, E paramE)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public final boolean addAll(int paramInt, Collection<? extends E> paramCollection)
  {
    throw new UnsupportedOperationException();
  }

  public ImmutableList<E> asList()
  {
    return this;
  }

  public boolean contains(@Nullable Object paramObject)
  {
    return indexOf(paramObject) >= 0;
  }

  public boolean equals(Object paramObject)
  {
    return Lists.equalsImpl(this, paramObject);
  }

  public int hashCode()
  {
    return Lists.hashCodeImpl(this);
  }

  public int indexOf(@Nullable Object paramObject)
  {
    if (paramObject == null)
      return -1;
    return Lists.indexOfImpl(this, paramObject);
  }

  public UnmodifiableIterator<E> iterator()
  {
    return listIterator();
  }

  public int lastIndexOf(@Nullable Object paramObject)
  {
    if (paramObject == null)
      return -1;
    return Lists.lastIndexOfImpl(this, paramObject);
  }

  public UnmodifiableListIterator<E> listIterator()
  {
    return listIterator(0);
  }

  public UnmodifiableListIterator<E> listIterator(int paramInt)
  {
    return new AbstractIndexedListIterator(size(), paramInt)
    {
      protected E get(int paramAnonymousInt)
      {
        return ImmutableList.this.get(paramAnonymousInt);
      }
    };
  }

  @Deprecated
  public final E remove(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public ImmutableList<E> reverse()
  {
    return new ReverseImmutableList(this);
  }

  @Deprecated
  public final E set(int paramInt, E paramE)
  {
    throw new UnsupportedOperationException();
  }

  public ImmutableList<E> subList(int paramInt1, int paramInt2)
  {
    Preconditions.checkPositionIndexes(paramInt1, paramInt2, size());
    switch (paramInt2 - paramInt1)
    {
    default:
      return subListUnchecked(paramInt1, paramInt2);
    case 0:
      return of();
    case 1:
    }
    return of(get(paramInt1));
  }

  ImmutableList<E> subListUnchecked(int paramInt1, int paramInt2)
  {
    return new SubList(paramInt1, paramInt2 - paramInt1);
  }

  Object writeReplace()
  {
    return new SerializedForm(toArray());
  }

  public static final class Builder<E> extends ImmutableCollection.Builder<E>
  {
    private Object[] contents;
    private int size;

    public Builder()
    {
      this(4);
    }

    Builder(int paramInt)
    {
      this.contents = new Object[paramInt];
      this.size = 0;
    }

    public Builder<E> add(E paramE)
    {
      Preconditions.checkNotNull(paramE);
      ensureCapacity(1 + this.size);
      Object[] arrayOfObject = this.contents;
      int i = this.size;
      this.size = (i + 1);
      arrayOfObject[i] = paramE;
      return this;
    }

    public Builder<E> add(E[] paramArrayOfE)
    {
      for (int i = 0; i < paramArrayOfE.length; i++)
        ObjectArrays.checkElementNotNull(paramArrayOfE[i], i);
      ensureCapacity(this.size + paramArrayOfE.length);
      System.arraycopy(paramArrayOfE, 0, this.contents, this.size, paramArrayOfE.length);
      this.size += paramArrayOfE.length;
      return this;
    }

    public Builder<E> addAll(Iterable<? extends E> paramIterable)
    {
      if ((paramIterable instanceof Collection))
      {
        Collection localCollection = (Collection)paramIterable;
        ensureCapacity(this.size + localCollection.size());
      }
      super.addAll(paramIterable);
      return this;
    }

    public Builder<E> addAll(Iterator<? extends E> paramIterator)
    {
      super.addAll(paramIterator);
      return this;
    }

    public ImmutableList<E> build()
    {
      switch (this.size)
      {
      default:
        if (this.size == this.contents.length)
          return new RegularImmutableList(this.contents);
        break;
      case 0:
        return ImmutableList.of();
      case 1:
        return ImmutableList.of(this.contents[0]);
      }
      return new RegularImmutableList(ObjectArrays.arraysCopyOf(this.contents, this.size));
    }

    Builder<E> ensureCapacity(int paramInt)
    {
      if (this.contents.length < paramInt)
        this.contents = ObjectArrays.arraysCopyOf(this.contents, expandedCapacity(this.contents.length, paramInt));
      return this;
    }
  }

  private static class ReverseImmutableList<E> extends ImmutableList<E>
  {
    private final transient ImmutableList<E> forwardList;
    private final transient int size;

    ReverseImmutableList(ImmutableList<E> paramImmutableList)
    {
      this.forwardList = paramImmutableList;
      this.size = paramImmutableList.size();
    }

    private int reverseIndex(int paramInt)
    {
      return -1 + this.size - paramInt;
    }

    private int reversePosition(int paramInt)
    {
      return this.size - paramInt;
    }

    public boolean contains(@Nullable Object paramObject)
    {
      return this.forwardList.contains(paramObject);
    }

    public boolean containsAll(Collection<?> paramCollection)
    {
      return this.forwardList.containsAll(paramCollection);
    }

    public E get(int paramInt)
    {
      Preconditions.checkElementIndex(paramInt, this.size);
      return this.forwardList.get(reverseIndex(paramInt));
    }

    public int indexOf(@Nullable Object paramObject)
    {
      int i = this.forwardList.lastIndexOf(paramObject);
      if (i >= 0)
        return reverseIndex(i);
      return -1;
    }

    public boolean isEmpty()
    {
      return this.forwardList.isEmpty();
    }

    boolean isPartialView()
    {
      return this.forwardList.isPartialView();
    }

    public int lastIndexOf(@Nullable Object paramObject)
    {
      int i = this.forwardList.indexOf(paramObject);
      if (i >= 0)
        return reverseIndex(i);
      return -1;
    }

    public UnmodifiableListIterator<E> listIterator(int paramInt)
    {
      Preconditions.checkPositionIndex(paramInt, this.size);
      return new UnmodifiableListIterator()
      {
        public boolean hasNext()
        {
          return this.val$forward.hasPrevious();
        }

        public boolean hasPrevious()
        {
          return this.val$forward.hasNext();
        }

        public E next()
        {
          return this.val$forward.previous();
        }

        public int nextIndex()
        {
          return ImmutableList.ReverseImmutableList.this.reverseIndex(this.val$forward.previousIndex());
        }

        public E previous()
        {
          return this.val$forward.next();
        }

        public int previousIndex()
        {
          return ImmutableList.ReverseImmutableList.this.reverseIndex(this.val$forward.nextIndex());
        }
      };
    }

    public ImmutableList<E> reverse()
    {
      return this.forwardList;
    }

    public int size()
    {
      return this.size;
    }

    public ImmutableList<E> subList(int paramInt1, int paramInt2)
    {
      Preconditions.checkPositionIndexes(paramInt1, paramInt2, this.size);
      return this.forwardList.subList(reversePosition(paramInt2), reversePosition(paramInt1)).reverse();
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
      return ImmutableList.copyOf(this.elements);
    }
  }

  class SubList extends ImmutableList<E>
  {
    final transient int length;
    final transient int offset;

    SubList(int paramInt1, int arg3)
    {
      this.offset = paramInt1;
      int i;
      this.length = i;
    }

    public E get(int paramInt)
    {
      Preconditions.checkElementIndex(paramInt, this.length);
      return ImmutableList.this.get(paramInt + this.offset);
    }

    boolean isPartialView()
    {
      return true;
    }

    public int size()
    {
      return this.length;
    }

    public ImmutableList<E> subList(int paramInt1, int paramInt2)
    {
      Preconditions.checkPositionIndexes(paramInt1, paramInt2, this.length);
      return ImmutableList.this.subList(paramInt1 + this.offset, paramInt2 + this.offset);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableList
 * JD-Core Version:    0.6.2
 */