package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.AbstractSequentialList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
public final class Lists
{
  static <E> boolean addAllImpl(List<E> paramList, int paramInt, Iterable<? extends E> paramIterable)
  {
    boolean bool = false;
    ListIterator localListIterator = paramList.listIterator(paramInt);
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
    {
      localListIterator.add(localIterator.next());
      bool = true;
    }
    return bool;
  }

  public static <E> List<E> asList(@Nullable E paramE1, @Nullable E paramE2, E[] paramArrayOfE)
  {
    return new TwoPlusArrayList(paramE1, paramE2, paramArrayOfE);
  }

  public static <E> List<E> asList(@Nullable E paramE, E[] paramArrayOfE)
  {
    return new OnePlusArrayList(paramE, paramArrayOfE);
  }

  static <B> List<List<B>> cartesianProduct(List<? extends List<? extends B>> paramList)
  {
    return CartesianList.create(paramList);
  }

  static <B> List<List<B>> cartesianProduct(List<? extends B>[] paramArrayOfList)
  {
    return cartesianProduct(Arrays.asList(paramArrayOfList));
  }

  static <T> List<T> cast(Iterable<T> paramIterable)
  {
    return (List)paramIterable;
  }

  @Beta
  public static ImmutableList<Character> charactersOf(String paramString)
  {
    return new StringAsImmutableList((String)Preconditions.checkNotNull(paramString));
  }

  @Beta
  public static List<Character> charactersOf(CharSequence paramCharSequence)
  {
    return new CharSequenceAsList((CharSequence)Preconditions.checkNotNull(paramCharSequence));
  }

  @VisibleForTesting
  static int computeArrayListCapacity(int paramInt)
  {
    if (paramInt >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      return Ints.saturatedCast(5L + paramInt + paramInt / 10);
    }
  }

  static boolean equalsImpl(List<?> paramList, @Nullable Object paramObject)
  {
    if (paramObject == Preconditions.checkNotNull(paramList));
    List localList;
    do
    {
      return true;
      if (!(paramObject instanceof List))
        return false;
      localList = (List)paramObject;
    }
    while ((paramList.size() == localList.size()) && (Iterators.elementsEqual(paramList.iterator(), localList.iterator())));
    return false;
  }

  static int hashCodeImpl(List<?> paramList)
  {
    int i = 1;
    Iterator localIterator = paramList.iterator();
    if (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      int j = i * 31;
      if (localObject == null);
      for (int k = 0; ; k = localObject.hashCode())
      {
        i = 0xFFFFFFFF ^ (0xFFFFFFFF ^ j + k);
        break;
      }
    }
    return i;
  }

  static int indexOfImpl(List<?> paramList, @Nullable Object paramObject)
  {
    ListIterator localListIterator = paramList.listIterator();
    while (localListIterator.hasNext())
      if (Objects.equal(paramObject, localListIterator.next()))
        return localListIterator.previousIndex();
    return -1;
  }

  static int lastIndexOfImpl(List<?> paramList, @Nullable Object paramObject)
  {
    ListIterator localListIterator = paramList.listIterator(paramList.size());
    while (localListIterator.hasPrevious())
      if (Objects.equal(paramObject, localListIterator.previous()))
        return localListIterator.nextIndex();
    return -1;
  }

  static <E> ListIterator<E> listIteratorImpl(List<E> paramList, int paramInt)
  {
    return new AbstractListWrapper(paramList).listIterator(paramInt);
  }

  @GwtCompatible(serializable=true)
  public static <E> ArrayList<E> newArrayList()
  {
    return new ArrayList();
  }

  @GwtCompatible(serializable=true)
  public static <E> ArrayList<E> newArrayList(Iterable<? extends E> paramIterable)
  {
    Preconditions.checkNotNull(paramIterable);
    if ((paramIterable instanceof Collection))
      return new ArrayList(Collections2.cast(paramIterable));
    return newArrayList(paramIterable.iterator());
  }

  @GwtCompatible(serializable=true)
  public static <E> ArrayList<E> newArrayList(Iterator<? extends E> paramIterator)
  {
    Preconditions.checkNotNull(paramIterator);
    ArrayList localArrayList = newArrayList();
    while (paramIterator.hasNext())
      localArrayList.add(paramIterator.next());
    return localArrayList;
  }

