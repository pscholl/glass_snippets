package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import javax.annotation.Nullable;

@GwtCompatible
public final class Tables
{
  private static final Function<? extends Map<?, ?>, ? extends Map<?, ?>> UNMODIFIABLE_WRAPPER = new Function()
  {
    public Map<Object, Object> apply(Map<Object, Object> paramAnonymousMap)
    {
      return Collections.unmodifiableMap(paramAnonymousMap);
    }
  };

  public static <R, C, V> Table.Cell<R, C, V> immutableCell(@Nullable R paramR, @Nullable C paramC, @Nullable V paramV)
  {
    return new ImmutableCell(paramR, paramC, paramV);
  }

  @Beta
  public static <R, C, V> Table<R, C, V> newCustomTable(Map<R, Map<C, V>> paramMap, Supplier<? extends Map<C, V>> paramSupplier)
  {
    Preconditions.checkArgument(paramMap.isEmpty());
    Preconditions.checkNotNull(paramSupplier);
    return new StandardTable(paramMap, paramSupplier);
  }

  @Beta
  public static <R, C, V1, V2> Table<R, C, V2> transformValues(Table<R, C, V1> paramTable, Function<? super V1, V2> paramFunction)
  {
    return new TransformedTable(paramTable, paramFunction);
  }

  public static <R, C, V> Table<C, R, V> transpose(Table<R, C, V> paramTable)
  {
    if ((paramTable instanceof TransposeTable))
      return ((TransposeTable)paramTable).original;
    return new TransposeTable(paramTable);
  }

  @Beta
  public static <R, C, V> RowSortedTable<R, C, V> unmodifiableRowSortedTable(RowSortedTable<R, ? extends C, ? extends V> paramRowSortedTable)
  {
    return new UnmodifiableRowSortedMap(paramRowSortedTable);
  }

  public static <R, C, V> Table<R, C, V> unmodifiableTable(Table<? extends R, ? extends C, ? extends V> paramTable)
  {
    return new UnmodifiableTable(paramTable);
  }

  private static <K, V> Function<Map<K, V>, Map<K, V>> unmodifiableWrapper()
  {
    return UNMODIFIABLE_WRAPPER;
  }

  static abstract class AbstractCell<R, C, V>
    implements Table.Cell<R, C, V>
  {
    public boolean equals(Object paramObject)
    {
      if (paramObject == this);
      Table.Cell localCell;
      do
      {
        return true;
        if (!(paramObject instanceof Table.Cell))
          break;
        localCell = (Table.Cell)paramObject;
      }
      while ((Objects.equal(getRowKey(), localCell.getRowKey())) && (Objects.equal(getColumnKey(), localCell.getColumnKey())) && (Objects.equal(getValue(), localCell.getValue())));
      return false;
      return false;
    }

    public int hashCode()
    {
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = getRowKey();
      arrayOfObject[1] = getColumnKey();
      arrayOfObject[2] = getValue();
      return Objects.hashCode(arrayOfObject);
    }

    public String toString()
    {
      return "(" + getRowKey() + "," + getColumnKey() + ")=" + getValue();
    }
  }

  static final class ImmutableCell<R, C, V> extends Tables.AbstractCell<R, C, V>
    implements Serializable
  {
    private static final long serialVersionUID;
    private final C columnKey;
    private final R rowKey;
    private final V value;

    ImmutableCell(@Nullable R paramR, @Nullable C paramC, @Nullable V paramV)
    {
      this.rowKey = paramR;
      this.columnKey = paramC;
      this.value = paramV;
    }

    public C getColumnKey()
    {
      return this.columnKey;
    }

    public R getRowKey()
    {
      return this.rowKey;
    }

    public V getValue()
    {
      return this.value;
    }
  }

