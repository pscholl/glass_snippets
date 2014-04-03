package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map.Entry;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
class RegularImmutableBiMap<K, V> extends ImmutableBiMap<K, V>
{
  static final double MAX_LOAD_FACTOR = 1.2D;
  private final transient BiMapEntry<K, V>[] entries;
  private final transient int hashCode;
  private transient ImmutableBiMap<V, K> inverse;
  private final transient BiMapEntry<K, V>[] kToVTable;
  private final transient int mask;
  private final transient BiMapEntry<K, V>[] vToKTable;

  RegularImmutableBiMap(Collection<? extends Map.Entry<? extends K, ? extends V>> paramCollection)
  {
    int i = paramCollection.size();
    int j = Hashing.closedTableSize(i, 1.2D);
    this.mask = (j - 1);
    BiMapEntry[] arrayOfBiMapEntry1 = createEntryArray(j);
    BiMapEntry[] arrayOfBiMapEntry2 = createEntryArray(j);
    BiMapEntry[] arrayOfBiMapEntry3 = createEntryArray(i);
    int k = 0;
    int m = 0;
    Iterator localIterator = paramCollection.iterator();
    if (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject1 = Preconditions.checkNotNull(localEntry.getKey());
      Object localObject2 = Preconditions.checkNotNull(localEntry.getValue());
      int n = localObject1.hashCode();
      int i1 = localObject2.hashCode();
      int i2 = Hashing.smear(n) & this.mask;
      int i3 = Hashing.smear(i1) & this.mask;
      BiMapEntry localBiMapEntry1 = arrayOfBiMapEntry1[i2];
      for (BiMapEntry localBiMapEntry2 = localBiMapEntry1; localBiMapEntry2 != null; localBiMapEntry2 = localBiMapEntry2.getNextInKToVBucket())
        if (localObject1.equals(localBiMapEntry2.getKey()))
          throw new IllegalArgumentException("Multiple entries with same key: " + localEntry + " and " + localBiMapEntry2);
      BiMapEntry localBiMapEntry3 = arrayOfBiMapEntry2[i3];
      for (BiMapEntry localBiMapEntry4 = localBiMapEntry3; localBiMapEntry4 != null; localBiMapEntry4 = localBiMapEntry4.getNextInVToKBucket())
        if (localObject2.equals(localBiMapEntry4.getValue()))
          throw new IllegalArgumentException("Multiple entries with same value: " + localEntry + " and " + localBiMapEntry4);
      if ((localBiMapEntry1 == null) && (localBiMapEntry3 == null));
      for (Object localObject3 = new BiMapEntry(localObject1, localObject2); ; localObject3 = new NonTerminalBiMapEntry(localObject1, localObject2, localBiMapEntry1, localBiMapEntry3))
      {
        arrayOfBiMapEntry1[i2] = localObject3;
        arrayOfBiMapEntry2[i3] = localObject3;
        int i4 = k + 1;
        arrayOfBiMapEntry3[k] = localObject3;
        m += (n ^ i1);
        k = i4;
        break;
      }
    }
    this.kToVTable = arrayOfBiMapEntry1;
    this.vToKTable = arrayOfBiMapEntry2;
    this.entries = arrayOfBiMapEntry3;
    this.hashCode = m;
  }

  private static <K, V> BiMapEntry<K, V>[] createEntryArray(int paramInt)
  {
    return new BiMapEntry[paramInt];
  }

  ImmutableSet<Map.Entry<K, V>> createEntrySet()
  {
    return new ImmutableMapEntrySet()
    {
      ImmutableList<Map.Entry<K, V>> createAsList()
      {
        return new RegularImmutableAsList(this, RegularImmutableBiMap.this.entries);
      }

      public int hashCode()
      {
        return RegularImmutableBiMap.this.hashCode;
      }

      boolean isHashCodeFast()
      {
        return true;
      }

      public UnmodifiableIterator<Map.Entry<K, V>> iterator()
      {
        return asList().iterator();
      }

      ImmutableMap<K, V> map()
      {
        return RegularImmutableBiMap.this;
      }
    };
  }

  @Nullable
  public V get(@Nullable Object paramObject)
  {
    if (paramObject == null);
    while (true)
    {
      return null;
      int i = Hashing.smear(paramObject.hashCode()) & this.mask;
      for (BiMapEntry localBiMapEntry = this.kToVTable[i]; localBiMapEntry != null; localBiMapEntry = localBiMapEntry.getNextInKToVBucket())
        if (paramObject.equals(localBiMapEntry.getKey()))
          return localBiMapEntry.getValue();
    }
  }