  @GwtCompatible(serializable=true)
  public static <E> ArrayList<E> newArrayList(E[] paramArrayOfE)
  {
    Preconditions.checkNotNull(paramArrayOfE);
    ArrayList localArrayList = new ArrayList(computeArrayListCapacity(paramArrayOfE.length));
    Collections.addAll(localArrayList, paramArrayOfE);
    return localArrayList;
  }

  @GwtCompatible(serializable=true)
  public static <E> ArrayList<E> newArrayListWithCapacity(int paramInt)
  {
    if (paramInt >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      return new ArrayList(paramInt);
    }
  }

  @GwtCompatible(serializable=true)
  public static <E> ArrayList<E> newArrayListWithExpectedSize(int paramInt)
  {
    return new ArrayList(computeArrayListCapacity(paramInt));
  }

  @GwtIncompatible("CopyOnWriteArrayList")
  public static <E> CopyOnWriteArrayList<E> newCopyOnWriteArrayList()
  {
    return new CopyOnWriteArrayList();
  }

  @GwtIncompatible("CopyOnWriteArrayList")
  public static <E> CopyOnWriteArrayList<E> newCopyOnWriteArrayList(Iterable<? extends E> paramIterable)
  {
    if ((paramIterable instanceof Collection));
    for (Object localObject = Collections2.cast(paramIterable); ; localObject = newArrayList(paramIterable))
      return new CopyOnWriteArrayList((Collection)localObject);
  }

  @GwtCompatible(serializable=true)
  public static <E> LinkedList<E> newLinkedList()
  {
    return new LinkedList();
  }

  @GwtCompatible(serializable=true)
  public static <E> LinkedList<E> newLinkedList(Iterable<? extends E> paramIterable)
  {
    LinkedList localLinkedList = newLinkedList();
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
      localLinkedList.add(localIterator.next());
    return localLinkedList;
  }

  public static <T> List<List<T>> partition(List<T> paramList, int paramInt)
  {
    Preconditions.checkNotNull(paramList);
    if (paramInt > 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      if (!(paramList instanceof RandomAccess))
        break;
      return new RandomAccessPartition(paramList, paramInt);
    }
    return new Partition(paramList, paramInt);
  }

  public static <T> List<T> reverse(List<T> paramList)
  {
    if ((paramList instanceof ReverseList))
      return ((ReverseList)paramList).getForwardList();
    if ((paramList instanceof RandomAccess))
      return new RandomAccessReverseList(paramList);
    return new ReverseList(paramList);
  }

  static <E> List<E> subListImpl(List<E> paramList, int paramInt1, int paramInt2)
  {
    if ((paramList instanceof RandomAccess));
    for (Object localObject = new RandomAccessListWrapper(paramList)
    {
      private static final long serialVersionUID;

      public ListIterator<E> listIterator(int paramAnonymousInt)
      {
        return this.backingList.listIterator(paramAnonymousInt);
      }
    }
    ; ; localObject = new AbstractListWrapper(paramList)
    {
      private static final long serialVersionUID;

      public ListIterator<E> listIterator(int paramAnonymousInt)
      {
        return this.backingList.listIterator(paramAnonymousInt);
      }
    })
      return ((List)localObject).subList(paramInt1, paramInt2);
  }

  public static <F, T> List<T> transform(List<F> paramList, Function<? super F, ? extends T> paramFunction)
  {
    if ((paramList instanceof RandomAccess))
      return new TransformingRandomAccessList(paramList, paramFunction);
    return new TransformingSequentialList(paramList, paramFunction);
  }

  private static class AbstractListWrapper<E> extends AbstractList<E>
  {
    final List<E> backingList;

    AbstractListWrapper(List<E> paramList)
    {
      this.backingList = ((List)Preconditions.checkNotNull(paramList));
    }

    public void add(int paramInt, E paramE)
    {
      this.backingList.add(paramInt, paramE);
    }

    public boolean addAll(int paramInt, Collection<? extends E> paramCollection)
    {
      return this.backingList.addAll(paramInt, paramCollection);
    }

    public boolean contains(Object paramObject)
    {
      return this.backingList.contains(paramObject);
    }

