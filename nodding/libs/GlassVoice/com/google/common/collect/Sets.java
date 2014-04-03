package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
public final class Sets
{
  public static <B> Set<List<B>> cartesianProduct(List<? extends Set<? extends B>> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      if (((Set)localIterator.next()).isEmpty())
        return ImmutableSet.of();
    return CartesianSet.create(paramList);
  }

  public static <B> Set<List<B>> cartesianProduct(Set<? extends B>[] paramArrayOfSet)
  {
    return cartesianProduct(Arrays.asList(paramArrayOfSet));
  }

  static <T> SortedSet<T> cast(Iterable<T> paramIterable)
  {
    return (SortedSet)paramIterable;
  }

  public static <E extends Enum<E>> EnumSet<E> complementOf(Collection<E> paramCollection)
  {
    if ((paramCollection instanceof EnumSet))
      return EnumSet.complementOf((EnumSet)paramCollection);
    if (!paramCollection.isEmpty());
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "collection is empty; use the other version of this method");
      return makeComplementByHand(paramCollection, ((Enum)paramCollection.iterator().next()).getDeclaringClass());
    }
  }

  public static <E extends Enum<E>> EnumSet<E> complementOf(Collection<E> paramCollection, Class<E> paramClass)
  {
    Preconditions.checkNotNull(paramCollection);
    if ((paramCollection instanceof EnumSet))
      return EnumSet.complementOf((EnumSet)paramCollection);
    return makeComplementByHand(paramCollection, paramClass);
  }

  public static <E> SetView<E> difference(Set<E> paramSet, final Set<?> paramSet1)
  {
    Preconditions.checkNotNull(paramSet, "set1");
    Preconditions.checkNotNull(paramSet1, "set2");
    return new SetView(paramSet)
    {
      public boolean contains(Object paramAnonymousObject)
      {
        return (this.val$set1.contains(paramAnonymousObject)) && (!paramSet1.contains(paramAnonymousObject));
      }

      public boolean isEmpty()
      {
        return paramSet1.containsAll(this.val$set1);
      }

      public Iterator<E> iterator()
      {
        return Iterators.filter(this.val$set1.iterator(), this.val$notInSet2);
      }

      public int size()
      {
        return Iterators.size(iterator());
      }
    };
  }

  static boolean equalsImpl(Set<?> paramSet, @Nullable Object paramObject)
  {
    boolean bool1 = true;
    boolean bool3;
    if (paramSet == paramObject)
      bool3 = bool1;
    boolean bool2;
    do
    {
      return bool3;
      bool2 = paramObject instanceof Set;
      bool3 = false;
    }
    while (!bool2);
    Set localSet = (Set)paramObject;
    try
    {
      if (paramSet.size() == localSet.size())
      {
        boolean bool4 = paramSet.containsAll(localSet);
        if (!bool4);
      }
      while (true)
      {
        return bool1;
        bool1 = false;
      }
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

  public static <E> Set<E> filter(Set<E> paramSet, Predicate<? super E> paramPredicate)
  {
    if ((paramSet instanceof SortedSet))
      return filter((SortedSet)paramSet, paramPredicate);
    if ((paramSet instanceof FilteredSet))
    {
      FilteredSet localFilteredSet = (FilteredSet)paramSet;
      Predicate localPredicate = Predicates.and(localFilteredSet.predicate, paramPredicate);
      return new FilteredSet((Set)localFilteredSet.unfiltered, localPredicate);
    }
    return new FilteredSet((Set)Preconditions.checkNotNull(paramSet), (Predicate)Preconditions.checkNotNull(paramPredicate));
  }

  public static <E> SortedSet<E> filter(SortedSet<E> paramSortedSet, Predicate<? super E> paramPredicate)
  {
    if ((paramSortedSet instanceof FilteredSet))
    {
      FilteredSet localFilteredSet = (FilteredSet)paramSortedSet;
      Predicate localPredicate = Predicates.and(localFilteredSet.predicate, paramPredicate);
      return new FilteredSortedSet((SortedSet)localFilteredSet.unfiltered, localPredicate);
    }
    return new FilteredSortedSet((SortedSet)Preconditions.checkNotNull(paramSortedSet), (Predicate)Preconditions.checkNotNull(paramPredicate));
  }

  static int hashCodeImpl(Set<?> paramSet)
  {
    int i = 0;
    Iterator localIterator = paramSet.iterator();
    if (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if (localObject != null);
      for (int j = localObject.hashCode(); ; j = 0)
      {
        i = 0xFFFFFFFF ^ (0xFFFFFFFF ^ i + j);
        break;
      }
    }
    return i;
  }

  @GwtCompatible(serializable=true)
  public static <E extends Enum<E>> ImmutableSet<E> immutableEnumSet(E paramE, E[] paramArrayOfE)
  {
    return ImmutableEnumSet.asImmutable(EnumSet.of(paramE, paramArrayOfE));
  }

  @GwtCompatible(serializable=true)
  public static <E extends Enum<E>> ImmutableSet<E> immutableEnumSet(Iterable<E> paramIterable)
  {
    if ((paramIterable instanceof ImmutableEnumSet))
      return (ImmutableEnumSet)paramIterable;
    if ((paramIterable instanceof Collection))
    {
      Collection localCollection = (Collection)paramIterable;
      if (localCollection.isEmpty())
        return ImmutableSet.of();
      return ImmutableEnumSet.asImmutable(EnumSet.copyOf(localCollection));
    }
    Iterator localIterator = paramIterable.iterator();
    if (localIterator.hasNext())
    {
      EnumSet localEnumSet = EnumSet.of((Enum)localIterator.next());
      Iterators.addAll(localEnumSet, localIterator);
      return ImmutableEnumSet.asImmutable(localEnumSet);
    }
    return ImmutableSet.of();
  }

  public static <E> SetView<E> intersection(Set<E> paramSet, final Set<?> paramSet1)
  {
    Preconditions.checkNotNull(paramSet, "set1");
    Preconditions.checkNotNull(paramSet1, "set2");
    return new SetView(paramSet)
    {
      public boolean contains(Object paramAnonymousObject)
      {
        return (this.val$set1.contains(paramAnonymousObject)) && (paramSet1.contains(paramAnonymousObject));
      }

      public boolean containsAll(Collection<?> paramAnonymousCollection)
      {
        return (this.val$set1.containsAll(paramAnonymousCollection)) && (paramSet1.containsAll(paramAnonymousCollection));
      }

      public boolean isEmpty()
      {
        return !iterator().hasNext();
      }

      public Iterator<E> iterator()
      {
        return Iterators.filter(this.val$set1.iterator(), this.val$inSet2);
      }

      public int size()
      {
        return Iterators.size(iterator());
      }
    };
  }

  private static <E extends Enum<E>> EnumSet<E> makeComplementByHand(Collection<E> paramCollection, Class<E> paramClass)
  {
    EnumSet localEnumSet = EnumSet.allOf(paramClass);
    localEnumSet.removeAll(paramCollection);
    return localEnumSet;
  }

  @GwtIncompatible("CopyOnWriteArraySet")
  public static <E> CopyOnWriteArraySet<E> newCopyOnWriteArraySet()
  {
    return new CopyOnWriteArraySet();
  }

  @GwtIncompatible("CopyOnWriteArraySet")
  public static <E> CopyOnWriteArraySet<E> newCopyOnWriteArraySet(Iterable<? extends E> paramIterable)
  {
    if ((paramIterable instanceof Collection));
    for (Object localObject = Collections2.cast(paramIterable); ; localObject = Lists.newArrayList(paramIterable))
      return new CopyOnWriteArraySet((Collection)localObject);
  }

  public static <E extends Enum<E>> EnumSet<E> newEnumSet(Iterable<E> paramIterable, Class<E> paramClass)
  {
    EnumSet localEnumSet = EnumSet.noneOf(paramClass);
    Iterables.addAll(localEnumSet, paramIterable);
    return localEnumSet;
  }

  public static <E> HashSet<E> newHashSet()
  {
    return new HashSet();
  }

  public static <E> HashSet<E> newHashSet(Iterable<? extends E> paramIterable)
  {
    if ((paramIterable instanceof Collection))
      return new HashSet(Collections2.cast(paramIterable));
    return newHashSet(paramIterable.iterator());
  }

  public static <E> HashSet<E> newHashSet(Iterator<? extends E> paramIterator)
  {
    HashSet localHashSet = newHashSet();
    while (paramIterator.hasNext())
      localHashSet.add(paramIterator.next());
    return localHashSet;
  }

  public static <E> HashSet<E> newHashSet(E[] paramArrayOfE)
  {
    HashSet localHashSet = newHashSetWithExpectedSize(paramArrayOfE.length);
    Collections.addAll(localHashSet, paramArrayOfE);
    return localHashSet;
  }

  public static <E> HashSet<E> newHashSetWithExpectedSize(int paramInt)
  {
    return new HashSet(Maps.capacity(paramInt));
  }

  public static <E> Set<E> newIdentityHashSet()
  {
    return newSetFromMap(Maps.newIdentityHashMap());
  }

  public static <E> LinkedHashSet<E> newLinkedHashSet()
  {
    return new LinkedHashSet();
  }

  public static <E> LinkedHashSet<E> newLinkedHashSet(Iterable<? extends E> paramIterable)
  {
    LinkedHashSet localLinkedHashSet;
    if ((paramIterable instanceof Collection))
      localLinkedHashSet = new LinkedHashSet(Collections2.cast(paramIterable));
    while (true)
    {
      return localLinkedHashSet;
      localLinkedHashSet = newLinkedHashSet();
      Iterator localIterator = paramIterable.iterator();
      while (localIterator.hasNext())
        localLinkedHashSet.add(localIterator.next());
    }
  }

  public static <E> LinkedHashSet<E> newLinkedHashSetWithExpectedSize(int paramInt)
  {
    return new LinkedHashSet(Maps.capacity(paramInt));
  }

  public static <E> Set<E> newSetFromMap(Map<E, Boolean> paramMap)
  {
    return new SetFromMap(paramMap);
  }

  public static <E extends Comparable> TreeSet<E> newTreeSet()
  {
    return new TreeSet();
  }

  public static <E extends Comparable> TreeSet<E> newTreeSet(Iterable<? extends E> paramIterable)
  {
    TreeSet localTreeSet = newTreeSet();
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
      localTreeSet.add((Comparable)localIterator.next());
    return localTreeSet;
  }

  public static <E> TreeSet<E> newTreeSet(Comparator<? super E> paramComparator)
  {
    return new TreeSet((Comparator)Preconditions.checkNotNull(paramComparator));
  }

  @GwtCompatible(serializable=false)
  public static <E> Set<Set<E>> powerSet(Set<E> paramSet)
  {
    ImmutableSet localImmutableSet = ImmutableSet.copyOf(paramSet);
    if (localImmutableSet.size() <= 30);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(localImmutableSet.size());
      Preconditions.checkArgument(bool, "Too many elements to create power set: %s > 30", arrayOfObject);
      return new PowerSet(localImmutableSet);
    }
  }

  static boolean removeAllImpl(Set<?> paramSet, Collection<?> paramCollection)
  {
    Preconditions.checkNotNull(paramCollection);
    if ((paramCollection instanceof Multiset))
      paramCollection = ((Multiset)paramCollection).elementSet();
    Iterator localIterator;
    boolean bool;
    if (((paramCollection instanceof Set)) && (paramCollection.size() > paramSet.size()))
    {
      localIterator = paramSet.iterator();
      bool = false;
    }
    while (localIterator.hasNext())
      if (paramCollection.contains(localIterator.next()))
      {
        bool = true;
        localIterator.remove();
        continue;
        bool = removeAllImpl(paramSet, paramCollection.iterator());
      }
    return bool;
  }

  static boolean removeAllImpl(Set<?> paramSet, Iterator<?> paramIterator)
  {
    boolean bool = false;
    while (paramIterator.hasNext())
      bool |= paramSet.remove(paramIterator.next());
    return bool;
  }

  public static <E> SetView<E> symmetricDifference(Set<? extends E> paramSet1, Set<? extends E> paramSet2)
  {
    Preconditions.checkNotNull(paramSet1, "set1");
    Preconditions.checkNotNull(paramSet2, "set2");
    return difference(union(paramSet1, paramSet2), intersection(paramSet1, paramSet2));
  }

  public static <E> SetView<E> union(Set<? extends E> paramSet1, final Set<? extends E> paramSet2)
  {
    Preconditions.checkNotNull(paramSet1, "set1");
    Preconditions.checkNotNull(paramSet2, "set2");
    return new SetView(paramSet1)
    {
      public boolean contains(Object paramAnonymousObject)
      {
        return (this.val$set1.contains(paramAnonymousObject)) || (paramSet2.contains(paramAnonymousObject));
      }

      public <S extends Set<E>> S copyInto(S paramAnonymousS)
      {
        paramAnonymousS.addAll(this.val$set1);
        paramAnonymousS.addAll(paramSet2);
        return paramAnonymousS;
      }

      public ImmutableSet<E> immutableCopy()
      {
        return new ImmutableSet.Builder().addAll(this.val$set1).addAll(paramSet2).build();
      }

      public boolean isEmpty()
      {
        return (this.val$set1.isEmpty()) && (paramSet2.isEmpty());
      }

      public Iterator<E> iterator()
      {
        return Iterators.unmodifiableIterator(Iterators.concat(this.val$set1.iterator(), this.val$set2minus1.iterator()));
      }

      public int size()
      {
        return this.val$set1.size() + this.val$set2minus1.size();
      }
    };
  }

  private static final class CartesianSet<E> extends ForwardingCollection<List<E>>
    implements Set<List<E>>
  {
    private final transient ImmutableList<ImmutableSet<E>> axes;
    private final transient CartesianList<E> delegate;

    private CartesianSet(ImmutableList<ImmutableSet<E>> paramImmutableList, CartesianList<E> paramCartesianList)
    {
      this.axes = paramImmutableList;
      this.delegate = paramCartesianList;
    }

    static <E> Set<List<E>> create(List<? extends Set<? extends E>> paramList)
    {
      ImmutableList.Builder localBuilder = new ImmutableList.Builder(paramList.size());
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        ImmutableSet localImmutableSet = ImmutableSet.copyOf((Set)localIterator.next());
        if (localImmutableSet.isEmpty())
          return ImmutableSet.of();
        localBuilder.add(localImmutableSet);
      }
      ImmutableList localImmutableList = localBuilder.build();
      return new CartesianSet(localImmutableList, new CartesianList(new ImmutableList()
      {
        public List<E> get(int paramAnonymousInt)
        {
          return ((ImmutableSet)this.val$axes.get(paramAnonymousInt)).asList();
        }

        boolean isPartialView()
        {
          return true;
        }

        public int size()
        {
          return this.val$axes.size();
        }
      }));
    }

    protected Collection<List<E>> delegate()
    {
      return this.delegate;
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if ((paramObject instanceof CartesianSet))
      {
        CartesianSet localCartesianSet = (CartesianSet)paramObject;
        return this.axes.equals(localCartesianSet.axes);
      }
      return super.equals(paramObject);
    }

    public int hashCode()
    {
      int i = -1 + size();
      for (int j = 0; j < this.axes.size(); j++)
        i = 0xFFFFFFFF ^ (0xFFFFFFFF ^ i * 31);
      int k = 1;
      Iterator localIterator = this.axes.iterator();
      while (localIterator.hasNext())
      {
        ImmutableSet localImmutableSet = (ImmutableSet)localIterator.next();
        k = 0xFFFFFFFF ^ (0xFFFFFFFF ^ k * 31 + size() / localImmutableSet.size() * localImmutableSet.hashCode());
      }
      return 0xFFFFFFFF ^ (0xFFFFFFFF ^ k + i);
    }
  }

  private static class FilteredSet<E> extends Collections2.FilteredCollection<E>
    implements Set<E>
  {
    FilteredSet(Set<E> paramSet, Predicate<? super E> paramPredicate)
    {
      super(paramPredicate);
    }

    public boolean equals(@Nullable Object paramObject)
    {
      return Sets.equalsImpl(this, paramObject);
    }

    public int hashCode()
    {
      return Sets.hashCodeImpl(this);
    }
  }

  private static class FilteredSortedSet<E> extends Sets.FilteredSet<E>
    implements SortedSet<E>
  {
    FilteredSortedSet(SortedSet<E> paramSortedSet, Predicate<? super E> paramPredicate)
    {
      super(paramPredicate);
    }

    public Comparator<? super E> comparator()
    {
      return ((SortedSet)this.unfiltered).comparator();
    }

    public E first()
    {
      return iterator().next();
    }

    public SortedSet<E> headSet(E paramE)
    {
      return new FilteredSortedSet(((SortedSet)this.unfiltered).headSet(paramE), this.predicate);
    }

    public E last()
    {
      Object localObject;
      for (SortedSet localSortedSet = (SortedSet)this.unfiltered; ; localSortedSet = localSortedSet.headSet(localObject))
      {
        localObject = localSortedSet.last();
        if (this.predicate.apply(localObject))
          return localObject;
      }
    }

    public SortedSet<E> subSet(E paramE1, E paramE2)
    {
      return new FilteredSortedSet(((SortedSet)this.unfiltered).subSet(paramE1, paramE2), this.predicate);
    }

    public SortedSet<E> tailSet(E paramE)
    {
      return new FilteredSortedSet(((SortedSet)this.unfiltered).tailSet(paramE), this.predicate);
    }
  }

  static abstract class ImprovedAbstractSet<E> extends AbstractSet<E>
  {
    public boolean removeAll(Collection<?> paramCollection)
    {
      return Sets.removeAllImpl(this, paramCollection);
    }

    public boolean retainAll(Collection<?> paramCollection)
    {
      return super.retainAll((Collection)Preconditions.checkNotNull(paramCollection));
    }
  }

  private static final class PowerSet<E> extends AbstractSet<Set<E>>
  {
    final ImmutableList<E> inputList;
    final ImmutableSet<E> inputSet;
    final int powerSetSize;

    PowerSet(ImmutableSet<E> paramImmutableSet)
    {
      this.inputSet = paramImmutableSet;
      this.inputList = paramImmutableSet.asList();
      this.powerSetSize = (1 << paramImmutableSet.size());
    }

    public boolean contains(@Nullable Object paramObject)
    {
      if ((paramObject instanceof Set))
      {
        Set localSet = (Set)paramObject;
        return this.inputSet.containsAll(localSet);
      }
      return false;
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if ((paramObject instanceof PowerSet))
      {
        PowerSet localPowerSet = (PowerSet)paramObject;
        return this.inputSet.equals(localPowerSet.inputSet);
      }
      return super.equals(paramObject);
    }

    public int hashCode()
    {
      return this.inputSet.hashCode() << -1 + this.inputSet.size();
    }

    public boolean isEmpty()
    {
      return false;
    }

    public Iterator<Set<E>> iterator()
    {
      return new AbstractIndexedListIterator(this.powerSetSize)
      {
        protected Set<E> get(final int paramAnonymousInt)
        {
          return new AbstractSet()
          {
            public Iterator<E> iterator()
            {
              return new Sets.PowerSet.BitFilteredSetIterator(Sets.PowerSet.this.inputList, paramAnonymousInt);
            }

            public int size()
            {
              return Integer.bitCount(paramAnonymousInt);
            }
          };
        }
      };
    }

    public int size()
    {
      return this.powerSetSize;
    }

    public String toString()
    {
      return "powerSet(" + this.inputSet + ")";
    }

    private static final class BitFilteredSetIterator<E> extends UnmodifiableIterator<E>
    {
      final ImmutableList<E> input;
      int remainingSetBits;

      BitFilteredSetIterator(ImmutableList<E> paramImmutableList, int paramInt)
      {
        this.input = paramImmutableList;
        this.remainingSetBits = paramInt;
      }

      public boolean hasNext()
      {
        return this.remainingSetBits != 0;
      }

      public E next()
      {
        int i = Integer.numberOfTrailingZeros(this.remainingSetBits);
        if (i == 32)
          throw new NoSuchElementException();
        int j = 1 << i;
        this.remainingSetBits &= (j ^ 0xFFFFFFFF);
        return this.input.get(i);
      }
    }
  }

  private static class SetFromMap<E> extends AbstractSet<E>
    implements Set<E>, Serializable
  {

    @GwtIncompatible("not needed in emulated source")
    private static final long serialVersionUID;
    private final Map<E, Boolean> m;
    private transient Set<E> s;

    SetFromMap(Map<E, Boolean> paramMap)
    {
      Preconditions.checkArgument(paramMap.isEmpty(), "Map is non-empty");
      this.m = paramMap;
      this.s = paramMap.keySet();
    }

    @GwtIncompatible("java.io.ObjectInputStream")
    private void readObject(ObjectInputStream paramObjectInputStream)
      throws IOException, ClassNotFoundException
    {
      paramObjectInputStream.defaultReadObject();
      this.s = this.m.keySet();
    }

    public boolean add(E paramE)
    {
      return this.m.put(paramE, Boolean.TRUE) == null;
    }

    public void clear()
    {
      this.m.clear();
    }

    public boolean contains(Object paramObject)
    {
      return this.m.containsKey(paramObject);
    }

    public boolean containsAll(Collection<?> paramCollection)
    {
      return this.s.containsAll(paramCollection);
    }

    public boolean equals(@Nullable Object paramObject)
    {
      return (this == paramObject) || (this.s.equals(paramObject));
    }

    public int hashCode()
    {
      return this.s.hashCode();
    }

    public boolean isEmpty()
    {
      return this.m.isEmpty();
    }

    public Iterator<E> iterator()
    {
      return this.s.iterator();
    }

    public boolean remove(Object paramObject)
    {
      return this.m.remove(paramObject) != null;
    }

    public boolean removeAll(Collection<?> paramCollection)
    {
      return this.s.removeAll(paramCollection);
    }

    public boolean retainAll(Collection<?> paramCollection)
    {
      return this.s.retainAll(paramCollection);
    }

    public int size()
    {
      return this.m.size();
    }

    public Object[] toArray()
    {
      return this.s.toArray();
    }

    public <T> T[] toArray(T[] paramArrayOfT)
    {
      return this.s.toArray(paramArrayOfT);
    }

    public String toString()
    {
      return this.s.toString();
    }
  }

  public static abstract class SetView<E> extends AbstractSet<E>
  {
    public <S extends Set<E>> S copyInto(S paramS)
    {
      paramS.addAll(this);
      return paramS;
    }

    public ImmutableSet<E> immutableCopy()
    {
      return ImmutableSet.copyOf(this);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.Sets
 * JD-Core Version:    0.6.2
 */