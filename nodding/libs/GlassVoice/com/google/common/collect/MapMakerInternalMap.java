package com.google.common.collect;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Equivalence;
import com.google.common.base.Preconditions;
import com.google.common.base.Ticker;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractQueue;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

class MapMakerInternalMap<K, V> extends AbstractMap<K, V>
  implements ConcurrentMap<K, V>, Serializable
{
  static final long CLEANUP_EXECUTOR_DELAY_SECS = 60L;
  static final int CONTAINS_VALUE_RETRIES = 3;
  static final Queue<? extends Object> DISCARDING_QUEUE = new AbstractQueue()
  {
    public Iterator<Object> iterator()
    {
      return Iterators.emptyIterator();
    }

    public boolean offer(Object paramAnonymousObject)
    {
      return true;
    }

    public Object peek()
    {
      return null;
    }

    public Object poll()
    {
      return null;
    }

    public int size()
    {
      return 0;
    }
  };
  static final int DRAIN_MAX = 16;
  static final int DRAIN_THRESHOLD = 63;
  static final int MAXIMUM_CAPACITY = 1073741824;
  static final int MAX_SEGMENTS = 65536;
  static final ValueReference<Object, Object> UNSET;
  private static final Logger logger = Logger.getLogger(MapMakerInternalMap.class.getName());
  private static final long serialVersionUID = 5L;
  final int concurrencyLevel;
  final transient EntryFactory entryFactory;
  transient Set<Map.Entry<K, V>> entrySet;
  final long expireAfterAccessNanos;
  final long expireAfterWriteNanos;
  final Equivalence<Object> keyEquivalence;
  transient Set<K> keySet;
  final Strength keyStrength;
  final int maximumSize;
  final MapMaker.RemovalListener<K, V> removalListener;
  final Queue<MapMaker.RemovalNotification<K, V>> removalNotificationQueue;
  final transient int segmentMask;
  final transient int segmentShift;
  final transient Segment<K, V>[] segments;
  final Ticker ticker;
  final Equivalence<Object> valueEquivalence;
  final Strength valueStrength;
  transient Collection<V> values;

  static
  {
    UNSET = new ValueReference()
    {
      public void clear(MapMakerInternalMap.ValueReference<Object, Object> paramAnonymousValueReference)
      {
      }

      public MapMakerInternalMap.ValueReference<Object, Object> copyFor(ReferenceQueue<Object> paramAnonymousReferenceQueue, @Nullable Object paramAnonymousObject, MapMakerInternalMap.ReferenceEntry<Object, Object> paramAnonymousReferenceEntry)
      {
        return this;
      }

      public Object get()
      {
        return null;
      }

      public MapMakerInternalMap.ReferenceEntry<Object, Object> getEntry()
      {
        return null;
      }

      public boolean isComputingReference()
      {
        return false;
      }

      public Object waitForValue()
      {
        return null;
      }
    };
  }

  MapMakerInternalMap(MapMaker paramMapMaker)
  {
    this.concurrencyLevel = Math.min(paramMapMaker.getConcurrencyLevel(), 65536);
    this.keyStrength = paramMapMaker.getKeyStrength();
    this.valueStrength = paramMapMaker.getValueStrength();
    this.keyEquivalence = paramMapMaker.getKeyEquivalence();
    this.valueEquivalence = this.valueStrength.defaultEquivalence();
    this.maximumSize = paramMapMaker.maximumSize;
    this.expireAfterAccessNanos = paramMapMaker.getExpireAfterAccessNanos();
    this.expireAfterWriteNanos = paramMapMaker.getExpireAfterWriteNanos();
    this.entryFactory = EntryFactory.getFactory(this.keyStrength, expires(), evictsBySize());
    this.ticker = paramMapMaker.getTicker();
    this.removalListener = paramMapMaker.getRemovalListener();
    if (this.removalListener == GenericMapMaker.NullListener.INSTANCE);
    int i;
    int j;
    int k;
    for (Object localObject = discardingQueue(); ; localObject = new ConcurrentLinkedQueue())
    {
      this.removalNotificationQueue = ((Queue)localObject);
      i = Math.min(paramMapMaker.getInitialCapacity(), 1073741824);
      if (evictsBySize())
        i = Math.min(i, this.maximumSize);
      j = 0;
      k = 1;
      while ((k < this.concurrencyLevel) && ((!evictsBySize()) || (k * 2 <= this.maximumSize)))
      {
        j++;
        k <<= 1;
      }
    }
    this.segmentShift = (32 - j);
    this.segmentMask = (k - 1);
    this.segments = newSegmentArray(k);
    int m = i / k;
    if (m * k < i)
      m++;
    int n = 1;
    while (n < m)
      n <<= 1;
    if (evictsBySize())
    {
      int i2 = 1 + this.maximumSize / k;
      int i3 = this.maximumSize % k;
      for (int i4 = 0; i4 < this.segments.length; i4++)
      {
        if (i4 == i3)
          i2--;
        this.segments[i4] = createSegment(n, i2);
      }
    }
    for (int i1 = 0; i1 < this.segments.length; i1++)
      this.segments[i1] = createSegment(n, -1);
  }

  @GuardedBy("Segment.this")
  static <K, V> void connectEvictables(ReferenceEntry<K, V> paramReferenceEntry1, ReferenceEntry<K, V> paramReferenceEntry2)
  {
    paramReferenceEntry1.setNextEvictable(paramReferenceEntry2);
    paramReferenceEntry2.setPreviousEvictable(paramReferenceEntry1);
  }

  @GuardedBy("Segment.this")
  static <K, V> void connectExpirables(ReferenceEntry<K, V> paramReferenceEntry1, ReferenceEntry<K, V> paramReferenceEntry2)
  {
    paramReferenceEntry1.setNextExpirable(paramReferenceEntry2);
    paramReferenceEntry2.setPreviousExpirable(paramReferenceEntry1);
  }

  static <E> Queue<E> discardingQueue()
  {
    return DISCARDING_QUEUE;
  }

  static <K, V> ReferenceEntry<K, V> nullEntry()
  {
    return NullEntry.INSTANCE;
  }

  @GuardedBy("Segment.this")
  static <K, V> void nullifyEvictable(ReferenceEntry<K, V> paramReferenceEntry)
  {
    ReferenceEntry localReferenceEntry = nullEntry();
    paramReferenceEntry.setNextEvictable(localReferenceEntry);
    paramReferenceEntry.setPreviousEvictable(localReferenceEntry);
  }

  @GuardedBy("Segment.this")
  static <K, V> void nullifyExpirable(ReferenceEntry<K, V> paramReferenceEntry)
  {
    ReferenceEntry localReferenceEntry = nullEntry();
    paramReferenceEntry.setNextExpirable(localReferenceEntry);
    paramReferenceEntry.setPreviousExpirable(localReferenceEntry);
  }

  static int rehash(int paramInt)
  {
    int i = paramInt + (0xFFFFCD7D ^ paramInt << 15);
    int j = i ^ i >>> 10;
    int k = j + (j << 3);
    int m = k ^ k >>> 6;
    int n = m + ((m << 2) + (m << 14));
    return n ^ n >>> 16;
  }

  static <K, V> ValueReference<K, V> unset()
  {
    return UNSET;
  }

  public void clear()
  {
    Segment[] arrayOfSegment = this.segments;
    int i = arrayOfSegment.length;
    for (int j = 0; j < i; j++)
      arrayOfSegment[j].clear();
  }

  public boolean containsKey(@Nullable Object paramObject)
  {
    if (paramObject == null)
      return false;
    int i = hash(paramObject);
    return segmentFor(i).containsKey(paramObject, i);
  }

  public boolean containsValue(@Nullable Object paramObject)
  {
    if (paramObject == null)
      return false;
    Segment[] arrayOfSegment = this.segments;
    long l1 = -1L;
    for (int i = 0; ; i++)
    {
      long l2;
      if (i < 3)
      {
        l2 = 0L;
        int j = arrayOfSegment.length;
        for (int k = 0; k < j; k++)
        {
          Segment localSegment = arrayOfSegment[k];
          AtomicReferenceArray localAtomicReferenceArray = localSegment.table;
          for (int m = 0; m < localAtomicReferenceArray.length(); m++)
            for (ReferenceEntry localReferenceEntry = (ReferenceEntry)localAtomicReferenceArray.get(m); localReferenceEntry != null; localReferenceEntry = localReferenceEntry.getNext())
            {
              Object localObject = localSegment.getLiveValue(localReferenceEntry);
              if ((localObject != null) && (this.valueEquivalence.equivalent(paramObject, localObject)))
                return true;
            }
          l2 += localSegment.modCount;
        }
        if (l2 != l1);
      }
      else
      {
        return false;
      }
      l1 = l2;
    }
  }

  @VisibleForTesting
  @GuardedBy("Segment.this")
  ReferenceEntry<K, V> copyEntry(ReferenceEntry<K, V> paramReferenceEntry1, ReferenceEntry<K, V> paramReferenceEntry2)
  {
    return segmentFor(paramReferenceEntry1.getHash()).copyEntry(paramReferenceEntry1, paramReferenceEntry2);
  }

  Segment<K, V> createSegment(int paramInt1, int paramInt2)
  {
    return new Segment(this, paramInt1, paramInt2);
  }

  public Set<Map.Entry<K, V>> entrySet()
  {
    Set localSet = this.entrySet;
    if (localSet != null)
      return localSet;
    EntrySet localEntrySet = new EntrySet();
    this.entrySet = localEntrySet;
    return localEntrySet;
  }

  boolean evictsBySize()
  {
    return this.maximumSize != -1;
  }

  boolean expires()
  {
    return (expiresAfterWrite()) || (expiresAfterAccess());
  }

  boolean expiresAfterAccess()
  {
    return this.expireAfterAccessNanos > 0L;
  }

  boolean expiresAfterWrite()
  {
    return this.expireAfterWriteNanos > 0L;
  }

  public V get(@Nullable Object paramObject)
  {
    if (paramObject == null)
      return null;
    int i = hash(paramObject);
    return segmentFor(i).get(paramObject, i);
  }

  ReferenceEntry<K, V> getEntry(@Nullable Object paramObject)
  {
    if (paramObject == null)
      return null;
    int i = hash(paramObject);
    return segmentFor(i).getEntry(paramObject, i);
  }

  V getLiveValue(ReferenceEntry<K, V> paramReferenceEntry)
  {
    Object localObject;
    if (paramReferenceEntry.getKey() == null)
      localObject = null;
    do
    {
      return localObject;
      localObject = paramReferenceEntry.getValueReference().get();
      if (localObject == null)
        return null;
    }
    while ((!expires()) || (!isExpired(paramReferenceEntry)));
    return null;
  }

  int hash(Object paramObject)
  {
    return rehash(this.keyEquivalence.hash(paramObject));
  }

  public boolean isEmpty()
  {
    long l = 0L;
    Segment[] arrayOfSegment = this.segments;
    int i = 0;
    if (i < arrayOfSegment.length)
      if (arrayOfSegment[i].count == 0);
    label89: 
    do
    {
      return false;
      l += arrayOfSegment[i].modCount;
      i++;
      break;
      if (l == 0L)
        break label95;
      for (int j = 0; ; j++)
      {
        if (j >= arrayOfSegment.length)
          break label89;
        if (arrayOfSegment[j].count != 0)
          break;
        l -= arrayOfSegment[j].modCount;
      }
    }
    while (l != 0L);
    label95: return true;
  }

  boolean isExpired(ReferenceEntry<K, V> paramReferenceEntry)
  {
    return isExpired(paramReferenceEntry, this.ticker.read());
  }

  boolean isExpired(ReferenceEntry<K, V> paramReferenceEntry, long paramLong)
  {
    return paramLong - paramReferenceEntry.getExpirationTime() > 0L;
  }

  @VisibleForTesting
  boolean isLive(ReferenceEntry<K, V> paramReferenceEntry)
  {
    return segmentFor(paramReferenceEntry.getHash()).getLiveValue(paramReferenceEntry) != null;
  }

  public Set<K> keySet()
  {
    Set localSet = this.keySet;
    if (localSet != null)
      return localSet;
    KeySet localKeySet = new KeySet();
    this.keySet = localKeySet;
    return localKeySet;
  }

  @VisibleForTesting
  @GuardedBy("Segment.this")
  ReferenceEntry<K, V> newEntry(K paramK, int paramInt, @Nullable ReferenceEntry<K, V> paramReferenceEntry)
  {
    return segmentFor(paramInt).newEntry(paramK, paramInt, paramReferenceEntry);
  }

  final Segment<K, V>[] newSegmentArray(int paramInt)
  {
    return new Segment[paramInt];
  }

  @VisibleForTesting
  @GuardedBy("Segment.this")
  ValueReference<K, V> newValueReference(ReferenceEntry<K, V> paramReferenceEntry, V paramV)
  {
    int i = paramReferenceEntry.getHash();
    return this.valueStrength.referenceValue(segmentFor(i), paramReferenceEntry, paramV);
  }

  void processPendingNotifications()
  {
    while (true)
    {
      MapMaker.RemovalNotification localRemovalNotification = (MapMaker.RemovalNotification)this.removalNotificationQueue.poll();
      if (localRemovalNotification == null)
        break;
      try
      {
        this.removalListener.onRemoval(localRemovalNotification);
      }
      catch (Exception localException)
      {
        logger.log(Level.WARNING, "Exception thrown by removal listener", localException);
      }
    }
  }

  public V put(K paramK, V paramV)
  {
    Preconditions.checkNotNull(paramK);
    Preconditions.checkNotNull(paramV);
    int i = hash(paramK);
    return segmentFor(i).put(paramK, i, paramV, false);
  }

  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      put(localEntry.getKey(), localEntry.getValue());
    }
  }

  public V putIfAbsent(K paramK, V paramV)
  {
    Preconditions.checkNotNull(paramK);
    Preconditions.checkNotNull(paramV);
    int i = hash(paramK);
    return segmentFor(i).put(paramK, i, paramV, true);
  }

  void reclaimKey(ReferenceEntry<K, V> paramReferenceEntry)
  {
    int i = paramReferenceEntry.getHash();
    segmentFor(i).reclaimKey(paramReferenceEntry, i);
  }

  void reclaimValue(ValueReference<K, V> paramValueReference)
  {
    ReferenceEntry localReferenceEntry = paramValueReference.getEntry();
    int i = localReferenceEntry.getHash();
    segmentFor(i).reclaimValue(localReferenceEntry.getKey(), i, paramValueReference);
  }

  public V remove(@Nullable Object paramObject)
  {
    if (paramObject == null)
      return null;
    int i = hash(paramObject);
    return segmentFor(i).remove(paramObject, i);
  }

  public boolean remove(@Nullable Object paramObject1, @Nullable Object paramObject2)
  {
    if ((paramObject1 == null) || (paramObject2 == null))
      return false;
    int i = hash(paramObject1);
    return segmentFor(i).remove(paramObject1, i, paramObject2);
  }

  public V replace(K paramK, V paramV)
  {
    Preconditions.checkNotNull(paramK);
    Preconditions.checkNotNull(paramV);
    int i = hash(paramK);
    return segmentFor(i).replace(paramK, i, paramV);
  }

  public boolean replace(K paramK, @Nullable V paramV1, V paramV2)
  {
    Preconditions.checkNotNull(paramK);
    Preconditions.checkNotNull(paramV2);
    if (paramV1 == null)
      return false;
    int i = hash(paramK);
    return segmentFor(i).replace(paramK, i, paramV1, paramV2);
  }

  Segment<K, V> segmentFor(int paramInt)
  {
    return this.segments[(paramInt >>> this.segmentShift & this.segmentMask)];
  }

  public int size()
  {
    Segment[] arrayOfSegment = this.segments;
    long l = 0L;
    for (int i = 0; i < arrayOfSegment.length; i++)
      l += arrayOfSegment[i].count;
    return Ints.saturatedCast(l);
  }

  boolean usesKeyReferences()
  {
    return this.keyStrength != Strength.STRONG;
  }

  boolean usesValueReferences()
  {
    return this.valueStrength != Strength.STRONG;
  }

  public Collection<V> values()
  {
    Collection localCollection = this.values;
    if (localCollection != null)
      return localCollection;
    Values localValues = new Values();
    this.values = localValues;
    return localValues;
  }

  Object writeReplace()
  {
    return new SerializationProxy(this.keyStrength, this.valueStrength, this.keyEquivalence, this.valueEquivalence, this.expireAfterWriteNanos, this.expireAfterAccessNanos, this.maximumSize, this.concurrencyLevel, this.removalListener, this);
  }

  static abstract class AbstractReferenceEntry<K, V>
    implements MapMakerInternalMap.ReferenceEntry<K, V>
  {
    public long getExpirationTime()
    {
      throw new UnsupportedOperationException();
    }

    public int getHash()
    {
      throw new UnsupportedOperationException();
    }

    public K getKey()
    {
      throw new UnsupportedOperationException();
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNext()
    {
      throw new UnsupportedOperationException();
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNextEvictable()
    {
      throw new UnsupportedOperationException();
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNextExpirable()
    {
      throw new UnsupportedOperationException();
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousEvictable()
    {
      throw new UnsupportedOperationException();
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousExpirable()
    {
      throw new UnsupportedOperationException();
    }

    public MapMakerInternalMap.ValueReference<K, V> getValueReference()
    {
      throw new UnsupportedOperationException();
    }

    public void setExpirationTime(long paramLong)
    {
      throw new UnsupportedOperationException();
    }

    public void setNextEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setNextExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setPreviousEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setPreviousExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setValueReference(MapMakerInternalMap.ValueReference<K, V> paramValueReference)
    {
      throw new UnsupportedOperationException();
    }
  }

  static abstract class AbstractSerializationProxy<K, V> extends ForwardingConcurrentMap<K, V>
    implements Serializable
  {
    private static final long serialVersionUID = 3L;
    final int concurrencyLevel;
    transient ConcurrentMap<K, V> delegate;
    final long expireAfterAccessNanos;
    final long expireAfterWriteNanos;
    final Equivalence<Object> keyEquivalence;
    final MapMakerInternalMap.Strength keyStrength;
    final int maximumSize;
    final MapMaker.RemovalListener<? super K, ? super V> removalListener;
    final Equivalence<Object> valueEquivalence;
    final MapMakerInternalMap.Strength valueStrength;

    AbstractSerializationProxy(MapMakerInternalMap.Strength paramStrength1, MapMakerInternalMap.Strength paramStrength2, Equivalence<Object> paramEquivalence1, Equivalence<Object> paramEquivalence2, long paramLong1, long paramLong2, int paramInt1, int paramInt2, MapMaker.RemovalListener<? super K, ? super V> paramRemovalListener, ConcurrentMap<K, V> paramConcurrentMap)
    {
      this.keyStrength = paramStrength1;
      this.valueStrength = paramStrength2;
      this.keyEquivalence = paramEquivalence1;
      this.valueEquivalence = paramEquivalence2;
      this.expireAfterWriteNanos = paramLong1;
      this.expireAfterAccessNanos = paramLong2;
      this.maximumSize = paramInt1;
      this.concurrencyLevel = paramInt2;
      this.removalListener = paramRemovalListener;
      this.delegate = paramConcurrentMap;
    }

    protected ConcurrentMap<K, V> delegate()
    {
      return this.delegate;
    }

    void readEntries(ObjectInputStream paramObjectInputStream)
      throws IOException, ClassNotFoundException
    {
      while (true)
      {
        Object localObject1 = paramObjectInputStream.readObject();
        if (localObject1 == null)
          return;
        Object localObject2 = paramObjectInputStream.readObject();
        this.delegate.put(localObject1, localObject2);
      }
    }

    MapMaker readMapMaker(ObjectInputStream paramObjectInputStream)
      throws IOException
    {
      int i = paramObjectInputStream.readInt();
      MapMaker localMapMaker = new MapMaker().initialCapacity(i).setKeyStrength(this.keyStrength).setValueStrength(this.valueStrength).keyEquivalence(this.keyEquivalence).concurrencyLevel(this.concurrencyLevel);
      localMapMaker.removalListener(this.removalListener);
      if (this.expireAfterWriteNanos > 0L)
        localMapMaker.expireAfterWrite(this.expireAfterWriteNanos, TimeUnit.NANOSECONDS);
      if (this.expireAfterAccessNanos > 0L)
        localMapMaker.expireAfterAccess(this.expireAfterAccessNanos, TimeUnit.NANOSECONDS);
      if (this.maximumSize != -1)
        localMapMaker.maximumSize(this.maximumSize);
      return localMapMaker;
    }

    void writeMapTo(ObjectOutputStream paramObjectOutputStream)
      throws IOException
    {
      paramObjectOutputStream.writeInt(this.delegate.size());
      Iterator localIterator = this.delegate.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramObjectOutputStream.writeObject(localEntry.getKey());
        paramObjectOutputStream.writeObject(localEntry.getValue());
      }
      paramObjectOutputStream.writeObject(null);
    }
  }

  static final class CleanupMapTask
    implements Runnable
  {
    final WeakReference<MapMakerInternalMap<?, ?>> mapReference;

    public CleanupMapTask(MapMakerInternalMap<?, ?> paramMapMakerInternalMap)
    {
      this.mapReference = new WeakReference(paramMapMakerInternalMap);
    }

    public void run()
    {
      MapMakerInternalMap localMapMakerInternalMap = (MapMakerInternalMap)this.mapReference.get();
      if (localMapMakerInternalMap == null)
        throw new CancellationException();
      MapMakerInternalMap.Segment[] arrayOfSegment = localMapMakerInternalMap.segments;
      int i = arrayOfSegment.length;
      for (int j = 0; j < i; j++)
        arrayOfSegment[j].runCleanup();
    }
  }

  static abstract enum EntryFactory
  {
    static final int EVICTABLE_MASK = 2;
    static final int EXPIRABLE_MASK = 1;
    static final EntryFactory[][] factories = arrayOfEntryFactory;;

    static
    {
      // Byte code:
      //   0: new 27	com/google/common/collect/MapMakerInternalMap$EntryFactory$1
      //   3: dup
      //   4: ldc 28
      //   6: iconst_0
      //   7: invokespecial 32	com/google/common/collect/MapMakerInternalMap$EntryFactory$1:<init>	(Ljava/lang/String;I)V
      //   10: putstatic 34	com/google/common/collect/MapMakerInternalMap$EntryFactory:STRONG	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   13: new 36	com/google/common/collect/MapMakerInternalMap$EntryFactory$2
      //   16: dup
      //   17: ldc 37
      //   19: iconst_1
      //   20: invokespecial 38	com/google/common/collect/MapMakerInternalMap$EntryFactory$2:<init>	(Ljava/lang/String;I)V
      //   23: putstatic 40	com/google/common/collect/MapMakerInternalMap$EntryFactory:STRONG_EXPIRABLE	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   26: new 42	com/google/common/collect/MapMakerInternalMap$EntryFactory$3
      //   29: dup
      //   30: ldc 43
      //   32: iconst_2
      //   33: invokespecial 44	com/google/common/collect/MapMakerInternalMap$EntryFactory$3:<init>	(Ljava/lang/String;I)V
      //   36: putstatic 46	com/google/common/collect/MapMakerInternalMap$EntryFactory:STRONG_EVICTABLE	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   39: new 48	com/google/common/collect/MapMakerInternalMap$EntryFactory$4
      //   42: dup
      //   43: ldc 49
      //   45: iconst_3
      //   46: invokespecial 50	com/google/common/collect/MapMakerInternalMap$EntryFactory$4:<init>	(Ljava/lang/String;I)V
      //   49: putstatic 52	com/google/common/collect/MapMakerInternalMap$EntryFactory:STRONG_EXPIRABLE_EVICTABLE	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   52: new 54	com/google/common/collect/MapMakerInternalMap$EntryFactory$5
      //   55: dup
      //   56: ldc 55
      //   58: iconst_4
      //   59: invokespecial 56	com/google/common/collect/MapMakerInternalMap$EntryFactory$5:<init>	(Ljava/lang/String;I)V
      //   62: putstatic 58	com/google/common/collect/MapMakerInternalMap$EntryFactory:WEAK	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   65: new 60	com/google/common/collect/MapMakerInternalMap$EntryFactory$6
      //   68: dup
      //   69: ldc 61
      //   71: iconst_5
      //   72: invokespecial 62	com/google/common/collect/MapMakerInternalMap$EntryFactory$6:<init>	(Ljava/lang/String;I)V
      //   75: putstatic 64	com/google/common/collect/MapMakerInternalMap$EntryFactory:WEAK_EXPIRABLE	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   78: new 66	com/google/common/collect/MapMakerInternalMap$EntryFactory$7
      //   81: dup
      //   82: ldc 67
      //   84: bipush 6
      //   86: invokespecial 68	com/google/common/collect/MapMakerInternalMap$EntryFactory$7:<init>	(Ljava/lang/String;I)V
      //   89: putstatic 70	com/google/common/collect/MapMakerInternalMap$EntryFactory:WEAK_EVICTABLE	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   92: new 72	com/google/common/collect/MapMakerInternalMap$EntryFactory$8
      //   95: dup
      //   96: ldc 73
      //   98: bipush 7
      //   100: invokespecial 74	com/google/common/collect/MapMakerInternalMap$EntryFactory$8:<init>	(Ljava/lang/String;I)V
      //   103: putstatic 76	com/google/common/collect/MapMakerInternalMap$EntryFactory:WEAK_EXPIRABLE_EVICTABLE	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   106: bipush 8
      //   108: anewarray 2	com/google/common/collect/MapMakerInternalMap$EntryFactory
      //   111: astore_0
      //   112: aload_0
      //   113: iconst_0
      //   114: getstatic 34	com/google/common/collect/MapMakerInternalMap$EntryFactory:STRONG	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   117: aastore
      //   118: aload_0
      //   119: iconst_1
      //   120: getstatic 40	com/google/common/collect/MapMakerInternalMap$EntryFactory:STRONG_EXPIRABLE	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   123: aastore
      //   124: aload_0
      //   125: iconst_2
      //   126: getstatic 46	com/google/common/collect/MapMakerInternalMap$EntryFactory:STRONG_EVICTABLE	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   129: aastore
      //   130: aload_0
      //   131: iconst_3
      //   132: getstatic 52	com/google/common/collect/MapMakerInternalMap$EntryFactory:STRONG_EXPIRABLE_EVICTABLE	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   135: aastore
      //   136: aload_0
      //   137: iconst_4
      //   138: getstatic 58	com/google/common/collect/MapMakerInternalMap$EntryFactory:WEAK	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   141: aastore
      //   142: aload_0
      //   143: iconst_5
      //   144: getstatic 64	com/google/common/collect/MapMakerInternalMap$EntryFactory:WEAK_EXPIRABLE	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   147: aastore
      //   148: aload_0
      //   149: bipush 6
      //   151: getstatic 70	com/google/common/collect/MapMakerInternalMap$EntryFactory:WEAK_EVICTABLE	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   154: aastore
      //   155: aload_0
      //   156: bipush 7
      //   158: getstatic 76	com/google/common/collect/MapMakerInternalMap$EntryFactory:WEAK_EXPIRABLE_EVICTABLE	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   161: aastore
      //   162: aload_0
      //   163: putstatic 78	com/google/common/collect/MapMakerInternalMap$EntryFactory:$VALUES	[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   166: iconst_3
      //   167: anewarray 79	[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   170: astore_1
      //   171: iconst_4
      //   172: anewarray 2	com/google/common/collect/MapMakerInternalMap$EntryFactory
      //   175: astore_2
      //   176: aload_2
      //   177: iconst_0
      //   178: getstatic 34	com/google/common/collect/MapMakerInternalMap$EntryFactory:STRONG	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   181: aastore
      //   182: aload_2
      //   183: iconst_1
      //   184: getstatic 40	com/google/common/collect/MapMakerInternalMap$EntryFactory:STRONG_EXPIRABLE	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   187: aastore
      //   188: aload_2
      //   189: iconst_2
      //   190: getstatic 46	com/google/common/collect/MapMakerInternalMap$EntryFactory:STRONG_EVICTABLE	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   193: aastore
      //   194: aload_2
      //   195: iconst_3
      //   196: getstatic 52	com/google/common/collect/MapMakerInternalMap$EntryFactory:STRONG_EXPIRABLE_EVICTABLE	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   199: aastore
      //   200: aload_1
      //   201: iconst_0
      //   202: aload_2
      //   203: aastore
      //   204: aload_1
      //   205: iconst_1
      //   206: iconst_0
      //   207: anewarray 2	com/google/common/collect/MapMakerInternalMap$EntryFactory
      //   210: aastore
      //   211: iconst_4
      //   212: anewarray 2	com/google/common/collect/MapMakerInternalMap$EntryFactory
      //   215: astore_3
      //   216: aload_3
      //   217: iconst_0
      //   218: getstatic 58	com/google/common/collect/MapMakerInternalMap$EntryFactory:WEAK	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   221: aastore
      //   222: aload_3
      //   223: iconst_1
      //   224: getstatic 64	com/google/common/collect/MapMakerInternalMap$EntryFactory:WEAK_EXPIRABLE	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   227: aastore
      //   228: aload_3
      //   229: iconst_2
      //   230: getstatic 70	com/google/common/collect/MapMakerInternalMap$EntryFactory:WEAK_EVICTABLE	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   233: aastore
      //   234: aload_3
      //   235: iconst_3
      //   236: getstatic 76	com/google/common/collect/MapMakerInternalMap$EntryFactory:WEAK_EXPIRABLE_EVICTABLE	Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   239: aastore
      //   240: aload_1
      //   241: iconst_2
      //   242: aload_3
      //   243: aastore
      //   244: aload_1
      //   245: putstatic 81	com/google/common/collect/MapMakerInternalMap$EntryFactory:factories	[[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
      //   248: return
    }

    static EntryFactory getFactory(MapMakerInternalMap.Strength paramStrength, boolean paramBoolean1, boolean paramBoolean2)
    {
      if (paramBoolean1);
      for (int i = 1; ; i = 0)
      {
        int j = 0;
        if (paramBoolean2)
          j = 2;
        int k = i | j;
        return factories[paramStrength.ordinal()][k];
      }
    }

    @GuardedBy("Segment.this")
    <K, V> MapMakerInternalMap.ReferenceEntry<K, V> copyEntry(MapMakerInternalMap.Segment<K, V> paramSegment, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry1, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry2)
    {
      return newEntry(paramSegment, paramReferenceEntry1.getKey(), paramReferenceEntry1.getHash(), paramReferenceEntry2);
    }

    @GuardedBy("Segment.this")
    <K, V> void copyEvictableEntry(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry1, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry2)
    {
      MapMakerInternalMap.connectEvictables(paramReferenceEntry1.getPreviousEvictable(), paramReferenceEntry2);
      MapMakerInternalMap.connectEvictables(paramReferenceEntry2, paramReferenceEntry1.getNextEvictable());
      MapMakerInternalMap.nullifyEvictable(paramReferenceEntry1);
    }

    @GuardedBy("Segment.this")
    <K, V> void copyExpirableEntry(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry1, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry2)
    {
      paramReferenceEntry2.setExpirationTime(paramReferenceEntry1.getExpirationTime());
      MapMakerInternalMap.connectExpirables(paramReferenceEntry1.getPreviousExpirable(), paramReferenceEntry2);
      MapMakerInternalMap.connectExpirables(paramReferenceEntry2, paramReferenceEntry1.getNextExpirable());
      MapMakerInternalMap.nullifyExpirable(paramReferenceEntry1);
    }

    abstract <K, V> MapMakerInternalMap.ReferenceEntry<K, V> newEntry(MapMakerInternalMap.Segment<K, V> paramSegment, K paramK, int paramInt, @Nullable MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry);
  }

  final class EntryIterator extends MapMakerInternalMap<K, V>.HashIterator<Map.Entry<K, V>>
  {
    EntryIterator()
    {
      super();
    }

    public Map.Entry<K, V> next()
    {
      return nextEntry();
    }
  }

  final class EntrySet extends AbstractSet<Map.Entry<K, V>>
  {
    EntrySet()
    {
    }

    public void clear()
    {
      MapMakerInternalMap.this.clear();
    }

    public boolean contains(Object paramObject)
    {
      if (!(paramObject instanceof Map.Entry));
      Map.Entry localEntry;
      Object localObject2;
      do
      {
        Object localObject1;
        do
        {
          return false;
          localEntry = (Map.Entry)paramObject;
          localObject1 = localEntry.getKey();
        }
        while (localObject1 == null);
        localObject2 = MapMakerInternalMap.this.get(localObject1);
      }
      while ((localObject2 == null) || (!MapMakerInternalMap.this.valueEquivalence.equivalent(localEntry.getValue(), localObject2)));
      return true;
    }

    public boolean isEmpty()
    {
      return MapMakerInternalMap.this.isEmpty();
    }

    public Iterator<Map.Entry<K, V>> iterator()
    {
      return new MapMakerInternalMap.EntryIterator(MapMakerInternalMap.this);
    }

    public boolean remove(Object paramObject)
    {
      if (!(paramObject instanceof Map.Entry));
      Map.Entry localEntry;
      Object localObject;
      do
      {
        return false;
        localEntry = (Map.Entry)paramObject;
        localObject = localEntry.getKey();
      }
      while ((localObject == null) || (!MapMakerInternalMap.this.remove(localObject, localEntry.getValue())));
      return true;
    }

    public int size()
    {
      return MapMakerInternalMap.this.size();
    }
  }

  static final class EvictionQueue<K, V> extends AbstractQueue<MapMakerInternalMap.ReferenceEntry<K, V>>
  {
    final MapMakerInternalMap.ReferenceEntry<K, V> head = new MapMakerInternalMap.AbstractReferenceEntry()
    {
      MapMakerInternalMap.ReferenceEntry<K, V> nextEvictable = this;
      MapMakerInternalMap.ReferenceEntry<K, V> previousEvictable = this;

      public MapMakerInternalMap.ReferenceEntry<K, V> getNextEvictable()
      {
        return this.nextEvictable;
      }

      public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousEvictable()
      {
        return this.previousEvictable;
      }

      public void setNextEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
      {
        this.nextEvictable = paramAnonymousReferenceEntry;
      }

      public void setPreviousEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
      {
        this.previousEvictable = paramAnonymousReferenceEntry;
      }
    };

    public void clear()
    {
      MapMakerInternalMap.ReferenceEntry localReferenceEntry;
      for (Object localObject = this.head.getNextEvictable(); localObject != this.head; localObject = localReferenceEntry)
      {
        localReferenceEntry = ((MapMakerInternalMap.ReferenceEntry)localObject).getNextEvictable();
        MapMakerInternalMap.nullifyEvictable((MapMakerInternalMap.ReferenceEntry)localObject);
      }
      this.head.setNextEvictable(this.head);
      this.head.setPreviousEvictable(this.head);
    }

    public boolean contains(Object paramObject)
    {
      return ((MapMakerInternalMap.ReferenceEntry)paramObject).getNextEvictable() != MapMakerInternalMap.NullEntry.INSTANCE;
    }

    public boolean isEmpty()
    {
      return this.head.getNextEvictable() == this.head;
    }

    public Iterator<MapMakerInternalMap.ReferenceEntry<K, V>> iterator()
    {
      return new AbstractSequentialIterator(peek())
      {
        protected MapMakerInternalMap.ReferenceEntry<K, V> computeNext(MapMakerInternalMap.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
        {
          MapMakerInternalMap.ReferenceEntry localReferenceEntry = paramAnonymousReferenceEntry.getNextEvictable();
          if (localReferenceEntry == MapMakerInternalMap.EvictionQueue.this.head)
            localReferenceEntry = null;
          return localReferenceEntry;
        }
      };
    }

    public boolean offer(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      MapMakerInternalMap.connectEvictables(paramReferenceEntry.getPreviousEvictable(), paramReferenceEntry.getNextEvictable());
      MapMakerInternalMap.connectEvictables(this.head.getPreviousEvictable(), paramReferenceEntry);
      MapMakerInternalMap.connectEvictables(paramReferenceEntry, this.head);
      return true;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> peek()
    {
      MapMakerInternalMap.ReferenceEntry localReferenceEntry = this.head.getNextEvictable();
      if (localReferenceEntry == this.head)
        localReferenceEntry = null;
      return localReferenceEntry;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> poll()
    {
      MapMakerInternalMap.ReferenceEntry localReferenceEntry = this.head.getNextEvictable();
      if (localReferenceEntry == this.head)
        return null;
      remove(localReferenceEntry);
      return localReferenceEntry;
    }

    public boolean remove(Object paramObject)
    {
      MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = (MapMakerInternalMap.ReferenceEntry)paramObject;
      MapMakerInternalMap.ReferenceEntry localReferenceEntry2 = localReferenceEntry1.getPreviousEvictable();
      MapMakerInternalMap.ReferenceEntry localReferenceEntry3 = localReferenceEntry1.getNextEvictable();
      MapMakerInternalMap.connectEvictables(localReferenceEntry2, localReferenceEntry3);
      MapMakerInternalMap.nullifyEvictable(localReferenceEntry1);
      return localReferenceEntry3 != MapMakerInternalMap.NullEntry.INSTANCE;
    }

    public int size()
    {
      int i = 0;
      for (MapMakerInternalMap.ReferenceEntry localReferenceEntry = this.head.getNextEvictable(); localReferenceEntry != this.head; localReferenceEntry = localReferenceEntry.getNextEvictable())
        i++;
      return i;
    }
  }

  static final class ExpirationQueue<K, V> extends AbstractQueue<MapMakerInternalMap.ReferenceEntry<K, V>>
  {
    final MapMakerInternalMap.ReferenceEntry<K, V> head = new MapMakerInternalMap.AbstractReferenceEntry()
    {
      MapMakerInternalMap.ReferenceEntry<K, V> nextExpirable = this;
      MapMakerInternalMap.ReferenceEntry<K, V> previousExpirable = this;

      public long getExpirationTime()
      {
        return 9223372036854775807L;
      }

      public MapMakerInternalMap.ReferenceEntry<K, V> getNextExpirable()
      {
        return this.nextExpirable;
      }

      public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousExpirable()
      {
        return this.previousExpirable;
      }

      public void setExpirationTime(long paramAnonymousLong)
      {
      }

      public void setNextExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
      {
        this.nextExpirable = paramAnonymousReferenceEntry;
      }

      public void setPreviousExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
      {
        this.previousExpirable = paramAnonymousReferenceEntry;
      }
    };

    public void clear()
    {
      MapMakerInternalMap.ReferenceEntry localReferenceEntry;
      for (Object localObject = this.head.getNextExpirable(); localObject != this.head; localObject = localReferenceEntry)
      {
        localReferenceEntry = ((MapMakerInternalMap.ReferenceEntry)localObject).getNextExpirable();
        MapMakerInternalMap.nullifyExpirable((MapMakerInternalMap.ReferenceEntry)localObject);
      }
      this.head.setNextExpirable(this.head);
      this.head.setPreviousExpirable(this.head);
    }

    public boolean contains(Object paramObject)
    {
      return ((MapMakerInternalMap.ReferenceEntry)paramObject).getNextExpirable() != MapMakerInternalMap.NullEntry.INSTANCE;
    }

    public boolean isEmpty()
    {
      return this.head.getNextExpirable() == this.head;
    }

    public Iterator<MapMakerInternalMap.ReferenceEntry<K, V>> iterator()
    {
      return new AbstractSequentialIterator(peek())
      {
        protected MapMakerInternalMap.ReferenceEntry<K, V> computeNext(MapMakerInternalMap.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
        {
          MapMakerInternalMap.ReferenceEntry localReferenceEntry = paramAnonymousReferenceEntry.getNextExpirable();
          if (localReferenceEntry == MapMakerInternalMap.ExpirationQueue.this.head)
            localReferenceEntry = null;
          return localReferenceEntry;
        }
      };
    }

    public boolean offer(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      MapMakerInternalMap.connectExpirables(paramReferenceEntry.getPreviousExpirable(), paramReferenceEntry.getNextExpirable());
      MapMakerInternalMap.connectExpirables(this.head.getPreviousExpirable(), paramReferenceEntry);
      MapMakerInternalMap.connectExpirables(paramReferenceEntry, this.head);
      return true;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> peek()
    {
      MapMakerInternalMap.ReferenceEntry localReferenceEntry = this.head.getNextExpirable();
      if (localReferenceEntry == this.head)
        localReferenceEntry = null;
      return localReferenceEntry;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> poll()
    {
      MapMakerInternalMap.ReferenceEntry localReferenceEntry = this.head.getNextExpirable();
      if (localReferenceEntry == this.head)
        return null;
      remove(localReferenceEntry);
      return localReferenceEntry;
    }

    public boolean remove(Object paramObject)
    {
      MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = (MapMakerInternalMap.ReferenceEntry)paramObject;
      MapMakerInternalMap.ReferenceEntry localReferenceEntry2 = localReferenceEntry1.getPreviousExpirable();
      MapMakerInternalMap.ReferenceEntry localReferenceEntry3 = localReferenceEntry1.getNextExpirable();
      MapMakerInternalMap.connectExpirables(localReferenceEntry2, localReferenceEntry3);
      MapMakerInternalMap.nullifyExpirable(localReferenceEntry1);
      return localReferenceEntry3 != MapMakerInternalMap.NullEntry.INSTANCE;
    }

    public int size()
    {
      int i = 0;
      for (MapMakerInternalMap.ReferenceEntry localReferenceEntry = this.head.getNextExpirable(); localReferenceEntry != this.head; localReferenceEntry = localReferenceEntry.getNextExpirable())
        i++;
      return i;
    }
  }

  abstract class HashIterator<E>
    implements Iterator<E>
  {
    MapMakerInternalMap.Segment<K, V> currentSegment;
    AtomicReferenceArray<MapMakerInternalMap.ReferenceEntry<K, V>> currentTable;
    MapMakerInternalMap<K, V>.WriteThroughEntry lastReturned;
    MapMakerInternalMap.ReferenceEntry<K, V> nextEntry;
    MapMakerInternalMap<K, V>.WriteThroughEntry nextExternal;
    int nextSegmentIndex = -1 + MapMakerInternalMap.this.segments.length;
    int nextTableIndex = -1;

    HashIterator()
    {
      advance();
    }

    final void advance()
    {
      this.nextExternal = null;
      if (nextInChain());
      do
      {
        do
        {
          do
          {
            return;
            continue;
            while (nextInTable());
          }
          while (this.nextSegmentIndex < 0);
          MapMakerInternalMap.Segment[] arrayOfSegment = MapMakerInternalMap.this.segments;
          int i = this.nextSegmentIndex;
          this.nextSegmentIndex = (i - 1);
          this.currentSegment = arrayOfSegment[i];
        }
        while (this.currentSegment.count == 0);
        this.currentTable = this.currentSegment.table;
        this.nextTableIndex = (-1 + this.currentTable.length());
      }
      while (!nextInTable());
    }

    boolean advanceTo(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      try
      {
        Object localObject2 = paramReferenceEntry.getKey();
        Object localObject3 = MapMakerInternalMap.this.getLiveValue(paramReferenceEntry);
        if (localObject3 != null)
        {
          this.nextExternal = new MapMakerInternalMap.WriteThroughEntry(MapMakerInternalMap.this, localObject2, localObject3);
          return true;
        }
        return false;
      }
      finally
      {
        this.currentSegment.postReadCleanup();
      }
    }

    public boolean hasNext()
    {
      return this.nextExternal != null;
    }

    public abstract E next();

    MapMakerInternalMap<K, V>.WriteThroughEntry nextEntry()
    {
      if (this.nextExternal == null)
        throw new NoSuchElementException();
      this.lastReturned = this.nextExternal;
      advance();
      return this.lastReturned;
    }

    boolean nextInChain()
    {
      if (this.nextEntry != null)
        for (this.nextEntry = this.nextEntry.getNext(); this.nextEntry != null; this.nextEntry = this.nextEntry.getNext())
          if (advanceTo(this.nextEntry))
            return true;
      return false;
    }

    boolean nextInTable()
    {
      while (this.nextTableIndex >= 0)
      {
        AtomicReferenceArray localAtomicReferenceArray = this.currentTable;
        int i = this.nextTableIndex;
        this.nextTableIndex = (i - 1);
        MapMakerInternalMap.ReferenceEntry localReferenceEntry = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(i);
        this.nextEntry = localReferenceEntry;
        if ((localReferenceEntry != null) && ((advanceTo(this.nextEntry)) || (nextInChain())))
          return true;
      }
      return false;
    }

    public void remove()
    {
      if (this.lastReturned != null);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkState(bool);
        MapMakerInternalMap.this.remove(this.lastReturned.getKey());
        this.lastReturned = null;
        return;
      }
    }
  }

  final class KeyIterator extends MapMakerInternalMap<K, V>.HashIterator<K>
  {
    KeyIterator()
    {
      super();
    }

    public K next()
    {
      return nextEntry().getKey();
    }
  }

  final class KeySet extends AbstractSet<K>
  {
    KeySet()
    {
    }

    public void clear()
    {
      MapMakerInternalMap.this.clear();
    }

    public boolean contains(Object paramObject)
    {
      return MapMakerInternalMap.this.containsKey(paramObject);
    }

    public boolean isEmpty()
    {
      return MapMakerInternalMap.this.isEmpty();
    }

    public Iterator<K> iterator()
    {
      return new MapMakerInternalMap.KeyIterator(MapMakerInternalMap.this);
    }

    public boolean remove(Object paramObject)
    {
      return MapMakerInternalMap.this.remove(paramObject) != null;
    }

    public int size()
    {
      return MapMakerInternalMap.this.size();
    }
  }

  private static enum NullEntry
    implements MapMakerInternalMap.ReferenceEntry<Object, Object>
  {
    static
    {
      NullEntry[] arrayOfNullEntry = new NullEntry[1];
      arrayOfNullEntry[0] = INSTANCE;
    }

    public long getExpirationTime()
    {
      return 0L;
    }

    public int getHash()
    {
      return 0;
    }

    public Object getKey()
    {
      return null;
    }

    public MapMakerInternalMap.ReferenceEntry<Object, Object> getNext()
    {
      return null;
    }

    public MapMakerInternalMap.ReferenceEntry<Object, Object> getNextEvictable()
    {
      return this;
    }

    public MapMakerInternalMap.ReferenceEntry<Object, Object> getNextExpirable()
    {
      return this;
    }

    public MapMakerInternalMap.ReferenceEntry<Object, Object> getPreviousEvictable()
    {
      return this;
    }

    public MapMakerInternalMap.ReferenceEntry<Object, Object> getPreviousExpirable()
    {
      return this;
    }

    public MapMakerInternalMap.ValueReference<Object, Object> getValueReference()
    {
      return null;
    }

    public void setExpirationTime(long paramLong)
    {
    }

    public void setNextEvictable(MapMakerInternalMap.ReferenceEntry<Object, Object> paramReferenceEntry)
    {
    }

    public void setNextExpirable(MapMakerInternalMap.ReferenceEntry<Object, Object> paramReferenceEntry)
    {
    }

    public void setPreviousEvictable(MapMakerInternalMap.ReferenceEntry<Object, Object> paramReferenceEntry)
    {
    }

    public void setPreviousExpirable(MapMakerInternalMap.ReferenceEntry<Object, Object> paramReferenceEntry)
    {
    }

    public void setValueReference(MapMakerInternalMap.ValueReference<Object, Object> paramValueReference)
    {
    }
  }

  static abstract interface ReferenceEntry<K, V>
  {
    public abstract long getExpirationTime();

    public abstract int getHash();

    public abstract K getKey();

    public abstract ReferenceEntry<K, V> getNext();

    public abstract ReferenceEntry<K, V> getNextEvictable();

    public abstract ReferenceEntry<K, V> getNextExpirable();

    public abstract ReferenceEntry<K, V> getPreviousEvictable();

    public abstract ReferenceEntry<K, V> getPreviousExpirable();

    public abstract MapMakerInternalMap.ValueReference<K, V> getValueReference();

    public abstract void setExpirationTime(long paramLong);

    public abstract void setNextEvictable(ReferenceEntry<K, V> paramReferenceEntry);

    public abstract void setNextExpirable(ReferenceEntry<K, V> paramReferenceEntry);

    public abstract void setPreviousEvictable(ReferenceEntry<K, V> paramReferenceEntry);

    public abstract void setPreviousExpirable(ReferenceEntry<K, V> paramReferenceEntry);

    public abstract void setValueReference(MapMakerInternalMap.ValueReference<K, V> paramValueReference);
  }

  static class Segment<K, V> extends ReentrantLock
  {
    volatile int count;

    @GuardedBy("Segment.this")
    final Queue<MapMakerInternalMap.ReferenceEntry<K, V>> evictionQueue;

    @GuardedBy("Segment.this")
    final Queue<MapMakerInternalMap.ReferenceEntry<K, V>> expirationQueue;
    final ReferenceQueue<K> keyReferenceQueue;
    final MapMakerInternalMap<K, V> map;
    final int maxSegmentSize;
    int modCount;
    final AtomicInteger readCount = new AtomicInteger();
    final Queue<MapMakerInternalMap.ReferenceEntry<K, V>> recencyQueue;
    volatile AtomicReferenceArray<MapMakerInternalMap.ReferenceEntry<K, V>> table;
    int threshold;
    final ReferenceQueue<V> valueReferenceQueue;

    Segment(MapMakerInternalMap<K, V> paramMapMakerInternalMap, int paramInt1, int paramInt2)
    {
      this.map = paramMapMakerInternalMap;
      this.maxSegmentSize = paramInt2;
      initTable(newEntryArray(paramInt1));
      ReferenceQueue localReferenceQueue1;
      Object localObject1;
      label108: Object localObject2;
      if (paramMapMakerInternalMap.usesKeyReferences())
      {
        localReferenceQueue1 = new ReferenceQueue();
        this.keyReferenceQueue = localReferenceQueue1;
        boolean bool = paramMapMakerInternalMap.usesValueReferences();
        ReferenceQueue localReferenceQueue2 = null;
        if (bool)
          localReferenceQueue2 = new ReferenceQueue();
        this.valueReferenceQueue = localReferenceQueue2;
        if ((!paramMapMakerInternalMap.evictsBySize()) && (!paramMapMakerInternalMap.expiresAfterAccess()))
          break label165;
        localObject1 = new ConcurrentLinkedQueue();
        this.recencyQueue = ((Queue)localObject1);
        if (!paramMapMakerInternalMap.evictsBySize())
          break label173;
        localObject2 = new MapMakerInternalMap.EvictionQueue();
        label130: this.evictionQueue = ((Queue)localObject2);
        if (!paramMapMakerInternalMap.expires())
          break label181;
      }
      label165: label173: label181: for (Object localObject3 = new MapMakerInternalMap.ExpirationQueue(); ; localObject3 = MapMakerInternalMap.discardingQueue())
      {
        this.expirationQueue = ((Queue)localObject3);
        return;
        localReferenceQueue1 = null;
        break;
        localObject1 = MapMakerInternalMap.discardingQueue();
        break label108;
        localObject2 = MapMakerInternalMap.discardingQueue();
        break label130;
      }
    }

    void clear()
    {
      if (this.count != 0)
        lock();
      while (true)
      {
        int i;
        try
        {
          AtomicReferenceArray localAtomicReferenceArray = this.table;
          if (this.map.removalNotificationQueue == MapMakerInternalMap.DISCARDING_QUEUE)
            break label183;
          i = 0;
          if (i >= localAtomicReferenceArray.length())
            break label183;
          MapMakerInternalMap.ReferenceEntry localReferenceEntry = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(i);
          if (localReferenceEntry != null)
          {
            if (!localReferenceEntry.getValueReference().isComputingReference())
              enqueueNotification(localReferenceEntry, MapMaker.RemovalCause.EXPLICIT);
            localReferenceEntry = localReferenceEntry.getNext();
            continue;
            if (j < localAtomicReferenceArray.length())
            {
              localAtomicReferenceArray.set(j, null);
              j++;
              continue;
            }
            clearReferenceQueues();
            this.evictionQueue.clear();
            this.expirationQueue.clear();
            this.readCount.set(0);
            this.modCount = (1 + this.modCount);
            this.count = 0;
            return;
          }
        }
        finally
        {
          unlock();
          postWriteCleanup();
        }
        i++;
        continue;
        label183: int j = 0;
      }
    }

    void clearKeyReferenceQueue()
    {
      while (this.keyReferenceQueue.poll() != null);
    }

    void clearReferenceQueues()
    {
      if (this.map.usesKeyReferences())
        clearKeyReferenceQueue();
      if (this.map.usesValueReferences())
        clearValueReferenceQueue();
    }

    boolean clearValue(K paramK, int paramInt, MapMakerInternalMap.ValueReference<K, V> paramValueReference)
    {
      lock();
      try
      {
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        int i = paramInt & -1 + localAtomicReferenceArray.length();
        MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(i);
        MapMakerInternalMap.ReferenceEntry localReferenceEntry2;
        for (Object localObject2 = localReferenceEntry1; localObject2 != null; localObject2 = localReferenceEntry2)
        {
          Object localObject3 = ((MapMakerInternalMap.ReferenceEntry)localObject2).getKey();
          if ((((MapMakerInternalMap.ReferenceEntry)localObject2).getHash() == paramInt) && (localObject3 != null) && (this.map.keyEquivalence.equivalent(paramK, localObject3)))
          {
            if (((MapMakerInternalMap.ReferenceEntry)localObject2).getValueReference() == paramValueReference)
            {
              localAtomicReferenceArray.set(i, removeFromChain(localReferenceEntry1, (MapMakerInternalMap.ReferenceEntry)localObject2));
              return true;
            }
            return false;
          }
          localReferenceEntry2 = ((MapMakerInternalMap.ReferenceEntry)localObject2).getNext();
        }
        return false;
      }
      finally
      {
        unlock();
        postWriteCleanup();
      }
    }

    void clearValueReferenceQueue()
    {
      while (this.valueReferenceQueue.poll() != null);
    }

    boolean containsKey(Object paramObject, int paramInt)
    {
      try
      {
        if (this.count != 0)
        {
          MapMakerInternalMap.ReferenceEntry localReferenceEntry = getLiveEntry(paramObject, paramInt);
          if (localReferenceEntry == null)
            return false;
          Object localObject2 = localReferenceEntry.getValueReference().get();
          boolean bool = false;
          if (localObject2 != null)
            bool = true;
          return bool;
        }
        return false;
      }
      finally
      {
        postReadCleanup();
      }
    }

    @VisibleForTesting
    boolean containsValue(Object paramObject)
    {
      try
      {
        if (this.count != 0)
        {
          AtomicReferenceArray localAtomicReferenceArray = this.table;
          int i = localAtomicReferenceArray.length();
          for (int j = 0; j < i; j++)
          {
            MapMakerInternalMap.ReferenceEntry localReferenceEntry = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(j);
            if (localReferenceEntry != null)
            {
              Object localObject2 = getLiveValue(localReferenceEntry);
              if (localObject2 == null);
              boolean bool;
              do
              {
                localReferenceEntry = localReferenceEntry.getNext();
                break;
                bool = this.map.valueEquivalence.equivalent(paramObject, localObject2);
              }
              while (!bool);
              return true;
            }
          }
        }
        return false;
      }
      finally
      {
        postReadCleanup();
      }
    }

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> copyEntry(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry1, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry2)
    {
      if (paramReferenceEntry1.getKey() == null);
      MapMakerInternalMap.ValueReference localValueReference;
      Object localObject;
      do
      {
        return null;
        localValueReference = paramReferenceEntry1.getValueReference();
        localObject = localValueReference.get();
      }
      while ((localObject == null) && (!localValueReference.isComputingReference()));
      MapMakerInternalMap.ReferenceEntry localReferenceEntry = this.map.entryFactory.copyEntry(this, paramReferenceEntry1, paramReferenceEntry2);
      localReferenceEntry.setValueReference(localValueReference.copyFor(this.valueReferenceQueue, localObject, localReferenceEntry));
      return localReferenceEntry;
    }

    @GuardedBy("Segment.this")
    void drainKeyReferenceQueue()
    {
      int i = 0;
      do
      {
        Reference localReference = this.keyReferenceQueue.poll();
        if (localReference == null)
          break;
        MapMakerInternalMap.ReferenceEntry localReferenceEntry = (MapMakerInternalMap.ReferenceEntry)localReference;
        this.map.reclaimKey(localReferenceEntry);
        i++;
      }
      while (i != 16);
    }

    @GuardedBy("Segment.this")
    void drainRecencyQueue()
    {
      while (true)
      {
        MapMakerInternalMap.ReferenceEntry localReferenceEntry = (MapMakerInternalMap.ReferenceEntry)this.recencyQueue.poll();
        if (localReferenceEntry == null)
          break;
        if (this.evictionQueue.contains(localReferenceEntry))
          this.evictionQueue.add(localReferenceEntry);
        if ((this.map.expiresAfterAccess()) && (this.expirationQueue.contains(localReferenceEntry)))
          this.expirationQueue.add(localReferenceEntry);
      }
    }

    @GuardedBy("Segment.this")
    void drainReferenceQueues()
    {
      if (this.map.usesKeyReferences())
        drainKeyReferenceQueue();
      if (this.map.usesValueReferences())
        drainValueReferenceQueue();
    }

    @GuardedBy("Segment.this")
    void drainValueReferenceQueue()
    {
      int i = 0;
      do
      {
        Reference localReference = this.valueReferenceQueue.poll();
        if (localReference == null)
          break;
        MapMakerInternalMap.ValueReference localValueReference = (MapMakerInternalMap.ValueReference)localReference;
        this.map.reclaimValue(localValueReference);
        i++;
      }
      while (i != 16);
    }

    void enqueueNotification(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry, MapMaker.RemovalCause paramRemovalCause)
    {
      enqueueNotification(paramReferenceEntry.getKey(), paramReferenceEntry.getHash(), paramReferenceEntry.getValueReference().get(), paramRemovalCause);
    }

    void enqueueNotification(@Nullable K paramK, int paramInt, @Nullable V paramV, MapMaker.RemovalCause paramRemovalCause)
    {
      if (this.map.removalNotificationQueue != MapMakerInternalMap.DISCARDING_QUEUE)
      {
        MapMaker.RemovalNotification localRemovalNotification = new MapMaker.RemovalNotification(paramK, paramV, paramRemovalCause);
        this.map.removalNotificationQueue.offer(localRemovalNotification);
      }
    }

    @GuardedBy("Segment.this")
    boolean evictEntries()
    {
      if ((this.map.evictsBySize()) && (this.count >= this.maxSegmentSize))
      {
        drainRecencyQueue();
        MapMakerInternalMap.ReferenceEntry localReferenceEntry = (MapMakerInternalMap.ReferenceEntry)this.evictionQueue.remove();
        if (!removeEntry(localReferenceEntry, localReferenceEntry.getHash(), MapMaker.RemovalCause.SIZE))
          throw new AssertionError();
        return true;
      }
      return false;
    }

    @GuardedBy("Segment.this")
    void expand()
    {
      AtomicReferenceArray localAtomicReferenceArray1 = this.table;
      int i = localAtomicReferenceArray1.length();
      if (i >= 1073741824)
        return;
      int j = this.count;
      AtomicReferenceArray localAtomicReferenceArray2 = newEntryArray(i << 1);
      this.threshold = (3 * localAtomicReferenceArray2.length() / 4);
      int k = -1 + localAtomicReferenceArray2.length();
      int m = 0;
      while (m < i)
      {
        MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray1.get(m);
        MapMakerInternalMap.ReferenceEntry localReferenceEntry2;
        int n;
        if (localReferenceEntry1 != null)
        {
          localReferenceEntry2 = localReferenceEntry1.getNext();
          n = k & localReferenceEntry1.getHash();
          if (localReferenceEntry2 == null)
            localAtomicReferenceArray2.set(n, localReferenceEntry1);
        }
        else
        {
          m++;
          continue;
        }
        Object localObject = localReferenceEntry1;
        int i1 = n;
        for (MapMakerInternalMap.ReferenceEntry localReferenceEntry3 = localReferenceEntry2; localReferenceEntry3 != null; localReferenceEntry3 = localReferenceEntry3.getNext())
        {
          int i3 = k & localReferenceEntry3.getHash();
          if (i3 != i1)
          {
            i1 = i3;
            localObject = localReferenceEntry3;
          }
        }
        localAtomicReferenceArray2.set(i1, localObject);
        MapMakerInternalMap.ReferenceEntry localReferenceEntry4 = localReferenceEntry1;
        label189: if (localReferenceEntry4 != localObject)
        {
          int i2 = k & localReferenceEntry4.getHash();
          MapMakerInternalMap.ReferenceEntry localReferenceEntry5 = copyEntry(localReferenceEntry4, (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray2.get(i2));
          if (localReferenceEntry5 == null)
            break label252;
          localAtomicReferenceArray2.set(i2, localReferenceEntry5);
        }
        while (true)
        {
          localReferenceEntry4 = localReferenceEntry4.getNext();
          break label189;
          break;
          label252: removeCollectedEntry(localReferenceEntry4);
          j--;
        }
      }
      this.table = localAtomicReferenceArray2;
      this.count = j;
    }

    @GuardedBy("Segment.this")
    void expireEntries()
    {
      drainRecencyQueue();
      if (this.expirationQueue.isEmpty())
        return;
      long l = this.map.ticker.read();
      MapMakerInternalMap.ReferenceEntry localReferenceEntry;
      do
      {
        localReferenceEntry = (MapMakerInternalMap.ReferenceEntry)this.expirationQueue.peek();
        if ((localReferenceEntry == null) || (!this.map.isExpired(localReferenceEntry, l)))
          break;
      }
      while (removeEntry(localReferenceEntry, localReferenceEntry.getHash(), MapMaker.RemovalCause.EXPIRED));
      throw new AssertionError();
    }

    V get(Object paramObject, int paramInt)
    {
      try
      {
        MapMakerInternalMap.ReferenceEntry localReferenceEntry = getLiveEntry(paramObject, paramInt);
        if (localReferenceEntry == null)
          return null;
        Object localObject2 = localReferenceEntry.getValueReference().get();
        if (localObject2 != null)
          recordRead(localReferenceEntry);
        while (true)
        {
          return localObject2;
          tryDrainReferenceQueues();
        }
      }
      finally
      {
        postReadCleanup();
      }
    }

    MapMakerInternalMap.ReferenceEntry<K, V> getEntry(Object paramObject, int paramInt)
    {
      if (this.count != 0)
      {
        MapMakerInternalMap.ReferenceEntry localReferenceEntry = getFirst(paramInt);
        if (localReferenceEntry != null)
        {
          if (localReferenceEntry.getHash() != paramInt);
          Object localObject;
          label57: 
          do
            while (true)
            {
              localReferenceEntry = localReferenceEntry.getNext();
              break;
              localObject = localReferenceEntry.getKey();
              if (localObject != null)
                break label57;
              tryDrainReferenceQueues();
            }
          while (!this.map.keyEquivalence.equivalent(paramObject, localObject));
          return localReferenceEntry;
        }
      }
      return null;
    }

    MapMakerInternalMap.ReferenceEntry<K, V> getFirst(int paramInt)
    {
      AtomicReferenceArray localAtomicReferenceArray = this.table;
      return (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(paramInt & -1 + localAtomicReferenceArray.length());
    }

    MapMakerInternalMap.ReferenceEntry<K, V> getLiveEntry(Object paramObject, int paramInt)
    {
      MapMakerInternalMap.ReferenceEntry localReferenceEntry = getEntry(paramObject, paramInt);
      if (localReferenceEntry == null)
        localReferenceEntry = null;
      while ((!this.map.expires()) || (!this.map.isExpired(localReferenceEntry)))
        return localReferenceEntry;
      tryExpireEntries();
      return null;
    }

    V getLiveValue(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      Object localObject;
      if (paramReferenceEntry.getKey() == null)
      {
        tryDrainReferenceQueues();
        localObject = null;
      }
      do
      {
        return localObject;
        localObject = paramReferenceEntry.getValueReference().get();
        if (localObject == null)
        {
          tryDrainReferenceQueues();
          return null;
        }
      }
      while ((!this.map.expires()) || (!this.map.isExpired(paramReferenceEntry)));
      tryExpireEntries();
      return null;
    }

    void initTable(AtomicReferenceArray<MapMakerInternalMap.ReferenceEntry<K, V>> paramAtomicReferenceArray)
    {
      this.threshold = (3 * paramAtomicReferenceArray.length() / 4);
      if (this.threshold == this.maxSegmentSize)
        this.threshold = (1 + this.threshold);
      this.table = paramAtomicReferenceArray;
    }

    boolean isCollected(MapMakerInternalMap.ValueReference<K, V> paramValueReference)
    {
      if (paramValueReference.isComputingReference());
      while (paramValueReference.get() != null)
        return false;
      return true;
    }

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> newEntry(K paramK, int paramInt, @Nullable MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      return this.map.entryFactory.newEntry(this, paramK, paramInt, paramReferenceEntry);
    }

    AtomicReferenceArray<MapMakerInternalMap.ReferenceEntry<K, V>> newEntryArray(int paramInt)
    {
      return new AtomicReferenceArray(paramInt);
    }

    void postReadCleanup()
    {
      if ((0x3F & this.readCount.incrementAndGet()) == 0)
        runCleanup();
    }

    void postWriteCleanup()
    {
      runUnlockedCleanup();
    }

    @GuardedBy("Segment.this")
    void preWriteCleanup()
    {
      runLockedCleanup();
    }

    V put(K paramK, int paramInt, V paramV, boolean paramBoolean)
    {
      lock();
      try
      {
        preWriteCleanup();
        int i = 1 + this.count;
        if (i > this.threshold)
        {
          expand();
          i = 1 + this.count;
        }
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        int j = paramInt & -1 + localAtomicReferenceArray.length();
        MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(j);
        for (MapMakerInternalMap.ReferenceEntry localReferenceEntry2 = localReferenceEntry1; localReferenceEntry2 != null; localReferenceEntry2 = localReferenceEntry2.getNext())
        {
          Object localObject2 = localReferenceEntry2.getKey();
          if ((localReferenceEntry2.getHash() == paramInt) && (localObject2 != null) && (this.map.keyEquivalence.equivalent(paramK, localObject2)))
          {
            MapMakerInternalMap.ValueReference localValueReference = localReferenceEntry2.getValueReference();
            Object localObject3 = localValueReference.get();
            if (localObject3 == null)
            {
              this.modCount = (1 + this.modCount);
              setValue(localReferenceEntry2, paramV);
              if (!localValueReference.isComputingReference())
              {
                enqueueNotification(paramK, paramInt, localObject3, MapMaker.RemovalCause.COLLECTED);
                i = this.count;
              }
              while (true)
              {
                this.count = i;
                return null;
                if (evictEntries())
                  i = 1 + this.count;
              }
            }
            if (paramBoolean)
            {
              recordLockedRead(localReferenceEntry2);
              return localObject3;
            }
            this.modCount = (1 + this.modCount);
            enqueueNotification(paramK, paramInt, localObject3, MapMaker.RemovalCause.REPLACED);
            setValue(localReferenceEntry2, paramV);
            return localObject3;
          }
        }
        this.modCount = (1 + this.modCount);
        MapMakerInternalMap.ReferenceEntry localReferenceEntry3 = newEntry(paramK, paramInt, localReferenceEntry1);
        setValue(localReferenceEntry3, paramV);
        localAtomicReferenceArray.set(j, localReferenceEntry3);
        if (evictEntries())
          i = 1 + this.count;
        this.count = i;
        return null;
      }
      finally
      {
        unlock();
        postWriteCleanup();
      }
    }

    boolean reclaimKey(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry, int paramInt)
    {
      lock();
      try
      {
        (-1 + this.count);
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        int i = paramInt & -1 + localAtomicReferenceArray.length();
        MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(i);
        MapMakerInternalMap.ReferenceEntry localReferenceEntry3;
        for (Object localObject2 = localReferenceEntry1; localObject2 != null; localObject2 = localReferenceEntry3)
        {
          if (localObject2 == paramReferenceEntry)
          {
            this.modCount = (1 + this.modCount);
            enqueueNotification(((MapMakerInternalMap.ReferenceEntry)localObject2).getKey(), paramInt, ((MapMakerInternalMap.ReferenceEntry)localObject2).getValueReference().get(), MapMaker.RemovalCause.COLLECTED);
            MapMakerInternalMap.ReferenceEntry localReferenceEntry2 = removeFromChain(localReferenceEntry1, (MapMakerInternalMap.ReferenceEntry)localObject2);
            int j = -1 + this.count;
            localAtomicReferenceArray.set(i, localReferenceEntry2);
            this.count = j;
            return true;
          }
          localReferenceEntry3 = ((MapMakerInternalMap.ReferenceEntry)localObject2).getNext();
        }
        return false;
      }
      finally
      {
        unlock();
        postWriteCleanup();
      }
    }

    boolean reclaimValue(K paramK, int paramInt, MapMakerInternalMap.ValueReference<K, V> paramValueReference)
    {
      lock();
      try
      {
        (-1 + this.count);
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        int i = paramInt & -1 + localAtomicReferenceArray.length();
        MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(i);
        Object localObject2 = localReferenceEntry1;
        boolean bool2;
        if (localObject2 != null)
        {
          Object localObject3 = ((MapMakerInternalMap.ReferenceEntry)localObject2).getKey();
          if ((((MapMakerInternalMap.ReferenceEntry)localObject2).getHash() == paramInt) && (localObject3 != null) && (this.map.keyEquivalence.equivalent(paramK, localObject3)))
            if (((MapMakerInternalMap.ReferenceEntry)localObject2).getValueReference() == paramValueReference)
            {
              this.modCount = (1 + this.modCount);
              enqueueNotification(paramK, paramInt, paramValueReference.get(), MapMaker.RemovalCause.COLLECTED);
              MapMakerInternalMap.ReferenceEntry localReferenceEntry3 = removeFromChain(localReferenceEntry1, (MapMakerInternalMap.ReferenceEntry)localObject2);
              int j = -1 + this.count;
              localAtomicReferenceArray.set(i, localReferenceEntry3);
              this.count = j;
              bool2 = true;
            }
        }
        boolean bool3;
        do
        {
          boolean bool1;
          do
          {
            return bool2;
            unlock();
            bool1 = isHeldByCurrentThread();
            bool2 = false;
          }
          while (bool1);
          postWriteCleanup();
          return false;
          MapMakerInternalMap.ReferenceEntry localReferenceEntry2 = ((MapMakerInternalMap.ReferenceEntry)localObject2).getNext();
          localObject2 = localReferenceEntry2;
          break;
          unlock();
          bool3 = isHeldByCurrentThread();
          bool2 = false;
        }
        while (bool3);
        postWriteCleanup();
        return false;
      }
      finally
      {
        unlock();
        if (!isHeldByCurrentThread())
          postWriteCleanup();
      }
    }

    void recordExpirationTime(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry, long paramLong)
    {
      paramReferenceEntry.setExpirationTime(paramLong + this.map.ticker.read());
    }

    @GuardedBy("Segment.this")
    void recordLockedRead(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.evictionQueue.add(paramReferenceEntry);
      if (this.map.expiresAfterAccess())
      {
        recordExpirationTime(paramReferenceEntry, this.map.expireAfterAccessNanos);
        this.expirationQueue.add(paramReferenceEntry);
      }
    }

    void recordRead(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      if (this.map.expiresAfterAccess())
        recordExpirationTime(paramReferenceEntry, this.map.expireAfterAccessNanos);
      this.recencyQueue.add(paramReferenceEntry);
    }

    @GuardedBy("Segment.this")
    void recordWrite(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      drainRecencyQueue();
      this.evictionQueue.add(paramReferenceEntry);
      if (this.map.expires())
        if (!this.map.expiresAfterAccess())
          break label61;
      label61: for (long l = this.map.expireAfterAccessNanos; ; l = this.map.expireAfterWriteNanos)
      {
        recordExpirationTime(paramReferenceEntry, l);
        this.expirationQueue.add(paramReferenceEntry);
        return;
      }
    }

    V remove(Object paramObject, int paramInt)
    {
      lock();
      try
      {
        preWriteCleanup();
        (-1 + this.count);
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        int i = paramInt & -1 + localAtomicReferenceArray.length();
        MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(i);
        MapMakerInternalMap.ReferenceEntry localReferenceEntry2;
        for (Object localObject2 = localReferenceEntry1; localObject2 != null; localObject2 = localReferenceEntry2)
        {
          Object localObject3 = ((MapMakerInternalMap.ReferenceEntry)localObject2).getKey();
          if ((((MapMakerInternalMap.ReferenceEntry)localObject2).getHash() == paramInt) && (localObject3 != null) && (this.map.keyEquivalence.equivalent(paramObject, localObject3)))
          {
            MapMakerInternalMap.ValueReference localValueReference = ((MapMakerInternalMap.ReferenceEntry)localObject2).getValueReference();
            Object localObject4 = localValueReference.get();
            if (localObject4 != null);
            for (MapMaker.RemovalCause localRemovalCause = MapMaker.RemovalCause.EXPLICIT; ; localRemovalCause = MapMaker.RemovalCause.COLLECTED)
            {
              this.modCount = (1 + this.modCount);
              enqueueNotification(localObject3, paramInt, localObject4, localRemovalCause);
              MapMakerInternalMap.ReferenceEntry localReferenceEntry3 = removeFromChain(localReferenceEntry1, (MapMakerInternalMap.ReferenceEntry)localObject2);
              int j = -1 + this.count;
              localAtomicReferenceArray.set(i, localReferenceEntry3);
              this.count = j;
              return localObject4;
              if (!isCollected(localValueReference))
                break;
            }
            return null;
          }
          localReferenceEntry2 = ((MapMakerInternalMap.ReferenceEntry)localObject2).getNext();
        }
        return null;
      }
      finally
      {
        unlock();
        postWriteCleanup();
      }
    }

    boolean remove(Object paramObject1, int paramInt, Object paramObject2)
    {
      lock();
      try
      {
        preWriteCleanup();
        (-1 + this.count);
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        int i = paramInt & -1 + localAtomicReferenceArray.length();
        MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(i);
        MapMakerInternalMap.ReferenceEntry localReferenceEntry2;
        for (Object localObject2 = localReferenceEntry1; localObject2 != null; localObject2 = localReferenceEntry2)
        {
          Object localObject3 = ((MapMakerInternalMap.ReferenceEntry)localObject2).getKey();
          if ((((MapMakerInternalMap.ReferenceEntry)localObject2).getHash() == paramInt) && (localObject3 != null) && (this.map.keyEquivalence.equivalent(paramObject1, localObject3)))
          {
            MapMakerInternalMap.ValueReference localValueReference = ((MapMakerInternalMap.ReferenceEntry)localObject2).getValueReference();
            Object localObject4 = localValueReference.get();
            if (this.map.valueEquivalence.equivalent(paramObject2, localObject4));
            for (MapMaker.RemovalCause localRemovalCause1 = MapMaker.RemovalCause.EXPLICIT; ; localRemovalCause1 = MapMaker.RemovalCause.COLLECTED)
            {
              this.modCount = (1 + this.modCount);
              enqueueNotification(localObject3, paramInt, localObject4, localRemovalCause1);
              MapMakerInternalMap.ReferenceEntry localReferenceEntry3 = removeFromChain(localReferenceEntry1, (MapMakerInternalMap.ReferenceEntry)localObject2);
              int j = -1 + this.count;
              localAtomicReferenceArray.set(i, localReferenceEntry3);
              this.count = j;
              MapMaker.RemovalCause localRemovalCause2 = MapMaker.RemovalCause.EXPLICIT;
              boolean bool = false;
              if (localRemovalCause1 == localRemovalCause2)
                bool = true;
              return bool;
              if (!isCollected(localValueReference))
                break;
            }
            return false;
          }
          localReferenceEntry2 = ((MapMakerInternalMap.ReferenceEntry)localObject2).getNext();
        }
        return false;
      }
      finally
      {
        unlock();
        postWriteCleanup();
      }
    }

    void removeCollectedEntry(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      enqueueNotification(paramReferenceEntry, MapMaker.RemovalCause.COLLECTED);
      this.evictionQueue.remove(paramReferenceEntry);
      this.expirationQueue.remove(paramReferenceEntry);
    }

    @GuardedBy("Segment.this")
    boolean removeEntry(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry, int paramInt, MapMaker.RemovalCause paramRemovalCause)
    {
      (-1 + this.count);
      AtomicReferenceArray localAtomicReferenceArray = this.table;
      int i = paramInt & -1 + localAtomicReferenceArray.length();
      MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(i);
      for (MapMakerInternalMap.ReferenceEntry localReferenceEntry2 = localReferenceEntry1; localReferenceEntry2 != null; localReferenceEntry2 = localReferenceEntry2.getNext())
        if (localReferenceEntry2 == paramReferenceEntry)
        {
          this.modCount = (1 + this.modCount);
          enqueueNotification(localReferenceEntry2.getKey(), paramInt, localReferenceEntry2.getValueReference().get(), paramRemovalCause);
          MapMakerInternalMap.ReferenceEntry localReferenceEntry3 = removeFromChain(localReferenceEntry1, localReferenceEntry2);
          int j = -1 + this.count;
          localAtomicReferenceArray.set(i, localReferenceEntry3);
          this.count = j;
          return true;
        }
      return false;
    }

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> removeFromChain(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry1, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry2)
    {
      this.evictionQueue.remove(paramReferenceEntry2);
      this.expirationQueue.remove(paramReferenceEntry2);
      int i = this.count;
      Object localObject1 = paramReferenceEntry2.getNext();
      Object localObject2 = paramReferenceEntry1;
      if (localObject2 != paramReferenceEntry2)
      {
        MapMakerInternalMap.ReferenceEntry localReferenceEntry = copyEntry((MapMakerInternalMap.ReferenceEntry)localObject2, (MapMakerInternalMap.ReferenceEntry)localObject1);
        if (localReferenceEntry != null)
          localObject1 = localReferenceEntry;
        while (true)
        {
          localObject2 = ((MapMakerInternalMap.ReferenceEntry)localObject2).getNext();
          break;
          removeCollectedEntry((MapMakerInternalMap.ReferenceEntry)localObject2);
          i--;
        }
      }
      this.count = i;
      return localObject1;
    }

    V replace(K paramK, int paramInt, V paramV)
    {
      lock();
      try
      {
        preWriteCleanup();
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        int i = paramInt & -1 + localAtomicReferenceArray.length();
        MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(i);
        MapMakerInternalMap.ReferenceEntry localReferenceEntry2;
        for (Object localObject2 = localReferenceEntry1; localObject2 != null; localObject2 = localReferenceEntry2)
        {
          Object localObject3 = ((MapMakerInternalMap.ReferenceEntry)localObject2).getKey();
          if ((((MapMakerInternalMap.ReferenceEntry)localObject2).getHash() == paramInt) && (localObject3 != null) && (this.map.keyEquivalence.equivalent(paramK, localObject3)))
          {
            MapMakerInternalMap.ValueReference localValueReference = ((MapMakerInternalMap.ReferenceEntry)localObject2).getValueReference();
            Object localObject4 = localValueReference.get();
            if (localObject4 == null)
            {
              if (isCollected(localValueReference))
              {
                (-1 + this.count);
                this.modCount = (1 + this.modCount);
                enqueueNotification(localObject3, paramInt, localObject4, MapMaker.RemovalCause.COLLECTED);
                MapMakerInternalMap.ReferenceEntry localReferenceEntry3 = removeFromChain(localReferenceEntry1, (MapMakerInternalMap.ReferenceEntry)localObject2);
                int j = -1 + this.count;
                localAtomicReferenceArray.set(i, localReferenceEntry3);
                this.count = j;
              }
              return null;
            }
            this.modCount = (1 + this.modCount);
            enqueueNotification(paramK, paramInt, localObject4, MapMaker.RemovalCause.REPLACED);
            setValue((MapMakerInternalMap.ReferenceEntry)localObject2, paramV);
            return localObject4;
          }
          localReferenceEntry2 = ((MapMakerInternalMap.ReferenceEntry)localObject2).getNext();
        }
        return null;
      }
      finally
      {
        unlock();
        postWriteCleanup();
      }
    }

    boolean replace(K paramK, int paramInt, V paramV1, V paramV2)
    {
      lock();
      try
      {
        preWriteCleanup();
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        int i = paramInt & -1 + localAtomicReferenceArray.length();
        MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(i);
        MapMakerInternalMap.ReferenceEntry localReferenceEntry2;
        for (Object localObject2 = localReferenceEntry1; localObject2 != null; localObject2 = localReferenceEntry2)
        {
          Object localObject3 = ((MapMakerInternalMap.ReferenceEntry)localObject2).getKey();
          if ((((MapMakerInternalMap.ReferenceEntry)localObject2).getHash() == paramInt) && (localObject3 != null) && (this.map.keyEquivalence.equivalent(paramK, localObject3)))
          {
            MapMakerInternalMap.ValueReference localValueReference = ((MapMakerInternalMap.ReferenceEntry)localObject2).getValueReference();
            Object localObject4 = localValueReference.get();
            if (localObject4 == null)
            {
              if (isCollected(localValueReference))
              {
                (-1 + this.count);
                this.modCount = (1 + this.modCount);
                enqueueNotification(localObject3, paramInt, localObject4, MapMaker.RemovalCause.COLLECTED);
                MapMakerInternalMap.ReferenceEntry localReferenceEntry3 = removeFromChain(localReferenceEntry1, (MapMakerInternalMap.ReferenceEntry)localObject2);
                int j = -1 + this.count;
                localAtomicReferenceArray.set(i, localReferenceEntry3);
                this.count = j;
              }
              return false;
            }
            if (this.map.valueEquivalence.equivalent(paramV1, localObject4))
            {
              this.modCount = (1 + this.modCount);
              enqueueNotification(paramK, paramInt, localObject4, MapMaker.RemovalCause.REPLACED);
              setValue((MapMakerInternalMap.ReferenceEntry)localObject2, paramV2);
              return true;
            }
            recordLockedRead((MapMakerInternalMap.ReferenceEntry)localObject2);
            return false;
          }
          localReferenceEntry2 = ((MapMakerInternalMap.ReferenceEntry)localObject2).getNext();
        }
        return false;
      }
      finally
      {
        unlock();
        postWriteCleanup();
      }
    }

    void runCleanup()
    {
      runLockedCleanup();
      runUnlockedCleanup();
    }

    void runLockedCleanup()
    {
      if (tryLock());
      try
      {
        drainReferenceQueues();
        expireEntries();
        this.readCount.set(0);
        return;
      }
      finally
      {
        unlock();
      }
    }

    void runUnlockedCleanup()
    {
      if (!isHeldByCurrentThread())
        this.map.processPendingNotifications();
    }

    @GuardedBy("Segment.this")
    void setValue(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry, V paramV)
    {
      paramReferenceEntry.setValueReference(this.map.valueStrength.referenceValue(this, paramReferenceEntry, paramV));
      recordWrite(paramReferenceEntry);
    }

    void tryDrainReferenceQueues()
    {
      if (tryLock());
      try
      {
        drainReferenceQueues();
        return;
      }
      finally
      {
        unlock();
      }
    }

    void tryExpireEntries()
    {
      if (tryLock());
      try
      {
        expireEntries();
        return;
      }
      finally
      {
        unlock();
      }
    }
  }

  private static final class SerializationProxy<K, V> extends MapMakerInternalMap.AbstractSerializationProxy<K, V>
  {
    private static final long serialVersionUID = 3L;

    SerializationProxy(MapMakerInternalMap.Strength paramStrength1, MapMakerInternalMap.Strength paramStrength2, Equivalence<Object> paramEquivalence1, Equivalence<Object> paramEquivalence2, long paramLong1, long paramLong2, int paramInt1, int paramInt2, MapMaker.RemovalListener<? super K, ? super V> paramRemovalListener, ConcurrentMap<K, V> paramConcurrentMap)
    {
      super(paramStrength2, paramEquivalence1, paramEquivalence2, paramLong1, paramLong2, paramInt1, paramInt2, paramRemovalListener, paramConcurrentMap);
    }

    private void readObject(ObjectInputStream paramObjectInputStream)
      throws IOException, ClassNotFoundException
    {
      paramObjectInputStream.defaultReadObject();
      this.delegate = readMapMaker(paramObjectInputStream).makeMap();
      readEntries(paramObjectInputStream);
    }

    private Object readResolve()
    {
      return this.delegate;
    }

    private void writeObject(ObjectOutputStream paramObjectOutputStream)
      throws IOException
    {
      paramObjectOutputStream.defaultWriteObject();
      writeMapTo(paramObjectOutputStream);
    }
  }

  static class SoftEntry<K, V> extends SoftReference<K>
    implements MapMakerInternalMap.ReferenceEntry<K, V>
  {
    final int hash;
    final MapMakerInternalMap.ReferenceEntry<K, V> next;
    volatile MapMakerInternalMap.ValueReference<K, V> valueReference = MapMakerInternalMap.unset();

    SoftEntry(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, @Nullable MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramReferenceQueue);
      this.hash = paramInt;
      this.next = paramReferenceEntry;
    }

    public long getExpirationTime()
    {
      throw new UnsupportedOperationException();
    }

    public int getHash()
    {
      return this.hash;
    }

    public K getKey()
    {
      return get();
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNext()
    {
      return this.next;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNextEvictable()
    {
      throw new UnsupportedOperationException();
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNextExpirable()
    {
      throw new UnsupportedOperationException();
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousEvictable()
    {
      throw new UnsupportedOperationException();
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousExpirable()
    {
      throw new UnsupportedOperationException();
    }

    public MapMakerInternalMap.ValueReference<K, V> getValueReference()
    {
      return this.valueReference;
    }

    public void setExpirationTime(long paramLong)
    {
      throw new UnsupportedOperationException();
    }

    public void setNextEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setNextExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setPreviousEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setPreviousExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setValueReference(MapMakerInternalMap.ValueReference<K, V> paramValueReference)
    {
      MapMakerInternalMap.ValueReference localValueReference = this.valueReference;
      this.valueReference = paramValueReference;
      localValueReference.clear(paramValueReference);
    }
  }

  static final class SoftEvictableEntry<K, V> extends MapMakerInternalMap.SoftEntry<K, V>
    implements MapMakerInternalMap.ReferenceEntry<K, V>
  {

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> nextEvictable = MapMakerInternalMap.nullEntry();

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> previousEvictable = MapMakerInternalMap.nullEntry();

    SoftEvictableEntry(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, @Nullable MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramK, paramInt, paramReferenceEntry);
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNextEvictable()
    {
      return this.nextEvictable;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousEvictable()
    {
      return this.previousEvictable;
    }

    public void setNextEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextEvictable = paramReferenceEntry;
    }

    public void setPreviousEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousEvictable = paramReferenceEntry;
    }
  }

  static final class SoftExpirableEntry<K, V> extends MapMakerInternalMap.SoftEntry<K, V>
    implements MapMakerInternalMap.ReferenceEntry<K, V>
  {

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> nextExpirable = MapMakerInternalMap.nullEntry();

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> previousExpirable = MapMakerInternalMap.nullEntry();
    volatile long time = 9223372036854775807L;

    SoftExpirableEntry(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, @Nullable MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramK, paramInt, paramReferenceEntry);
    }

    public long getExpirationTime()
    {
      return this.time;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNextExpirable()
    {
      return this.nextExpirable;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousExpirable()
    {
      return this.previousExpirable;
    }

    public void setExpirationTime(long paramLong)
    {
      this.time = paramLong;
    }

    public void setNextExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextExpirable = paramReferenceEntry;
    }

    public void setPreviousExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousExpirable = paramReferenceEntry;
    }
  }

  static final class SoftExpirableEvictableEntry<K, V> extends MapMakerInternalMap.SoftEntry<K, V>
    implements MapMakerInternalMap.ReferenceEntry<K, V>
  {

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> nextEvictable = MapMakerInternalMap.nullEntry();

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> nextExpirable = MapMakerInternalMap.nullEntry();

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> previousEvictable = MapMakerInternalMap.nullEntry();

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> previousExpirable = MapMakerInternalMap.nullEntry();
    volatile long time = 9223372036854775807L;

    SoftExpirableEvictableEntry(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, @Nullable MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramK, paramInt, paramReferenceEntry);
    }

    public long getExpirationTime()
    {
      return this.time;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNextEvictable()
    {
      return this.nextEvictable;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNextExpirable()
    {
      return this.nextExpirable;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousEvictable()
    {
      return this.previousEvictable;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousExpirable()
    {
      return this.previousExpirable;
    }

    public void setExpirationTime(long paramLong)
    {
      this.time = paramLong;
    }

    public void setNextEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextEvictable = paramReferenceEntry;
    }

    public void setNextExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextExpirable = paramReferenceEntry;
    }

    public void setPreviousEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousEvictable = paramReferenceEntry;
    }

    public void setPreviousExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousExpirable = paramReferenceEntry;
    }
  }

  static final class SoftValueReference<K, V> extends SoftReference<V>
    implements MapMakerInternalMap.ValueReference<K, V>
  {
    final MapMakerInternalMap.ReferenceEntry<K, V> entry;

    SoftValueReference(ReferenceQueue<V> paramReferenceQueue, V paramV, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramReferenceQueue);
      this.entry = paramReferenceEntry;
    }

    public void clear(MapMakerInternalMap.ValueReference<K, V> paramValueReference)
    {
      clear();
    }

    public MapMakerInternalMap.ValueReference<K, V> copyFor(ReferenceQueue<V> paramReferenceQueue, V paramV, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      return new SoftValueReference(paramReferenceQueue, paramV, paramReferenceEntry);
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getEntry()
    {
      return this.entry;
    }

    public boolean isComputingReference()
    {
      return false;
    }

    public V waitForValue()
    {
      return get();
    }
  }

  static abstract enum Strength
  {
    static
    {
      // Byte code:
      //   0: new 15	com/google/common/collect/MapMakerInternalMap$Strength$1
      //   3: dup
      //   4: ldc 16
      //   6: iconst_0
      //   7: invokespecial 20	com/google/common/collect/MapMakerInternalMap$Strength$1:<init>	(Ljava/lang/String;I)V
      //   10: putstatic 22	com/google/common/collect/MapMakerInternalMap$Strength:STRONG	Lcom/google/common/collect/MapMakerInternalMap$Strength;
      //   13: new 24	com/google/common/collect/MapMakerInternalMap$Strength$2
      //   16: dup
      //   17: ldc 25
      //   19: iconst_1
      //   20: invokespecial 26	com/google/common/collect/MapMakerInternalMap$Strength$2:<init>	(Ljava/lang/String;I)V
      //   23: putstatic 28	com/google/common/collect/MapMakerInternalMap$Strength:SOFT	Lcom/google/common/collect/MapMakerInternalMap$Strength;
      //   26: new 30	com/google/common/collect/MapMakerInternalMap$Strength$3
      //   29: dup
      //   30: ldc 31
      //   32: iconst_2
      //   33: invokespecial 32	com/google/common/collect/MapMakerInternalMap$Strength$3:<init>	(Ljava/lang/String;I)V
      //   36: putstatic 34	com/google/common/collect/MapMakerInternalMap$Strength:WEAK	Lcom/google/common/collect/MapMakerInternalMap$Strength;
      //   39: iconst_3
      //   40: anewarray 2	com/google/common/collect/MapMakerInternalMap$Strength
      //   43: astore_0
      //   44: aload_0
      //   45: iconst_0
      //   46: getstatic 22	com/google/common/collect/MapMakerInternalMap$Strength:STRONG	Lcom/google/common/collect/MapMakerInternalMap$Strength;
      //   49: aastore
      //   50: aload_0
      //   51: iconst_1
      //   52: getstatic 28	com/google/common/collect/MapMakerInternalMap$Strength:SOFT	Lcom/google/common/collect/MapMakerInternalMap$Strength;
      //   55: aastore
      //   56: aload_0
      //   57: iconst_2
      //   58: getstatic 34	com/google/common/collect/MapMakerInternalMap$Strength:WEAK	Lcom/google/common/collect/MapMakerInternalMap$Strength;
      //   61: aastore
      //   62: aload_0
      //   63: putstatic 36	com/google/common/collect/MapMakerInternalMap$Strength:$VALUES	[Lcom/google/common/collect/MapMakerInternalMap$Strength;
      //   66: return
    }

    abstract Equivalence<Object> defaultEquivalence();

    abstract <K, V> MapMakerInternalMap.ValueReference<K, V> referenceValue(MapMakerInternalMap.Segment<K, V> paramSegment, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry, V paramV);
  }

  static class StrongEntry<K, V>
    implements MapMakerInternalMap.ReferenceEntry<K, V>
  {
    final int hash;
    final K key;
    final MapMakerInternalMap.ReferenceEntry<K, V> next;
    volatile MapMakerInternalMap.ValueReference<K, V> valueReference = MapMakerInternalMap.unset();

    StrongEntry(K paramK, int paramInt, @Nullable MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.key = paramK;
      this.hash = paramInt;
      this.next = paramReferenceEntry;
    }

    public long getExpirationTime()
    {
      throw new UnsupportedOperationException();
    }

    public int getHash()
    {
      return this.hash;
    }

    public K getKey()
    {
      return this.key;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNext()
    {
      return this.next;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNextEvictable()
    {
      throw new UnsupportedOperationException();
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNextExpirable()
    {
      throw new UnsupportedOperationException();
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousEvictable()
    {
      throw new UnsupportedOperationException();
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousExpirable()
    {
      throw new UnsupportedOperationException();
    }

    public MapMakerInternalMap.ValueReference<K, V> getValueReference()
    {
      return this.valueReference;
    }

    public void setExpirationTime(long paramLong)
    {
      throw new UnsupportedOperationException();
    }

    public void setNextEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setNextExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setPreviousEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setPreviousExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setValueReference(MapMakerInternalMap.ValueReference<K, V> paramValueReference)
    {
      MapMakerInternalMap.ValueReference localValueReference = this.valueReference;
      this.valueReference = paramValueReference;
      localValueReference.clear(paramValueReference);
    }
  }

  static final class StrongEvictableEntry<K, V> extends MapMakerInternalMap.StrongEntry<K, V>
    implements MapMakerInternalMap.ReferenceEntry<K, V>
  {

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> nextEvictable = MapMakerInternalMap.nullEntry();

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> previousEvictable = MapMakerInternalMap.nullEntry();

    StrongEvictableEntry(K paramK, int paramInt, @Nullable MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramInt, paramReferenceEntry);
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNextEvictable()
    {
      return this.nextEvictable;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousEvictable()
    {
      return this.previousEvictable;
    }

    public void setNextEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextEvictable = paramReferenceEntry;
    }

    public void setPreviousEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousEvictable = paramReferenceEntry;
    }
  }

  static final class StrongExpirableEntry<K, V> extends MapMakerInternalMap.StrongEntry<K, V>
    implements MapMakerInternalMap.ReferenceEntry<K, V>
  {

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> nextExpirable = MapMakerInternalMap.nullEntry();

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> previousExpirable = MapMakerInternalMap.nullEntry();
    volatile long time = 9223372036854775807L;

    StrongExpirableEntry(K paramK, int paramInt, @Nullable MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramInt, paramReferenceEntry);
    }

    public long getExpirationTime()
    {
      return this.time;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNextExpirable()
    {
      return this.nextExpirable;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousExpirable()
    {
      return this.previousExpirable;
    }

    public void setExpirationTime(long paramLong)
    {
      this.time = paramLong;
    }

    public void setNextExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextExpirable = paramReferenceEntry;
    }

    public void setPreviousExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousExpirable = paramReferenceEntry;
    }
  }

  static final class StrongExpirableEvictableEntry<K, V> extends MapMakerInternalMap.StrongEntry<K, V>
    implements MapMakerInternalMap.ReferenceEntry<K, V>
  {

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> nextEvictable = MapMakerInternalMap.nullEntry();

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> nextExpirable = MapMakerInternalMap.nullEntry();

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> previousEvictable = MapMakerInternalMap.nullEntry();

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> previousExpirable = MapMakerInternalMap.nullEntry();
    volatile long time = 9223372036854775807L;

    StrongExpirableEvictableEntry(K paramK, int paramInt, @Nullable MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramInt, paramReferenceEntry);
    }

    public long getExpirationTime()
    {
      return this.time;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNextEvictable()
    {
      return this.nextEvictable;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNextExpirable()
    {
      return this.nextExpirable;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousEvictable()
    {
      return this.previousEvictable;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousExpirable()
    {
      return this.previousExpirable;
    }

    public void setExpirationTime(long paramLong)
    {
      this.time = paramLong;
    }

    public void setNextEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextEvictable = paramReferenceEntry;
    }

    public void setNextExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextExpirable = paramReferenceEntry;
    }

    public void setPreviousEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousEvictable = paramReferenceEntry;
    }

    public void setPreviousExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousExpirable = paramReferenceEntry;
    }
  }

  static final class StrongValueReference<K, V>
    implements MapMakerInternalMap.ValueReference<K, V>
  {
    final V referent;

    StrongValueReference(V paramV)
    {
      this.referent = paramV;
    }

    public void clear(MapMakerInternalMap.ValueReference<K, V> paramValueReference)
    {
    }

    public MapMakerInternalMap.ValueReference<K, V> copyFor(ReferenceQueue<V> paramReferenceQueue, V paramV, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      return this;
    }

    public V get()
    {
      return this.referent;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getEntry()
    {
      return null;
    }

    public boolean isComputingReference()
    {
      return false;
    }

    public V waitForValue()
    {
      return get();
    }
  }

  final class ValueIterator extends MapMakerInternalMap<K, V>.HashIterator<V>
  {
    ValueIterator()
    {
      super();
    }

    public V next()
    {
      return nextEntry().getValue();
    }
  }

  static abstract interface ValueReference<K, V>
  {
    public abstract void clear(@Nullable ValueReference<K, V> paramValueReference);

    public abstract ValueReference<K, V> copyFor(ReferenceQueue<V> paramReferenceQueue, @Nullable V paramV, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry);

    public abstract V get();

    public abstract MapMakerInternalMap.ReferenceEntry<K, V> getEntry();

    public abstract boolean isComputingReference();

    public abstract V waitForValue()
      throws ExecutionException;
  }

  final class Values extends AbstractCollection<V>
  {
    Values()
    {
    }

    public void clear()
    {
      MapMakerInternalMap.this.clear();
    }

    public boolean contains(Object paramObject)
    {
      return MapMakerInternalMap.this.containsValue(paramObject);
    }

    public boolean isEmpty()
    {
      return MapMakerInternalMap.this.isEmpty();
    }

    public Iterator<V> iterator()
    {
      return new MapMakerInternalMap.ValueIterator(MapMakerInternalMap.this);
    }

    public int size()
    {
      return MapMakerInternalMap.this.size();
    }
  }

  static class WeakEntry<K, V> extends WeakReference<K>
    implements MapMakerInternalMap.ReferenceEntry<K, V>
  {
    final int hash;
    final MapMakerInternalMap.ReferenceEntry<K, V> next;
    volatile MapMakerInternalMap.ValueReference<K, V> valueReference = MapMakerInternalMap.unset();

    WeakEntry(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, @Nullable MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramReferenceQueue);
      this.hash = paramInt;
      this.next = paramReferenceEntry;
    }

    public long getExpirationTime()
    {
      throw new UnsupportedOperationException();
    }

    public int getHash()
    {
      return this.hash;
    }

    public K getKey()
    {
      return get();
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNext()
    {
      return this.next;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNextEvictable()
    {
      throw new UnsupportedOperationException();
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNextExpirable()
    {
      throw new UnsupportedOperationException();
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousEvictable()
    {
      throw new UnsupportedOperationException();
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousExpirable()
    {
      throw new UnsupportedOperationException();
    }

    public MapMakerInternalMap.ValueReference<K, V> getValueReference()
    {
      return this.valueReference;
    }

    public void setExpirationTime(long paramLong)
    {
      throw new UnsupportedOperationException();
    }

    public void setNextEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setNextExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setPreviousEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setPreviousExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setValueReference(MapMakerInternalMap.ValueReference<K, V> paramValueReference)
    {
      MapMakerInternalMap.ValueReference localValueReference = this.valueReference;
      this.valueReference = paramValueReference;
      localValueReference.clear(paramValueReference);
    }
  }

  static final class WeakEvictableEntry<K, V> extends MapMakerInternalMap.WeakEntry<K, V>
    implements MapMakerInternalMap.ReferenceEntry<K, V>
  {

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> nextEvictable = MapMakerInternalMap.nullEntry();

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> previousEvictable = MapMakerInternalMap.nullEntry();

    WeakEvictableEntry(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, @Nullable MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramK, paramInt, paramReferenceEntry);
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNextEvictable()
    {
      return this.nextEvictable;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousEvictable()
    {
      return this.previousEvictable;
    }

    public void setNextEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextEvictable = paramReferenceEntry;
    }

    public void setPreviousEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousEvictable = paramReferenceEntry;
    }
  }

  static final class WeakExpirableEntry<K, V> extends MapMakerInternalMap.WeakEntry<K, V>
    implements MapMakerInternalMap.ReferenceEntry<K, V>
  {

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> nextExpirable = MapMakerInternalMap.nullEntry();

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> previousExpirable = MapMakerInternalMap.nullEntry();
    volatile long time = 9223372036854775807L;

    WeakExpirableEntry(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, @Nullable MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramK, paramInt, paramReferenceEntry);
    }

    public long getExpirationTime()
    {
      return this.time;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNextExpirable()
    {
      return this.nextExpirable;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousExpirable()
    {
      return this.previousExpirable;
    }

    public void setExpirationTime(long paramLong)
    {
      this.time = paramLong;
    }

    public void setNextExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextExpirable = paramReferenceEntry;
    }

    public void setPreviousExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousExpirable = paramReferenceEntry;
    }
  }

  static final class WeakExpirableEvictableEntry<K, V> extends MapMakerInternalMap.WeakEntry<K, V>
    implements MapMakerInternalMap.ReferenceEntry<K, V>
  {

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> nextEvictable = MapMakerInternalMap.nullEntry();

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> nextExpirable = MapMakerInternalMap.nullEntry();

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> previousEvictable = MapMakerInternalMap.nullEntry();

    @GuardedBy("Segment.this")
    MapMakerInternalMap.ReferenceEntry<K, V> previousExpirable = MapMakerInternalMap.nullEntry();
    volatile long time = 9223372036854775807L;

    WeakExpirableEvictableEntry(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, @Nullable MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramK, paramInt, paramReferenceEntry);
    }

    public long getExpirationTime()
    {
      return this.time;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNextEvictable()
    {
      return this.nextEvictable;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getNextExpirable()
    {
      return this.nextExpirable;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousEvictable()
    {
      return this.previousEvictable;
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousExpirable()
    {
      return this.previousExpirable;
    }

    public void setExpirationTime(long paramLong)
    {
      this.time = paramLong;
    }

    public void setNextEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextEvictable = paramReferenceEntry;
    }

    public void setNextExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextExpirable = paramReferenceEntry;
    }

    public void setPreviousEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousEvictable = paramReferenceEntry;
    }

    public void setPreviousExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousExpirable = paramReferenceEntry;
    }
  }

  static final class WeakValueReference<K, V> extends WeakReference<V>
    implements MapMakerInternalMap.ValueReference<K, V>
  {
    final MapMakerInternalMap.ReferenceEntry<K, V> entry;

    WeakValueReference(ReferenceQueue<V> paramReferenceQueue, V paramV, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramReferenceQueue);
      this.entry = paramReferenceEntry;
    }

    public void clear(MapMakerInternalMap.ValueReference<K, V> paramValueReference)
    {
      clear();
    }

    public MapMakerInternalMap.ValueReference<K, V> copyFor(ReferenceQueue<V> paramReferenceQueue, V paramV, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      return new WeakValueReference(paramReferenceQueue, paramV, paramReferenceEntry);
    }

    public MapMakerInternalMap.ReferenceEntry<K, V> getEntry()
    {
      return this.entry;
    }

    public boolean isComputingReference()
    {
      return false;
    }

    public V waitForValue()
    {
      return get();
    }
  }

  final class WriteThroughEntry extends AbstractMapEntry<K, V>
  {
    final K key;
    V value;

    WriteThroughEntry(V arg2)
    {
      Object localObject1;
      this.key = localObject1;
      Object localObject2;
      this.value = localObject2;
    }

    public boolean equals(@Nullable Object paramObject)
    {
      boolean bool1 = paramObject instanceof Map.Entry;
      boolean bool2 = false;
      if (bool1)
      {
        Map.Entry localEntry = (Map.Entry)paramObject;
        boolean bool3 = this.key.equals(localEntry.getKey());
        bool2 = false;
        if (bool3)
        {
          boolean bool4 = this.value.equals(localEntry.getValue());
          bool2 = false;
          if (bool4)
            bool2 = true;
        }
      }
      return bool2;
    }

    public K getKey()
    {
      return this.key;
    }

    public V getValue()
    {
      return this.value;
    }

    public int hashCode()
    {
      return this.key.hashCode() ^ this.value.hashCode();
    }

    public V setValue(V paramV)
    {
      Object localObject = MapMakerInternalMap.this.put(this.key, paramV);
      this.value = paramV;
      return localObject;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.MapMakerInternalMap
 * JD-Core Version:    0.6.2
 */