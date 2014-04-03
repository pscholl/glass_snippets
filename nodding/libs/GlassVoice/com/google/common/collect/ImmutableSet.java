package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
public abstract class ImmutableSet<E> extends ImmutableCollection<E>
  implements Set<E>
{
  private static final int CUTOFF = 0;
  private static final double DESIRED_LOAD_FACTOR = 0.7D;
  static final int MAX_TABLE_SIZE = 1073741824;

  public static <E> Builder<E> builder()
  {
    return new Builder();
  }

  @VisibleForTesting
  static int chooseTableSize(int paramInt)
  {
    int i = 1073741824;
    if (paramInt < CUTOFF)
    {
      i = Integer.highestOneBit(paramInt - 1) << 1;
      while (0.7D * i < paramInt)
        i <<= 1;
    }
    if (paramInt < i);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "collection too large");
      return i;
    }
  }

  private static <E> ImmutableSet<E> construct(int paramInt, Object[] paramArrayOfObject)
  {
    int i;
    Object[] arrayOfObject1;
    int j;
    int k;
    int m;
    int n;
    Object localObject2;
    int i2;
    switch (paramInt)
    {
    default:
      i = chooseTableSize(paramInt);
      arrayOfObject1 = new Object[i];
      j = i - 1;
      k = 0;
      m = 0;
      n = 0;
      if (m < paramInt)
      {
        localObject2 = ObjectArrays.checkElementNotNull(paramArrayOfObject[m], m);
        i2 = localObject2.hashCode();
      }
      break;
    case 0:
    case 1:
      label160: for (int i3 = Hashing.smear(i2); ; i3++)
      {
        int i4 = i3 & j;
        Object localObject3 = arrayOfObject1[i4];
        int i5;
        if (localObject3 == null)
        {
          i5 = n + 1;
          paramArrayOfObject[n] = localObject2;
          arrayOfObject1[i4] = localObject2;
          k += i2;
        }
        while (true)
        {
          m++;
          n = i5;
          break;
          return of();
          return of(paramArrayOfObject[0]);
          if (!localObject3.equals(localObject2))
            break label160;
          i5 = n;
        }
      }
    }
    Arrays.fill(paramArrayOfObject, n, paramInt, null);
    if (n == 1)
    {
      Object localObject1 = paramArrayOfObject[0];
      SingletonImmutableSet localSingletonImmutableSet = new SingletonImmutableSet(localObject1, k);
      return localSingletonImmutableSet;
    }
    if (i != chooseTableSize(n))
      return construct(n, paramArrayOfObject);
    int i1 = paramArrayOfObject.length;
    if (n < i1);
    for (Object[] arrayOfObject2 = ObjectArrays.arraysCopyOf(paramArrayOfObject, n); ; arrayOfObject2 = paramArrayOfObject)
    {
      RegularImmutableSet localRegularImmutableSet = new RegularImmutableSet(arrayOfObject2, k, arrayOfObject1, j);
      return localRegularImmutableSet;
    }
  }

  private static <E> ImmutableSet<E> copyFromCollection(Collection<? extends E> paramCollection)
  {
    Object[] arrayOfObject = paramCollection.toArray();
    switch (arrayOfObject.length)
    {
    default:
      return construct(arrayOfObject.length, arrayOfObject);
    case 0:
      return of();
    case 1:
    }
    return of(arrayOfObject[0]);
  }

  public static <E> ImmutableSet<E> copyOf(Iterable<? extends E> paramIterable)
  {
    if ((paramIterable instanceof Collection))
      return copyOf(Collections2.cast(paramIterable));
    return copyOf(paramIterable.iterator());
  }

  public static <E> ImmutableSet<E> copyOf(Collection<? extends E> paramCollection)
  {
    if (((paramCollection instanceof ImmutableSet)) && (!(paramCollection instanceof ImmutableSortedSet)))
    {
      ImmutableSet localImmutableSet = (ImmutableSet)paramCollection;
      if (!localImmutableSet.isPartialView())
        return localImmutableSet;
    }
    else if ((paramCollection instanceof EnumSet))
    {
      return ImmutableEnumSet.asImmutable(EnumSet.copyOf((EnumSet)paramCollection));
    }
    return copyFromCollection(paramCollection);
  }

  public static <E> ImmutableSet<E> copyOf(Iterator<? extends E> paramIterator)
  {
    if (!paramIterator.hasNext())
      return of();
    Object localObject = paramIterator.next();
    if (!paramIterator.hasNext())
      return of(localObject);
    return new Builder().add(localObject).addAll(paramIterator).build();
  }

  public static <E> ImmutableSet<E> copyOf(E[] paramArrayOfE)
  {
    switch (paramArrayOfE.length)
    {
    default:
      return construct(paramArrayOfE.length, (Object[])paramArrayOfE.clone());
    case 0:
      return of();
    case 1:
    }
    return of(paramArrayOfE[0]);
  }

  public static <E> ImmutableSet<E> of()
  {
    return EmptyImmutableSet.INSTANCE;
  }

  public static <E> ImmutableSet<E> of(E paramE)
  {
    return new SingletonImmutableSet(paramE);
  }

  public static <E> ImmutableSet<E> of(E paramE1, E paramE2)
  {
    return construct(2, new Object[] { paramE1, paramE2 });
  }

  public static <E> ImmutableSet<E> of(E paramE1, E paramE2, E paramE3)
  {
    return construct(3, new Object[] { paramE1, paramE2, paramE3 });
  }

  public static <E> ImmutableSet<E> of(E paramE1, E paramE2, E paramE3, E paramE4)
  {
    return construct(4, new Object[] { paramE1, paramE2, paramE3, paramE4 });
  }

  public static <E> ImmutableSet<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5)
  {
    return construct(5, new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5 });
  }

  public static <E> ImmutableSet<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E[] paramArrayOfE)
  {
    Object[] arrayOfObject = new Object[6 + paramArrayOfE.length];
    arrayOfObject[0] = paramE1;
    arrayOfObject[1] = paramE2;
    arrayOfObject[2] = paramE3;
    arrayOfObject[3] = paramE4;
    arrayOfObject[4] = paramE5;
    arrayOfObject[5] = paramE6;
    System.arraycopy(paramArrayOfE, 0, arrayOfObject, 6, paramArrayOfE.length);
    return construct(arrayOfObject.length, arrayOfObject);
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this)
      return true;
    if (((paramObject instanceof ImmutableSet)) && (isHashCodeFast()) && (((ImmutableSet)paramObject).isHashCodeFast()) && (hashCode() != paramObject.hashCode()))
      return false;
    return Sets.equalsImpl(this, paramObject);
  }

  public int hashCode()
  {
    return Sets.hashCodeImpl(this);
  }

  boolean isHashCodeFast()
  {
    return false;
  }

  public abstract UnmodifiableIterator<E> iterator();

  Object writeReplace()
  {
    return new SerializedForm(toArray());
  }

  static abstract class ArrayImmutableSet<E> extends ImmutableSet<E>
  {
    final transient Object[] elements;

    ArrayImmutableSet(Object[] paramArrayOfObject)
    {
      this.elements = paramArrayOfObject;
    }

    public boolean containsAll(Collection<?> paramCollection)
    {
      if (paramCollection == this);
      while (true)
      {
        return true;
        if (!(paramCollection instanceof ArrayImmutableSet))
          return super.containsAll(paramCollection);
        if (paramCollection.size() > size())
          return false;
        Object[] arrayOfObject = ((ArrayImmutableSet)paramCollection).elements;
        int i = arrayOfObject.length;
        for (int j = 0; j < i; j++)
          if (!contains(arrayOfObject[j]))
            return false;
      }
    }

    ImmutableList<E> createAsList()
    {
      return new RegularImmutableAsList(this, this.elements);
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
      return asList().iterator();
    }

    public int size()
    {
      return this.elements.length;
    }

    public Object[] toArray()
    {
      return asList().toArray();
    }

    public <T> T[] toArray(T[] paramArrayOfT)
    {
      return asList().toArray(paramArrayOfT);
    }
  }

  public static class Builder<E> extends ImmutableCollection.Builder<E>
  {
    Object[] contents;
    int size;

    public Builder()
    {
      this(4);
    }

    Builder(int paramInt)
    {
      if (paramInt >= 0);
      for (boolean bool = true; ; bool = false)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramInt);
        Preconditions.checkArgument(bool, "capacity must be >= 0 but was %s", arrayOfObject);
        this.contents = new Object[paramInt];
        this.size = 0;
        return;
      }
    }

    public Builder<E> add(E paramE)
    {
      ensureCapacity(1 + this.size);
      Object[] arrayOfObject = this.contents;
      int i = this.size;
      this.size = (i + 1);
      arrayOfObject[i] = Preconditions.checkNotNull(paramE);
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

    public ImmutableSet<E> build()
    {
      ImmutableSet localImmutableSet = ImmutableSet.construct(this.size, this.contents);
      this.size = localImmutableSet.size();
      return localImmutableSet;
    }

    Builder<E> ensureCapacity(int paramInt)
    {
      if (this.contents.length < paramInt)
        this.contents = ObjectArrays.arraysCopyOf(this.contents, expandedCapacity(this.contents.length, paramInt));
      return this;
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
      return ImmutableSet.copyOf(this.elements);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableSet
 * JD-Core Version:    0.6.2
 */