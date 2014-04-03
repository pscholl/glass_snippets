package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@GwtCompatible
abstract class RegularImmutableTable<R, C, V> extends ImmutableTable<R, C, V>
{
  private transient ImmutableSet<Table.Cell<R, C, V>> cellSet;
  private transient ImmutableCollection<V> values;

  static final <R, C, V> RegularImmutableTable<R, C, V> forCells(Iterable<Table.Cell<R, C, V>> paramIterable)
  {
    return forCellsInternal(paramIterable, null, null);
  }

  static final <R, C, V> RegularImmutableTable<R, C, V> forCells(List<Table.Cell<R, C, V>> paramList, @Nullable Comparator<? super R> paramComparator, @Nullable final Comparator<? super C> paramComparator1)
  {
    Preconditions.checkNotNull(paramList);
    if ((paramComparator != null) || (paramComparator1 != null))
      Collections.sort(paramList, new Comparator()
      {
        public int compare(Table.Cell<R, C, V> paramAnonymousCell1, Table.Cell<R, C, V> paramAnonymousCell2)
        {
          if (this.val$rowComparator == null);
          for (int i = 0; i != 0; i = this.val$rowComparator.compare(paramAnonymousCell1.getRowKey(), paramAnonymousCell2.getRowKey()))
            return i;
          Comparator localComparator = paramComparator1;
          int j = 0;
          if (localComparator == null);
          while (true)
          {
            return j;
            j = paramComparator1.compare(paramAnonymousCell1.getColumnKey(), paramAnonymousCell2.getColumnKey());
          }
        }
      });
    return forCellsInternal(paramList, paramComparator, paramComparator1);
  }

  private static final <R, C, V> RegularImmutableTable<R, C, V> forCellsInternal(Iterable<Table.Cell<R, C, V>> paramIterable, @Nullable Comparator<? super R> paramComparator, @Nullable Comparator<? super C> paramComparator1)
  {
    ImmutableSet.Builder localBuilder1 = ImmutableSet.builder();
    ImmutableSet.Builder localBuilder2 = ImmutableSet.builder();
    ImmutableList localImmutableList = ImmutableList.copyOf(paramIterable);
    Iterator localIterator = localImmutableList.iterator();
    while (localIterator.hasNext())
    {
      Table.Cell localCell = (Table.Cell)localIterator.next();
      localBuilder1.add(localCell.getRowKey());
      localBuilder2.add(localCell.getColumnKey());
    }
    ImmutableSet localImmutableSet1 = localBuilder1.build();
    if (paramComparator != null)
    {
      ArrayList localArrayList2 = Lists.newArrayList(localImmutableSet1);
      Collections.sort(localArrayList2, paramComparator);
      localImmutableSet1 = ImmutableSet.copyOf(localArrayList2);
    }
    ImmutableSet localImmutableSet2 = localBuilder2.build();
    if (paramComparator1 != null)
    {
      ArrayList localArrayList1 = Lists.newArrayList(localImmutableSet2);
      Collections.sort(localArrayList1, paramComparator1);
      localImmutableSet2 = ImmutableSet.copyOf(localArrayList1);
    }
    if (localImmutableList.size() > localImmutableSet1.size() * localImmutableSet2.size() / 2)
      return new DenseImmutableTable(localImmutableList, localImmutableSet1, localImmutableSet2);
    return new SparseImmutableTable(localImmutableList, localImmutableSet1, localImmutableSet2);
  }

  public final ImmutableSet<Table.Cell<R, C, V>> cellSet()
  {
    ImmutableSet localImmutableSet = this.cellSet;
    if (localImmutableSet == null)
    {
      localImmutableSet = createCellSet();
      this.cellSet = localImmutableSet;
    }
    return localImmutableSet;
  }

  public final boolean containsValue(@Nullable Object paramObject)
  {
    return values().contains(paramObject);
  }

  abstract ImmutableSet<Table.Cell<R, C, V>> createCellSet();

  abstract ImmutableCollection<V> createValues();

  public final boolean isEmpty()
  {
    return false;
  }

  public abstract int size();

