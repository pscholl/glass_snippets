package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
public final class TreeMultiset<E> extends AbstractSortedMultiset<E>
  implements Serializable
{

  @GwtIncompatible("not needed in emulated source")
  private static final long serialVersionUID = 1L;
  private final transient AvlNode<E> header;
  private final transient GeneralRange<E> range;
  private final transient Reference<AvlNode<E>> rootReference;

  TreeMultiset(Reference<AvlNode<E>> paramReference, GeneralRange<E> paramGeneralRange, AvlNode<E> paramAvlNode)
  {
    super(paramGeneralRange.comparator());
    this.rootReference = paramReference;
    this.range = paramGeneralRange;
    this.header = paramAvlNode;
  }

  TreeMultiset(Comparator<? super E> paramComparator)
  {
    super(paramComparator);
    this.range = GeneralRange.all(paramComparator);
    this.header = new AvlNode(null, 1);
    successor(this.header, this.header);
    this.rootReference = new Reference(null);
  }

  private long aggregateAboveRange(Aggregate paramAggregate, @Nullable AvlNode<E> paramAvlNode)
  {
    if (paramAvlNode == null)
      return 0L;
    int i = comparator().compare(this.range.getUpperEndpoint(), paramAvlNode.elem);
    if (i > 0)
      return aggregateAboveRange(paramAggregate, paramAvlNode.right);
    if (i == 0)
    {
      switch (4.$SwitchMap$com$google$common$collect$BoundType[this.range.getUpperBoundType().ordinal()])
      {
      default:
        throw new AssertionError();
      case 1:
        return paramAggregate.nodeAggregate(paramAvlNode) + paramAggregate.treeAggregate(paramAvlNode.right);
      case 2:
      }
      return paramAggregate.treeAggregate(paramAvlNode.right);
    }
    return paramAggregate.treeAggregate(paramAvlNode.right) + paramAggregate.nodeAggregate(paramAvlNode) + aggregateAboveRange(paramAggregate, paramAvlNode.left);
  }

  private long aggregateBelowRange(Aggregate paramAggregate, @Nullable AvlNode<E> paramAvlNode)
  {
    if (paramAvlNode == null)
      return 0L;
    int i = comparator().compare(this.range.getLowerEndpoint(), paramAvlNode.elem);
    if (i < 0)
      return aggregateBelowRange(paramAggregate, paramAvlNode.left);
    if (i == 0)
    {
      switch (4.$SwitchMap$com$google$common$collect$BoundType[this.range.getLowerBoundType().ordinal()])
      {
      default:
        throw new AssertionError();
      case 1:
        return paramAggregate.nodeAggregate(paramAvlNode) + paramAggregate.treeAggregate(paramAvlNode.left);
      case 2:
      }
      return paramAggregate.treeAggregate(paramAvlNode.left);
    }
    return paramAggregate.treeAggregate(paramAvlNode.left) + paramAggregate.nodeAggregate(paramAvlNode) + aggregateBelowRange(paramAggregate, paramAvlNode.right);
  }

  private long aggregateForEntries(Aggregate paramAggregate)
  {
    AvlNode localAvlNode = (AvlNode)this.rootReference.get();
    long l = paramAggregate.treeAggregate(localAvlNode);
    if (this.range.hasLowerBound())
      l -= aggregateBelowRange(paramAggregate, localAvlNode);
    if (this.range.hasUpperBound())
      l -= aggregateAboveRange(paramAggregate, localAvlNode);
    return l;
  }

  public static <E extends Comparable> TreeMultiset<E> create()
  {
    return new TreeMultiset(Ordering.natural());
  }

  public static <E extends Comparable> TreeMultiset<E> create(Iterable<? extends E> paramIterable)
  {
    TreeMultiset localTreeMultiset = create();
    Iterables.addAll(localTreeMultiset, paramIterable);
    return localTreeMultiset;
  }

  public static <E> TreeMultiset<E> create(@Nullable Comparator<? super E> paramComparator)
  {
    if (paramComparator == null)
      return new TreeMultiset(Ordering.natural());
    return new TreeMultiset(paramComparator);
  }

  static int distinctElements(@Nullable AvlNode<?> paramAvlNode)
  {
    if (paramAvlNode == null)
      return 0;
    return paramAvlNode.distinctElements;
  }

  @Nullable
  private AvlNode<E> firstNode()
  {
    if ((AvlNode)this.rootReference.get() == null);
    Object localObject;
    do
    {
      return null;
      if (!this.range.hasLowerBound())
        break;
      localObject = this.range.getLowerEndpoint();
      localAvlNode = ((AvlNode)this.rootReference.get()).ceiling(comparator(), localObject);
    }
    while (localAvlNode == null);
    if ((this.range.getLowerBoundType() == BoundType.OPEN) && (comparator().compare(localObject, localAvlNode.getElement()) == 0));
    for (AvlNode localAvlNode = localAvlNode.succ; ; localAvlNode = this.header.succ)
    {
      if ((localAvlNode == this.header) || (!this.range.contains(localAvlNode.getElement())))
        localAvlNode = null;
      return localAvlNode;
    }
  }

  @Nullable
  private AvlNode<E> lastNode()
  {
    if ((AvlNode)this.rootReference.get() == null);
    Object localObject;
    do
    {
      return null;
      if (!this.range.hasUpperBound())
        break;
      localObject = this.range.getUpperEndpoint();
      localAvlNode = ((AvlNode)this.rootReference.get()).floor(comparator(), localObject);
    }
    while (localAvlNode == null);
    if ((this.range.getUpperBoundType() == BoundType.OPEN) && (comparator().compare(localObject, localAvlNode.getElement()) == 0));
    for (AvlNode localAvlNode = localAvlNode.pred; ; localAvlNode = this.header.pred)
    {
      if ((localAvlNode == this.header) || (!this.range.contains(localAvlNode.getElement())))
        localAvlNode = null;
      return localAvlNode;
    }
  }

  @GwtIncompatible("java.io.ObjectInputStream")
  private void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    paramObjectInputStream.defaultReadObject();
    Comparator localComparator = (Comparator)paramObjectInputStream.readObject();
    Serialization.getFieldSetter(AbstractSortedMultiset.class, "comparator").set(this, localComparator);
    Serialization.getFieldSetter(TreeMultiset.class, "range").set(this, GeneralRange.all(localComparator));
    Serialization.getFieldSetter(TreeMultiset.class, "rootReference").set(this, new Reference(null));
    AvlNode localAvlNode = new AvlNode(null, 1);
    Serialization.getFieldSetter(TreeMultiset.class, "header").set(this, localAvlNode);
    successor(localAvlNode, localAvlNode);
    Serialization.populateMultiset(this, paramObjectInputStream);
  }

  private static <T> void successor(AvlNode<T> paramAvlNode1, AvlNode<T> paramAvlNode2)
  {
    AvlNode.access$902(paramAvlNode1, paramAvlNode2);
    AvlNode.access$1102(paramAvlNode2, paramAvlNode1);
  }

  private static <T> void successor(AvlNode<T> paramAvlNode1, AvlNode<T> paramAvlNode2, AvlNode<T> paramAvlNode3)
  {
    successor(paramAvlNode1, paramAvlNode2);
    successor(paramAvlNode2, paramAvlNode3);
  }

  private Multiset.Entry<E> wrapEntry(final AvlNode<E> paramAvlNode)
  {
    return new Multisets.AbstractEntry()
    {
      public int getCount()
      {
        int i = paramAvlNode.getCount();
        if (i == 0)
          i = TreeMultiset.this.count(getElement());
        return i;
      }

      public E getElement()
      {
        return paramAvlNode.getElement();
      }
    };
  }

  @GwtIncompatible("java.io.ObjectOutputStream")
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeObject(elementSet().comparator());
    Serialization.writeMultiset(this, paramObjectOutputStream);
  }

  public int add(@Nullable E paramE, int paramInt)
  {
    if (paramInt >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      Preconditions.checkArgument(bool, "occurrences must be >= 0 but was %s", arrayOfObject);
      if (paramInt != 0)
        break;
      return count(paramE);
    }
    Preconditions.checkArgument(this.range.contains(paramE));
    AvlNode localAvlNode1 = (AvlNode)this.rootReference.get();
    if (localAvlNode1 == null)
    {
      comparator().compare(paramE, paramE);
      AvlNode localAvlNode3 = new AvlNode(paramE, paramInt);
      successor(this.header, localAvlNode3, this.header);
      this.rootReference.checkAndSet(localAvlNode1, localAvlNode3);
      return 0;
    }
    int[] arrayOfInt = new int[1];
    AvlNode localAvlNode2 = localAvlNode1.add(comparator(), paramE, paramInt, arrayOfInt);
    this.rootReference.checkAndSet(localAvlNode1, localAvlNode2);
    return arrayOfInt[0];
  }

  public int count(@Nullable Object paramObject)
  {
    try
    {
      AvlNode localAvlNode = (AvlNode)this.rootReference.get();
      if (this.range.contains(paramObject))
      {
        if (localAvlNode == null)
          return 0;
        int i = localAvlNode.count(comparator(), paramObject);
        return i;
      }
    }
    catch (ClassCastException localClassCastException)
    {
      return 0;
    }
    catch (NullPointerException localNullPointerException)
    {
    }
    return 0;
  }

  Iterator<Multiset.Entry<E>> descendingEntryIterator()
  {
    return new Iterator()
    {
      TreeMultiset.AvlNode<E> current = TreeMultiset.this.lastNode();
      Multiset.Entry<E> prevEntry = null;

      public boolean hasNext()
      {
        if (this.current == null)
          return false;
        if (TreeMultiset.this.range.tooLow(this.current.getElement()))
        {
          this.current = null;
          return false;
        }
        return true;
      }

      public Multiset.Entry<E> next()
      {
        if (!hasNext())
          throw new NoSuchElementException();
        Multiset.Entry localEntry = TreeMultiset.this.wrapEntry(this.current);
        this.prevEntry = localEntry;
        if (TreeMultiset.AvlNode.access$1100(this.current) == TreeMultiset.this.header)
        {
          this.current = null;
          return localEntry;
        }
        this.current = TreeMultiset.AvlNode.access$1100(this.current);
        return localEntry;
      }

      public void remove()
      {
        if (this.prevEntry != null);
        for (boolean bool = true; ; bool = false)
        {
          Preconditions.checkState(bool);
          TreeMultiset.this.setCount(this.prevEntry.getElement(), 0);
          this.prevEntry = null;
          return;
        }
      }
    };
  }

  int distinctElements()
  {
    return Ints.saturatedCast(aggregateForEntries(Aggregate.DISTINCT));
  }

  Iterator<Multiset.Entry<E>> entryIterator()
  {
    return new Iterator()
    {
      TreeMultiset.AvlNode<E> current = TreeMultiset.this.firstNode();
      Multiset.Entry<E> prevEntry;

      public boolean hasNext()
      {
        if (this.current == null)
          return false;
        if (TreeMultiset.this.range.tooHigh(this.current.getElement()))
        {
          this.current = null;
          return false;
        }
        return true;
      }

      public Multiset.Entry<E> next()
      {
        if (!hasNext())
          throw new NoSuchElementException();
        Multiset.Entry localEntry = TreeMultiset.this.wrapEntry(this.current);
        this.prevEntry = localEntry;
        if (TreeMultiset.AvlNode.access$900(this.current) == TreeMultiset.this.header)
        {
          this.current = null;
          return localEntry;
        }
        this.current = TreeMultiset.AvlNode.access$900(this.current);
        return localEntry;
      }

      public void remove()
      {
        if (this.prevEntry != null);
        for (boolean bool = true; ; bool = false)
        {
          Preconditions.checkState(bool);
          TreeMultiset.this.setCount(this.prevEntry.getElement(), 0);
          this.prevEntry = null;
          return;
        }
      }
    };
  }

  public SortedMultiset<E> headMultiset(@Nullable E paramE, BoundType paramBoundType)
  {
    return new TreeMultiset(this.rootReference, this.range.intersect(GeneralRange.upTo(comparator(), paramE, paramBoundType)), this.header);
  }

  public int remove(@Nullable Object paramObject, int paramInt)
  {
    boolean bool1;
    int i;
    if (paramInt >= 0)
    {
      bool1 = true;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      Preconditions.checkArgument(bool1, "occurrences must be >= 0 but was %s", arrayOfObject);
      if (paramInt != 0)
        break label48;
      i = count(paramObject);
    }
    while (true)
    {
      return i;
      bool1 = false;
      break;
      label48: AvlNode localAvlNode1 = (AvlNode)this.rootReference.get();
      int[] arrayOfInt = new int[1];
      try
      {
        boolean bool2 = this.range.contains(paramObject);
        i = 0;
        if (bool2)
        {
          i = 0;
          if (localAvlNode1 != null)
          {
            AvlNode localAvlNode2 = localAvlNode1.remove(comparator(), paramObject, paramInt, arrayOfInt);
            this.rootReference.checkAndSet(localAvlNode1, localAvlNode2);
            return arrayOfInt[0];
          }
        }
      }
      catch (ClassCastException localClassCastException)
      {
        return 0;
      }
      catch (NullPointerException localNullPointerException)
      {
      }
    }
    return 0;
  }

  public int setCount(@Nullable E paramE, int paramInt)
  {
    boolean bool1 = true;
    boolean bool2;
    if (paramInt >= 0)
    {
      bool2 = bool1;
      Preconditions.checkArgument(bool2);
      if (this.range.contains(paramE))
        break label46;
      if (paramInt != 0)
        break label41;
      label29: Preconditions.checkArgument(bool1);
    }
    label41: label46: AvlNode localAvlNode1;
    do
    {
      return 0;
      bool2 = false;
      break;
      bool1 = false;
      break label29;
      localAvlNode1 = (AvlNode)this.rootReference.get();
      if (localAvlNode1 != null)
        break label76;
    }
    while (paramInt <= 0);
    add(paramE, paramInt);
    return 0;
    label76: int[] arrayOfInt = new int[bool1];
    AvlNode localAvlNode2 = localAvlNode1.setCount(comparator(), paramE, paramInt, arrayOfInt);
    this.rootReference.checkAndSet(localAvlNode1, localAvlNode2);
    return arrayOfInt[0];
  }

  public boolean setCount(@Nullable E paramE, int paramInt1, int paramInt2)
  {
    boolean bool1;
    boolean bool2;
    label19: AvlNode localAvlNode1;
    if (paramInt2 >= 0)
    {
      bool1 = true;
      Preconditions.checkArgument(bool1);
      if (paramInt1 < 0)
        break label75;
      bool2 = true;
      Preconditions.checkArgument(bool2);
      Preconditions.checkArgument(this.range.contains(paramE));
      localAvlNode1 = (AvlNode)this.rootReference.get();
      if (localAvlNode1 != null)
        break label83;
      if (paramInt1 != 0)
        break label81;
      if (paramInt2 > 0)
        add(paramE, paramInt2);
    }
    label75: label81: label83: int[] arrayOfInt;
    do
    {
      return true;
      bool1 = false;
      break;
      bool2 = false;
      break label19;
      return false;
      arrayOfInt = new int[1];
      AvlNode localAvlNode2 = localAvlNode1.setCount(comparator(), paramE, paramInt1, paramInt2, arrayOfInt);
      this.rootReference.checkAndSet(localAvlNode1, localAvlNode2);
    }
    while (arrayOfInt[0] == paramInt1);
    return false;
  }

  public int size()
  {
    return Ints.saturatedCast(aggregateForEntries(Aggregate.SIZE));
  }

  public SortedMultiset<E> tailMultiset(@Nullable E paramE, BoundType paramBoundType)
  {
    return new TreeMultiset(this.rootReference, this.range.intersect(GeneralRange.downTo(comparator(), paramE, paramBoundType)), this.header);
  }

  private static abstract enum Aggregate
  {
    static
    {
      // Byte code:
      //   0: new 14	com/google/common/collect/TreeMultiset$Aggregate$1
      //   3: dup
      //   4: ldc 15
      //   6: iconst_0
      //   7: invokespecial 19	com/google/common/collect/TreeMultiset$Aggregate$1:<init>	(Ljava/lang/String;I)V
      //   10: putstatic 21	com/google/common/collect/TreeMultiset$Aggregate:SIZE	Lcom/google/common/collect/TreeMultiset$Aggregate;
      //   13: new 23	com/google/common/collect/TreeMultiset$Aggregate$2
      //   16: dup
      //   17: ldc 24
      //   19: iconst_1
      //   20: invokespecial 25	com/google/common/collect/TreeMultiset$Aggregate$2:<init>	(Ljava/lang/String;I)V
      //   23: putstatic 27	com/google/common/collect/TreeMultiset$Aggregate:DISTINCT	Lcom/google/common/collect/TreeMultiset$Aggregate;
      //   26: iconst_2
      //   27: anewarray 2	com/google/common/collect/TreeMultiset$Aggregate
      //   30: astore_0
      //   31: aload_0
      //   32: iconst_0
      //   33: getstatic 21	com/google/common/collect/TreeMultiset$Aggregate:SIZE	Lcom/google/common/collect/TreeMultiset$Aggregate;
      //   36: aastore
      //   37: aload_0
      //   38: iconst_1
      //   39: getstatic 27	com/google/common/collect/TreeMultiset$Aggregate:DISTINCT	Lcom/google/common/collect/TreeMultiset$Aggregate;
      //   42: aastore
      //   43: aload_0
      //   44: putstatic 29	com/google/common/collect/TreeMultiset$Aggregate:$VALUES	[Lcom/google/common/collect/TreeMultiset$Aggregate;
      //   47: return
    }

    abstract int nodeAggregate(TreeMultiset.AvlNode<?> paramAvlNode);

    abstract long treeAggregate(@Nullable TreeMultiset.AvlNode<?> paramAvlNode);
  }

  private static final class AvlNode<E> extends Multisets.AbstractEntry<E>
  {
    private int distinctElements;

    @Nullable
    private final E elem;
    private int elemCount;
    private int height;
    private AvlNode<E> left;
    private AvlNode<E> pred;
    private AvlNode<E> right;
    private AvlNode<E> succ;
    private long totalCount;

    AvlNode(@Nullable E paramE, int paramInt)
    {
      if (paramInt > 0);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool);
        this.elem = paramE;
        this.elemCount = paramInt;
        this.totalCount = paramInt;
        this.distinctElements = 1;
        this.height = 1;
        this.left = null;
        this.right = null;
        return;
      }
    }

    private AvlNode<E> addLeftChild(E paramE, int paramInt)
    {
      this.left = new AvlNode(paramE, paramInt);
      TreeMultiset.successor(this.pred, this.left, this);
      this.height = Math.max(2, this.height);
      this.distinctElements = (1 + this.distinctElements);
      this.totalCount += paramInt;
      return this;
    }

    private AvlNode<E> addRightChild(E paramE, int paramInt)
    {
      this.right = new AvlNode(paramE, paramInt);
      TreeMultiset.successor(this, this.right, this.succ);
      this.height = Math.max(2, this.height);
      this.distinctElements = (1 + this.distinctElements);
      this.totalCount += paramInt;
      return this;
    }

    private int balanceFactor()
    {
      return height(this.left) - height(this.right);
    }

    @Nullable
    private AvlNode<E> ceiling(Comparator<? super E> paramComparator, E paramE)
    {
      int i = paramComparator.compare(paramE, this.elem);
      if (i < 0)
        if (this.left != null);
      while (i == 0)
      {
        return this;
        return (AvlNode)Objects.firstNonNull(this.left.ceiling(paramComparator, paramE), this);
      }
      if (this.right == null);
      for (Object localObject = null; ; localObject = this.right.ceiling(paramComparator, paramE))
        return localObject;
    }

    private AvlNode<E> deleteMe()
    {
      int i = this.elemCount;
      this.elemCount = 0;
      TreeMultiset.successor(this.pred, this.succ);
      if (this.left == null)
        return this.right;
      if (this.right == null)
        return this.left;
      if (this.left.height >= this.right.height)
      {
        AvlNode localAvlNode2 = this.pred;
        localAvlNode2.left = this.left.removeMax(localAvlNode2);
        localAvlNode2.right = this.right;
        localAvlNode2.distinctElements = (-1 + this.distinctElements);
        this.totalCount -= i;
        return localAvlNode2.rebalance();
      }
      AvlNode localAvlNode1 = this.succ;
      localAvlNode1.right = this.right.removeMin(localAvlNode1);
      localAvlNode1.left = this.left;
      localAvlNode1.distinctElements = (-1 + this.distinctElements);
      this.totalCount -= i;
      return localAvlNode1.rebalance();
    }

    @Nullable
    private AvlNode<E> floor(Comparator<? super E> paramComparator, E paramE)
    {
      int i = paramComparator.compare(paramE, this.elem);
      if (i > 0)
        if (this.right != null);
      while (i == 0)
      {
        return this;
        return (AvlNode)Objects.firstNonNull(this.right.floor(paramComparator, paramE), this);
      }
      if (this.left == null);
      for (Object localObject = null; ; localObject = this.left.floor(paramComparator, paramE))
        return localObject;
    }

    private static int height(@Nullable AvlNode<?> paramAvlNode)
    {
      if (paramAvlNode == null)
        return 0;
      return paramAvlNode.height;
    }

    private AvlNode<E> rebalance()
    {
      switch (balanceFactor())
      {
      default:
        recomputeHeight();
        return this;
      case -2:
        if (this.right.balanceFactor() > 0)
          this.right = this.right.rotateRight();
        return rotateLeft();
      case 2:
      }
      if (this.left.balanceFactor() < 0)
        this.left = this.left.rotateLeft();
      return rotateRight();
    }

    private void recompute()
    {
      recomputeMultiset();
      recomputeHeight();
    }

    private void recomputeHeight()
    {
      this.height = (1 + Math.max(height(this.left), height(this.right)));
    }

    private void recomputeMultiset()
    {
      this.distinctElements = (1 + TreeMultiset.distinctElements(this.left) + TreeMultiset.distinctElements(this.right));
      this.totalCount = (this.elemCount + totalCount(this.left) + totalCount(this.right));
    }

    private AvlNode<E> removeMax(AvlNode<E> paramAvlNode)
    {
      if (this.right == null)
        return this.left;
      this.right = this.right.removeMax(paramAvlNode);
      this.distinctElements = (-1 + this.distinctElements);
      this.totalCount -= paramAvlNode.elemCount;
      return rebalance();
    }

    private AvlNode<E> removeMin(AvlNode<E> paramAvlNode)
    {
      if (this.left == null)
        return this.right;
      this.left = this.left.removeMin(paramAvlNode);
      this.distinctElements = (-1 + this.distinctElements);
      this.totalCount -= paramAvlNode.elemCount;
      return rebalance();
    }

    private AvlNode<E> rotateLeft()
    {
      if (this.right != null);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkState(bool);
        AvlNode localAvlNode = this.right;
        this.right = localAvlNode.left;
        localAvlNode.left = this;
        localAvlNode.totalCount = this.totalCount;
        localAvlNode.distinctElements = this.distinctElements;
        recompute();
        localAvlNode.recomputeHeight();
        return localAvlNode;
      }
    }

    private AvlNode<E> rotateRight()
    {
      if (this.left != null);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkState(bool);
        AvlNode localAvlNode = this.left;
        this.left = localAvlNode.right;
        localAvlNode.right = this;
        localAvlNode.totalCount = this.totalCount;
        localAvlNode.distinctElements = this.distinctElements;
        recompute();
        localAvlNode.recomputeHeight();
        return localAvlNode;
      }
    }

    private static long totalCount(@Nullable AvlNode<?> paramAvlNode)
    {
      if (paramAvlNode == null)
        return 0L;
      return paramAvlNode.totalCount;
    }

    AvlNode<E> add(Comparator<? super E> paramComparator, @Nullable E paramE, int paramInt, int[] paramArrayOfInt)
    {
      int i = paramComparator.compare(paramE, this.elem);
      AvlNode localAvlNode2;
      if (i < 0)
      {
        localAvlNode2 = this.left;
        if (localAvlNode2 == null)
        {
          paramArrayOfInt[0] = 0;
          this = addLeftChild(paramE, paramInt);
        }
      }
      int j;
      do
      {
        int k;
        do
        {
          return this;
          k = localAvlNode2.height;
          this.left = localAvlNode2.add(paramComparator, paramE, paramInt, paramArrayOfInt);
          if (paramArrayOfInt[0] == 0)
            this.distinctElements = (1 + this.distinctElements);
          this.totalCount += paramInt;
        }
        while (this.left.height == k);
        return rebalance();
        if (i <= 0)
          break;
        AvlNode localAvlNode1 = this.right;
        if (localAvlNode1 == null)
        {
          paramArrayOfInt[0] = 0;
          return addRightChild(paramE, paramInt);
        }
        j = localAvlNode1.height;
        this.right = localAvlNode1.add(paramComparator, paramE, paramInt, paramArrayOfInt);
        if (paramArrayOfInt[0] == 0)
          this.distinctElements = (1 + this.distinctElements);
        this.totalCount += paramInt;
      }
      while (this.right.height == j);
      return rebalance();
      paramArrayOfInt[0] = this.elemCount;
      boolean bool1 = this.elemCount + paramInt < 2147483647L;
      boolean bool2 = false;
      if (!bool1)
        bool2 = true;
      Preconditions.checkArgument(bool2);
      this.elemCount = (paramInt + this.elemCount);
      this.totalCount += paramInt;
      return this;
    }

    public int count(Comparator<? super E> paramComparator, E paramE)
    {
      int i = paramComparator.compare(paramE, this.elem);
      if (i < 0)
        if (this.left != null);
      do
      {
        return 0;
        return this.left.count(paramComparator, paramE);
        if (i <= 0)
          break;
      }
      while (this.right == null);
      return this.right.count(paramComparator, paramE);
      return this.elemCount;
    }

    public int getCount()
    {
      return this.elemCount;
    }

    public E getElement()
    {
      return this.elem;
    }

    AvlNode<E> remove(Comparator<? super E> paramComparator, @Nullable E paramE, int paramInt, int[] paramArrayOfInt)
    {
      int i = paramComparator.compare(paramE, this.elem);
      if (i < 0)
      {
        AvlNode localAvlNode2 = this.left;
        if (localAvlNode2 == null)
          paramArrayOfInt[0] = 0;
        while (true)
        {
          return this;
          this.left = localAvlNode2.remove(paramComparator, paramE, paramInt, paramArrayOfInt);
          if (paramArrayOfInt[0] > 0)
          {
            if (paramInt < paramArrayOfInt[0])
              break label101;
            this.distinctElements = (-1 + this.distinctElements);
          }
          label101: for (this.totalCount -= paramArrayOfInt[0]; paramArrayOfInt[0] != 0; this.totalCount -= paramInt)
            return rebalance();
        }
      }
      if (i > 0)
      {
        AvlNode localAvlNode1 = this.right;
        if (localAvlNode1 == null)
        {
          paramArrayOfInt[0] = 0;
          return this;
        }
        this.right = localAvlNode1.remove(paramComparator, paramE, paramInt, paramArrayOfInt);
        if (paramArrayOfInt[0] > 0)
        {
          if (paramInt < paramArrayOfInt[0])
            break label196;
          this.distinctElements = (-1 + this.distinctElements);
        }
        label196: for (this.totalCount -= paramArrayOfInt[0]; ; this.totalCount -= paramInt)
          return rebalance();
      }
      paramArrayOfInt[0] = this.elemCount;
      if (paramInt >= this.elemCount)
        return deleteMe();
      this.elemCount -= paramInt;
      this.totalCount -= paramInt;
      return this;
    }

    AvlNode<E> setCount(Comparator<? super E> paramComparator, @Nullable E paramE, int paramInt1, int paramInt2, int[] paramArrayOfInt)
    {
      int i = paramComparator.compare(paramE, this.elem);
      AvlNode localAvlNode2;
      if (i < 0)
      {
        localAvlNode2 = this.left;
        if (localAvlNode2 == null)
        {
          paramArrayOfInt[0] = 0;
          if ((paramInt1 == 0) && (paramInt2 > 0))
            this = addLeftChild(paramE, paramInt2);
        }
      }
      label121: label252: 
      do
      {
        AvlNode localAvlNode1;
        do
        {
          return this;
          this.left = localAvlNode2.setCount(paramComparator, paramE, paramInt1, paramInt2, paramArrayOfInt);
          if (paramArrayOfInt[0] == paramInt1)
            if ((paramInt2 != 0) || (paramArrayOfInt[0] == 0))
              break label121;
          for (this.distinctElements = (-1 + this.distinctElements); ; this.distinctElements = (1 + this.distinctElements))
            do
            {
              this.totalCount += paramInt2 - paramArrayOfInt[0];
              return rebalance();
            }
            while ((paramInt2 <= 0) || (paramArrayOfInt[0] != 0));
          if (i <= 0)
            break label277;
          localAvlNode1 = this.right;
          if (localAvlNode1 != null)
            break;
          paramArrayOfInt[0] = 0;
        }
        while ((paramInt1 != 0) || (paramInt2 <= 0));
        return addRightChild(paramE, paramInt2);
        this.right = localAvlNode1.setCount(paramComparator, paramE, paramInt1, paramInt2, paramArrayOfInt);
        if (paramArrayOfInt[0] == paramInt1)
          if ((paramInt2 != 0) || (paramArrayOfInt[0] == 0))
            break label252;
        for (this.distinctElements = (-1 + this.distinctElements); ; this.distinctElements = (1 + this.distinctElements))
          do
          {
            this.totalCount += paramInt2 - paramArrayOfInt[0];
            return rebalance();
          }
          while ((paramInt2 <= 0) || (paramArrayOfInt[0] != 0));
        paramArrayOfInt[0] = this.elemCount;
      }
      while (paramInt1 != this.elemCount);
      label277: if (paramInt2 == 0)
        return deleteMe();
      this.totalCount += paramInt2 - this.elemCount;
      this.elemCount = paramInt2;
      return this;
    }

    AvlNode<E> setCount(Comparator<? super E> paramComparator, @Nullable E paramE, int paramInt, int[] paramArrayOfInt)
    {
      int i = paramComparator.compare(paramE, this.elem);
      AvlNode localAvlNode2;
      if (i < 0)
      {
        localAvlNode2 = this.left;
        if (localAvlNode2 == null)
        {
          paramArrayOfInt[0] = 0;
          if (paramInt > 0)
            this = addLeftChild(paramE, paramInt);
        }
      }
      AvlNode localAvlNode1;
      do
      {
        return this;
        this.left = localAvlNode2.setCount(paramComparator, paramE, paramInt, paramArrayOfInt);
        if ((paramInt == 0) && (paramArrayOfInt[0] != 0));
        for (this.distinctElements = (-1 + this.distinctElements); ; this.distinctElements = (1 + this.distinctElements))
          do
          {
            this.totalCount += paramInt - paramArrayOfInt[0];
            return rebalance();
          }
          while ((paramInt <= 0) || (paramArrayOfInt[0] != 0));
        if (i <= 0)
          break label239;
        localAvlNode1 = this.right;
        if (localAvlNode1 != null)
          break;
        paramArrayOfInt[0] = 0;
      }
      while (paramInt <= 0);
      return addRightChild(paramE, paramInt);
      this.right = localAvlNode1.setCount(paramComparator, paramE, paramInt, paramArrayOfInt);
      if ((paramInt == 0) && (paramArrayOfInt[0] != 0));
      for (this.distinctElements = (-1 + this.distinctElements); ; this.distinctElements = (1 + this.distinctElements))
        do
        {
          this.totalCount += paramInt - paramArrayOfInt[0];
          return rebalance();
        }
        while ((paramInt <= 0) || (paramArrayOfInt[0] != 0));
      label239: paramArrayOfInt[0] = this.elemCount;
      if (paramInt == 0)
        return deleteMe();
      this.totalCount += paramInt - this.elemCount;
      this.elemCount = paramInt;
      return this;
    }

    public String toString()
    {
      return Multisets.immutableEntry(getElement(), getCount()).toString();
    }
  }

  private static final class Reference<T>
  {

    @Nullable
    private T value;

    public void checkAndSet(@Nullable T paramT1, T paramT2)
    {
      if (this.value != paramT1)
        throw new ConcurrentModificationException();
      this.value = paramT2;
    }

    @Nullable
    public T get()
    {
      return this.value;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.TreeMultiset
 * JD-Core Version:    0.6.2
 */