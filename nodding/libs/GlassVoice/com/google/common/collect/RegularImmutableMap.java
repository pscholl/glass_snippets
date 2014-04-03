package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Map.Entry;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@GwtCompatible(emulated=true, serializable=true)
final class RegularImmutableMap<K, V> extends ImmutableMap<K, V>
{
  private static final double MAX_LOAD_FACTOR = 1.2D;
  private static final long serialVersionUID;
  private final transient LinkedEntry<K, V>[] entries;
  private final transient int mask;
  private final transient LinkedEntry<K, V>[] table;

  RegularImmutableMap(Map.Entry<?, ?>[] paramArrayOfEntry)
  {
    int i = paramArrayOfEntry.length;
    this.entries = createEntryArray(i);
    int j = Hashing.closedTableSize(i, 1.2D);
    this.table = createEntryArray(j);
    this.mask = (j - 1);
    for (int k = 0; k < i; k++)
    {
      Map.Entry<?, ?> localEntry = paramArrayOfEntry[k];
      Object localObject = localEntry.getKey();
      int m = Hashing.smear(localObject.hashCode()) & this.mask;
      LinkedEntry localLinkedEntry1 = this.table[m];
      LinkedEntry localLinkedEntry2 = newLinkedEntry(localObject, localEntry.getValue(), localLinkedEntry1);
      this.table[m] = localLinkedEntry2;
      this.entries[k] = localLinkedEntry2;
      if (localLinkedEntry1 != null)
      {
        if (!localObject.equals(localLinkedEntry1.getKey()));
        for (boolean bool = true; ; bool = false)
        {
          Preconditions.checkArgument(bool, "duplicate key: %s", new Object[] { localObject });
          localLinkedEntry1 = localLinkedEntry1.next();
          break;
        }
      }
    }
  }

  private LinkedEntry<K, V>[] createEntryArray(int paramInt)
  {
    return new LinkedEntry[paramInt];
  }

  private static <K, V> LinkedEntry<K, V> newLinkedEntry(K paramK, V paramV, @Nullable LinkedEntry<K, V> paramLinkedEntry)
  {
    if (paramLinkedEntry == null)
      return new TerminalEntry(paramK, paramV);
    return new NonTerminalEntry(paramK, paramV, paramLinkedEntry);
  }

  public boolean containsValue(@Nullable Object paramObject)
  {
    if (paramObject == null);
    while (true)
    {
      return false;
      LinkedEntry[] arrayOfLinkedEntry = this.entries;
      int i = arrayOfLinkedEntry.length;
      for (int j = 0; j < i; j++)
        if (arrayOfLinkedEntry[j].getValue().equals(paramObject))
          return true;
    }
  }

  ImmutableSet<Map.Entry<K, V>> createEntrySet()
  {
    return new EntrySet(null);
  }

  public V get(@Nullable Object paramObject)
  {
    if (paramObject == null);
    while (true)
    {
      return null;
      int i = Hashing.smear(paramObject.hashCode()) & this.mask;
      for (LinkedEntry localLinkedEntry = this.table[i]; localLinkedEntry != null; localLinkedEntry = localLinkedEntry.next())
        if (paramObject.equals(localLinkedEntry.getKey()))
          return localLinkedEntry.getValue();
    }
  }

  public boolean isEmpty()
  {
    return false;
  }

  boolean isPartialView()
  {
    return false;
  }

  public int size()
  {
    return this.entries.length;
  }

  private class EntrySet extends ImmutableMapEntrySet<K, V>
  {
    private EntrySet()
    {
    }

    ImmutableList<Map.Entry<K, V>> createAsList()
    {
      return new RegularImmutableAsList(this, RegularImmutableMap.this.entries);
    }

    public UnmodifiableIterator<Map.Entry<K, V>> iterator()
    {
      return asList().iterator();
    }

    ImmutableMap<K, V> map()
    {
      return RegularImmutableMap.this;
    }
  }

  private static abstract interface LinkedEntry<K, V> extends Map.Entry<K, V>
  {
    @Nullable
    public abstract LinkedEntry<K, V> next();
  }

  @Immutable
  private static final class NonTerminalEntry<K, V> extends ImmutableEntry<K, V>
    implements RegularImmutableMap.LinkedEntry<K, V>
  {
    final RegularImmutableMap.LinkedEntry<K, V> next;

    NonTerminalEntry(K paramK, V paramV, RegularImmutableMap.LinkedEntry<K, V> paramLinkedEntry)
    {
      super(paramV);
      this.next = paramLinkedEntry;
    }

    public RegularImmutableMap.LinkedEntry<K, V> next()
    {
      return this.next;
    }
  }

  @Immutable
  private static final class TerminalEntry<K, V> extends ImmutableEntry<K, V>
    implements RegularImmutableMap.LinkedEntry<K, V>
  {
    TerminalEntry(K paramK, V paramV)
    {
      super(paramV);
    }

    @Nullable
    public RegularImmutableMap.LinkedEntry<K, V> next()
    {
      return null;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.RegularImmutableMap
 * JD-Core Version:    0.6.2
 */