  public final ImmutableCollection<V> values()
  {
    ImmutableCollection localImmutableCollection = this.values;
    if (localImmutableCollection == null)
    {
      localImmutableCollection = createValues();
      this.values = localImmutableCollection;
    }
    return localImmutableCollection;
  }

  abstract class CellSet extends ImmutableSet<Table.Cell<R, C, V>>
  {
    CellSet()
    {
    }

    public boolean contains(@Nullable Object paramObject)
    {
      boolean bool1 = paramObject instanceof Table.Cell;
      boolean bool2 = false;
      if (bool1)
      {
        Table.Cell localCell = (Table.Cell)paramObject;
        Object localObject = RegularImmutableTable.this.get(localCell.getRowKey(), localCell.getColumnKey());
        bool2 = false;
        if (localObject != null)
        {
          boolean bool3 = localObject.equals(localCell.getValue());
          bool2 = false;
          if (bool3)
            bool2 = true;
        }
      }
      return bool2;
    }

    boolean isPartialView()
    {
      return false;
    }

    public int size()
    {
      return RegularImmutableTable.this.size();
    }
  }

  @VisibleForTesting
  @Immutable
  static final class DenseImmutableTable<R, C, V> extends RegularImmutableTable<R, C, V>
  {
    private final int[] columnCounts;
    private final ImmutableMap<C, Integer> columnKeyToIndex;
    private final ImmutableMap<C, Map<R, V>> columnMap;
    private final int[] iterationOrderColumn;
    private final int[] iterationOrderRow;
    private final int[] rowCounts;
    private final ImmutableMap<R, Integer> rowKeyToIndex;
    private final ImmutableMap<R, Map<C, V>> rowMap;
    private final V[][] values;

    DenseImmutableTable(ImmutableList<Table.Cell<R, C, V>> paramImmutableList, ImmutableSet<R> paramImmutableSet, ImmutableSet<C> paramImmutableSet1)
    {
      super();
      this.values = ((Object[][])Array.newInstance(Object.class, new int[] { paramImmutableSet.size(), paramImmutableSet1.size() }));
      this.rowKeyToIndex = makeIndex(paramImmutableSet);
      this.columnKeyToIndex = makeIndex(paramImmutableSet1);
      this.rowCounts = new int[this.rowKeyToIndex.size()];
      this.columnCounts = new int[this.columnKeyToIndex.size()];
      int[] arrayOfInt1 = new int[paramImmutableList.size()];
      int[] arrayOfInt2 = new int[paramImmutableList.size()];
      int i = 0;
      if (i < paramImmutableList.size())
      {
        Table.Cell localCell = (Table.Cell)paramImmutableList.get(i);
        Object localObject1 = localCell.getRowKey();
        Object localObject2 = localCell.getColumnKey();
        int j = ((Integer)this.rowKeyToIndex.get(localObject1)).intValue();
        int k = ((Integer)this.columnKeyToIndex.get(localObject2)).intValue();
        if (this.values[j][k] == null);
        for (boolean bool = true; ; bool = false)
        {
          Preconditions.checkArgument(bool, "duplicate key: (%s, %s)", new Object[] { localObject1, localObject2 });
          this.values[j][k] = localCell.getValue();
          int[] arrayOfInt3 = this.rowCounts;
          arrayOfInt3[j] = (1 + arrayOfInt3[j]);
          int[] arrayOfInt4 = this.columnCounts;
          arrayOfInt4[k] = (1 + arrayOfInt4[k]);
          arrayOfInt1[i] = j;
          arrayOfInt2[i] = k;
          i++;
          break;
        }
      }
      this.iterationOrderRow = arrayOfInt1;
      this.iterationOrderColumn = arrayOfInt2;
      this.rowMap = new RowMap(null);
      this.columnMap = new ColumnMap(null);
    }

    private static <E> ImmutableMap<E, Integer> makeIndex(ImmutableSet<E> paramImmutableSet)
    {
      ImmutableMap.Builder localBuilder = ImmutableMap.builder();
      int i = 0;
      Iterator localIterator = paramImmutableSet.iterator();
      while (localIterator.hasNext())
      {
        localBuilder.put(localIterator.next(), Integer.valueOf(i));
        i++;
      }
      return localBuilder.build();
    }