    public E get(int paramInt)
    {
      return this.backingList.get(paramInt);
    }

    public E remove(int paramInt)
    {
      return this.backingList.remove(paramInt);
    }

    public E set(int paramInt, E paramE)
    {
      return this.backingList.set(paramInt, paramE);
    }

    public int size()
    {
      return this.backingList.size();
    }
  }

  private static final class CharSequenceAsList extends AbstractList<Character>
  {
    private final CharSequence sequence;

    CharSequenceAsList(CharSequence paramCharSequence)
    {
      this.sequence = paramCharSequence;
    }

    public boolean contains(@Nullable Object paramObject)
    {
      return indexOf(paramObject) >= 0;
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if (!(paramObject instanceof List));
      List localList;
      int i;
      do
      {
        return false;
        localList = (List)paramObject;
        i = this.sequence.length();
      }
      while (i != localList.size());
      Iterator localIterator = localList.iterator();
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label96;
        Object localObject = localIterator.next();
        if ((!(localObject instanceof Character)) || (((Character)localObject).charValue() != this.sequence.charAt(j)))
          break;
      }
      label96: return true;
    }

    public Character get(int paramInt)
    {
      Preconditions.checkElementIndex(paramInt, size());
      return Character.valueOf(this.sequence.charAt(paramInt));
    }

    public int hashCode()
    {
      int i = 1;
      for (int j = 0; j < this.sequence.length(); j++)
        i = i * 31 + this.sequence.charAt(j);
      return i;
    }

    public int indexOf(@Nullable Object paramObject)
    {
      if ((paramObject instanceof Character))
      {
        int i = ((Character)paramObject).charValue();
        for (int j = 0; j < this.sequence.length(); j++)
          if (this.sequence.charAt(j) == i)
            return j;
      }
      return -1;
    }

    public int lastIndexOf(@Nullable Object paramObject)
    {
      if ((paramObject instanceof Character))
      {
        int i = ((Character)paramObject).charValue();
        for (int j = -1 + this.sequence.length(); j >= 0; j--)
          if (this.sequence.charAt(j) == i)
            return j;
      }
      return -1;
    }

    public int size()
    {
      return this.sequence.length();
    }

