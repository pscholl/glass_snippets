package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.math.IntMath;
import com.google.common.math.LongMath;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

@GwtCompatible
public final class Collections2
{
  static final Joiner STANDARD_JOINER = Joiner.on(", ").useForNull("null");

  static <T> Collection<T> cast(Iterable<T> paramIterable)
  {
    return (Collection)paramIterable;
  }

  static boolean containsAllImpl(Collection<?> paramCollection1, Collection<?> paramCollection2)
  {
    Preconditions.checkNotNull(paramCollection1);
    Iterator localIterator = paramCollection2.iterator();
    while (localIterator.hasNext())
      if (!paramCollection1.contains(localIterator.next()))
        return false;
    return true;
  }

  public static <E> Collection<E> filter(Collection<E> paramCollection, Predicate<? super E> paramPredicate)
  {
    if ((paramCollection instanceof FilteredCollection))
      return ((FilteredCollection)paramCollection).createCombined(paramPredicate);
    return new FilteredCollection((Collection)Preconditions.checkNotNull(paramCollection), (Predicate)Preconditions.checkNotNull(paramPredicate));
  }

  private static boolean isPermutation(List<?> paramList1, List<?> paramList2)
  {
    if (paramList1.size() != paramList2.size())
      return false;
    return HashMultiset.create(paramList1).equals(HashMultiset.create(paramList2));
  }

  private static boolean isPositiveInt(long paramLong)
  {
    return (paramLong >= 0L) && (paramLong <= 2147483647L);
  }

