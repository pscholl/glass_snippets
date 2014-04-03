package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
public final class LinkedHashMultimap<K, V> extends AbstractSetMultimap<K, V>
{
  private static final int DEFAULT_KEY_CAPACITY = 16;
  private static final int DEFAULT_VALUE_SET_CAPACITY = 2;

  @VisibleForTesting
  static final double VALUE_SET_LOAD_FACTOR = 1.0D;

  @GwtIncompatible("java serialization not supported")
  private static final long serialVersionUID = 1L;
  private transient ValueEntry<K, V> multimapHeaderEntry;

  @VisibleForTesting
  transient int valueSetCapacity = 2;

  private LinkedHashMultimap(int paramInt1, int paramInt2)
  {
    super(new LinkedHashMap(paramInt1));
    if (paramInt2 >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt2);
      Preconditions.checkArgument(bool, "expectedValuesPerKey must be >= 0 but was %s", arrayOfObject);
      this.valueSetCapacity = paramInt2;
      this.multimapHeaderEntry = new ValueEntry(null, null, 0, null);
      succeedsInMultimap(this.multimapHeaderEntry, this.multimapHeaderEntry);
      return;
    }
  }

  public static <K, V> LinkedHashMultimap<K, V> create()
  {
    return new LinkedHashMultimap(16, 2);
  }

  public static <K, V> LinkedHashMultimap<K, V> create(int paramInt1, int paramInt2)
  {
    return new LinkedHashMultimap(Maps.capacity(paramInt1), Maps.capacity(paramInt2));
  }

  public static <K, V> LinkedHashMultimap<K, V> create(Multimap<? extends K, ? extends V> paramMultimap)
  {
    LinkedHashMultimap localLinkedHashMultimap = create(paramMultimap.keySet().size(), 2);
    localLinkedHashMultimap.putAll(paramMultimap);
    return localLinkedHashMultimap;
  }

  private static <K, V> void deleteFromMultimap(ValueEntry<K, V> paramValueEntry)
  {
    succeedsInMultimap(paramValueEntry.getPredecessorInMultimap(), paramValueEntry.getSuccessorInMultimap());
  }

  private static <K, V> void deleteFromValueSet(ValueSetLink<K, V> paramValueSetLink)
  {
    succeedsInValueSet(paramValueSetLink.getPredecessorInValueSet(), paramValueSetLink.getSuccessorInValueSet());
  }

  @GwtIncompatible("java.io.ObjectInputStream")
  private void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    paramObjectInputStream.defaultReadObject();
    this.multimapHeaderEntry = new ValueEntry(null, null, 0, null);
    succeedsInMultimap(this.multimapHeaderEntry, this.multimapHeaderEntry);
    this.valueSetCapacity = paramObjectInputStream.readInt();
    int i = paramObjectInputStream.readInt();
    LinkedHashMap localLinkedHashMap = new LinkedHashMap(Maps.capacity(i));
    for (int j = 0; j < i; j++)
    {
      Object localObject3 = paramObjectInputStream.readObject();
      localLinkedHashMap.put(localObject3, createCollection(localObject3));
    }
    int k = paramObjectInputStream.readInt();
    for (int m = 0; m < k; m++)
    {
      Object localObject1 = paramObjectInputStream.readObject();
      Object localObject2 = paramObjectInputStream.readObject();
      ((Collection)localLinkedHashMap.get(localObject1)).add(localObject2);
    }
    setMap(localLinkedHashMap);
  }

  private static <K, V> void succeedsInMultimap(ValueEntry<K, V> paramValueEntry1, ValueEntry<K, V> paramValueEntry2)
  {
    paramValueEntry1.setSuccessorInMultimap(paramValueEntry2);
    paramValueEntry2.setPredecessorInMultimap(paramValueEntry1);
  }

  private static <K, V> void succeedsInValueSet(ValueSetLink<K, V> paramValueSetLink1, ValueSetLink<K, V> paramValueSetLink2)
  {
    paramValueSetLink1.setSuccessorInValueSet(paramValueSetLink2);
    paramValueSetLink2.setPredecessorInValueSet(paramValueSetLink1);
  }

  @GwtIncompatible("java.io.ObjectOutputStream")
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeInt(this.valueSetCapacity);
    paramObjectOutputStream.writeInt(keySet().size());
    Iterator localIterator1 = keySet().iterator();
    while (localIterator1.hasNext())
      paramObjectOutputStream.writeObject(localIterator1.next());
    paramObjectOutputStream.writeInt(size());
    Iterator localIterator2 = entries().iterator();
    while (localIterator2.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator2.next();
      paramObjectOutputStream.writeObject(localEntry.getKey());
      paramObjectOutputStream.writeObject(localEntry.getValue());
    }
  }

  public void clear()
  {
    super.clear();
    succeedsInMultimap(this.multimapHeaderEntry, this.multimapHeaderEntry);
  }

  Collection<V> createCollection(K paramK)
  {
    return new ValueSet(paramK, this.valueSetCapacity);
  }

  Set<V> createCollection()
  {
    return new LinkedHashSet(this.valueSetCapacity);
  }

  public Set<Map.Entry<K, V>> entries()
  {
    return super.entries();
  }

  Iterator<Map.Entry<K, V>> entryIterator()
  {
    return new Iterator()
    {
      LinkedHashMultimap.ValueEntry<K, V> nextEntry = LinkedHashMultimap.this.multimapHeaderEntry.successorInMultimap;
      LinkedHashMultimap.ValueEntry<K, V> toRemove;

      public boolean hasNext()
      {
        return this.nextEntry != LinkedHashMultimap.this.multimapHeaderEntry;
      }

      public Map.Entry<K, V> next()
      {
        if (!hasNext())
          throw new NoSuchElementException();
        LinkedHashMultimap.ValueEntry localValueEntry = this.nextEntry;
        this.toRemove = localValueEntry;
        this.nextEntry = this.nextEntry.successorInMultimap;
        return localValueEntry;
      }

      public void remove()
      {
        if (this.toRemove != null);
        for (boolean bool = true; ; bool = false)
        {
          Iterators.checkRemove(bool);
          LinkedHashMultimap.this.remove(this.toRemove.getKey(), this.toRemove.getValue());
          this.toRemove = null;
          return;
        }
      }
    };
  }

  public Set<V> replaceValues(@Nullable K paramK, Iterable<? extends V> paramIterable)
  {
    return super.replaceValues(paramK, paramIterable);
  }

  public Collection<V> values()
  {
    return super.values();
  }

  @VisibleForTesting
  static final class ValueEntry<K, V> extends AbstractMapEntry<K, V>
    implements LinkedHashMultimap.ValueSetLink<K, V>
  {
    final K key;

    @Nullable
    ValueEntry<K, V> nextInValueSetHashRow;
    ValueEntry<K, V> predecessorInMultimap;
    LinkedHashMultimap.ValueSetLink<K, V> predecessorInValueSet;
    ValueEntry<K, V> successorInMultimap;
    LinkedHashMultimap.ValueSetLink<K, V> successorInValueSet;
    final V value;
    final int valueHash;

    ValueEntry(@Nullable K paramK, @Nullable V paramV, int paramInt, @Nullable ValueEntry<K, V> paramValueEntry)
    {
      this.key = paramK;
      this.value = paramV;
      this.valueHash = paramInt;
      this.nextInValueSetHashRow = paramValueEntry;
    }

    public K getKey()
    {
      return this.key;
    }

    public ValueEntry<K, V> getPredecessorInMultimap()
    {
      return this.predecessorInMultimap;
    }

    public LinkedHashMultimap.ValueSetLink<K, V> getPredecessorInValueSet()
    {
      return this.predecessorInValueSet;
    }

    public ValueEntry<K, V> getSuccessorInMultimap()
    {
      return this.successorInMultimap;
    }

    public LinkedHashMultimap.ValueSetLink<K, V> getSuccessorInValueSet()
    {
      return this.successorInValueSet;
    }

    public V getValue()
    {
      return this.value;
    }

    public void setPredecessorInMultimap(ValueEntry<K, V> paramValueEntry)
    {
      this.predecessorInMultimap = paramValueEntry;
    }

    public void setPredecessorInValueSet(LinkedHashMultimap.ValueSetLink<K, V> paramValueSetLink)
    {
      this.predecessorInValueSet = paramValueSetLink;
    }

    public void setSuccessorInMultimap(ValueEntry<K, V> paramValueEntry)
    {
      this.successorInMultimap = paramValueEntry;
    }

    public void setSuccessorInValueSet(LinkedHashMultimap.ValueSetLink<K, V> paramValueSetLink)
    {
      this.successorInValueSet = paramValueSetLink;
    }
  }

  @VisibleForTesting
  final class ValueSet extends Sets.ImprovedAbstractSet<V>
    implements LinkedHashMultimap.ValueSetLink<K, V>
  {
    private LinkedHashMultimap.ValueSetLink<K, V> firstEntry;

    @VisibleForTesting
    LinkedHashMultimap.ValueEntry<K, V>[] hashTable;
    private final K key;
    private LinkedHashMultimap.ValueSetLink<K, V> lastEntry;
    private int modCount = 0;
    private int size = 0;

    ValueSet(int arg2)
    {
      Object localObject;
      this.key = localObject;
      this.firstEntry = this;
      this.lastEntry = this;
      int i;
      this.hashTable = new LinkedHashMultimap.ValueEntry[Hashing.closedTableSize(i, 1.0D)];
    }

    private void rehashIfNecessary()
    {
      if (Hashing.needsResizing(this.size, this.hashTable.length, 1.0D))
      {
        LinkedHashMultimap.ValueEntry[] arrayOfValueEntry = new LinkedHashMultimap.ValueEntry[2 * this.hashTable.length];
        this.hashTable = arrayOfValueEntry;
        int i = -1 + arrayOfValueEntry.length;
        for (LinkedHashMultimap.ValueSetLink localValueSetLink = this.firstEntry; localValueSetLink != this; localValueSetLink = localValueSetLink.getSuccessorInValueSet())
        {
          LinkedHashMultimap.ValueEntry localValueEntry = (LinkedHashMultimap.ValueEntry)localValueSetLink;
          int j = i & Hashing.smear(localValueEntry.valueHash);
          localValueEntry.nextInValueSetHashRow = arrayOfValueEntry[j];
          arrayOfValueEntry[j] = localValueEntry;
        }
      }
    }

    public boolean add(@Nullable V paramV)
    {
      int i;
      int j;
      LinkedHashMultimap.ValueEntry localValueEntry1;
      if (paramV == null)
      {
        i = 0;
        j = Hashing.smear(i) & -1 + this.hashTable.length;
        localValueEntry1 = this.hashTable[j];
      }
      for (LinkedHashMultimap.ValueEntry localValueEntry2 = localValueEntry1; ; localValueEntry2 = localValueEntry2.nextInValueSetHashRow)
      {
        if (localValueEntry2 == null)
          break label77;
        if ((i == localValueEntry2.valueHash) && (Objects.equal(paramV, localValueEntry2.getValue())))
        {
          return false;
          i = paramV.hashCode();
          break;
        }
      }
      label77: LinkedHashMultimap.ValueEntry localValueEntry3 = new LinkedHashMultimap.ValueEntry(this.key, paramV, i, localValueEntry1);
      LinkedHashMultimap.succeedsInValueSet(this.lastEntry, localValueEntry3);
      LinkedHashMultimap.succeedsInValueSet(localValueEntry3, this);
      LinkedHashMultimap.succeedsInMultimap(LinkedHashMultimap.this.multimapHeaderEntry.getPredecessorInMultimap(), localValueEntry3);
      LinkedHashMultimap.succeedsInMultimap(localValueEntry3, LinkedHashMultimap.this.multimapHeaderEntry);
      this.hashTable[j] = localValueEntry3;
      this.size = (1 + this.size);
      this.modCount = (1 + this.modCount);
      rehashIfNecessary();
      return true;
    }

    public void clear()
    {
      Arrays.fill(this.hashTable, null);
      this.size = 0;
      for (LinkedHashMultimap.ValueSetLink localValueSetLink = this.firstEntry; localValueSetLink != this; localValueSetLink = localValueSetLink.getSuccessorInValueSet())
        LinkedHashMultimap.deleteFromMultimap((LinkedHashMultimap.ValueEntry)localValueSetLink);
      LinkedHashMultimap.succeedsInValueSet(this, this);
      this.modCount = (1 + this.modCount);
    }

    public boolean contains(@Nullable Object paramObject)
    {
      int i;
      int j;
      if (paramObject == null)
      {
        i = 0;
        j = Hashing.smear(i) & -1 + this.hashTable.length;
      }
      for (LinkedHashMultimap.ValueEntry localValueEntry = this.hashTable[j]; ; localValueEntry = localValueEntry.nextInValueSetHashRow)
      {
        boolean bool = false;
        if (localValueEntry != null)
        {
          if ((i == localValueEntry.valueHash) && (Objects.equal(paramObject, localValueEntry.getValue())))
            bool = true;
        }
        else
        {
          return bool;
          i = paramObject.hashCode();
          break;
        }
      }
    }

    public LinkedHashMultimap.ValueSetLink<K, V> getPredecessorInValueSet()
    {
      return this.lastEntry;
    }

    public LinkedHashMultimap.ValueSetLink<K, V> getSuccessorInValueSet()
    {
      return this.firstEntry;
    }

    public Iterator<V> iterator()
    {
      return new Iterator()
      {
        int expectedModCount = LinkedHashMultimap.ValueSet.this.modCount;
        LinkedHashMultimap.ValueSetLink<K, V> nextEntry = LinkedHashMultimap.ValueSet.this.firstEntry;
        LinkedHashMultimap.ValueEntry<K, V> toRemove;

        private void checkForComodification()
        {
          if (LinkedHashMultimap.ValueSet.this.modCount != this.expectedModCount)
            throw new ConcurrentModificationException();
        }

        public boolean hasNext()
        {
          checkForComodification();
          return this.nextEntry != LinkedHashMultimap.ValueSet.this;
        }

        public V next()
        {
          if (!hasNext())
            throw new NoSuchElementException();
          LinkedHashMultimap.ValueEntry localValueEntry = (LinkedHashMultimap.ValueEntry)this.nextEntry;
          Object localObject = localValueEntry.getValue();
          this.toRemove = localValueEntry;
          this.nextEntry = localValueEntry.getSuccessorInValueSet();
          return localObject;
        }

        public void remove()
        {
          checkForComodification();
          boolean bool;
          Object localObject1;
          int i;
          label31: int j;
          Object localObject2;
          if (this.toRemove != null)
          {
            bool = true;
            Iterators.checkRemove(bool);
            localObject1 = this.toRemove.getValue();
            if (localObject1 != null)
              break label141;
            i = 0;
            j = Hashing.smear(i) & -1 + LinkedHashMultimap.ValueSet.this.hashTable.length;
            localObject2 = null;
          }
          for (LinkedHashMultimap.ValueEntry localValueEntry = LinkedHashMultimap.ValueSet.this.hashTable[j]; ; localValueEntry = localValueEntry.nextInValueSetHashRow)
          {
            if (localValueEntry != null)
            {
              if (localValueEntry != this.toRemove)
                break label162;
              if (localObject2 != null)
                break label149;
              LinkedHashMultimap.ValueSet.this.hashTable[j] = localValueEntry.nextInValueSetHashRow;
            }
            while (true)
            {
              LinkedHashMultimap.deleteFromValueSet(this.toRemove);
              LinkedHashMultimap.deleteFromMultimap(this.toRemove);
              LinkedHashMultimap.ValueSet.access$410(LinkedHashMultimap.ValueSet.this);
              this.expectedModCount = LinkedHashMultimap.ValueSet.access$104(LinkedHashMultimap.ValueSet.this);
              this.toRemove = null;
              return;
              bool = false;
              break;
              label141: i = localObject1.hashCode();
              break label31;
              label149: localObject2.nextInValueSetHashRow = localValueEntry.nextInValueSetHashRow;
            }
            label162: localObject2 = localValueEntry;
          }
        }
      };
    }

    public boolean remove(@Nullable Object paramObject)
    {
      int i;
      int j;
      Object localObject;
      if (paramObject == null)
      {
        i = 0;
        j = Hashing.smear(i) & -1 + this.hashTable.length;
        localObject = null;
      }
      for (LinkedHashMultimap.ValueEntry localValueEntry = this.hashTable[j]; ; localValueEntry = localValueEntry.nextInValueSetHashRow)
      {
        boolean bool = false;
        if (localValueEntry != null)
        {
          if ((i != localValueEntry.valueHash) || (!Objects.equal(paramObject, localValueEntry.getValue())))
            break label132;
          if (localObject != null)
            break label119;
          this.hashTable[j] = localValueEntry.nextInValueSetHashRow;
        }
        while (true)
        {
          LinkedHashMultimap.deleteFromValueSet(localValueEntry);
          LinkedHashMultimap.deleteFromMultimap(localValueEntry);
          this.size = (-1 + this.size);
          this.modCount = (1 + this.modCount);
          bool = true;
          return bool;
          i = paramObject.hashCode();
          break;
          label119: localObject.nextInValueSetHashRow = localValueEntry.nextInValueSetHashRow;
        }
        label132: localObject = localValueEntry;
      }
    }

    public void setPredecessorInValueSet(LinkedHashMultimap.ValueSetLink<K, V> paramValueSetLink)
    {
      this.lastEntry = paramValueSetLink;
    }

    public void setSuccessorInValueSet(LinkedHashMultimap.ValueSetLink<K, V> paramValueSetLink)
    {
      this.firstEntry = paramValueSetLink;
    }

    public int size()
    {
      return this.size;
    }
  }

  private static abstract interface ValueSetLink<K, V>
  {
    public abstract ValueSetLink<K, V> getPredecessorInValueSet();

    public abstract ValueSetLink<K, V> getSuccessorInValueSet();

    public abstract void setPredecessorInValueSet(ValueSetLink<K, V> paramValueSetLink);

    public abstract void setSuccessorInValueSet(ValueSetLink<K, V> paramValueSetLink);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.LinkedHashMultimap
 * JD-Core Version:    0.6.2
 */