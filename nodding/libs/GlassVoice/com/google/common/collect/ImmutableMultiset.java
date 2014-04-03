package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible(serializable=true)
public abstract class ImmutableMultiset<E> extends ImmutableCollection<E>
  implements Multiset<E>
{
  private transient ImmutableSet<Multiset.Entry<E>> entrySet;

  public static <E> Builder<E> builder()
  {
    return new Builder();
  }

  static <E> ImmutableMultiset<E> copyFromEntries(Collection<? extends Multiset.Entry<? extends E>> paramCollection)
  {
    long l = 0L;
    ImmutableMap.Builder localBuilder = ImmutableMap.builder();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      Multiset.Entry localEntry = (Multiset.Entry)localIterator.next();
      int i = localEntry.getCount();
      if (i > 0)
      {
        localBuilder.put(localEntry.getElement(), Integer.valueOf(i));
        l += i;
      }
    }
    if (l == 0L)
      return of();
    return new RegularImmutableMultiset(localBuilder.build(), Ints.saturatedCast(l));
  }

  public static <E> ImmutableMultiset<E> copyOf(Iterable<? extends E> paramIterable)
  {
    if ((paramIterable instanceof ImmutableMultiset))
    {
      ImmutableMultiset localImmutableMultiset = (ImmutableMultiset)paramIterable;
      if (!localImmutableMultiset.isPartialView())
        return localImmutableMultiset;
    }
    if ((paramIterable instanceof Multiset));
    for (Object localObject = Multisets.cast(paramIterable); ; localObject = LinkedHashMultiset.create(paramIterable))
      return copyOfInternal((Multiset)localObject);
  }

  public static <E> ImmutableMultiset<E> copyOf(Iterator<? extends E> paramIterator)
  {
    LinkedHashMultiset localLinkedHashMultiset = LinkedHashMultiset.create();
    Iterators.addAll(localLinkedHashMultiset, paramIterator);
    return copyOfInternal(localLinkedHashMultiset);
  }

  public static <E> ImmutableMultiset<E> copyOf(E[] paramArrayOfE)
  {
    return copyOf(Arrays.asList(paramArrayOfE));
  }

  private static <E> ImmutableMultiset<E> copyOfInternal(Multiset<? extends E> paramMultiset)
  {
    return copyFromEntries(paramMultiset.entrySet());
  }

  private static <E> ImmutableMultiset<E> copyOfInternal(E[] paramArrayOfE)
  {
    return copyOf(Arrays.asList(paramArrayOfE));
  }

  public static <E> ImmutableMultiset<E> of()
  {
    return EmptyImmutableMultiset.INSTANCE;
  }

  public static <E> ImmutableMultiset<E> of(E paramE)
  {
    return copyOfInternal(new Object[] { paramE });
  }

  public static <E> ImmutableMultiset<E> of(E paramE1, E paramE2)
  {
    return copyOfInternal(new Object[] { paramE1, paramE2 });
  }

  public static <E> ImmutableMultiset<E> of(E paramE1, E paramE2, E paramE3)
  {
    return copyOfInternal(new Object[] { paramE1, paramE2, paramE3 });
  }

  public static <E> ImmutableMultiset<E> of(E paramE1, E paramE2, E paramE3, E paramE4)
  {
    return copyOfInternal(new Object[] { paramE1, paramE2, paramE3, paramE4 });
  }

  public static <E> ImmutableMultiset<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5)
  {
    return copyOfInternal(new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5 });
  }

  public static <E> ImmutableMultiset<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E[] paramArrayOfE)
  {
    ArrayList localArrayList = new ArrayList(6 + paramArrayOfE.length);
    Collections.addAll(localArrayList, new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5, paramE6 });
    Collections.addAll(localArrayList, paramArrayOfE);
    return copyOf(localArrayList);
  }

  @Deprecated
  public final int add(E paramE, int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public boolean contains(@Nullable Object paramObject)
  {
    return count(paramObject) > 0;
  }

  public boolean containsAll(Collection<?> paramCollection)
  {
    return elementSet().containsAll(paramCollection);
  }

  abstract ImmutableSet<Multiset.Entry<E>> createEntrySet();

  public ImmutableSet<Multiset.Entry<E>> entrySet()
  {
    ImmutableSet localImmutableSet = this.entrySet;
    if (localImmutableSet == null)
    {
      localImmutableSet = createEntrySet();
      this.entrySet = localImmutableSet;
    }
    return localImmutableSet;
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this);
    Multiset.Entry localEntry;
    do
    {
      Iterator localIterator;
      while (!localIterator.hasNext())
      {
        return true;
        if (!(paramObject instanceof Multiset))
          break;
        Multiset localMultiset = (Multiset)paramObject;
        if (size() != localMultiset.size())
          return false;
        localIterator = localMultiset.entrySet().iterator();
      }
      localEntry = (Multiset.Entry)localIterator.next();
    }
    while (count(localEntry.getElement()) == localEntry.getCount());
    return false;
    return false;
  }

  public int hashCode()
  {
    return Sets.hashCodeImpl(entrySet());
  }

  public UnmodifiableIterator<E> iterator()
  {
    return new UnmodifiableIterator()
    {
      E element;
      int remaining;

      public boolean hasNext()
      {
        return (this.remaining > 0) || (this.val$entryIterator.hasNext());
      }

      public E next()
      {
        if (this.remaining <= 0)
        {
          Multiset.Entry localEntry = (Multiset.Entry)this.val$entryIterator.next();
          this.element = localEntry.getElement();
          this.remaining = localEntry.getCount();
        }
        this.remaining = (-1 + this.remaining);
        return this.element;
      }
    };
  }

  @Deprecated
  public final int remove(Object paramObject, int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public final int setCount(E paramE, int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public final boolean setCount(E paramE, int paramInt1, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  public String toString()
  {
    return entrySet().toString();
  }

  Object writeReplace()
  {
    return new SerializedForm(this);
  }

  public static class Builder<E> extends ImmutableCollection.Builder<E>
  {
    final Multiset<E> contents;

    public Builder()
    {
      this(LinkedHashMultiset.create());
    }

    Builder(Multiset<E> paramMultiset)
    {
      this.contents = paramMultiset;
    }

    public Builder<E> add(E paramE)
    {
      this.contents.add(Preconditions.checkNotNull(paramE));
      return this;
    }

    public Builder<E> add(E[] paramArrayOfE)
    {
      super.add(paramArrayOfE);
      return this;
    }

    public Builder<E> addAll(Iterable<? extends E> paramIterable)
    {
      if ((paramIterable instanceof Multiset))
      {
        Iterator localIterator = Multisets.cast(paramIterable).entrySet().iterator();
        while (localIterator.hasNext())
        {
          Multiset.Entry localEntry = (Multiset.Entry)localIterator.next();
          addCopies(localEntry.getElement(), localEntry.getCount());
        }
      }
      super.addAll(paramIterable);
      return this;
    }

    public Builder<E> addAll(Iterator<? extends E> paramIterator)
    {
      super.addAll(paramIterator);
      return this;
    }

    public Builder<E> addCopies(E paramE, int paramInt)
    {
      this.contents.add(Preconditions.checkNotNull(paramE), paramInt);
      return this;
    }

    public ImmutableMultiset<E> build()
    {
      return ImmutableMultiset.copyOf(this.contents);
    }

    public Builder<E> setCount(E paramE, int paramInt)
    {
      this.contents.setCount(Preconditions.checkNotNull(paramE), paramInt);
      return this;
    }
  }

  abstract class EntrySet extends ImmutableSet<Multiset.Entry<E>>
  {
    private static final long serialVersionUID;

    EntrySet()
    {
    }

    public boolean contains(Object paramObject)
    {
      Multiset.Entry localEntry;
      if ((paramObject instanceof Multiset.Entry))
      {
        localEntry = (Multiset.Entry)paramObject;
        if (localEntry.getCount() > 0)
          break label23;
      }
      label23: 
      while (ImmutableMultiset.this.count(localEntry.getElement()) != localEntry.getCount())
        return false;
      return true;
    }

    public int hashCode()
    {
      return ImmutableMultiset.this.hashCode();
    }

    boolean isPartialView()
    {
      return ImmutableMultiset.this.isPartialView();
    }

    public Object[] toArray()
    {
      return toArray(new Object[size()]);
    }

    public <T> T[] toArray(T[] paramArrayOfT)
    {
      int i = size();
      if (paramArrayOfT.length < i)
        paramArrayOfT = ObjectArrays.newArray(paramArrayOfT, i);
      while (true)
      {
        T[] arrayOfT = paramArrayOfT;
        int j = 0;
        Iterator localIterator = iterator();
        while (localIterator.hasNext())
        {
          Multiset.Entry localEntry = (Multiset.Entry)localIterator.next();
          int k = j + 1;
          arrayOfT[j] = localEntry;
          j = k;
        }
        if (paramArrayOfT.length > i)
          paramArrayOfT[i] = null;
      }
      return paramArrayOfT;
    }

    Object writeReplace()
    {
      return new ImmutableMultiset.EntrySetSerializedForm(ImmutableMultiset.this);
    }
  }

  static class EntrySetSerializedForm<E>
    implements Serializable
  {
    final ImmutableMultiset<E> multiset;

    EntrySetSerializedForm(ImmutableMultiset<E> paramImmutableMultiset)
    {
      this.multiset = paramImmutableMultiset;
    }

    Object readResolve()
    {
      return this.multiset.entrySet();
    }
  }

  private static class SerializedForm
    implements Serializable
  {
    private static final long serialVersionUID;
    final int[] counts;
    final Object[] elements;

    SerializedForm(Multiset<?> paramMultiset)
    {
      int i = paramMultiset.entrySet().size();
      this.elements = new Object[i];
      this.counts = new int[i];
      int j = 0;
      Iterator localIterator = paramMultiset.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Multiset.Entry localEntry = (Multiset.Entry)localIterator.next();
        this.elements[j] = localEntry.getElement();
        this.counts[j] = localEntry.getCount();
        j++;
      }
    }

    Object readResolve()
    {
      LinkedHashMultiset localLinkedHashMultiset = LinkedHashMultiset.create(this.elements.length);
      for (int i = 0; i < this.elements.length; i++)
        localLinkedHashMultiset.add(this.elements[i], this.counts[i]);
      return ImmutableMultiset.copyOf(localLinkedHashMultiset);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableMultiset
 * JD-Core Version:    0.6.2
 */