  private static class TransformedTable<R, C, V1, V2>
    implements Table<R, C, V2>
  {
    TransformedTable<R, C, V1, V2>.CellSet cellSet;
    Map<C, Map<R, V2>> columnMap;
    final Table<R, C, V1> fromTable;
    final Function<? super V1, V2> function;
    Map<R, Map<C, V2>> rowMap;
    Collection<V2> values;

    TransformedTable(Table<R, C, V1> paramTable, Function<? super V1, V2> paramFunction)
    {
      this.fromTable = ((Table)Preconditions.checkNotNull(paramTable));
      this.function = ((Function)Preconditions.checkNotNull(paramFunction));
    }

    Function<Table.Cell<R, C, V1>, Table.Cell<R, C, V2>> cellFunction()
    {
      return new Function()
      {
        public Table.Cell<R, C, V2> apply(Table.Cell<R, C, V1> paramAnonymousCell)
        {
          return Tables.immutableCell(paramAnonymousCell.getRowKey(), paramAnonymousCell.getColumnKey(), Tables.TransformedTable.this.function.apply(paramAnonymousCell.getValue()));
        }
      };
    }

    public Set<Table.Cell<R, C, V2>> cellSet()
    {
      if (this.cellSet == null)
      {
        CellSet localCellSet = new CellSet();
        this.cellSet = localCellSet;
        return localCellSet;
      }
      return this.cellSet;
    }

    public void clear()
    {
      this.fromTable.clear();
    }

    public Map<R, V2> column(C paramC)
    {
      return Maps.transformValues(this.fromTable.column(paramC), this.function);
    }

    public Set<C> columnKeySet()
    {
      return this.fromTable.columnKeySet();
    }

    public Map<C, Map<R, V2>> columnMap()
    {
      if (this.columnMap == null)
      {
        Map localMap = createColumnMap();
        this.columnMap = localMap;
        return localMap;
      }
      return this.columnMap;
    }

    public boolean contains(Object paramObject1, Object paramObject2)
    {
      return this.fromTable.contains(paramObject1, paramObject2);
    }

    public boolean containsColumn(Object paramObject)
    {
      return this.fromTable.containsColumn(paramObject);
    }

    public boolean containsRow(Object paramObject)
    {
      return this.fromTable.containsRow(paramObject);
    }

    public boolean containsValue(Object paramObject)
    {
      return values().contains(paramObject);
    }

    Map<C, Map<R, V2>> createColumnMap()
    {
      Function local3 = new Function()
      {
        public Map<R, V2> apply(Map<R, V1> paramAnonymousMap)
        {
          return Maps.transformValues(paramAnonymousMap, Tables.TransformedTable.this.function);
        }
      };
      return Maps.transformValues(this.fromTable.columnMap(), local3);
    }

    Map<R, Map<C, V2>> createRowMap()
    {
      Function local2 = new Function()
      {
        public Map<C, V2> apply(Map<C, V1> paramAnonymousMap)
        {
          return Maps.transformValues(paramAnonymousMap, Tables.TransformedTable.this.function);
        }
      };
      return Maps.transformValues(this.fromTable.rowMap(), local2);
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if (paramObject == this)
        return true;
      if ((paramObject instanceof Table))
      {
        Table localTable = (Table)paramObject;
        return cellSet().equals(localTable.cellSet());
      }
      return false;
    }

    public V2 get(Object paramObject1, Object paramObject2)
    {
      if (contains(paramObject1, paramObject2))
        return this.function.apply(this.fromTable.get(paramObject1, paramObject2));
      return null;
    }

    public int hashCode()
    {
      return cellSet().hashCode();
    }

    public boolean isEmpty()
    {
      return this.fromTable.isEmpty();
    }

    public V2 put(R paramR, C paramC, V2 paramV2)
    {
      throw new UnsupportedOperationException();
    }

    public void putAll(Table<? extends R, ? extends C, ? extends V2> paramTable)
    {
      throw new UnsupportedOperationException();
    }

    public V2 remove(Object paramObject1, Object paramObject2)
    {
      if (contains(paramObject1, paramObject2))
        return this.function.apply(this.fromTable.remove(paramObject1, paramObject2));
      return null;
    }

    public Map<C, V2> row(R paramR)
    {
      return Maps.transformValues(this.fromTable.row(paramR), this.function);
    }

    public Set<R> rowKeySet()
    {
      return this.fromTable.rowKeySet();
    }

    public Map<R, Map<C, V2>> rowMap()
    {
      if (this.rowMap == null)
      {
        Map localMap = createRowMap();
        this.rowMap = localMap;
        return localMap;
      }
      return this.rowMap;
    }

    public int size()
    {
      return this.fromTable.size();
    }

    public String toString()
    {
      return rowMap().toString();
    }

    public Collection<V2> values()
    {
      if (this.values == null)
      {
        Collection localCollection = Collections2.transform(this.fromTable.values(), this.function);
        this.values = localCollection;
        return localCollection;
      }
      return this.values;
    }

    class CellSet extends Collections2.TransformedCollection<Table.Cell<R, C, V1>, Table.Cell<R, C, V2>>
      implements Set<Table.Cell<R, C, V2>>
    {
      CellSet()
      {
        super(Tables.TransformedTable.this.cellFunction());
      }

      public boolean contains(Object paramObject)
      {
        Table.Cell localCell;
        if ((paramObject instanceof Table.Cell))
        {
          localCell = (Table.Cell)paramObject;
          if (Objects.equal(localCell.getValue(), Tables.TransformedTable.this.get(localCell.getRowKey(), localCell.getColumnKey())))
            break label45;
        }
        label45: 
        while ((localCell.getValue() == null) && (!Tables.TransformedTable.this.fromTable.contains(localCell.getRowKey(), localCell.getColumnKey())))
          return false;
        return true;
      }

      public boolean equals(Object paramObject)
      {
        return Sets.equalsImpl(this, paramObject);
      }

      public int hashCode()
      {
        return Sets.hashCodeImpl(this);
      }

      public boolean remove(Object paramObject)
      {
        if (contains(paramObject))
        {
          Table.Cell localCell = (Table.Cell)paramObject;
          Tables.TransformedTable.this.fromTable.remove(localCell.getRowKey(), localCell.getColumnKey());
          return true;
        }
        return false;
      }
    }
  }

