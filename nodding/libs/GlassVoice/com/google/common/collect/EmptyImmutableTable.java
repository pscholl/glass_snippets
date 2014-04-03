package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@GwtCompatible
@Immutable
final class EmptyImmutableTable extends ImmutableTable<Object, Object, Object>
{
  static final EmptyImmutableTable INSTANCE = new EmptyImmutableTable();
  private static final long serialVersionUID;

  public ImmutableSet<Table.Cell<Object, Object, Object>> cellSet()
  {
    return ImmutableSet.of();
  }

  public ImmutableMap<Object, Object> column(Object paramObject)
  {
    Preconditions.checkNotNull(paramObject);
    return ImmutableMap.of();
  }

  public ImmutableSet<Object> columnKeySet()
  {
    return ImmutableSet.of();
  }

  public ImmutableMap<Object, Map<Object, Object>> columnMap()
  {
    return ImmutableMap.of();
  }

  public boolean contains(@Nullable Object paramObject1, @Nullable Object paramObject2)
  {
    return false;
  }

  public boolean containsColumn(@Nullable Object paramObject)
  {
    return false;
  }

  public boolean containsRow(@Nullable Object paramObject)
  {
    return false;
  }

  public boolean containsValue(@Nullable Object paramObject)
  {
    return false;
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this)
      return true;
    if ((paramObject instanceof Table))
      return ((Table)paramObject).isEmpty();
    return false;
  }

  public Object get(@Nullable Object paramObject1, @Nullable Object paramObject2)
  {
    return null;
  }

  public int hashCode()
  {
    return 0;
  }

  public boolean isEmpty()
  {
    return true;
  }

  Object readResolve()
  {
    return INSTANCE;
  }

  public ImmutableMap<Object, Object> row(Object paramObject)
  {
    Preconditions.checkNotNull(paramObject);
    return ImmutableMap.of();
  }

  public ImmutableSet<Object> rowKeySet()
  {
    return ImmutableSet.of();
  }

  public ImmutableMap<Object, Map<Object, Object>> rowMap()
  {
    return ImmutableMap.of();
  }

  public int size()
  {
    return 0;
  }

  public String toString()
  {
    return "{}";
  }

  public ImmutableCollection<Object> values()
  {
    return ImmutableSet.of();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.EmptyImmutableTable
 * JD-Core Version:    0.6.2
 */