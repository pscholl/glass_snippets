package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;

@GwtCompatible
class StandardRowSortedTable<R, C, V> extends StandardTable<R, C, V>
  implements RowSortedTable<R, C, V>
{
  private static final long serialVersionUID;
  private transient SortedSet<R> rowKeySet;
  private transient StandardRowSortedTable<R, C, V>.RowSortedMap rowMap;

  StandardRowSortedTable(SortedMap<R, Map<C, V>> paramSortedMap, Supplier<? extends Map<C, V>> paramSupplier)
  {
    super(paramSortedMap, paramSupplier);
  }

  private SortedMap<R, Map<C, V>> sortedBackingMap()
  {
    return (SortedMap)this.backingMap;
  }

  public SortedSet<R> rowKeySet()
  {
    Object localObject = this.rowKeySet;
    if (localObject == null)
    {
      localObject = new RowKeySortedSet(null);
      this.rowKeySet = ((SortedSet)localObject);
    }
    return localObject;
  }

  public SortedMap<R, Map<C, V>> rowMap()
  {
    RowSortedMap localRowSortedMap = this.rowMap;
    if (localRowSortedMap == null)
    {
      localRowSortedMap = new RowSortedMap(null);
      this.rowMap = localRowSortedMap;
    }
    return localRowSortedMap;
  }

  private class RowKeySortedSet extends StandardTable<R, C, V>.RowKeySet
    implements SortedSet<R>
  {
    private RowKeySortedSet()
    {
      super();
    }

    public Comparator<? super R> comparator()
    {
      return StandardRowSortedTable.this.sortedBackingMap().comparator();
    }

    public R first()
    {
      return StandardRowSortedTable.this.sortedBackingMap().firstKey();
    }

    public SortedSet<R> headSet(R paramR)
    {
      Preconditions.checkNotNull(paramR);
      return new StandardRowSortedTable(StandardRowSortedTable.this.sortedBackingMap().headMap(paramR), StandardRowSortedTable.this.factory).rowKeySet();
    }

    public R last()
    {
      return StandardRowSortedTable.this.sortedBackingMap().lastKey();
    }

    public SortedSet<R> subSet(R paramR1, R paramR2)
    {
      Preconditions.checkNotNull(paramR1);
      Preconditions.checkNotNull(paramR2);
      return new StandardRowSortedTable(StandardRowSortedTable.this.sortedBackingMap().subMap(paramR1, paramR2), StandardRowSortedTable.this.factory).rowKeySet();
    }

    public SortedSet<R> tailSet(R paramR)
    {
      Preconditions.checkNotNull(paramR);
      return new StandardRowSortedTable(StandardRowSortedTable.this.sortedBackingMap().tailMap(paramR), StandardRowSortedTable.this.factory).rowKeySet();
    }
  }

  private class RowSortedMap extends StandardTable<R, C, V>.RowMap
    implements SortedMap<R, Map<C, V>>
  {
    private RowSortedMap()
    {
      super();
    }

    public Comparator<? super R> comparator()
    {
      return StandardRowSortedTable.this.sortedBackingMap().comparator();
    }

    public R firstKey()
    {
      return StandardRowSortedTable.this.sortedBackingMap().firstKey();
    }

    public SortedMap<R, Map<C, V>> headMap(R paramR)
    {
      Preconditions.checkNotNull(paramR);
      return new StandardRowSortedTable(StandardRowSortedTable.this.sortedBackingMap().headMap(paramR), StandardRowSortedTable.this.factory).rowMap();
    }

    public R lastKey()
    {
      return StandardRowSortedTable.this.sortedBackingMap().lastKey();
    }

    public SortedMap<R, Map<C, V>> subMap(R paramR1, R paramR2)
    {
      Preconditions.checkNotNull(paramR1);
      Preconditions.checkNotNull(paramR2);
      return new StandardRowSortedTable(StandardRowSortedTable.this.sortedBackingMap().subMap(paramR1, paramR2), StandardRowSortedTable.this.factory).rowMap();
    }

    public SortedMap<R, Map<C, V>> tailMap(R paramR)
    {
      Preconditions.checkNotNull(paramR);
      return new StandardRowSortedTable(StandardRowSortedTable.this.sortedBackingMap().tailMap(paramR), StandardRowSortedTable.this.factory).rowMap();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.StandardRowSortedTable
 * JD-Core Version:    0.6.2
 */