    public ImmutableMap<R, V> column(C paramC)
    {
      Integer localInteger = (Integer)this.columnKeyToIndex.get(Preconditions.checkNotNull(paramC));
      if (localInteger == null)
        return ImmutableMap.of();
      return new Column(localInteger.intValue());
    }

    public ImmutableSet<C> columnKeySet()
    {
      return this.columnKeyToIndex.keySet();
    }

    public ImmutableMap<C, Map<R, V>> columnMap()
    {
      return this.columnMap;
    }

    public boolean contains(@Nullable Object paramObject1, @Nullable Object paramObject2)
    {
      return get(paramObject1, paramObject2) != null;
    }

    public boolean containsColumn(@Nullable Object paramObject)
    {
      return this.columnKeyToIndex.containsKey(paramObject);
    }

    public boolean containsRow(@Nullable Object paramObject)
    {
      return this.rowKeyToIndex.containsKey(paramObject);
    }

    ImmutableSet<Table.Cell<R, C, V>> createCellSet()
    {
      return new DenseCellSet();
    }

    ImmutableCollection<V> createValues()
    {
      return new ImmutableList()
      {
        public V get(int paramAnonymousInt)
        {
          return RegularImmutableTable.DenseImmutableTable.this.values[RegularImmutableTable.DenseImmutableTable.this.iterationOrderRow[paramAnonymousInt]][RegularImmutableTable.DenseImmutableTable.this.iterationOrderColumn[paramAnonymousInt]];
        }

        boolean isPartialView()
        {
          return true;
        }

        public int size()
        {
          return RegularImmutableTable.DenseImmutableTable.this.iterationOrderRow.length;
        }
      };
    }

    public V get(@Nullable Object paramObject1, @Nullable Object paramObject2)
    {
      Integer localInteger1 = (Integer)this.rowKeyToIndex.get(paramObject1);
      Integer localInteger2 = (Integer)this.columnKeyToIndex.get(paramObject2);
      if ((localInteger1 == null) || (localInteger2 == null))
        return null;
      return this.values[localInteger1.intValue()][localInteger2.intValue()];
    }

    public ImmutableMap<C, V> row(R paramR)
    {
      Preconditions.checkNotNull(paramR);
      Integer localInteger = (Integer)this.rowKeyToIndex.get(paramR);
      if (localInteger == null)
        return ImmutableMap.of();
      return new Row(localInteger.intValue());
    }

    public ImmutableSet<R> rowKeySet()
    {
      return this.rowKeyToIndex.keySet();
    }

    public ImmutableMap<R, Map<C, V>> rowMap()
    {
      return this.rowMap;
    }

    public int size()
    {
      return this.iterationOrderRow.length;
    }

    private final class Column extends RegularImmutableTable.ImmutableArrayMap<R, V>
    {
      private final int columnIndex;

      Column(int arg2)
      {
        super();
        this.columnIndex = i;
      }

      V getValue(int paramInt)
      {
        return RegularImmutableTable.DenseImmutableTable.this.values[paramInt][this.columnIndex];
      }

      boolean isPartialView()
      {
        return true;
      }

      ImmutableMap<R, Integer> keyToIndex()
      {
        return RegularImmutableTable.DenseImmutableTable.this.rowKeyToIndex;
      }
    }

    private final class ColumnMap extends RegularImmutableTable.ImmutableArrayMap<C, Map<R, V>>
    {
      private ColumnMap()
      {
        super();
      }

      Map<R, V> getValue(int paramInt)
      {
        return new RegularImmutableTable.DenseImmutableTable.Column(RegularImmutableTable.DenseImmutableTable.this, paramInt);
      }

      boolean isPartialView()
      {
        return false;
      }

      ImmutableMap<C, Integer> keyToIndex()
      {
        return RegularImmutableTable.DenseImmutableTable.this.columnKeyToIndex;
      }
    }

    class DenseCellSet extends RegularImmutableTable.CellSet
    {
      DenseCellSet()
      {
        super();
      }