  public ImmutableBiMap<V, K> inverse()
  {
    Object localObject = this.inverse;
    if (localObject == null)
    {
      localObject = new Inverse(null);
      this.inverse = ((ImmutableBiMap)localObject);
    }
    return localObject;
  }

  boolean isPartialView()
  {
    return false;
  }

  public int size()
  {
    return this.entries.length;
  }

  private static class BiMapEntry<K, V> extends ImmutableEntry<K, V>
  {
    BiMapEntry(K paramK, V paramV)
    {
      super(paramV);
    }

    @Nullable
    BiMapEntry<K, V> getNextInKToVBucket()
    {
      return null;
    }

    @Nullable
    BiMapEntry<K, V> getNextInVToKBucket()
    {
      return null;
    }
  }

  private final class Inverse extends ImmutableBiMap<V, K>
  {
    private Inverse()
    {
    }

    ImmutableSet<Map.Entry<V, K>> createEntrySet()
    {
      return new InverseEntrySet();
    }

    public K get(@Nullable Object paramObject)
    {
      if (paramObject == null);
      while (true)
      {
        return null;
        int i = Hashing.smear(paramObject.hashCode()) & RegularImmutableBiMap.this.mask;
        for (RegularImmutableBiMap.BiMapEntry localBiMapEntry = RegularImmutableBiMap.this.vToKTable[i]; localBiMapEntry != null; localBiMapEntry = localBiMapEntry.getNextInVToKBucket())
          if (paramObject.equals(localBiMapEntry.getValue()))
            return localBiMapEntry.getKey();
      }
    }

    public ImmutableBiMap<K, V> inverse()
    {
      return RegularImmutableBiMap.this;
    }

    boolean isPartialView()
    {
      return false;
    }

    public int size()
    {
      return inverse().size();
    }

    Object writeReplace()
    {
      return new RegularImmutableBiMap.InverseSerializedForm(RegularImmutableBiMap.this);
    }

    final class InverseEntrySet extends ImmutableMapEntrySet<V, K>
    {
      InverseEntrySet()
      {
      }

      ImmutableList<Map.Entry<V, K>> createAsList()
      {
        return new ImmutableAsList()
        {
          ImmutableCollection<Map.Entry<V, K>> delegateCollection()
          {
            return RegularImmutableBiMap.Inverse.InverseEntrySet.this;
          }

          public Map.Entry<V, K> get(int paramAnonymousInt)
          {
            RegularImmutableBiMap.BiMapEntry localBiMapEntry = RegularImmutableBiMap.this.entries[paramAnonymousInt];
            return Maps.immutableEntry(localBiMapEntry.getValue(), localBiMapEntry.getKey());
          }
        };
      }

      public int hashCode()
      {
        return RegularImmutableBiMap.this.hashCode;
      }

      boolean isHashCodeFast()
      {
        return true;
      }

      public UnmodifiableIterator<Map.Entry<V, K>> iterator()
      {
        return asList().iterator();
      }

      ImmutableMap<V, K> map()
      {
        return RegularImmutableBiMap.Inverse.this;
      }
    }
  }

  private static class InverseSerializedForm<K, V>
    implements Serializable
  {
    private static final long serialVersionUID = 1L;
    private final ImmutableBiMap<K, V> forward;

    InverseSerializedForm(ImmutableBiMap<K, V> paramImmutableBiMap)
    {
      this.forward = paramImmutableBiMap;
    }

    Object readResolve()
    {
      return this.forward.inverse();
    }
  }

  private static class NonTerminalBiMapEntry<K, V> extends RegularImmutableBiMap.BiMapEntry<K, V>
  {

    @Nullable
    private final RegularImmutableBiMap.BiMapEntry<K, V> nextInKToVBucket;

    @Nullable
    private final RegularImmutableBiMap.BiMapEntry<K, V> nextInVToKBucket;

    NonTerminalBiMapEntry(K paramK, V paramV, @Nullable RegularImmutableBiMap.BiMapEntry<K, V> paramBiMapEntry1, @Nullable RegularImmutableBiMap.BiMapEntry<K, V> paramBiMapEntry2)
    {
      super(paramV);
      this.nextInKToVBucket = paramBiMapEntry1;
      this.nextInVToKBucket = paramBiMapEntry2;
    }

    @Nullable
    RegularImmutableBiMap.BiMapEntry<K, V> getNextInKToVBucket()
    {
      return this.nextInKToVBucket;
    }

    @Nullable
    RegularImmutableBiMap.BiMapEntry<K, V> getNextInVToKBucket()
    {
      return this.nextInVToKBucket;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.RegularImmutableBiMap
 * JD-Core Version:    0.6.2
 */