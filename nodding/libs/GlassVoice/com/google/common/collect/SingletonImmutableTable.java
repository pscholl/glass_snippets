package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible
final class SingletonImmutableTable<R, C, V> extends ImmutableTable<R, C, V>
{
  private final C singleColumnKey;
  private final R singleRowKey;
  private final V singleValue;

  SingletonImmutableTable(Table.Cell<R, C, V> paramCell)
  {
    this(paramCell.getRowKey(), paramCell.getColumnKey(), paramCell.getValue());
  }

  SingletonImmutableTable(R paramR, C paramC, V paramV)
  {
    this.singleRowKey = Preconditions.checkNotNull(paramR);
    this.singleColumnKey = Preconditions.checkNotNull(paramC);
    this.singleValue = Preconditions.checkNotNull(paramV);
  }

  public ImmutableSet<Table.Cell<R, C, V>> cellSet()
  {
    return ImmutableSet.of(Tables.immutableCell(this.singleRowKey, this.singleColumnKey, this.singleValue));
  }

  public ImmutableMap<R, V> column(C paramC)
  {
    Preconditions.checkNotNull(paramC);
    if (containsColumn(paramC))
      return ImmutableMap.of(this.singleRowKey, this.singleValue);
    return ImmutableMap.of();
  }

  public ImmutableSet<C> columnKeySet()
  {
    return ImmutableSet.of(this.singleColumnKey);
  }

  public ImmutableMap<C, Map<R, V>> columnMap()
  {
    return ImmutableMap.of(this.singleColumnKey, ImmutableMap.of(this.singleRowKey, this.singleValue));
  }

  public boolean contains(@Nullable Object paramObject1, @Nullable Object paramObject2)
  {
    return (containsRow(paramObject1)) && (containsColumn(paramObject2));
  }

  public boolean containsColumn(@Nullable Object paramObject)
  {
    return Objects.equal(this.singleColumnKey, paramObject);
  }

  public boolean containsRow(@Nullable Object paramObject)
  {
    return Objects.equal(this.singleRowKey, paramObject);
  }

  public boolean containsValue(@Nullable Object paramObject)
  {
    return Objects.equal(this.singleValue, paramObject);
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this);
    Table.Cell localCell;
    do
    {
      return true;
      if (!(paramObject instanceof Table))
        break;
      Table localTable = (Table)paramObject;
      if (localTable.size() != 1)
        break;
      localCell = (Table.Cell)localTable.cellSet().iterator().next();
    }
    while ((Objects.equal(this.singleRowKey, localCell.getRowKey())) && (Objects.equal(this.singleColumnKey, localCell.getColumnKey())) && (Objects.equal(this.singleValue, localCell.getValue())));
    return false;
    return false;
  }

  public V get(@Nullable Object paramObject1, @Nullable Object paramObject2)
  {
    if (contains(paramObject1, paramObject2))
      return this.singleValue;
    return null;
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.singleRowKey;
    arrayOfObject[1] = this.singleColumnKey;
    arrayOfObject[2] = this.singleValue;
    return Objects.hashCode(arrayOfObject);
  }

  public boolean isEmpty()
  {
    return false;
  }

  public ImmutableMap<C, V> row(R paramR)
  {
    Preconditions.checkNotNull(paramR);
    if (containsRow(paramR))
      return ImmutableMap.of(this.singleColumnKey, this.singleValue);
    return ImmutableMap.of();
  }

  public ImmutableSet<R> rowKeySet()
  {
    return ImmutableSet.of(this.singleRowKey);
  }

  public ImmutableMap<R, Map<C, V>> rowMap()
  {
    return ImmutableMap.of(this.singleRowKey, ImmutableMap.of(this.singleColumnKey, this.singleValue));
  }

  public int size()
  {
    return 1;
  }

  public String toString()
  {
    return '{' + this.singleRowKey + "={" + this.singleColumnKey + '=' + this.singleValue + "}}";
  }

  public ImmutableCollection<V> values()
  {
    return ImmutableSet.of(this.singleValue);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.SingletonImmutableTable
 * JD-Core Version:    0.6.2
 */