      ImmutableList<Table.Cell<R, C, V>> createAsList()
      {
        return new ImmutableAsList()
        {
          ImmutableCollection<Table.Cell<R, C, V>> delegateCollection()
          {
            return RegularImmutableTable.DenseImmutableTable.DenseCellSet.this;
          }

          public Table.Cell<R, C, V> get(int paramAnonymousInt)
          {
            int i = RegularImmutableTable.DenseImmutableTable.this.iterationOrderRow[paramAnonymousInt];
            int j = RegularImmutableTable.DenseImmutableTable.this.iterationOrderColumn[paramAnonymousInt];
            return Tables.immutableCell(RegularImmutableTable.DenseImmutableTable.this.rowKeySet().asList().get(i), RegularImmutableTable.DenseImmutableTable.this.columnKeySet().asList().get(j), RegularImmutableTable.DenseImmutableTable.this.values[i][j]);
          }
        };
      }

      public UnmodifiableIterator<Table.Cell<R, C, V>> iterator()
      {
        return asList().iterator();
      }
    }

    private final class Row extends RegularImmutableTable.ImmutableArrayMap<C, V>
    {
      private final int rowIndex;

      Row(int arg2)
      {
        super();
        this.rowIndex = i;
      }

      V getValue(int paramInt)
      {
        return RegularImmutableTable.DenseImmutableTable.this.values[this.rowIndex][paramInt];
      }

      boolean isPartialView()
      {
        return true;
      }

      ImmutableMap<C, Integer> keyToIndex()
      {
        return RegularImmutableTable.DenseImmutableTable.this.columnKeyToIndex;
      }
    }

    private final class RowMap extends RegularImmutableTable.ImmutableArrayMap<R, Map<C, V>>
    {
      private RowMap()
      {
        super();
      }

      Map<C, V> getValue(int paramInt)
      {
        return new RegularImmutableTable.DenseImmutableTable.Row(RegularImmutableTable.DenseImmutableTable.this, paramInt);
      }

      boolean isPartialView()
      {
        return false;
      }

      ImmutableMap<R, Integer> keyToIndex()
      {
        return RegularImmutableTable.DenseImmutableTable.this.rowKeyToIndex;
      }
    }
  }

  private static abstract class ImmutableArrayMap<K, V> extends ImmutableMap<K, V>
  {
    private final int size;

    ImmutableArrayMap(int paramInt)
    {
      this.size = paramInt;
    }

    private boolean isFull()
    {
      return this.size == keyToIndex().size();
    }

    ImmutableSet<Map.Entry<K, V>> createEntrySet()
    {
      if (isFull())
        return new ImmutableMapEntrySet()
        {
          public UnmodifiableIterator<Map.Entry<K, V>> iterator()
          {
            return new AbstractIndexedListIterator(size())
            {
              protected Map.Entry<K, V> get(int paramAnonymous2Int)
              {
                return Maps.immutableEntry(RegularImmutableTable.ImmutableArrayMap.this.getKey(paramAnonymous2Int), RegularImmutableTable.ImmutableArrayMap.this.getValue(paramAnonymous2Int));
              }
            };
          }

          ImmutableMap<K, V> map()
          {
            return RegularImmutableTable.ImmutableArrayMap.this;
          }
        };
      return new ImmutableMapEntrySet()
      {
        public UnmodifiableIterator<Map.Entry<K, V>> iterator()
        {
          return new AbstractIterator()
          {
            private int index = -1;
            private final int maxIndex = RegularImmutableTable.ImmutableArrayMap.this.keyToIndex().size();

            protected Map.Entry<K, V> computeNext()
            {
              for (this.index = (1 + this.index); this.index < this.maxIndex; this.index = (1 + this.index))
              {
                Object localObject = RegularImmutableTable.ImmutableArrayMap.this.getValue(this.index);
                if (localObject != null)
                  return Maps.immutableEntry(RegularImmutableTable.ImmutableArrayMap.this.getKey(this.index), localObject);
              }
              return (Map.Entry)endOfData();
            }
          };
        }

        ImmutableMap<K, V> map()
        {
          return RegularImmutableTable.ImmutableArrayMap.this;
        }
      };
    }