  private static class TransposeTable<C, R, V>
    implements Table<C, R, V>
  {
    private static final Function<Table.Cell<?, ?, ?>, Table.Cell<?, ?, ?>> TRANSPOSE_CELL = new Function()
    {
      public Table.Cell<?, ?, ?> apply(Table.Cell<?, ?, ?> paramAnonymousCell)
      {
        return Tables.immutableCell(paramAnonymousCell.getColumnKey(), paramAnonymousCell.getRowKey(), paramAnonymousCell.getValue());
      }
    };
    TransposeTable<C, R, V>.CellSet cellSet;
    final Table<R, C, V> original;

    TransposeTable(Table<R, C, V> paramTable)
    {
      this.original = ((Table)Preconditions.checkNotNull(paramTable));
    }

    public Set<Table.Cell<C, R, V>> cellSet()
    {
      CellSet localCellSet = this.cellSet;
      if (localCellSet == null)
      {
        localCellSet = new CellSet();
        this.cellSet = localCellSet;
      }
      return localCellSet;
    }

    public void clear()
    {
      this.original.clear();
    }

    public Map<C, V> column(R paramR)
    {
      return this.original.row(paramR);
    }

    public Set<R> columnKeySet()
    {
      return this.original.rowKeySet();
    }

    public Map<R, Map<C, V>> columnMap()
    {
      return this.original.rowMap();
    }

    public boolean contains(@Nullable Object paramObject1, @Nullable Object paramObject2)
    {
      return this.original.contains(paramObject2, paramObject1);
    }

    public boolean containsColumn(@Nullable Object paramObject)
    {
      return this.original.containsRow(paramObject);
    }

    public boolean containsRow(@Nullable Object paramObject)
    {
      return this.original.containsColumn(paramObject);
    }

    public boolean containsValue(@Nullable Object paramObject)
    {
      return this.original.containsValue(paramObject);
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if (paramObject == this)
        return true;
      if ((paramObject instanceof Table))
      {
        Table localTable = (Table)paramObject;
        return cellSet().equals(localTable.cellSet());
      }
      return false;
    }

    public V get(@Nullable Object paramObject1, @Nullable Object paramObject2)
    {
      return this.original.get(paramObject2, paramObject1);
    }

    public int hashCode()
    {
      return cellSet().hashCode();
    }

    public boolean isEmpty()
    {
      return this.original.isEmpty();
    }

    public V put(C paramC, R paramR, V paramV)
    {
      return this.original.put(paramR, paramC, paramV);
    }

    public void putAll(Table<? extends C, ? extends R, ? extends V> paramTable)
    {
      this.original.putAll(Tables.transpose(paramTable));
    }

    public V remove(@Nullable Object paramObject1, @Nullable Object paramObject2)
    {
      return this.original.remove(paramObject2, paramObject1);
    }

    public Map<R, V> row(C paramC)
    {
      return this.original.column(paramC);
    }

    public Set<C> rowKeySet()
    {
      return this.original.columnKeySet();
    }

    public Map<C, Map<R, V>> rowMap()
    {
      return this.original.columnMap();
    }

    public int size()
    {
      return this.original.size();
    }

    public String toString()
    {
      return rowMap().toString();
    }

    public Collection<V> values()
    {
      return this.original.values();
    }

    class CellSet extends Collections2.TransformedCollection<Table.Cell<R, C, V>, Table.Cell<C, R, V>>
      implements Set<Table.Cell<C, R, V>>
    {
      CellSet()
      {
        super(Tables.TransposeTable.TRANSPOSE_CELL);
      }

      public boolean contains(Object paramObject)
      {
        if ((paramObject instanceof Table.Cell))
        {
          Table.Cell localCell = (Table.Cell)paramObject;
          return Tables.TransposeTable.this.original.cellSet().contains(Tables.immutableCell(localCell.getColumnKey(), localCell.getRowKey(), localCell.getValue()));
        }
        return false;
      }

      public boolean equals(Object paramObject)
      {
        boolean bool2;
        if (paramObject == this)
          bool2 = true;
        Set localSet;
        int i;
        int j;
        do
        {
          boolean bool1;
          do
          {
            return bool2;
            bool1 = paramObject instanceof Set;
            bool2 = false;
          }
          while (!bool1);
          localSet = (Set)paramObject;
          i = localSet.size();
          j = size();
          bool2 = false;
        }
        while (i != j);
        return containsAll(localSet);
      }

      public int hashCode()
      {
        return Sets.hashCodeImpl(this);
      }

      public boolean remove(Object paramObject)
      {
        if ((paramObject instanceof Table.Cell))
        {
          Table.Cell localCell = (Table.Cell)paramObject;
          return Tables.TransposeTable.this.original.cellSet().remove(Tables.immutableCell(localCell.getColumnKey(), localCell.getRowKey(), localCell.getValue()));
        }
        return false;
      }
    }
  }

