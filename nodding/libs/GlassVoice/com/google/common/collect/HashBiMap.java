package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
public final class HashBiMap<K, V> extends AbstractMap<K, V>
  implements BiMap<K, V>, Serializable
{
  private static final double LOAD_FACTOR = 1.0D;

  @GwtIncompatible("Not needed in emulated source")
  private static final long serialVersionUID;
  private transient BiEntry<K, V>[] hashTableKToV;
  private transient BiEntry<K, V>[] hashTableVToK;
  private transient BiMap<V, K> inverse;
  private transient int mask;
  private transient int modCount;
  private transient int size;

  private HashBiMap(int paramInt)
  {
    init(paramInt);
  }

  public static <K, V> HashBiMap<K, V> create()
  {
    return create(16);
  }

  public static <K, V> HashBiMap<K, V> create(int paramInt)
  {
    return new HashBiMap(paramInt);
  }

  public static <K, V> HashBiMap<K, V> create(Map<? extends K, ? extends V> paramMap)
  {
    HashBiMap localHashBiMap = create(paramMap.size());
    localHashBiMap.putAll(paramMap);
    return localHashBiMap;
  }

  private BiEntry<K, V>[] createTable(int paramInt)
  {
    return new BiEntry[paramInt];
  }

  private void delete(BiEntry<K, V> paramBiEntry)
  {
    int i = paramBiEntry.keyHash & this.mask;
    Object localObject1 = null;
    BiEntry localBiEntry1 = this.hashTableKToV[i];
    label40: int j;
    Object localObject2;
    if (localBiEntry1 == paramBiEntry)
      if (localObject1 == null)
      {
        this.hashTableKToV[i] = paramBiEntry.nextInKToVBucket;
        j = paramBiEntry.valueHash & this.mask;
        localObject2 = null;
      }
    for (BiEntry localBiEntry2 = this.hashTableVToK[j]; ; localBiEntry2 = localBiEntry2.nextInVToKBucket)
    {
      if (localBiEntry2 == paramBiEntry)
      {
        if (localObject2 == null)
          this.hashTableVToK[j] = paramBiEntry.nextInVToKBucket;
        while (true)
        {
          this.size = (-1 + this.size);
          this.modCount = (1 + this.modCount);
          return;
          localObject1.nextInKToVBucket = paramBiEntry.nextInKToVBucket;
          break label40;
          localObject1 = localBiEntry1;
          localBiEntry1 = localBiEntry1.nextInKToVBucket;
          break;
          localObject2.nextInVToKBucket = paramBiEntry.nextInVToKBucket;
        }
      }
      localObject2 = localBiEntry2;
    }
  }

  private static int hash(@Nullable Object paramObject)
  {
    if (paramObject == null);
    for (int i = 0; ; i = paramObject.hashCode())
      return Hashing.smear(i);
  }

  private void init(int paramInt)
  {
    if (paramInt >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      Preconditions.checkArgument(bool, "expectedSize must be >= 0 but was %s", arrayOfObject);
      int i = Hashing.closedTableSize(paramInt, 1.0D);
      this.hashTableKToV = createTable(i);
      this.hashTableVToK = createTable(i);
      this.mask = (i - 1);
      this.modCount = 0;
      this.size = 0;
      return;
    }
  }

  private void insert(BiEntry<K, V> paramBiEntry)
  {
    int i = paramBiEntry.keyHash & this.mask;
    paramBiEntry.nextInKToVBucket = this.hashTableKToV[i];
    this.hashTableKToV[i] = paramBiEntry;
    int j = paramBiEntry.valueHash & this.mask;
    paramBiEntry.nextInVToKBucket = this.hashTableVToK[j];
    this.hashTableVToK[j] = paramBiEntry;
    this.size = (1 + this.size);
    this.modCount = (1 + this.modCount);
  }

  private V put(@Nullable K paramK, @Nullable V paramV, boolean paramBoolean)
  {
    int i = hash(paramK);
    int j = hash(paramV);
    BiEntry localBiEntry1 = seekByKey(paramK, i);
    if ((localBiEntry1 != null) && (j == localBiEntry1.valueHash) && (Objects.equal(paramV, localBiEntry1.value)))
      return paramV;
    BiEntry localBiEntry2 = seekByValue(paramV, j);
    if (localBiEntry2 != null)
    {
      if (paramBoolean)
        delete(localBiEntry2);
    }
    else
    {
      if (localBiEntry1 != null)
        delete(localBiEntry1);
      insert(new BiEntry(paramK, i, paramV, j));
      rehashIfNecessary();
      if (localBiEntry1 != null)
        break label144;
    }
    label144: for (Object localObject = null; ; localObject = localBiEntry1.value)
    {
      return localObject;
      throw new IllegalArgumentException("value already present: " + paramV);
    }
  }

  @Nullable
  private K putInverse(@Nullable V paramV, @Nullable K paramK, boolean paramBoolean)
  {
    int i = hash(paramV);
    int j = hash(paramK);
    BiEntry localBiEntry1 = seekByValue(paramV, i);
    if ((localBiEntry1 != null) && (j == localBiEntry1.keyHash) && (Objects.equal(paramK, localBiEntry1.key)))
      return paramK;
    BiEntry localBiEntry2 = seekByKey(paramK, j);
    if (localBiEntry2 != null)
    {
      if (paramBoolean)
        delete(localBiEntry2);
    }
    else
    {
      if (localBiEntry1 != null)
        delete(localBiEntry1);
      insert(new BiEntry(paramK, j, paramV, i));
      rehashIfNecessary();
      if (localBiEntry1 != null)
        break label144;
    }
    label144: for (Object localObject = null; ; localObject = localBiEntry1.key)
    {
      return localObject;
      throw new IllegalArgumentException("value already present: " + paramK);
    }
  }

  @GwtIncompatible("java.io.ObjectInputStream")
  private void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    paramObjectInputStream.defaultReadObject();
    int i = Serialization.readCount(paramObjectInputStream);
    init(i);
    Serialization.populateMap(this, paramObjectInputStream, i);
  }

  private void rehashIfNecessary()
  {
    BiEntry[] arrayOfBiEntry = this.hashTableKToV;
    if (Hashing.needsResizing(this.size, arrayOfBiEntry.length, 1.0D))
    {
      int i = 2 * arrayOfBiEntry.length;
      this.hashTableKToV = createTable(i);
      this.hashTableVToK = createTable(i);
      this.mask = (i - 1);
      this.size = 0;
      for (int j = 0; j < arrayOfBiEntry.length; j++)
      {
        BiEntry localBiEntry;
        for (Object localObject = arrayOfBiEntry[j]; localObject != null; localObject = localBiEntry)
        {
          localBiEntry = ((BiEntry)localObject).nextInKToVBucket;
          insert((BiEntry)localObject);
        }
      }
      this.modCount = (1 + this.modCount);
    }
  }

  private BiEntry<K, V> seekByKey(@Nullable Object paramObject, int paramInt)
  {
    for (BiEntry localBiEntry = this.hashTableKToV[(paramInt & this.mask)]; localBiEntry != null; localBiEntry = localBiEntry.nextInKToVBucket)
      if ((paramInt == localBiEntry.keyHash) && (Objects.equal(paramObject, localBiEntry.key)))
        return localBiEntry;
    return null;
  }

  private BiEntry<K, V> seekByValue(@Nullable Object paramObject, int paramInt)
  {
    for (BiEntry localBiEntry = this.hashTableVToK[(paramInt & this.mask)]; localBiEntry != null; localBiEntry = localBiEntry.nextInVToKBucket)
      if ((paramInt == localBiEntry.valueHash) && (Objects.equal(paramObject, localBiEntry.value)))
        return localBiEntry;
    return null;
  }

  @GwtIncompatible("java.io.ObjectOutputStream")
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    paramObjectOutputStream.defaultWriteObject();
    Serialization.writeMap(this, paramObjectOutputStream);
  }

  public void clear()
  {
    this.size = 0;
    Arrays.fill(this.hashTableKToV, null);
    Arrays.fill(this.hashTableVToK, null);
    this.modCount = (1 + this.modCount);
  }

  public boolean containsKey(@Nullable Object paramObject)
  {
    return seekByKey(paramObject, hash(paramObject)) != null;
  }

  public boolean containsValue(@Nullable Object paramObject)
  {
    return seekByValue(paramObject, hash(paramObject)) != null;
  }

  public Set<Map.Entry<K, V>> entrySet()
  {
    return new EntrySet(null);
  }

  public V forcePut(@Nullable K paramK, @Nullable V paramV)
  {
    return put(paramK, paramV, true);
  }

  @Nullable
  public V get(@Nullable Object paramObject)
  {
    BiEntry localBiEntry = seekByKey(paramObject, hash(paramObject));
    if (localBiEntry == null)
      return null;
    return localBiEntry.value;
  }

  public BiMap<V, K> inverse()
  {
    if (this.inverse == null)
    {
      Inverse localInverse = new Inverse(null);
      this.inverse = localInverse;
      return localInverse;
    }
    return this.inverse;
  }

  public Set<K> keySet()
  {
    return new KeySet(null);
  }

  public V put(@Nullable K paramK, @Nullable V paramV)
  {
    return put(paramK, paramV, false);
  }

  public V remove(@Nullable Object paramObject)
  {
    BiEntry localBiEntry = seekByKey(paramObject, hash(paramObject));
    if (localBiEntry == null)
      return null;
    delete(localBiEntry);
    return localBiEntry.value;
  }

  public int size()
  {
    return this.size;
  }

  public Set<V> values()
  {
    return inverse().keySet();
  }

  private static final class BiEntry<K, V>
  {
    final K key;
    final int keyHash;

    @Nullable
    BiEntry<K, V> nextInKToVBucket;

    @Nullable
    BiEntry<K, V> nextInVToKBucket;
    final V value;
    final int valueHash;

    BiEntry(K paramK, int paramInt1, V paramV, int paramInt2)
    {
      this.key = paramK;
      this.keyHash = paramInt1;
      this.value = paramV;
      this.valueHash = paramInt2;
    }
  }

  private final class EntrySet extends Maps.EntrySet<K, V>
  {
    private EntrySet()
    {
    }

    public Iterator<Map.Entry<K, V>> iterator()
    {
      // Byte code:
      //   0: new 21	com/google/common/collect/HashBiMap$EntrySet$1
      //   3: dup
      //   4: aload_0
      //   5: invokespecial 24	com/google/common/collect/HashBiMap$EntrySet$1:<init>	(Lcom/google/common/collect/HashBiMap$EntrySet;)V
      //   8: areturn
    }

    Map<K, V> map()
    {
      return HashBiMap.this;
    }
  }

  private final class Inverse extends AbstractMap<V, K>
    implements BiMap<V, K>, Serializable
  {
    private Inverse()
    {
    }

    public void clear()
    {
      forward().clear();
    }

    public boolean containsKey(@Nullable Object paramObject)
    {
      return forward().containsValue(paramObject);
    }

    public Set<Map.Entry<V, K>> entrySet()
    {
      return new Maps.EntrySet()
      {
        public Iterator<Map.Entry<V, K>> iterator()
        {
          // Byte code:
          //   0: new 23	com/google/common/collect/HashBiMap$Inverse$1$1
          //   3: dup
          //   4: aload_0
          //   5: invokespecial 26	com/google/common/collect/HashBiMap$Inverse$1$1:<init>	(Lcom/google/common/collect/HashBiMap$Inverse$1;)V
          //   8: areturn
        }

        Map<V, K> map()
        {
          return HashBiMap.Inverse.this;
        }
      };
    }

    public K forcePut(@Nullable V paramV, @Nullable K paramK)
    {
      return HashBiMap.this.putInverse(paramV, paramK, true);
    }

    BiMap<K, V> forward()
    {
      return HashBiMap.this;
    }

    public K get(@Nullable Object paramObject)
    {
      HashBiMap.BiEntry localBiEntry = HashBiMap.this.seekByValue(paramObject, HashBiMap.access$400(paramObject));
      if (localBiEntry == null)
        return null;
      return localBiEntry.key;
    }

    public BiMap<K, V> inverse()
    {
      return forward();
    }

    public Set<V> keySet()
    {
      return new InverseKeySet(null);
    }

    public K put(@Nullable V paramV, @Nullable K paramK)
    {
      return HashBiMap.this.putInverse(paramV, paramK, false);
    }

    public K remove(@Nullable Object paramObject)
    {
      HashBiMap.BiEntry localBiEntry = HashBiMap.this.seekByValue(paramObject, HashBiMap.access$400(paramObject));
      if (localBiEntry == null)
        return null;
      HashBiMap.this.delete(localBiEntry);
      return localBiEntry.key;
    }

    public int size()
    {
      return HashBiMap.this.size;
    }

    public Set<K> values()
    {
      return forward().keySet();
    }

    Object writeReplace()
    {
      return new HashBiMap.InverseSerializedForm(HashBiMap.this);
    }

    private final class InverseKeySet extends Maps.KeySet<V, K>
    {
      private InverseKeySet()
      {
      }

      public Iterator<V> iterator()
      {
        // Byte code:
        //   0: new 21	com/google/common/collect/HashBiMap$Inverse$InverseKeySet$1
        //   3: dup
        //   4: aload_0
        //   5: invokespecial 24	com/google/common/collect/HashBiMap$Inverse$InverseKeySet$1:<init>	(Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;)V
        //   8: areturn
      }

      Map<V, K> map()
      {
        return HashBiMap.Inverse.this;
      }

      public boolean remove(@Nullable Object paramObject)
      {
        HashBiMap.BiEntry localBiEntry = HashBiMap.this.seekByValue(paramObject, HashBiMap.access$400(paramObject));
        if (localBiEntry == null)
          return false;
        HashBiMap.this.delete(localBiEntry);
        return true;
      }
    }
  }

  private static final class InverseSerializedForm<K, V>
    implements Serializable
  {
    private final HashBiMap<K, V> bimap;

    InverseSerializedForm(HashBiMap<K, V> paramHashBiMap)
    {
      this.bimap = paramHashBiMap;
    }

    Object readResolve()
    {
      return this.bimap.inverse();
    }
  }

  abstract class Itr<T>
    implements Iterator<T>
  {
    int expectedModCount = HashBiMap.this.modCount;
    HashBiMap.BiEntry<K, V> next = null;
    int nextBucket = 0;
    HashBiMap.BiEntry<K, V> toRemove = null;

    Itr()
    {
    }

    private void checkForConcurrentModification()
    {
      if (HashBiMap.this.modCount != this.expectedModCount)
        throw new ConcurrentModificationException();
    }

    public boolean hasNext()
    {
      checkForConcurrentModification();
      if (this.next != null)
        return true;
      do
      {
        this.nextBucket = (1 + this.nextBucket);
        if (this.nextBucket >= HashBiMap.this.hashTableKToV.length)
          break;
      }
      while (HashBiMap.this.hashTableKToV[this.nextBucket] == null);
      HashBiMap.BiEntry[] arrayOfBiEntry = HashBiMap.this.hashTableKToV;
      int i = this.nextBucket;
      this.nextBucket = (i + 1);
      this.next = arrayOfBiEntry[i];
      return true;
      return false;
    }

    public T next()
    {
      checkForConcurrentModification();
      if (!hasNext())
        throw new NoSuchElementException();
      HashBiMap.BiEntry localBiEntry = this.next;
      this.next = localBiEntry.nextInKToVBucket;
      this.toRemove = localBiEntry;
      return output(localBiEntry);
    }

    abstract T output(HashBiMap.BiEntry<K, V> paramBiEntry);

    public void remove()
    {
      checkForConcurrentModification();
      if (this.toRemove != null);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkState(bool, "Only one remove() call allowed per call to next");
        HashBiMap.this.delete(this.toRemove);
        this.expectedModCount = HashBiMap.this.modCount;
        this.toRemove = null;
        return;
      }
    }
  }

  private final class KeySet extends Maps.KeySet<K, V>
  {
    private KeySet()
    {
    }

    public Iterator<K> iterator()
    {
      // Byte code:
      //   0: new 21	com/google/common/collect/HashBiMap$KeySet$1
      //   3: dup
      //   4: aload_0
      //   5: invokespecial 24	com/google/common/collect/HashBiMap$KeySet$1:<init>	(Lcom/google/common/collect/HashBiMap$KeySet;)V
      //   8: areturn
    }

    Map<K, V> map()
    {
      return HashBiMap.this;
    }

    public boolean remove(@Nullable Object paramObject)
    {
      HashBiMap.BiEntry localBiEntry = HashBiMap.this.seekByKey(paramObject, HashBiMap.access$400(paramObject));
      if (localBiEntry == null)
        return false;
      HashBiMap.this.delete(localBiEntry);
      return true;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.HashBiMap
 * JD-Core Version:    0.6.2
 */