    ImmutableSet<K> createKeySet()
    {
      if (isFull())
        return keyToIndex().keySet();
      return super.createKeySet();
    }

    public V get(@Nullable Object paramObject)
    {
      Integer localInteger = (Integer)keyToIndex().get(paramObject);
      if (localInteger == null)
        return null;
      return getValue(localInteger.intValue());
    }

    K getKey(int paramInt)
    {
      return keyToIndex().keySet().asList().get(paramInt);
    }

    @Nullable
    abstract V getValue(int paramInt);

    abstract ImmutableMap<K, Integer> keyToIndex();

    public int size()
    {
      return this.size;
    }
  }

  @VisibleForTesting
  @Immutable
  static final class SparseImmutableTable<R, C, V> extends RegularImmutableTable<R, C, V>
  {
    private final ImmutableMap<C, Map<R, V>> columnMap;
    private final int[] iterationOrderColumn;
    private final int[] iterationOrderRow;
    private final ImmutableMap<R, Map<C, V>> rowMap;

    SparseImmutableTable(ImmutableList<Table.Cell<R, C, V>> paramImmutableList, ImmutableSet<R> paramImmutableSet, ImmutableSet<C> paramImmutableSet1)
    {
      super();
      HashMap localHashMap = Maps.newHashMap();
      LinkedHashMap localLinkedHashMap1 = Maps.newLinkedHashMap();
      Iterator localIterator1 = paramImmutableSet.iterator();
      while (localIterator1.hasNext())
      {
        Object localObject5 = localIterator1.next();
        localHashMap.put(localObject5, Integer.valueOf(localLinkedHashMap1.size()));
        localLinkedHashMap1.put(localObject5, new LinkedHashMap());
      }
      LinkedHashMap localLinkedHashMap2 = Maps.newLinkedHashMap();
      Iterator localIterator2 = paramImmutableSet1.iterator();
      while (localIterator2.hasNext())
        localLinkedHashMap2.put(localIterator2.next(), new LinkedHashMap());
      int[] arrayOfInt1 = new int[paramImmutableList.size()];
      int[] arrayOfInt2 = new int[paramImmutableList.size()];
      for (int i = 0; i < paramImmutableList.size(); i++)
      {
        Table.Cell localCell = (Table.Cell)paramImmutableList.get(i);
        Object localObject1 = localCell.getRowKey();
        Object localObject2 = localCell.getColumnKey();
        Object localObject3 = localCell.getValue();
        arrayOfInt1[i] = ((Integer)localHashMap.get(localObject1)).intValue();
        Map localMap = (Map)localLinkedHashMap1.get(localObject1);
        arrayOfInt2[i] = localMap.size();
        Object localObject4 = localMap.put(localObject2, localObject3);
        if (localObject4 != null)
          throw new IllegalArgumentException("Duplicate value for row=" + localObject1 + ", column=" + localObject2 + ": " + localObject3 + ", " + localObject4);
        ((Map)localLinkedHashMap2.get(localObject2)).put(localObject1, localObject3);
      }
      this.iterationOrderRow = arrayOfInt1;
      this.iterationOrderColumn = arrayOfInt2;
      ImmutableMap.Builder localBuilder1 = ImmutableMap.builder();
      Iterator localIterator3 = localLinkedHashMap1.entrySet().iterator();
      while (localIterator3.hasNext())
      {
        Map.Entry localEntry2 = (Map.Entry)localIterator3.next();
        localBuilder1.put(localEntry2.getKey(), ImmutableMap.copyOf((Map)localEntry2.getValue()));
      }
      this.rowMap = localBuilder1.build();
      ImmutableMap.Builder localBuilder2 = ImmutableMap.builder();
      Iterator localIterator4 = localLinkedHashMap2.entrySet().iterator();
      while (localIterator4.hasNext())
      {
        Map.Entry localEntry1 = (Map.Entry)localIterator4.next();
        localBuilder2.put(localEntry1.getKey(), ImmutableMap.copyOf((Map)localEntry1.getValue()));
      }
      this.columnMap = localBuilder2.build();
    }