  static final class UnmodifiableRowSortedMap<R, C, V> extends Tables.UnmodifiableTable<R, C, V>
    implements RowSortedTable<R, C, V>
  {
    private static final long serialVersionUID;

    public UnmodifiableRowSortedMap(RowSortedTable<R, ? extends C, ? extends V> paramRowSortedTable)
    {
      super();
    }

    protected RowSortedTable<R, C, V> delegate()
    {
      return (RowSortedTable)super.delegate();
    }

    public SortedSet<R> rowKeySet()
    {
      return Collections.unmodifiableSortedSet(delegate().rowKeySet());
    }

    public SortedMap<R, Map<C, V>> rowMap()
    {
      Function localFunction = Tables.access$100();
      return Collections.unmodifiableSortedMap(Maps.transformValues(delegate().rowMap(), localFunction));
    }
  }

  private static class UnmodifiableTable<R, C, V> extends ForwardingTable<R, C, V>
    implements Serializable
  {
    private static final long serialVersionUID;
    final Table<? extends R, ? extends C, ? extends V> delegate;

    UnmodifiableTable(Table<? extends R, ? extends C, ? extends V> paramTable)
    {
      this.delegate = ((Table)Preconditions.checkNotNull(paramTable));
    }

    public Set<Table.Cell<R, C, V>> cellSet()
    {
      return Collections.unmodifiableSet(super.cellSet());
    }

    public void clear()
    {
      throw new UnsupportedOperationException();
    }

    public Map<R, V> column(@Nullable C paramC)
    {
      return Collections.unmodifiableMap(super.column(paramC));
    }

    public Set<C> columnKeySet()
    {
      return Collections.unmodifiableSet(super.columnKeySet());
    }

    public Map<C, Map<R, V>> columnMap()
    {
      Function localFunction = Tables.access$100();
      return Collections.unmodifiableMap(Maps.transformValues(super.columnMap(), localFunction));
    }

    protected Table<R, C, V> delegate()
    {
      return this.delegate;
    }

    public V put(@Nullable R paramR, @Nullable C paramC, @Nullable V paramV)
    {
      throw new UnsupportedOperationException();
    }

    public void putAll(Table<? extends R, ? extends C, ? extends V> paramTable)
    {
      throw new UnsupportedOperationException();
    }

    public V remove(@Nullable Object paramObject1, @Nullable Object paramObject2)
    {
      throw new UnsupportedOperationException();
    }

    public Map<C, V> row(@Nullable R paramR)
    {
      return Collections.unmodifiableMap(super.row(paramR));
    }

    public Set<R> rowKeySet()
    {
      return Collections.unmodifiableSet(super.rowKeySet());
    }

    public Map<R, Map<C, V>> rowMap()
    {
      Function localFunction = Tables.access$100();
      return Collections.unmodifiableMap(Maps.transformValues(super.rowMap(), localFunction));
    }

    public Collection<V> values()
    {
      return Collections.unmodifiableCollection(super.values());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.Tables
 * JD-Core Version:    0.6.2
 */