    public List<Character> subList(int paramInt1, int paramInt2)
    {
      Preconditions.checkPositionIndexes(paramInt1, paramInt2, size());
      return Lists.charactersOf(this.sequence.subSequence(paramInt1, paramInt2));
    }
  }

  private static class OnePlusArrayList<E> extends AbstractList<E>
    implements Serializable, RandomAccess
  {
    private static final long serialVersionUID;
    final E first;
    final E[] rest;

    OnePlusArrayList(@Nullable E paramE, E[] paramArrayOfE)
    {
      this.first = paramE;
      this.rest = ((Object[])Preconditions.checkNotNull(paramArrayOfE));
    }

    public E get(int paramInt)
    {
      Preconditions.checkElementIndex(paramInt, size());
      if (paramInt == 0)
        return this.first;
      return this.rest[(paramInt - 1)];
    }

    public int size()
    {
      return 1 + this.rest.length;
    }
  }

  private static class Partition<T> extends AbstractList<List<T>>
  {
    final List<T> list;
    final int size;

    Partition(List<T> paramList, int paramInt)
    {
      this.list = paramList;
      this.size = paramInt;
    }

    public List<T> get(int paramInt)
    {
      Preconditions.checkElementIndex(paramInt, size());
      int i = paramInt * this.size;
      int j = Math.min(i + this.size, this.list.size());
      return this.list.subList(i, j);
    }

    public boolean isEmpty()
    {
      return this.list.isEmpty();
    }

    public int size()
    {
      int i = this.list.size() / this.size;
      if (i * this.size != this.list.size())
        i++;
      return i;
    }
  }

  private static class RandomAccessListWrapper<E> extends Lists.AbstractListWrapper<E>
    implements RandomAccess
  {
    RandomAccessListWrapper(List<E> paramList)
    {
      super();
    }
  }

  private static class RandomAccessPartition<T> extends Lists.Partition<T>
    implements RandomAccess
  {
    RandomAccessPartition(List<T> paramList, int paramInt)
    {
      super(paramInt);
    }
  }

  private static class RandomAccessReverseList<T> extends Lists.ReverseList<T>
    implements RandomAccess
  {
    RandomAccessReverseList(List<T> paramList)
    {
      super();
    }
  }

  private static class ReverseList<T> extends AbstractList<T>
  {
    private final List<T> forwardList;

    ReverseList(List<T> paramList)
    {
      this.forwardList = ((List)Preconditions.checkNotNull(paramList));
    }

    private int reverseIndex(int paramInt)
    {
      int i = size();
      Preconditions.checkElementIndex(paramInt, i);
      return i - 1 - paramInt;
    }

    private int reversePosition(int paramInt)
    {
      int i = size();
      Preconditions.checkPositionIndex(paramInt, i);
      return i - paramInt;
    }

    public void add(int paramInt, @Nullable T paramT)
    {
      this.forwardList.add(reversePosition(paramInt), paramT);
    }

    public void clear()
    {
      this.forwardList.clear();
    }

    public boolean contains(@Nullable Object paramObject)
    {
      return this.forwardList.contains(paramObject);
    }

    public boolean containsAll(Collection<?> paramCollection)
    {
      return this.forwardList.containsAll(paramCollection);
    }

    public T get(int paramInt)
    {
      return this.forwardList.get(reverseIndex(paramInt));
    }

    List<T> getForwardList()
    {
      return this.forwardList;
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

    public Iterator<T> iterator()
    {
      return listIterator();
    }

    public int lastIndexOf(@Nullable Object paramObject)
    {
      int i = this.forwardList.indexOf(paramObject);
      if (i >= 0)
        return reverseIndex(i);
      return -1;
    }

    public ListIterator<T> listIterator(int paramInt)
    {
      int i = reversePosition(paramInt);
      return new ListIterator()
      {
        boolean canRemove;
        boolean canSet;

        public void add(T paramAnonymousT)
        {
          this.val$forwardIterator.add(paramAnonymousT);
          this.val$forwardIterator.previous();
          this.canRemove = false;
          this.canSet = false;
        }

        public boolean hasNext()
        {
          return this.val$forwardIterator.hasPrevious();
        }

        public boolean hasPrevious()
        {
          return this.val$forwardIterator.hasNext();
        }

        public T next()
        {
          if (!hasNext())
            throw new NoSuchElementException();
          this.canRemove = true;
          this.canSet = true;
          return this.val$forwardIterator.previous();
        }

        public int nextIndex()
        {
          return Lists.ReverseList.this.reversePosition(this.val$forwardIterator.nextIndex());
        }

        public T previous()
        {
          if (!hasPrevious())
            throw new NoSuchElementException();
          this.canRemove = true;
          this.canSet = true;
          return this.val$forwardIterator.next();
        }

        public int previousIndex()
        {
          return -1 + nextIndex();
        }

        public void remove()
        {
          Preconditions.checkState(this.canRemove);
          this.val$forwardIterator.remove();
          this.canSet = false;
          this.canRemove = false;
        }

        public void set(T paramAnonymousT)
        {
          Preconditions.checkState(this.canSet);
          this.val$forwardIterator.set(paramAnonymousT);
        }
      };
    }

    public T remove(int paramInt)
    {
      return this.forwardList.remove(reverseIndex(paramInt));
    }

    protected void removeRange(int paramInt1, int paramInt2)
    {
      subList(paramInt1, paramInt2).clear();
    }

    public T set(int paramInt, @Nullable T paramT)
    {
      return this.forwardList.set(reverseIndex(paramInt), paramT);
    }

    public int size()
    {
      return this.forwardList.size();
    }

    public List<T> subList(int paramInt1, int paramInt2)
    {
      Preconditions.checkPositionIndexes(paramInt1, paramInt2, size());
      return Lists.reverse(this.forwardList.subList(reversePosition(paramInt2), reversePosition(paramInt1)));
    }
  }

  private static final class StringAsImmutableList extends ImmutableList<Character>
  {
    int hash = 0;
    private final String string;

    StringAsImmutableList(String paramString)
    {
      this.string = paramString;
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if (!(paramObject instanceof List));
      List localList;
      int i;
      do
      {
        return false;
        localList = (List)paramObject;
        i = this.string.length();
      }
      while (i != localList.size());
      Iterator localIterator = localList.iterator();
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label92;
        Object localObject = localIterator.next();
        if ((!(localObject instanceof Character)) || (((Character)localObject).charValue() != this.string.charAt(j)))
          break;
      }
      label92: return true;
    }

    public Character get(int paramInt)
    {
      Preconditions.checkElementIndex(paramInt, size());
      return Character.valueOf(this.string.charAt(paramInt));
    }

    public int hashCode()
    {
      int i = this.hash;
      if (i == 0)
      {
        i = 1;
        for (int j = 0; j < this.string.length(); j++)
          i = i * 31 + this.string.charAt(j);
        this.hash = i;
      }
      return i;
    }

    public int indexOf(@Nullable Object paramObject)
    {
      if ((paramObject instanceof Character))
        return this.string.indexOf(((Character)paramObject).charValue());
      return -1;
    }

    boolean isPartialView()
    {
      return false;
    }

    public int lastIndexOf(@Nullable Object paramObject)
    {
      if ((paramObject instanceof Character))
        return this.string.lastIndexOf(((Character)paramObject).charValue());
      return -1;
    }

    public int size()
    {
      return this.string.length();
    }

    public ImmutableList<Character> subList(int paramInt1, int paramInt2)
    {
      Preconditions.checkPositionIndexes(paramInt1, paramInt2, size());
      return Lists.charactersOf(this.string.substring(paramInt1, paramInt2));
    }
  }

  private static class TransformingRandomAccessList<F, T> extends AbstractList<T>
    implements RandomAccess, Serializable
  {
    private static final long serialVersionUID;
    final List<F> fromList;
    final Function<? super F, ? extends T> function;

    TransformingRandomAccessList(List<F> paramList, Function<? super F, ? extends T> paramFunction)
    {
      this.fromList = ((List)Preconditions.checkNotNull(paramList));
      this.function = ((Function)Preconditions.checkNotNull(paramFunction));
    }

    public void clear()
    {
      this.fromList.clear();
    }

    public T get(int paramInt)
    {
      return this.function.apply(this.fromList.get(paramInt));
    }

    public boolean isEmpty()
    {
      return this.fromList.isEmpty();
    }

    public T remove(int paramInt)
    {
      return this.function.apply(this.fromList.remove(paramInt));
    }

    public int size()
    {
      return this.fromList.size();
    }
  }

  private static class TransformingSequentialList<F, T> extends AbstractSequentialList<T>
    implements Serializable
  {
    private static final long serialVersionUID;
    final List<F> fromList;
    final Function<? super F, ? extends T> function;

    TransformingSequentialList(List<F> paramList, Function<? super F, ? extends T> paramFunction)
    {
      this.fromList = ((List)Preconditions.checkNotNull(paramList));
      this.function = ((Function)Preconditions.checkNotNull(paramFunction));
    }

    public void clear()
    {
      this.fromList.clear();
    }

    public ListIterator<T> listIterator(int paramInt)
    {
      return new TransformedListIterator(this.fromList.listIterator(paramInt))
      {
        T transform(F paramAnonymousF)
        {
          return Lists.TransformingSequentialList.this.function.apply(paramAnonymousF);
        }
      };
    }

    public int size()
    {
      return this.fromList.size();
    }
  }

  private static class TwoPlusArrayList<E> extends AbstractList<E>
    implements Serializable, RandomAccess
  {
    private static final long serialVersionUID;
    final E first;
    final E[] rest;
    final E second;

    TwoPlusArrayList(@Nullable E paramE1, @Nullable E paramE2, E[] paramArrayOfE)
    {
      this.first = paramE1;
      this.second = paramE2;
      this.rest = ((Object[])Preconditions.checkNotNull(paramArrayOfE));
    }

    public E get(int paramInt)
    {
      switch (paramInt)
      {
      default:
        Preconditions.checkElementIndex(paramInt, size());
        return this.rest[(paramInt - 2)];
      case 0:
        return this.first;
      case 1:
      }
      return this.second;
    }

    public int size()
    {
      return 2 + this.rest.length;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.Lists
 * JD-Core Version:    0.6.2
 */