    public ImmutableMap<R, V> column(C paramC)
    {
      Preconditions.checkNotNull(paramC);
      return (ImmutableMap)Objects.firstNonNull((ImmutableMap)this.columnMap.get(paramC), ImmutableMap.of());
    }

    public ImmutableSet<C> columnKeySet()
    {
      return this.columnMap.keySet();
    }

    public ImmutableMap<C, Map<R, V>> columnMap()
    {
      return this.columnMap;
    }

    public boolean contains(@Nullable Object paramObject1, @Nullable Object paramObject2)
    {
      Map localMap = (Map)this.rowMap.get(paramObject1);
      return (localMap != null) && (localMap.containsKey(paramObject2));
    }

    public boolean containsColumn(@Nullable Object paramObject)
    {
      return this.columnMap.containsKey(paramObject);
    }

    public boolean containsRow(@Nullable Object paramObject)
    {
      return this.rowMap.containsKey(paramObject);
    }

    ImmutableSet<Table.Cell<R, C, V>> createCellSet()
    {
      return new SparseCellSet();
    }

    ImmutableCollection<V> createValues()
    {
      return new ImmutableList()
      {
        public V get(int paramAnonymousInt)
        {
          int i = RegularImmutableTable.SparseImmutableTable.this.iterationOrderRow[paramAnonymousInt];
          ImmutableMap localImmutableMap = (ImmutableMap)RegularImmutableTable.SparseImmutableTable.this.rowMap.values().asList().get(i);
          int j = RegularImmutableTable.SparseImmutableTable.this.iterationOrderColumn[paramAnonymousInt];
          return localImmutableMap.values().asList().get(j);
        }

        boolean isPartialView()
        {
          return true;
        }

        public int size()
        {
          return RegularImmutableTable.SparseImmutableTable.this.iterationOrderRow.length;
        }
      };
    }

    public V get(@Nullable Object paramObject1, @Nullable Object paramObject2)
    {
      Map localMap = (Map)this.rowMap.get(paramObject1);
      if (localMap == null)
        return null;
      return localMap.get(paramObject2);
    }

    public ImmutableMap<C, V> row(R paramR)
    {
      Preconditions.checkNotNull(paramR);
      return (ImmutableMap)Objects.firstNonNull((ImmutableMap)this.rowMap.get(paramR), ImmutableMap.of());
    }

    public ImmutableSet<R> rowKeySet()
    {
      return this.rowMap.keySet();
    }

    public ImmutableMap<R, Map<C, V>> rowMap()
    {
      return this.rowMap;
    }

    public int size()
    {
      return this.iterationOrderRow.length;
    }

    class SparseCellSet extends RegularImmutableTable.CellSet
    {
      SparseCellSet()
      {
        super();
      }

      ImmutableList<Table.Cell<R, C, V>> createAsList()
      {
        return new ImmutableAsList()
        {
          ImmutableCollection<Table.Cell<R, C, V>> delegateCollection()
          {
            return RegularImmutableTable.SparseImmutableTable.SparseCellSet.this;
          }

          public Table.Cell<R, C, V> get(int paramAnonymousInt)
          {
            int i = RegularImmutableTable.SparseImmutableTable.this.iterationOrderRow[paramAnonymousInt];
            Map.Entry localEntry1 = (Map.Entry)RegularImmutableTable.SparseImmutableTable.this.rowMap.entrySet().asList().get(i);
            ImmutableMap localImmutableMap = (ImmutableMap)localEntry1.getValue();
            int j = RegularImmutableTable.SparseImmutableTable.this.iterationOrderColumn[paramAnonymousInt];
            Map.Entry localEntry2 = (Map.Entry)localImmutableMap.entrySet().asList().get(j);
            return Tables.immutableCell(localEntry1.getKey(), localEntry2.getKey(), localEntry2.getValue());
          }
        };
      }

      public UnmodifiableIterator<Table.Cell<R, C, V>> iterator()
      {
        return asList().iterator();
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.RegularImmutableTable
 * JD-Core Version:    0.6.2
 */