  static StringBuilder newStringBuilderForCollection(int paramInt)
  {
    if (paramInt >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "size must be non-negative");
      return new StringBuilder((int)Math.min(8L * paramInt, 1073741824L));
    }
  }

  @Beta
  public static <E extends Comparable<? super E>> Collection<List<E>> orderedPermutations(Iterable<E> paramIterable)
  {
    return orderedPermutations(paramIterable, Ordering.natural());
  }

  @Beta
  public static <E> Collection<List<E>> orderedPermutations(Iterable<E> paramIterable, Comparator<? super E> paramComparator)
  {
    return new OrderedPermutationCollection(paramIterable, paramComparator);
  }

  @Beta
  public static <E> Collection<List<E>> permutations(Collection<E> paramCollection)
  {
    return new PermutationCollection(ImmutableList.copyOf(paramCollection));
  }

  static boolean safeContains(Collection<?> paramCollection, Object paramObject)
  {
    Preconditions.checkNotNull(paramCollection);
    try
    {
      boolean bool = paramCollection.contains(paramObject);
      return bool;
    }
    catch (ClassCastException localClassCastException)
    {
      return false;
    }
    catch (NullPointerException localNullPointerException)
    {
    }
    return false;
  }

  static boolean safeRemove(Collection<?> paramCollection, Object paramObject)
  {
    Preconditions.checkNotNull(paramCollection);
    try
    {
      boolean bool = paramCollection.remove(paramObject);
      return bool;
    }
    catch (ClassCastException localClassCastException)
    {
      return false;
    }
    catch (NullPointerException localNullPointerException)
    {
    }
    return false;
  }

  static String toStringImpl(Collection<?> paramCollection)
  {
    StringBuilder localStringBuilder = newStringBuilderForCollection(paramCollection.size()).append('[');
    STANDARD_JOINER.appendTo(localStringBuilder, Iterables.transform(paramCollection, new Function()
    {
      public Object apply(Object paramAnonymousObject)
      {
        if (paramAnonymousObject == this.val$collection)
          paramAnonymousObject = "(this Collection)";
        return paramAnonymousObject;
      }
    }));
    return ']';
  }

  public static <F, T> Collection<T> transform(Collection<F> paramCollection, Function<? super F, T> paramFunction)
  {
    return new TransformedCollection(paramCollection, paramFunction);
  }

  static class FilteredCollection<E>
    implements Collection<E>
  {
    final Predicate<? super E> predicate;
    final Collection<E> unfiltered;

    FilteredCollection(Collection<E> paramCollection, Predicate<? super E> paramPredicate)
    {
      this.unfiltered = paramCollection;
      this.predicate = paramPredicate;
    }

    public boolean add(E paramE)
    {
      Preconditions.checkArgument(this.predicate.apply(paramE));
      return this.unfiltered.add(paramE);
    }

    public boolean addAll(Collection<? extends E> paramCollection)
    {
      Iterator localIterator = paramCollection.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = localIterator.next();
        Preconditions.checkArgument(this.predicate.apply(localObject));
      }
      return this.unfiltered.addAll(paramCollection);
    }

    public void clear()
    {
      Iterables.removeIf(this.unfiltered, this.predicate);
    }

    public boolean contains(Object paramObject)
    {
      try
      {
        boolean bool1 = this.predicate.apply(paramObject);
        boolean bool2 = false;
        if (bool1)
        {
          boolean bool3 = this.unfiltered.contains(paramObject);
          bool2 = false;
          if (bool3)
            bool2 = true;
        }
        return bool2;
      }
      catch (NullPointerException localNullPointerException)
      {
        return false;
      }
      catch (ClassCastException localClassCastException)
      {
      }
      return false;
    }

    public boolean containsAll(Collection<?> paramCollection)
    {
      Iterator localIterator = paramCollection.iterator();
      while (localIterator.hasNext())
        if (!contains(localIterator.next()))
          return false;
      return true;
    }

    FilteredCollection<E> createCombined(Predicate<? super E> paramPredicate)
    {
      return new FilteredCollection(this.unfiltered, Predicates.and(this.predicate, paramPredicate));
    }

    public boolean isEmpty()
    {
      return !Iterators.any(this.unfiltered.iterator(), this.predicate);
    }

    public Iterator<E> iterator()
    {
      return Iterators.filter(this.unfiltered.iterator(), this.predicate);
    }

    public boolean remove(Object paramObject)
    {
      try
      {
        boolean bool1 = this.predicate.apply(paramObject);
        boolean bool2 = false;
        if (bool1)
        {
          boolean bool3 = this.unfiltered.remove(paramObject);
          bool2 = false;
          if (bool3)
            bool2 = true;
        }
        return bool2;
      }
      catch (NullPointerException localNullPointerException)
      {
        return false;
      }
      catch (ClassCastException localClassCastException)
      {
      }
      return false;
    }

    public boolean removeAll(final Collection<?> paramCollection)
    {
      Preconditions.checkNotNull(paramCollection);
      Predicate local1 = new Predicate()
      {
        public boolean apply(E paramAnonymousE)
        {
          return (Collections2.FilteredCollection.this.predicate.apply(paramAnonymousE)) && (paramCollection.contains(paramAnonymousE));
        }
      };
      return Iterables.removeIf(this.unfiltered, local1);
    }

    public boolean retainAll(final Collection<?> paramCollection)
    {
      Preconditions.checkNotNull(paramCollection);
      Predicate local2 = new Predicate()
      {
        public boolean apply(E paramAnonymousE)
        {
          return (Collections2.FilteredCollection.this.predicate.apply(paramAnonymousE)) && (!paramCollection.contains(paramAnonymousE));
        }
      };
      return Iterables.removeIf(this.unfiltered, local2);
    }

    public int size()
    {
      return Iterators.size(iterator());
    }

    public Object[] toArray()
    {
      return Lists.newArrayList(iterator()).toArray();
    }

    public <T> T[] toArray(T[] paramArrayOfT)
    {
      return Lists.newArrayList(iterator()).toArray(paramArrayOfT);
    }

    public String toString()
    {
      return Iterators.toString(iterator());
    }
  }

  private static final class OrderedPermutationCollection<E> extends AbstractCollection<List<E>>
  {
    final Comparator<? super E> comparator;
    final ImmutableList<E> inputList;
    final int size;

    OrderedPermutationCollection(Iterable<E> paramIterable, Comparator<? super E> paramComparator)
    {
      this.inputList = Ordering.from(paramComparator).immutableSortedCopy(paramIterable);
      this.comparator = paramComparator;
      this.size = calculateSize(this.inputList, paramComparator);
    }

    private static <E> int calculateSize(List<E> paramList, Comparator<? super E> paramComparator)
    {
      long l1 = 1L;
      int i = 1;
      int j = 1;
      if (i < paramList.size())
        if (paramComparator.compare(paramList.get(i - 1), paramList.get(i)) < 0)
        {
          l1 *= LongMath.binomial(i, j);
          boolean bool = Collections2.isPositiveInt(l1);
          j = 0;
          if (bool);
        }
      long l2;
      do
      {
        return 2147483647;
        i++;
        j++;
        break;
        l2 = l1 * LongMath.binomial(i, j);
      }
      while (!Collections2.isPositiveInt(l2));
      return (int)l2;
    }

    public boolean contains(@Nullable Object paramObject)
    {
      if ((paramObject instanceof List))
      {
        List localList = (List)paramObject;
        return Collections2.isPermutation(this.inputList, localList);
      }
      return false;
    }

    public boolean isEmpty()
    {
      return false;
    }

    public Iterator<List<E>> iterator()
    {
      return new Collections2.OrderedPermutationIterator(this.inputList, this.comparator);
    }

    public int size()
    {
      return this.size;
    }

    public String toString()
    {
      return "orderedPermutationCollection(" + this.inputList + ")";
    }
  }

  private static final class OrderedPermutationIterator<E> extends AbstractIterator<List<E>>
  {
    final Comparator<? super E> comparator;
    List<E> nextPermutation;

    OrderedPermutationIterator(List<E> paramList, Comparator<? super E> paramComparator)
    {
      this.nextPermutation = Lists.newArrayList(paramList);
      this.comparator = paramComparator;
    }

    void calculateNextPermutation()
    {
      int i = findNextJ();
      if (i == -1)
      {
        this.nextPermutation = null;
        return;
      }
      int j = findNextL(i);
      Collections.swap(this.nextPermutation, i, j);
      int k = this.nextPermutation.size();
      Collections.reverse(this.nextPermutation.subList(i + 1, k));
    }

    protected List<E> computeNext()
    {
      if (this.nextPermutation == null)
        return (List)endOfData();
      ImmutableList localImmutableList = ImmutableList.copyOf(this.nextPermutation);
      calculateNextPermutation();
      return localImmutableList;
    }

    int findNextJ()
    {
      for (int i = -2 + this.nextPermutation.size(); i >= 0; i--)
        if (this.comparator.compare(this.nextPermutation.get(i), this.nextPermutation.get(i + 1)) < 0)
          return i;
      return -1;
    }

    int findNextL(int paramInt)
    {
      Object localObject = this.nextPermutation.get(paramInt);
      for (int i = -1 + this.nextPermutation.size(); i > paramInt; i--)
        if (this.comparator.compare(localObject, this.nextPermutation.get(i)) < 0)
          return i;
      throw new AssertionError("this statement should be unreachable");
    }
  }

  private static final class PermutationCollection<E> extends AbstractCollection<List<E>>
  {
    final ImmutableList<E> inputList;

    PermutationCollection(ImmutableList<E> paramImmutableList)
    {
      this.inputList = paramImmutableList;
    }

    public boolean contains(@Nullable Object paramObject)
    {
      if ((paramObject instanceof List))
      {
        List localList = (List)paramObject;
        return Collections2.isPermutation(this.inputList, localList);
      }
      return false;
    }

    public boolean isEmpty()
    {
      return false;
    }

    public Iterator<List<E>> iterator()
    {
      return new Collections2.PermutationIterator(this.inputList);
    }

    public int size()
    {
      return IntMath.factorial(this.inputList.size());
    }

    public String toString()
    {
      return "permutations(" + this.inputList + ")";
    }
  }

  private static class PermutationIterator<E> extends AbstractIterator<List<E>>
  {
    final int[] c;
    int j;
    final List<E> list;
    final int[] o;

    PermutationIterator(List<E> paramList)
    {
      this.list = new ArrayList(paramList);
      int i = paramList.size();
      this.c = new int[i];
      this.o = new int[i];
      for (int k = 0; k < i; k++)
      {
        this.c[k] = 0;
        this.o[k] = 1;
      }
      this.j = 2147483647;
    }

    void calculateNextPermutation()
    {
      this.j = (-1 + this.list.size());
      int i = this.j;
      int k = 0;
      if (i == -1)
        return;
      int m;
      while (true)
      {
        m = this.c[this.j] + this.o[this.j];
        if (m < 0)
        {
          switchDirection();
        }
        else
        {
          if (m != 1 + this.j)
            break label86;
          if (this.j == 0)
            break;
          k++;
          switchDirection();
        }
      }
      label86: Collections.swap(this.list, k + (this.j - this.c[this.j]), k + (this.j - m));
      this.c[this.j] = m;
    }

    protected List<E> computeNext()
    {
      if (this.j <= 0)
        return (List)endOfData();
      ImmutableList localImmutableList = ImmutableList.copyOf(this.list);
      calculateNextPermutation();
      return localImmutableList;
    }

    void switchDirection()
    {
      this.o[this.j] = (-this.o[this.j]);
      this.j = (-1 + this.j);
    }
  }

  static class TransformedCollection<F, T> extends AbstractCollection<T>
  {
    final Collection<F> fromCollection;
    final Function<? super F, ? extends T> function;

    TransformedCollection(Collection<F> paramCollection, Function<? super F, ? extends T> paramFunction)
    {
      this.fromCollection = ((Collection)Preconditions.checkNotNull(paramCollection));
      this.function = ((Function)Preconditions.checkNotNull(paramFunction));
    }

    public void clear()
    {
      this.fromCollection.clear();
    }

    public boolean isEmpty()
    {
      return this.fromCollection.isEmpty();
    }

    public Iterator<T> iterator()
    {
      return Iterators.transform(this.fromCollection.iterator(), this.function);
    }

    public int size()
    {
      return this.fromCollection.size();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.Collections2
 * JD-Core Version:    0.6.2
 */