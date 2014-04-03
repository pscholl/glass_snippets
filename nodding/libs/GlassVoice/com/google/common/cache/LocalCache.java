package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Equivalence;
import com.google.common.base.Preconditions;
import com.google.common.base.Stopwatch;
import com.google.common.base.Supplier;
import com.google.common.base.Ticker;
import com.google.common.collect.AbstractSequentialIterator;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.common.primitives.Ints;
import com.google.common.util.concurrent.ExecutionError;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningExecutorService;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import com.google.common.util.concurrent.UncheckedExecutionException;
import com.google.common.util.concurrent.Uninterruptibles;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.AbstractMap;
import java.util.AbstractQueue;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Callable;
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

@GwtCompatible(emulated=true)
class LocalCache<K, V> extends AbstractMap<K, V>
  implements ConcurrentMap<K, V>
{
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
  static final Logger logger = Logger.getLogger(LocalCache.class.getName());
  static final ListeningExecutorService sameThreadExecutor = MoreExecutors.sameThreadExecutor();
  final int concurrencyLevel;

  @Nullable
  final CacheLoader<? super K, V> defaultLoader;
  final EntryFactory entryFactory;
  Set<Map.Entry<K, V>> entrySet;
  final long expireAfterAccessNanos;
  final long expireAfterWriteNanos;
  final AbstractCache.StatsCounter globalStatsCounter;
  final Equivalence<Object> keyEquivalence;
  Set<K> keySet;
  final Strength keyStrength;
  final long maxWeight;
  final long refreshNanos;
  final RemovalListener<K, V> removalListener;
  final Queue<RemovalNotification<K, V>> removalNotificationQueue;
  final int segmentMask;
  final int segmentShift;
  final Segment<K, V>[] segments;
  final Ticker ticker;
  final Equivalence<Object> valueEquivalence;
  final Strength valueStrength;
  Collection<V> values;
  final Weigher<K, V> weigher;

  static
  {
    UNSET = new ValueReference()
    {
      public LocalCache.ValueReference<Object, Object> copyFor(ReferenceQueue<Object> paramAnonymousReferenceQueue, @Nullable Object paramAnonymousObject, LocalCache.ReferenceEntry<Object, Object> paramAnonymousReferenceEntry)
      {
        return this;
      }

      public Object get()
      {
        return null;
      }

      public LocalCache.ReferenceEntry<Object, Object> getEntry()
      {
        return null;
      }

      public int getWeight()
      {
        return 0;
      }

      public boolean isActive()
      {
        return false;
      }

      public boolean isLoading()
      {
        return false;
      }

      public void notifyNewValue(Object paramAnonymousObject)
      {
      }

      public Object waitForValue()
      {
        return null;
      }
    };
  }

  LocalCache(CacheBuilder<? super K, ? super V> paramCacheBuilder, @Nullable CacheLoader<? super K, V> paramCacheLoader)
  {
    this.concurrencyLevel = Math.min(paramCacheBuilder.getConcurrencyLevel(), 65536);
    this.keyStrength = paramCacheBuilder.getKeyStrength();
    this.valueStrength = paramCacheBuilder.getValueStrength();
    this.keyEquivalence = paramCacheBuilder.getKeyEquivalence();
    this.valueEquivalence = paramCacheBuilder.getValueEquivalence();
    this.maxWeight = paramCacheBuilder.getMaximumWeight();
    this.weigher = paramCacheBuilder.getWeigher();
    this.expireAfterAccessNanos = paramCacheBuilder.getExpireAfterAccessNanos();
    this.expireAfterWriteNanos = paramCacheBuilder.getExpireAfterWriteNanos();
    this.refreshNanos = paramCacheBuilder.getRefreshNanos();
    this.removalListener = paramCacheBuilder.getRemovalListener();
    if (this.removalListener == CacheBuilder.NullListener.INSTANCE);
    int i;
    int j;
    int k;
    for (Object localObject = discardingQueue(); ; localObject = new ConcurrentLinkedQueue())
    {
      this.removalNotificationQueue = ((Queue)localObject);
      this.ticker = paramCacheBuilder.getTicker(recordsTime());
      this.entryFactory = EntryFactory.getFactory(this.keyStrength, usesAccessEntries(), usesWriteEntries());
      this.globalStatsCounter = ((AbstractCache.StatsCounter)paramCacheBuilder.getStatsCounterSupplier().get());
      this.defaultLoader = paramCacheLoader;
      i = Math.min(paramCacheBuilder.getInitialCapacity(), 1073741824);
      if ((evictsBySize()) && (!customWeigher()))
        i = Math.min(i, (int)this.maxWeight);
      j = 0;
      k = 1;
      while ((k < this.concurrencyLevel) && ((!evictsBySize()) || (k * 20 <= this.maxWeight)))
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
      long l1 = 1L + this.maxWeight / k;
      long l2 = this.maxWeight % k;
      for (int i2 = 0; i2 < this.segments.length; i2++)
      {
        if (i2 == l2)
          l1 -= 1L;
        this.segments[i2] = createSegment(n, l1, (AbstractCache.StatsCounter)paramCacheBuilder.getStatsCounterSupplier().get());
      }
    }
    for (int i1 = 0; i1 < this.segments.length; i1++)
      this.segments[i1] = createSegment(n, -1L, (AbstractCache.StatsCounter)paramCacheBuilder.getStatsCounterSupplier().get());
  }

  @GuardedBy("Segment.this")
  static <K, V> void connectAccessOrder(ReferenceEntry<K, V> paramReferenceEntry1, ReferenceEntry<K, V> paramReferenceEntry2)
  {
    paramReferenceEntry1.setNextInAccessQueue(paramReferenceEntry2);
    paramReferenceEntry2.setPreviousInAccessQueue(paramReferenceEntry1);
  }

  @GuardedBy("Segment.this")
  static <K, V> void connectWriteOrder(ReferenceEntry<K, V> paramReferenceEntry1, ReferenceEntry<K, V> paramReferenceEntry2)
  {
    paramReferenceEntry1.setNextInWriteQueue(paramReferenceEntry2);
    paramReferenceEntry2.setPreviousInWriteQueue(paramReferenceEntry1);
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
  static <K, V> void nullifyAccessOrder(ReferenceEntry<K, V> paramReferenceEntry)
  {
    ReferenceEntry localReferenceEntry = nullEntry();
    paramReferenceEntry.setNextInAccessQueue(localReferenceEntry);
    paramReferenceEntry.setPreviousInAccessQueue(localReferenceEntry);
  }

  @GuardedBy("Segment.this")
  static <K, V> void nullifyWriteOrder(ReferenceEntry<K, V> paramReferenceEntry)
  {
    ReferenceEntry localReferenceEntry = nullEntry();
    paramReferenceEntry.setNextInWriteQueue(localReferenceEntry);
    paramReferenceEntry.setPreviousInWriteQueue(localReferenceEntry);
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

  public void cleanUp()
  {
    Segment[] arrayOfSegment = this.segments;
    int i = arrayOfSegment.length;
    for (int j = 0; j < i; j++)
      arrayOfSegment[j].cleanUp();
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
    long l1 = this.ticker.read();
    Segment[] arrayOfSegment = this.segments;
    long l2 = -1L;
    for (int i = 0; ; i++)
    {
      long l3;
      if (i < 3)
      {
        l3 = 0L;
        int j = arrayOfSegment.length;
        for (int k = 0; k < j; k++)
        {
          Segment localSegment = arrayOfSegment[k];
          AtomicReferenceArray localAtomicReferenceArray = localSegment.table;
          for (int m = 0; m < localAtomicReferenceArray.length(); m++)
            for (ReferenceEntry localReferenceEntry = (ReferenceEntry)localAtomicReferenceArray.get(m); localReferenceEntry != null; localReferenceEntry = localReferenceEntry.getNext())
            {
              Object localObject = localSegment.getLiveValue(localReferenceEntry, l1);
              if ((localObject != null) && (this.valueEquivalence.equivalent(paramObject, localObject)))
                return true;
            }
          l3 += localSegment.modCount;
        }
        if (l3 != l2);
      }
      else
      {
        return false;
      }
      l2 = l3;
    }
  }

  @VisibleForTesting
  @GuardedBy("Segment.this")
  ReferenceEntry<K, V> copyEntry(ReferenceEntry<K, V> paramReferenceEntry1, ReferenceEntry<K, V> paramReferenceEntry2)
  {
    return segmentFor(paramReferenceEntry1.getHash()).copyEntry(paramReferenceEntry1, paramReferenceEntry2);
  }

  Segment<K, V> createSegment(int paramInt, long paramLong, AbstractCache.StatsCounter paramStatsCounter)
  {
    return new Segment(this, paramInt, paramLong, paramStatsCounter);
  }

  boolean customWeigher()
  {
    return this.weigher != CacheBuilder.OneWeigher.INSTANCE;
  }

  @GwtIncompatible("Not supported.")
  public Set<Map.Entry<K, V>> entrySet()
  {
    Set localSet = this.entrySet;
    if (localSet != null)
      return localSet;
    EntrySet localEntrySet = new EntrySet(this);
    this.entrySet = localEntrySet;
    return localEntrySet;
  }

  boolean evictsBySize()
  {
    return this.maxWeight >= 0L;
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

  @Nullable
  public V get(@Nullable Object paramObject)
  {
    if (paramObject == null)
      return null;
    int i = hash(paramObject);
    return segmentFor(i).get(paramObject, i);
  }

  V get(K paramK, CacheLoader<? super K, V> paramCacheLoader)
    throws ExecutionException
  {
    int i = hash(Preconditions.checkNotNull(paramK));
    return segmentFor(i).get(paramK, i, paramCacheLoader);
  }

  ImmutableMap<K, V> getAll(Iterable<? extends K> paramIterable)
    throws ExecutionException
  {
    int i = 0;
    int j = 0;
    LinkedHashMap localLinkedHashMap = Maps.newLinkedHashMap();
    LinkedHashSet localLinkedHashSet = Sets.newLinkedHashSet();
    Iterator localIterator1 = paramIterable.iterator();
    while (localIterator1.hasNext())
    {
      Object localObject5 = localIterator1.next();
      Object localObject6 = get(localObject5);
      if (!localLinkedHashMap.containsKey(localObject5))
      {
        localLinkedHashMap.put(localObject5, localObject6);
        if (localObject6 == null)
        {
          j++;
          localLinkedHashSet.add(localObject5);
        }
        else
        {
          i++;
        }
      }
    }
    while (true)
    {
      Object localObject3;
      Object localObject4;
      try
      {
        boolean bool = localLinkedHashSet.isEmpty();
        if (bool)
          break;
        Iterator localIterator2;
        try
        {
          Map localMap = loadAll(localLinkedHashSet, this.defaultLoader);
          Iterator localIterator3 = localLinkedHashSet.iterator();
          if (!localIterator3.hasNext())
            break;
          localObject3 = localIterator3.next();
          localObject4 = localMap.get(localObject3);
          if (localObject4 != null)
            break label280;
          throw new CacheLoader.InvalidCacheLoadException("loadAll failed to return a value for " + localObject3);
        }
        catch (CacheLoader.UnsupportedLoadingOperationException localUnsupportedLoadingOperationException)
        {
          localIterator2 = localLinkedHashSet.iterator();
          if (!localIterator2.hasNext())
            break;
        }
        Object localObject2 = localIterator2.next();
        j--;
        localLinkedHashMap.put(localObject2, get(localObject2, this.defaultLoader));
        continue;
      }
      finally
      {
        this.globalStatsCounter.recordHits(i);
        this.globalStatsCounter.recordMisses(j);
      }
      label280: localLinkedHashMap.put(localObject3, localObject4);
    }
    ImmutableMap localImmutableMap = ImmutableMap.copyOf(localLinkedHashMap);
    this.globalStatsCounter.recordHits(i);
    this.globalStatsCounter.recordMisses(j);
    return localImmutableMap;
  }

  ImmutableMap<K, V> getAllPresent(Iterable<?> paramIterable)
  {
    int i = 0;
    int j = 0;
    LinkedHashMap localLinkedHashMap = Maps.newLinkedHashMap();
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
    {
      Object localObject1 = localIterator.next();
      Object localObject2 = get(localObject1);
      if (localObject2 == null)
      {
        j++;
      }
      else
      {
        localLinkedHashMap.put(localObject1, localObject2);
        i++;
      }
    }
    this.globalStatsCounter.recordHits(i);
    this.globalStatsCounter.recordMisses(j);
    return ImmutableMap.copyOf(localLinkedHashMap);
  }

  ReferenceEntry<K, V> getEntry(@Nullable Object paramObject)
  {
    if (paramObject == null)
      return null;
    int i = hash(paramObject);
    return segmentFor(i).getEntry(paramObject, i);
  }

  @Nullable
  public V getIfPresent(Object paramObject)
  {
    int i = hash(Preconditions.checkNotNull(paramObject));
    Object localObject = segmentFor(i).get(paramObject, i);
    if (localObject == null)
    {
      this.globalStatsCounter.recordMisses(1);
      return localObject;
    }
    this.globalStatsCounter.recordHits(1);
    return localObject;
  }

  @Nullable
  V getLiveValue(ReferenceEntry<K, V> paramReferenceEntry, long paramLong)
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
    while (!isExpired(paramReferenceEntry, paramLong));
    return null;
  }

  V getOrLoad(K paramK)
    throws ExecutionException
  {
    return get(paramK, this.defaultLoader);
  }

  int hash(@Nullable Object paramObject)
  {
    return rehash(this.keyEquivalence.hash(paramObject));
  }

  void invalidateAll(Iterable<?> paramIterable)
  {
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
      remove(localIterator.next());
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

  boolean isExpired(ReferenceEntry<K, V> paramReferenceEntry, long paramLong)
  {
    Preconditions.checkNotNull(paramReferenceEntry);
    if ((expiresAfterAccess()) && (paramLong - paramReferenceEntry.getAccessTime() >= this.expireAfterAccessNanos));
    while ((expiresAfterWrite()) && (paramLong - paramReferenceEntry.getWriteTime() >= this.expireAfterWriteNanos))
      return true;
    return false;
  }

  @VisibleForTesting
  boolean isLive(ReferenceEntry<K, V> paramReferenceEntry, long paramLong)
  {
    return segmentFor(paramReferenceEntry.getHash()).getLiveValue(paramReferenceEntry, paramLong) != null;
  }

  public Set<K> keySet()
  {
    Set localSet = this.keySet;
    if (localSet != null)
      return localSet;
    KeySet localKeySet = new KeySet(this);
    this.keySet = localKeySet;
    return localKeySet;
  }

  // ERROR //
  @Nullable
  Map<K, V> loadAll(Set<? extends K> paramSet, CacheLoader<? super K, V> paramCacheLoader)
    throws ExecutionException
  {
    // Byte code:
    //   0: aload_2
    //   1: invokestatic 400	com/google/common/base/Preconditions:checkNotNull	(Ljava/lang/Object;)Ljava/lang/Object;
    //   4: pop
    //   5: aload_1
    //   6: invokestatic 400	com/google/common/base/Preconditions:checkNotNull	(Ljava/lang/Object;)Ljava/lang/Object;
    //   9: pop
    //   10: new 543	com/google/common/base/Stopwatch
    //   13: dup
    //   14: invokespecial 544	com/google/common/base/Stopwatch:<init>	()V
    //   17: invokevirtual 548	com/google/common/base/Stopwatch:start	()Lcom/google/common/base/Stopwatch;
    //   20: astore 5
    //   22: iconst_0
    //   23: istore 6
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 553	com/google/common/cache/CacheLoader:loadAll	(Ljava/lang/Iterable;)Ljava/util/Map;
    //   30: astore 13
    //   32: iconst_1
    //   33: ifne +20 -> 53
    //   36: aload_0
    //   37: getfield 231	com/google/common/cache/LocalCache:globalStatsCounter	Lcom/google/common/cache/AbstractCache$StatsCounter;
    //   40: aload 5
    //   42: getstatic 559	java/util/concurrent/TimeUnit:NANOSECONDS	Ljava/util/concurrent/TimeUnit;
    //   45: invokevirtual 563	com/google/common/base/Stopwatch:elapsed	(Ljava/util/concurrent/TimeUnit;)J
    //   48: invokeinterface 567 3 0
    //   53: aload 13
    //   55: ifnonnull +137 -> 192
    //   58: aload_0
    //   59: getfield 231	com/google/common/cache/LocalCache:globalStatsCounter	Lcom/google/common/cache/AbstractCache$StatsCounter;
    //   62: aload 5
    //   64: getstatic 559	java/util/concurrent/TimeUnit:NANOSECONDS	Ljava/util/concurrent/TimeUnit;
    //   67: invokevirtual 563	com/google/common/base/Stopwatch:elapsed	(Ljava/util/concurrent/TimeUnit;)J
    //   70: invokeinterface 567 3 0
    //   75: new 459	com/google/common/cache/CacheLoader$InvalidCacheLoadException
    //   78: dup
    //   79: new 461	java/lang/StringBuilder
    //   82: dup
    //   83: invokespecial 462	java/lang/StringBuilder:<init>	()V
    //   86: aload_2
    //   87: invokevirtual 471	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   90: ldc_w 569
    //   93: invokevirtual 468	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: invokevirtual 474	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   99: invokespecial 477	com/google/common/cache/CacheLoader$InvalidCacheLoadException:<init>	(Ljava/lang/String;)V
    //   102: athrow
    //   103: astore 12
    //   105: iconst_1
    //   106: istore 6
    //   108: aload 12
    //   110: athrow
    //   111: astore 8
    //   113: iload 6
    //   115: ifne +20 -> 135
    //   118: aload_0
    //   119: getfield 231	com/google/common/cache/LocalCache:globalStatsCounter	Lcom/google/common/cache/AbstractCache$StatsCounter;
    //   122: aload 5
    //   124: getstatic 559	java/util/concurrent/TimeUnit:NANOSECONDS	Ljava/util/concurrent/TimeUnit;
    //   127: invokevirtual 563	com/google/common/base/Stopwatch:elapsed	(Ljava/util/concurrent/TimeUnit;)J
    //   130: invokeinterface 567 3 0
    //   135: aload 8
    //   137: athrow
    //   138: astore 11
    //   140: invokestatic 575	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   143: invokevirtual 578	java/lang/Thread:interrupt	()V
    //   146: new 395	java/util/concurrent/ExecutionException
    //   149: dup
    //   150: aload 11
    //   152: invokespecial 581	java/util/concurrent/ExecutionException:<init>	(Ljava/lang/Throwable;)V
    //   155: athrow
    //   156: astore 10
    //   158: new 583	com/google/common/util/concurrent/UncheckedExecutionException
    //   161: dup
    //   162: aload 10
    //   164: invokespecial 584	com/google/common/util/concurrent/UncheckedExecutionException:<init>	(Ljava/lang/Throwable;)V
    //   167: athrow
    //   168: astore 9
    //   170: new 395	java/util/concurrent/ExecutionException
    //   173: dup
    //   174: aload 9
    //   176: invokespecial 581	java/util/concurrent/ExecutionException:<init>	(Ljava/lang/Throwable;)V
    //   179: athrow
    //   180: astore 7
    //   182: new 586	com/google/common/util/concurrent/ExecutionError
    //   185: dup
    //   186: aload 7
    //   188: invokespecial 589	com/google/common/util/concurrent/ExecutionError:<init>	(Ljava/lang/Error;)V
    //   191: athrow
    //   192: aload 5
    //   194: invokevirtual 592	com/google/common/base/Stopwatch:stop	()Lcom/google/common/base/Stopwatch;
    //   197: pop
    //   198: iconst_0
    //   199: istore 15
    //   201: aload 13
    //   203: invokeinterface 594 1 0
    //   208: invokeinterface 456 1 0
    //   213: astore 16
    //   215: aload 16
    //   217: invokeinterface 430 1 0
    //   222: ifeq +61 -> 283
    //   225: aload 16
    //   227: invokeinterface 433 1 0
    //   232: checkcast 596	java/util/Map$Entry
    //   235: astore 17
    //   237: aload 17
    //   239: invokeinterface 597 1 0
    //   244: astore 18
    //   246: aload 17
    //   248: invokeinterface 600 1 0
    //   253: astore 19
    //   255: aload 18
    //   257: ifnull +8 -> 265
    //   260: aload 19
    //   262: ifnonnull +9 -> 271
    //   265: iconst_1
    //   266: istore 15
    //   268: goto -53 -> 215
    //   271: aload_0
    //   272: aload 18
    //   274: aload 19
    //   276: invokevirtual 601	com/google/common/cache/LocalCache:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   279: pop
    //   280: goto -65 -> 215
    //   283: iload 15
    //   285: ifeq +48 -> 333
    //   288: aload_0
    //   289: getfield 231	com/google/common/cache/LocalCache:globalStatsCounter	Lcom/google/common/cache/AbstractCache$StatsCounter;
    //   292: aload 5
    //   294: getstatic 559	java/util/concurrent/TimeUnit:NANOSECONDS	Ljava/util/concurrent/TimeUnit;
    //   297: invokevirtual 563	com/google/common/base/Stopwatch:elapsed	(Ljava/util/concurrent/TimeUnit;)J
    //   300: invokeinterface 567 3 0
    //   305: new 459	com/google/common/cache/CacheLoader$InvalidCacheLoadException
    //   308: dup
    //   309: new 461	java/lang/StringBuilder
    //   312: dup
    //   313: invokespecial 462	java/lang/StringBuilder:<init>	()V
    //   316: aload_2
    //   317: invokevirtual 471	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   320: ldc_w 603
    //   323: invokevirtual 468	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   326: invokevirtual 474	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   329: invokespecial 477	com/google/common/cache/CacheLoader$InvalidCacheLoadException:<init>	(Ljava/lang/String;)V
    //   332: athrow
    //   333: aload_0
    //   334: getfield 231	com/google/common/cache/LocalCache:globalStatsCounter	Lcom/google/common/cache/AbstractCache$StatsCounter;
    //   337: aload 5
    //   339: getstatic 559	java/util/concurrent/TimeUnit:NANOSECONDS	Ljava/util/concurrent/TimeUnit;
    //   342: invokevirtual 563	com/google/common/base/Stopwatch:elapsed	(Ljava/util/concurrent/TimeUnit;)J
    //   345: invokeinterface 606 3 0
    //   350: aload 13
    //   352: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   25	32	103	com/google/common/cache/CacheLoader$UnsupportedLoadingOperationException
    //   25	32	111	finally
    //   108	111	111	finally
    //   140	156	111	finally
    //   158	168	111	finally
    //   170	180	111	finally
    //   182	192	111	finally
    //   25	32	138	java/lang/InterruptedException
    //   25	32	156	java/lang/RuntimeException
    //   25	32	168	java/lang/Exception
    //   25	32	180	java/lang/Error
  }

  long longSize()
  {
    Segment[] arrayOfSegment = this.segments;
    long l = 0L;
    for (int i = 0; i < arrayOfSegment.length; i++)
      l += arrayOfSegment[i].count;
    return l;
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
  ValueReference<K, V> newValueReference(ReferenceEntry<K, V> paramReferenceEntry, V paramV, int paramInt)
  {
    int i = paramReferenceEntry.getHash();
    return this.valueStrength.referenceValue(segmentFor(i), paramReferenceEntry, Preconditions.checkNotNull(paramV), paramInt);
  }

  void processPendingNotifications()
  {
    while (true)
    {
      RemovalNotification localRemovalNotification = (RemovalNotification)this.removalNotificationQueue.poll();
      if (localRemovalNotification == null)
        break;
      try
      {
        this.removalListener.onRemoval(localRemovalNotification);
      }
      catch (Throwable localThrowable)
      {
        logger.log(Level.WARNING, "Exception thrown by removal listener", localThrowable);
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

  boolean recordsAccess()
  {
    return expiresAfterAccess();
  }

  boolean recordsTime()
  {
    return (recordsWrite()) || (recordsAccess());
  }

  boolean recordsWrite()
  {
    return (expiresAfterWrite()) || (refreshes());
  }

  void refresh(K paramK)
  {
    int i = hash(Preconditions.checkNotNull(paramK));
    segmentFor(i).refresh(paramK, i, this.defaultLoader, false);
  }

  boolean refreshes()
  {
    return this.refreshNanos > 0L;
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
    return Ints.saturatedCast(longSize());
  }

  boolean usesAccessEntries()
  {
    return (usesAccessQueue()) || (recordsAccess());
  }

  boolean usesAccessQueue()
  {
    return (expiresAfterAccess()) || (evictsBySize());
  }

  boolean usesKeyReferences()
  {
    return this.keyStrength != Strength.STRONG;
  }

  boolean usesValueReferences()
  {
    return this.valueStrength != Strength.STRONG;
  }

  boolean usesWriteEntries()
  {
    return (usesWriteQueue()) || (recordsWrite());
  }

  boolean usesWriteQueue()
  {
    return expiresAfterWrite();
  }

  public Collection<V> values()
  {
    Collection localCollection = this.values;
    if (localCollection != null)
      return localCollection;
    Values localValues = new Values(this);
    this.values = localValues;
    return localValues;
  }

  abstract class AbstractCacheSet<T> extends AbstractSet<T>
  {
    final ConcurrentMap<?, ?> map;

    AbstractCacheSet()
    {
      Object localObject;
      this.map = localObject;
    }

    public void clear()
    {
      this.map.clear();
    }

    public boolean isEmpty()
    {
      return this.map.isEmpty();
    }

    public int size()
    {
      return this.map.size();
    }
  }

  static abstract class AbstractReferenceEntry<K, V>
    implements LocalCache.ReferenceEntry<K, V>
  {
    public long getAccessTime()
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

    public LocalCache.ReferenceEntry<K, V> getNext()
    {
      throw new UnsupportedOperationException();
    }

    public LocalCache.ReferenceEntry<K, V> getNextInAccessQueue()
    {
      throw new UnsupportedOperationException();
    }

    public LocalCache.ReferenceEntry<K, V> getNextInWriteQueue()
    {
      throw new UnsupportedOperationException();
    }

    public LocalCache.ReferenceEntry<K, V> getPreviousInAccessQueue()
    {
      throw new UnsupportedOperationException();
    }

    public LocalCache.ReferenceEntry<K, V> getPreviousInWriteQueue()
    {
      throw new UnsupportedOperationException();
    }

    public LocalCache.ValueReference<K, V> getValueReference()
    {
      throw new UnsupportedOperationException();
    }

    public long getWriteTime()
    {
      throw new UnsupportedOperationException();
    }

    public void setAccessTime(long paramLong)
    {
      throw new UnsupportedOperationException();
    }

    public void setNextInAccessQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setNextInWriteQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setPreviousInAccessQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setPreviousInWriteQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setValueReference(LocalCache.ValueReference<K, V> paramValueReference)
    {
      throw new UnsupportedOperationException();
    }

    public void setWriteTime(long paramLong)
    {
      throw new UnsupportedOperationException();
    }
  }

  static final class AccessQueue<K, V> extends AbstractQueue<LocalCache.ReferenceEntry<K, V>>
  {
    final LocalCache.ReferenceEntry<K, V> head = new LocalCache.AbstractReferenceEntry()
    {
      LocalCache.ReferenceEntry<K, V> nextAccess = this;
      LocalCache.ReferenceEntry<K, V> previousAccess = this;

      public long getAccessTime()
      {
        return 9223372036854775807L;
      }

      public LocalCache.ReferenceEntry<K, V> getNextInAccessQueue()
      {
        return this.nextAccess;
      }

      public LocalCache.ReferenceEntry<K, V> getPreviousInAccessQueue()
      {
        return this.previousAccess;
      }

      public void setAccessTime(long paramAnonymousLong)
      {
      }

      public void setNextInAccessQueue(LocalCache.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
      {
        this.nextAccess = paramAnonymousReferenceEntry;
      }

      public void setPreviousInAccessQueue(LocalCache.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
      {
        this.previousAccess = paramAnonymousReferenceEntry;
      }
    };

    public void clear()
    {
      LocalCache.ReferenceEntry localReferenceEntry;
      for (Object localObject = this.head.getNextInAccessQueue(); localObject != this.head; localObject = localReferenceEntry)
      {
        localReferenceEntry = ((LocalCache.ReferenceEntry)localObject).getNextInAccessQueue();
        LocalCache.nullifyAccessOrder((LocalCache.ReferenceEntry)localObject);
      }
      this.head.setNextInAccessQueue(this.head);
      this.head.setPreviousInAccessQueue(this.head);
    }

    public boolean contains(Object paramObject)
    {
      return ((LocalCache.ReferenceEntry)paramObject).getNextInAccessQueue() != LocalCache.NullEntry.INSTANCE;
    }

    public boolean isEmpty()
    {
      return this.head.getNextInAccessQueue() == this.head;
    }

    public Iterator<LocalCache.ReferenceEntry<K, V>> iterator()
    {
      return new AbstractSequentialIterator(peek())
      {
        protected LocalCache.ReferenceEntry<K, V> computeNext(LocalCache.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
        {
          LocalCache.ReferenceEntry localReferenceEntry = paramAnonymousReferenceEntry.getNextInAccessQueue();
          if (localReferenceEntry == LocalCache.AccessQueue.this.head)
            localReferenceEntry = null;
          return localReferenceEntry;
        }
      };
    }

    public boolean offer(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      LocalCache.connectAccessOrder(paramReferenceEntry.getPreviousInAccessQueue(), paramReferenceEntry.getNextInAccessQueue());
      LocalCache.connectAccessOrder(this.head.getPreviousInAccessQueue(), paramReferenceEntry);
      LocalCache.connectAccessOrder(paramReferenceEntry, this.head);
      return true;
    }

    public LocalCache.ReferenceEntry<K, V> peek()
    {
      LocalCache.ReferenceEntry localReferenceEntry = this.head.getNextInAccessQueue();
      if (localReferenceEntry == this.head)
        localReferenceEntry = null;
      return localReferenceEntry;
    }

    public LocalCache.ReferenceEntry<K, V> poll()
    {
      LocalCache.ReferenceEntry localReferenceEntry = this.head.getNextInAccessQueue();
      if (localReferenceEntry == this.head)
        return null;
      remove(localReferenceEntry);
      return localReferenceEntry;
    }

    public boolean remove(Object paramObject)
    {
      LocalCache.ReferenceEntry localReferenceEntry1 = (LocalCache.ReferenceEntry)paramObject;
      LocalCache.ReferenceEntry localReferenceEntry2 = localReferenceEntry1.getPreviousInAccessQueue();
      LocalCache.ReferenceEntry localReferenceEntry3 = localReferenceEntry1.getNextInAccessQueue();
      LocalCache.connectAccessOrder(localReferenceEntry2, localReferenceEntry3);
      LocalCache.nullifyAccessOrder(localReferenceEntry1);
      return localReferenceEntry3 != LocalCache.NullEntry.INSTANCE;
    }

    public int size()
    {
      int i = 0;
      for (LocalCache.ReferenceEntry localReferenceEntry = this.head.getNextInAccessQueue(); localReferenceEntry != this.head; localReferenceEntry = localReferenceEntry.getNextInAccessQueue())
        i++;
      return i;
    }
  }

  static abstract enum EntryFactory
  {
    static final int ACCESS_MASK = 1;
    static final int WEAK_MASK = 4;
    static final int WRITE_MASK = 2;
    static final EntryFactory[] factories = arrayOfEntryFactory2;

    static
    {
      // Byte code:
      //   0: new 28	com/google/common/cache/LocalCache$EntryFactory$1
      //   3: dup
      //   4: ldc 29
      //   6: iconst_0
      //   7: invokespecial 33	com/google/common/cache/LocalCache$EntryFactory$1:<init>	(Ljava/lang/String;I)V
      //   10: putstatic 35	com/google/common/cache/LocalCache$EntryFactory:STRONG	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   13: new 37	com/google/common/cache/LocalCache$EntryFactory$2
      //   16: dup
      //   17: ldc 38
      //   19: iconst_1
      //   20: invokespecial 39	com/google/common/cache/LocalCache$EntryFactory$2:<init>	(Ljava/lang/String;I)V
      //   23: putstatic 41	com/google/common/cache/LocalCache$EntryFactory:STRONG_ACCESS	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   26: new 43	com/google/common/cache/LocalCache$EntryFactory$3
      //   29: dup
      //   30: ldc 44
      //   32: iconst_2
      //   33: invokespecial 45	com/google/common/cache/LocalCache$EntryFactory$3:<init>	(Ljava/lang/String;I)V
      //   36: putstatic 47	com/google/common/cache/LocalCache$EntryFactory:STRONG_WRITE	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   39: new 49	com/google/common/cache/LocalCache$EntryFactory$4
      //   42: dup
      //   43: ldc 50
      //   45: iconst_3
      //   46: invokespecial 51	com/google/common/cache/LocalCache$EntryFactory$4:<init>	(Ljava/lang/String;I)V
      //   49: putstatic 53	com/google/common/cache/LocalCache$EntryFactory:STRONG_ACCESS_WRITE	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   52: new 55	com/google/common/cache/LocalCache$EntryFactory$5
      //   55: dup
      //   56: ldc 56
      //   58: iconst_4
      //   59: invokespecial 57	com/google/common/cache/LocalCache$EntryFactory$5:<init>	(Ljava/lang/String;I)V
      //   62: putstatic 59	com/google/common/cache/LocalCache$EntryFactory:WEAK	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   65: new 61	com/google/common/cache/LocalCache$EntryFactory$6
      //   68: dup
      //   69: ldc 62
      //   71: iconst_5
      //   72: invokespecial 63	com/google/common/cache/LocalCache$EntryFactory$6:<init>	(Ljava/lang/String;I)V
      //   75: putstatic 65	com/google/common/cache/LocalCache$EntryFactory:WEAK_ACCESS	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   78: new 67	com/google/common/cache/LocalCache$EntryFactory$7
      //   81: dup
      //   82: ldc 68
      //   84: bipush 6
      //   86: invokespecial 69	com/google/common/cache/LocalCache$EntryFactory$7:<init>	(Ljava/lang/String;I)V
      //   89: putstatic 71	com/google/common/cache/LocalCache$EntryFactory:WEAK_WRITE	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   92: new 73	com/google/common/cache/LocalCache$EntryFactory$8
      //   95: dup
      //   96: ldc 74
      //   98: bipush 7
      //   100: invokespecial 75	com/google/common/cache/LocalCache$EntryFactory$8:<init>	(Ljava/lang/String;I)V
      //   103: putstatic 77	com/google/common/cache/LocalCache$EntryFactory:WEAK_ACCESS_WRITE	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   106: bipush 8
      //   108: anewarray 2	com/google/common/cache/LocalCache$EntryFactory
      //   111: astore_0
      //   112: aload_0
      //   113: iconst_0
      //   114: getstatic 35	com/google/common/cache/LocalCache$EntryFactory:STRONG	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   117: aastore
      //   118: aload_0
      //   119: iconst_1
      //   120: getstatic 41	com/google/common/cache/LocalCache$EntryFactory:STRONG_ACCESS	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   123: aastore
      //   124: aload_0
      //   125: iconst_2
      //   126: getstatic 47	com/google/common/cache/LocalCache$EntryFactory:STRONG_WRITE	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   129: aastore
      //   130: aload_0
      //   131: iconst_3
      //   132: getstatic 53	com/google/common/cache/LocalCache$EntryFactory:STRONG_ACCESS_WRITE	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   135: aastore
      //   136: aload_0
      //   137: iconst_4
      //   138: getstatic 59	com/google/common/cache/LocalCache$EntryFactory:WEAK	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   141: aastore
      //   142: aload_0
      //   143: iconst_5
      //   144: getstatic 65	com/google/common/cache/LocalCache$EntryFactory:WEAK_ACCESS	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   147: aastore
      //   148: aload_0
      //   149: bipush 6
      //   151: getstatic 71	com/google/common/cache/LocalCache$EntryFactory:WEAK_WRITE	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   154: aastore
      //   155: aload_0
      //   156: bipush 7
      //   158: getstatic 77	com/google/common/cache/LocalCache$EntryFactory:WEAK_ACCESS_WRITE	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   161: aastore
      //   162: aload_0
      //   163: putstatic 79	com/google/common/cache/LocalCache$EntryFactory:$VALUES	[Lcom/google/common/cache/LocalCache$EntryFactory;
      //   166: bipush 8
      //   168: anewarray 2	com/google/common/cache/LocalCache$EntryFactory
      //   171: astore_1
      //   172: aload_1
      //   173: iconst_0
      //   174: getstatic 35	com/google/common/cache/LocalCache$EntryFactory:STRONG	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   177: aastore
      //   178: aload_1
      //   179: iconst_1
      //   180: getstatic 41	com/google/common/cache/LocalCache$EntryFactory:STRONG_ACCESS	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   183: aastore
      //   184: aload_1
      //   185: iconst_2
      //   186: getstatic 47	com/google/common/cache/LocalCache$EntryFactory:STRONG_WRITE	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   189: aastore
      //   190: aload_1
      //   191: iconst_3
      //   192: getstatic 53	com/google/common/cache/LocalCache$EntryFactory:STRONG_ACCESS_WRITE	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   195: aastore
      //   196: aload_1
      //   197: iconst_4
      //   198: getstatic 59	com/google/common/cache/LocalCache$EntryFactory:WEAK	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   201: aastore
      //   202: aload_1
      //   203: iconst_5
      //   204: getstatic 65	com/google/common/cache/LocalCache$EntryFactory:WEAK_ACCESS	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   207: aastore
      //   208: aload_1
      //   209: bipush 6
      //   211: getstatic 71	com/google/common/cache/LocalCache$EntryFactory:WEAK_WRITE	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   214: aastore
      //   215: aload_1
      //   216: bipush 7
      //   218: getstatic 77	com/google/common/cache/LocalCache$EntryFactory:WEAK_ACCESS_WRITE	Lcom/google/common/cache/LocalCache$EntryFactory;
      //   221: aastore
      //   222: aload_1
      //   223: putstatic 81	com/google/common/cache/LocalCache$EntryFactory:factories	[Lcom/google/common/cache/LocalCache$EntryFactory;
      //   226: return
    }

    static EntryFactory getFactory(LocalCache.Strength paramStrength, boolean paramBoolean1, boolean paramBoolean2)
    {
      int i;
      if (paramStrength == LocalCache.Strength.WEAK)
      {
        i = 4;
        if (!paramBoolean1)
          break label51;
      }
      label51: for (int j = 1; ; j = 0)
      {
        int k = j | i;
        int m = 0;
        if (paramBoolean2)
          m = 2;
        int n = k | m;
        return factories[n];
        i = 0;
        break;
      }
    }

    @GuardedBy("Segment.this")
    <K, V> void copyAccessEntry(LocalCache.ReferenceEntry<K, V> paramReferenceEntry1, LocalCache.ReferenceEntry<K, V> paramReferenceEntry2)
    {
      paramReferenceEntry2.setAccessTime(paramReferenceEntry1.getAccessTime());
      LocalCache.connectAccessOrder(paramReferenceEntry1.getPreviousInAccessQueue(), paramReferenceEntry2);
      LocalCache.connectAccessOrder(paramReferenceEntry2, paramReferenceEntry1.getNextInAccessQueue());
      LocalCache.nullifyAccessOrder(paramReferenceEntry1);
    }

    @GuardedBy("Segment.this")
    <K, V> LocalCache.ReferenceEntry<K, V> copyEntry(LocalCache.Segment<K, V> paramSegment, LocalCache.ReferenceEntry<K, V> paramReferenceEntry1, LocalCache.ReferenceEntry<K, V> paramReferenceEntry2)
    {
      return newEntry(paramSegment, paramReferenceEntry1.getKey(), paramReferenceEntry1.getHash(), paramReferenceEntry2);
    }

    @GuardedBy("Segment.this")
    <K, V> void copyWriteEntry(LocalCache.ReferenceEntry<K, V> paramReferenceEntry1, LocalCache.ReferenceEntry<K, V> paramReferenceEntry2)
    {
      paramReferenceEntry2.setWriteTime(paramReferenceEntry1.getWriteTime());
      LocalCache.connectWriteOrder(paramReferenceEntry1.getPreviousInWriteQueue(), paramReferenceEntry2);
      LocalCache.connectWriteOrder(paramReferenceEntry2, paramReferenceEntry1.getNextInWriteQueue());
      LocalCache.nullifyWriteOrder(paramReferenceEntry1);
    }

    abstract <K, V> LocalCache.ReferenceEntry<K, V> newEntry(LocalCache.Segment<K, V> paramSegment, K paramK, int paramInt, @Nullable LocalCache.ReferenceEntry<K, V> paramReferenceEntry);
  }

  final class EntryIterator extends LocalCache<K, V>.HashIterator<Map.Entry<K, V>>
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

  final class EntrySet extends LocalCache<K, V>.AbstractCacheSet<Map.Entry<K, V>>
  {
    EntrySet()
    {
      super(localConcurrentMap);
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
        localObject2 = LocalCache.this.get(localObject1);
      }
      while ((localObject2 == null) || (!LocalCache.this.valueEquivalence.equivalent(localEntry.getValue(), localObject2)));
      return true;
    }

    public Iterator<Map.Entry<K, V>> iterator()
    {
      return new LocalCache.EntryIterator(LocalCache.this);
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
      while ((localObject == null) || (!LocalCache.this.remove(localObject, localEntry.getValue())));
      return true;
    }
  }

  abstract class HashIterator<T>
    implements Iterator<T>
  {
    LocalCache.Segment<K, V> currentSegment;
    AtomicReferenceArray<LocalCache.ReferenceEntry<K, V>> currentTable;
    LocalCache<K, V>.WriteThroughEntry lastReturned;
    LocalCache.ReferenceEntry<K, V> nextEntry;
    LocalCache<K, V>.WriteThroughEntry nextExternal;
    int nextSegmentIndex = -1 + LocalCache.this.segments.length;
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
          LocalCache.Segment[] arrayOfSegment = LocalCache.this.segments;
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

    boolean advanceTo(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      try
      {
        long l = LocalCache.this.ticker.read();
        Object localObject2 = paramReferenceEntry.getKey();
        Object localObject3 = LocalCache.this.getLiveValue(paramReferenceEntry, l);
        if (localObject3 != null)
        {
          this.nextExternal = new LocalCache.WriteThroughEntry(LocalCache.this, localObject2, localObject3);
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

    public abstract T next();

    LocalCache<K, V>.WriteThroughEntry nextEntry()
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
        LocalCache.ReferenceEntry localReferenceEntry = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(i);
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
        LocalCache.this.remove(this.lastReturned.getKey());
        this.lastReturned = null;
        return;
      }
    }
  }

  final class KeyIterator extends LocalCache<K, V>.HashIterator<K>
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

  final class KeySet extends LocalCache<K, V>.AbstractCacheSet<K>
  {
    KeySet()
    {
      super(localConcurrentMap);
    }

    public boolean contains(Object paramObject)
    {
      return this.map.containsKey(paramObject);
    }

    public Iterator<K> iterator()
    {
      return new LocalCache.KeyIterator(LocalCache.this);
    }

    public boolean remove(Object paramObject)
    {
      return this.map.remove(paramObject) != null;
    }
  }

  static final class LoadingSerializationProxy<K, V> extends LocalCache.ManualSerializationProxy<K, V>
    implements LoadingCache<K, V>, Serializable
  {
    private static final long serialVersionUID = 1L;
    transient LoadingCache<K, V> autoDelegate;

    LoadingSerializationProxy(LocalCache<K, V> paramLocalCache)
    {
      super();
    }

    private void readObject(ObjectInputStream paramObjectInputStream)
      throws IOException, ClassNotFoundException
    {
      paramObjectInputStream.defaultReadObject();
      this.autoDelegate = recreateCacheBuilder().build(this.loader);
    }

    private Object readResolve()
    {
      return this.autoDelegate;
    }

    public final V apply(K paramK)
    {
      return this.autoDelegate.apply(paramK);
    }

    public V get(K paramK)
      throws ExecutionException
    {
      return this.autoDelegate.get(paramK);
    }

    public ImmutableMap<K, V> getAll(Iterable<? extends K> paramIterable)
      throws ExecutionException
    {
      return this.autoDelegate.getAll(paramIterable);
    }

    public V getUnchecked(K paramK)
    {
      return this.autoDelegate.getUnchecked(paramK);
    }

    public void refresh(K paramK)
    {
      this.autoDelegate.refresh(paramK);
    }
  }

  static class LoadingValueReference<K, V>
    implements LocalCache.ValueReference<K, V>
  {
    final SettableFuture<V> futureValue = SettableFuture.create();
    volatile LocalCache.ValueReference<K, V> oldValue;
    final Stopwatch stopwatch = new Stopwatch();

    public LoadingValueReference()
    {
      this(LocalCache.unset());
    }

    public LoadingValueReference(LocalCache.ValueReference<K, V> paramValueReference)
    {
      this.oldValue = paramValueReference;
    }

    private ListenableFuture<V> fullyFailedFuture(Throwable paramThrowable)
    {
      SettableFuture localSettableFuture = SettableFuture.create();
      setException(localSettableFuture, paramThrowable);
      return localSettableFuture;
    }

    private static boolean setException(SettableFuture<?> paramSettableFuture, Throwable paramThrowable)
    {
      try
      {
        boolean bool = paramSettableFuture.setException(paramThrowable);
        return bool;
      }
      catch (Error localError)
      {
      }
      return false;
    }

    public LocalCache.ValueReference<K, V> copyFor(ReferenceQueue<V> paramReferenceQueue, @Nullable V paramV, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      return this;
    }

    public long elapsedNanos()
    {
      return this.stopwatch.elapsed(TimeUnit.NANOSECONDS);
    }

    public V get()
    {
      return this.oldValue.get();
    }

    public LocalCache.ReferenceEntry<K, V> getEntry()
    {
      return null;
    }

    public LocalCache.ValueReference<K, V> getOldValue()
    {
      return this.oldValue;
    }

    public int getWeight()
    {
      return this.oldValue.getWeight();
    }

    public boolean isActive()
    {
      return this.oldValue.isActive();
    }

    public boolean isLoading()
    {
      return true;
    }

    public ListenableFuture<V> loadFuture(K paramK, CacheLoader<? super K, V> paramCacheLoader)
    {
      this.stopwatch.start();
      Object localObject1 = this.oldValue.get();
      if (localObject1 == null);
      Object localObject2;
      try
      {
        Object localObject3 = paramCacheLoader.load(paramK);
        if (set(localObject3))
          return this.futureValue;
        return Futures.immediateFuture(localObject3);
        localObject2 = paramCacheLoader.reload(paramK, localObject1);
        if (localObject2 == null)
        {
          ListenableFuture localListenableFuture = Futures.immediateFuture(null);
          localObject2 = localListenableFuture;
        }
      }
      catch (Throwable localThrowable)
      {
        if ((localThrowable instanceof InterruptedException))
          Thread.currentThread().interrupt();
        if (setException(localThrowable))
          return this.futureValue;
        return fullyFailedFuture(localThrowable);
      }
      return localObject2;
    }

    public void notifyNewValue(@Nullable V paramV)
    {
      if (paramV != null)
      {
        set(paramV);
        return;
      }
      this.oldValue = LocalCache.unset();
    }

    public boolean set(@Nullable V paramV)
    {
      return this.futureValue.set(paramV);
    }

    public boolean setException(Throwable paramThrowable)
    {
      return setException(this.futureValue, paramThrowable);
    }

    public V waitForValue()
      throws ExecutionException
    {
      return Uninterruptibles.getUninterruptibly(this.futureValue);
    }
  }

  static class LocalLoadingCache<K, V> extends LocalCache.LocalManualCache<K, V>
    implements LoadingCache<K, V>
  {
    private static final long serialVersionUID = 1L;

    LocalLoadingCache(CacheBuilder<? super K, ? super V> paramCacheBuilder, CacheLoader<? super K, V> paramCacheLoader)
    {
      super(null);
    }

    public final V apply(K paramK)
    {
      return getUnchecked(paramK);
    }

    public V get(K paramK)
      throws ExecutionException
    {
      return this.localCache.getOrLoad(paramK);
    }

    public ImmutableMap<K, V> getAll(Iterable<? extends K> paramIterable)
      throws ExecutionException
    {
      return this.localCache.getAll(paramIterable);
    }

    public V getUnchecked(K paramK)
    {
      try
      {
        Object localObject = get(paramK);
        return localObject;
      }
      catch (ExecutionException localExecutionException)
      {
        throw new UncheckedExecutionException(localExecutionException.getCause());
      }
    }

    public void refresh(K paramK)
    {
      this.localCache.refresh(paramK);
    }

    Object writeReplace()
    {
      return new LocalCache.LoadingSerializationProxy(this.localCache);
    }
  }

  static class LocalManualCache<K, V>
    implements Cache<K, V>, Serializable
  {
    private static final long serialVersionUID = 1L;
    final LocalCache<K, V> localCache;

    LocalManualCache(CacheBuilder<? super K, ? super V> paramCacheBuilder)
    {
      this(new LocalCache(paramCacheBuilder, null));
    }

    private LocalManualCache(LocalCache<K, V> paramLocalCache)
    {
      this.localCache = paramLocalCache;
    }

    public ConcurrentMap<K, V> asMap()
    {
      return this.localCache;
    }

    public void cleanUp()
    {
      this.localCache.cleanUp();
    }

    public V get(K paramK, final Callable<? extends V> paramCallable)
      throws ExecutionException
    {
      Preconditions.checkNotNull(paramCallable);
      return this.localCache.get(paramK, new CacheLoader()
      {
        public V load(Object paramAnonymousObject)
          throws Exception
        {
          return paramCallable.call();
        }
      });
    }

    public ImmutableMap<K, V> getAllPresent(Iterable<?> paramIterable)
    {
      return this.localCache.getAllPresent(paramIterable);
    }

    @Nullable
    public V getIfPresent(Object paramObject)
    {
      return this.localCache.getIfPresent(paramObject);
    }

    public void invalidate(Object paramObject)
    {
      Preconditions.checkNotNull(paramObject);
      this.localCache.remove(paramObject);
    }

    public void invalidateAll()
    {
      this.localCache.clear();
    }

    public void invalidateAll(Iterable<?> paramIterable)
    {
      this.localCache.invalidateAll(paramIterable);
    }

    public void put(K paramK, V paramV)
    {
      this.localCache.put(paramK, paramV);
    }

    public void putAll(Map<? extends K, ? extends V> paramMap)
    {
      this.localCache.putAll(paramMap);
    }

    public long size()
    {
      return this.localCache.longSize();
    }

    public CacheStats stats()
    {
      AbstractCache.SimpleStatsCounter localSimpleStatsCounter = new AbstractCache.SimpleStatsCounter();
      localSimpleStatsCounter.incrementBy(this.localCache.globalStatsCounter);
      LocalCache.Segment[] arrayOfSegment = this.localCache.segments;
      int i = arrayOfSegment.length;
      for (int j = 0; j < i; j++)
        localSimpleStatsCounter.incrementBy(arrayOfSegment[j].statsCounter);
      return localSimpleStatsCounter.snapshot();
    }

    Object writeReplace()
    {
      return new LocalCache.ManualSerializationProxy(this.localCache);
    }
  }

  static class ManualSerializationProxy<K, V> extends ForwardingCache<K, V>
    implements Serializable
  {
    private static final long serialVersionUID = 1L;
    final int concurrencyLevel;
    transient Cache<K, V> delegate;
    final long expireAfterAccessNanos;
    final long expireAfterWriteNanos;
    final Equivalence<Object> keyEquivalence;
    final LocalCache.Strength keyStrength;
    final CacheLoader<? super K, V> loader;
    final long maxWeight;
    final RemovalListener<? super K, ? super V> removalListener;
    final Ticker ticker;
    final Equivalence<Object> valueEquivalence;
    final LocalCache.Strength valueStrength;
    final Weigher<K, V> weigher;

    private ManualSerializationProxy(LocalCache.Strength paramStrength1, LocalCache.Strength paramStrength2, Equivalence<Object> paramEquivalence1, Equivalence<Object> paramEquivalence2, long paramLong1, long paramLong2, long paramLong3, Weigher<K, V> paramWeigher, int paramInt, RemovalListener<? super K, ? super V> paramRemovalListener, Ticker paramTicker, CacheLoader<? super K, V> paramCacheLoader)
    {
      this.keyStrength = paramStrength1;
      this.valueStrength = paramStrength2;
      this.keyEquivalence = paramEquivalence1;
      this.valueEquivalence = paramEquivalence2;
      this.expireAfterWriteNanos = paramLong1;
      this.expireAfterAccessNanos = paramLong2;
      this.maxWeight = paramLong3;
      this.weigher = paramWeigher;
      this.concurrencyLevel = paramInt;
      this.removalListener = paramRemovalListener;
      Ticker localTicker1 = Ticker.systemTicker();
      if (paramTicker != localTicker1)
      {
        Ticker localTicker2 = CacheBuilder.NULL_TICKER;
        if (paramTicker != localTicker2);
      }
      else
      {
        paramTicker = null;
      }
      this.ticker = paramTicker;
      this.loader = paramCacheLoader;
    }

    ManualSerializationProxy(LocalCache<K, V> paramLocalCache)
    {
      this(paramLocalCache.keyStrength, paramLocalCache.valueStrength, paramLocalCache.keyEquivalence, paramLocalCache.valueEquivalence, paramLocalCache.expireAfterWriteNanos, paramLocalCache.expireAfterAccessNanos, paramLocalCache.maxWeight, paramLocalCache.weigher, paramLocalCache.concurrencyLevel, paramLocalCache.removalListener, paramLocalCache.ticker, paramLocalCache.defaultLoader);
    }

    private void readObject(ObjectInputStream paramObjectInputStream)
      throws IOException, ClassNotFoundException
    {
      paramObjectInputStream.defaultReadObject();
      this.delegate = recreateCacheBuilder().build();
    }

    private Object readResolve()
    {
      return this.delegate;
    }

    protected Cache<K, V> delegate()
    {
      return this.delegate;
    }

    CacheBuilder<K, V> recreateCacheBuilder()
    {
      CacheBuilder localCacheBuilder = CacheBuilder.newBuilder().setKeyStrength(this.keyStrength).setValueStrength(this.valueStrength).keyEquivalence(this.keyEquivalence).valueEquivalence(this.valueEquivalence).concurrencyLevel(this.concurrencyLevel).removalListener(this.removalListener);
      localCacheBuilder.strictParsing = false;
      if (this.expireAfterWriteNanos > 0L)
        localCacheBuilder.expireAfterWrite(this.expireAfterWriteNanos, TimeUnit.NANOSECONDS);
      if (this.expireAfterAccessNanos > 0L)
        localCacheBuilder.expireAfterAccess(this.expireAfterAccessNanos, TimeUnit.NANOSECONDS);
      if (this.weigher != CacheBuilder.OneWeigher.INSTANCE)
      {
        localCacheBuilder.weigher(this.weigher);
        if (this.maxWeight != -1L)
          localCacheBuilder.maximumWeight(this.maxWeight);
      }
      while (true)
      {
        if (this.ticker != null)
          localCacheBuilder.ticker(this.ticker);
        return localCacheBuilder;
        if (this.maxWeight != -1L)
          localCacheBuilder.maximumSize(this.maxWeight);
      }
    }
  }

  private static enum NullEntry
    implements LocalCache.ReferenceEntry<Object, Object>
  {
    static
    {
      NullEntry[] arrayOfNullEntry = new NullEntry[1];
      arrayOfNullEntry[0] = INSTANCE;
    }

    public long getAccessTime()
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

    public LocalCache.ReferenceEntry<Object, Object> getNext()
    {
      return null;
    }

    public LocalCache.ReferenceEntry<Object, Object> getNextInAccessQueue()
    {
      return this;
    }

    public LocalCache.ReferenceEntry<Object, Object> getNextInWriteQueue()
    {
      return this;
    }

    public LocalCache.ReferenceEntry<Object, Object> getPreviousInAccessQueue()
    {
      return this;
    }

    public LocalCache.ReferenceEntry<Object, Object> getPreviousInWriteQueue()
    {
      return this;
    }

    public LocalCache.ValueReference<Object, Object> getValueReference()
    {
      return null;
    }

    public long getWriteTime()
    {
      return 0L;
    }

    public void setAccessTime(long paramLong)
    {
    }

    public void setNextInAccessQueue(LocalCache.ReferenceEntry<Object, Object> paramReferenceEntry)
    {
    }

    public void setNextInWriteQueue(LocalCache.ReferenceEntry<Object, Object> paramReferenceEntry)
    {
    }

    public void setPreviousInAccessQueue(LocalCache.ReferenceEntry<Object, Object> paramReferenceEntry)
    {
    }

    public void setPreviousInWriteQueue(LocalCache.ReferenceEntry<Object, Object> paramReferenceEntry)
    {
    }

    public void setValueReference(LocalCache.ValueReference<Object, Object> paramValueReference)
    {
    }

    public void setWriteTime(long paramLong)
    {
    }
  }

  static abstract interface ReferenceEntry<K, V>
  {
    public abstract long getAccessTime();

    public abstract int getHash();

    @Nullable
    public abstract K getKey();

    @Nullable
    public abstract ReferenceEntry<K, V> getNext();

    public abstract ReferenceEntry<K, V> getNextInAccessQueue();

    public abstract ReferenceEntry<K, V> getNextInWriteQueue();

    public abstract ReferenceEntry<K, V> getPreviousInAccessQueue();

    public abstract ReferenceEntry<K, V> getPreviousInWriteQueue();

    public abstract LocalCache.ValueReference<K, V> getValueReference();

    public abstract long getWriteTime();

    public abstract void setAccessTime(long paramLong);

    public abstract void setNextInAccessQueue(ReferenceEntry<K, V> paramReferenceEntry);

    public abstract void setNextInWriteQueue(ReferenceEntry<K, V> paramReferenceEntry);

    public abstract void setPreviousInAccessQueue(ReferenceEntry<K, V> paramReferenceEntry);

    public abstract void setPreviousInWriteQueue(ReferenceEntry<K, V> paramReferenceEntry);

    public abstract void setValueReference(LocalCache.ValueReference<K, V> paramValueReference);

    public abstract void setWriteTime(long paramLong);
  }

  static class Segment<K, V> extends ReentrantLock
  {

    @GuardedBy("Segment.this")
    final Queue<LocalCache.ReferenceEntry<K, V>> accessQueue;
    volatile int count;
    final ReferenceQueue<K> keyReferenceQueue;
    final LocalCache<K, V> map;
    final long maxSegmentWeight;
    int modCount;
    final AtomicInteger readCount = new AtomicInteger();
    final Queue<LocalCache.ReferenceEntry<K, V>> recencyQueue;
    final AbstractCache.StatsCounter statsCounter;
    volatile AtomicReferenceArray<LocalCache.ReferenceEntry<K, V>> table;
    int threshold;

    @GuardedBy("Segment.this")
    int totalWeight;
    final ReferenceQueue<V> valueReferenceQueue;

    @GuardedBy("Segment.this")
    final Queue<LocalCache.ReferenceEntry<K, V>> writeQueue;

    Segment(LocalCache<K, V> paramLocalCache, int paramInt, long paramLong, AbstractCache.StatsCounter paramStatsCounter)
    {
      this.map = paramLocalCache;
      this.maxSegmentWeight = paramLong;
      this.statsCounter = ((AbstractCache.StatsCounter)Preconditions.checkNotNull(paramStatsCounter));
      initTable(newEntryArray(paramInt));
      ReferenceQueue localReferenceQueue1;
      Object localObject1;
      label113: Object localObject2;
      if (paramLocalCache.usesKeyReferences())
      {
        localReferenceQueue1 = new ReferenceQueue();
        this.keyReferenceQueue = localReferenceQueue1;
        boolean bool = paramLocalCache.usesValueReferences();
        ReferenceQueue localReferenceQueue2 = null;
        if (bool)
          localReferenceQueue2 = new ReferenceQueue();
        this.valueReferenceQueue = localReferenceQueue2;
        if (!paramLocalCache.usesAccessQueue())
          break label170;
        localObject1 = new ConcurrentLinkedQueue();
        this.recencyQueue = ((Queue)localObject1);
        if (!paramLocalCache.usesWriteQueue())
          break label178;
        localObject2 = new LocalCache.WriteQueue();
        label135: this.writeQueue = ((Queue)localObject2);
        if (!paramLocalCache.usesAccessQueue())
          break label186;
      }
      label170: label178: label186: for (Object localObject3 = new LocalCache.AccessQueue(); ; localObject3 = LocalCache.discardingQueue())
      {
        this.accessQueue = ((Queue)localObject3);
        return;
        localReferenceQueue1 = null;
        break;
        localObject1 = LocalCache.discardingQueue();
        break label113;
        localObject2 = LocalCache.discardingQueue();
        break label135;
      }
    }

    void cleanUp()
    {
      runLockedCleanup(this.map.ticker.read());
      runUnlockedCleanup();
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
          i = 0;
          if (i >= localAtomicReferenceArray.length())
            break label170;
          LocalCache.ReferenceEntry localReferenceEntry = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(i);
          if (localReferenceEntry != null)
          {
            if (localReferenceEntry.getValueReference().isActive())
              enqueueNotification(localReferenceEntry, RemovalCause.EXPLICIT);
            localReferenceEntry = localReferenceEntry.getNext();
            continue;
            if (j < localAtomicReferenceArray.length())
            {
              localAtomicReferenceArray.set(j, null);
              j++;
              continue;
            }
            clearReferenceQueues();
            this.writeQueue.clear();
            this.accessQueue.clear();
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
        label170: int j = 0;
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
          LocalCache.ReferenceEntry localReferenceEntry = getLiveEntry(paramObject, paramInt, this.map.ticker.read());
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
          long l = this.map.ticker.read();
          AtomicReferenceArray localAtomicReferenceArray = this.table;
          int i = localAtomicReferenceArray.length();
          for (int j = 0; j < i; j++)
          {
            LocalCache.ReferenceEntry localReferenceEntry = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(j);
            if (localReferenceEntry != null)
            {
              Object localObject2 = getLiveValue(localReferenceEntry, l);
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
    LocalCache.ReferenceEntry<K, V> copyEntry(LocalCache.ReferenceEntry<K, V> paramReferenceEntry1, LocalCache.ReferenceEntry<K, V> paramReferenceEntry2)
    {
      if (paramReferenceEntry1.getKey() == null);
      LocalCache.ValueReference localValueReference;
      Object localObject;
      do
      {
        return null;
        localValueReference = paramReferenceEntry1.getValueReference();
        localObject = localValueReference.get();
      }
      while ((localObject == null) && (localValueReference.isActive()));
      LocalCache.ReferenceEntry localReferenceEntry = this.map.entryFactory.copyEntry(this, paramReferenceEntry1, paramReferenceEntry2);
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
        LocalCache.ReferenceEntry localReferenceEntry = (LocalCache.ReferenceEntry)localReference;
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
        LocalCache.ReferenceEntry localReferenceEntry = (LocalCache.ReferenceEntry)this.recencyQueue.poll();
        if (localReferenceEntry == null)
          break;
        if (this.accessQueue.contains(localReferenceEntry))
          this.accessQueue.add(localReferenceEntry);
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
        LocalCache.ValueReference localValueReference = (LocalCache.ValueReference)localReference;
        this.map.reclaimValue(localValueReference);
        i++;
      }
      while (i != 16);
    }

    @GuardedBy("Segment.this")
    void enqueueNotification(LocalCache.ReferenceEntry<K, V> paramReferenceEntry, RemovalCause paramRemovalCause)
    {
      enqueueNotification(paramReferenceEntry.getKey(), paramReferenceEntry.getHash(), paramReferenceEntry.getValueReference(), paramRemovalCause);
    }

    @GuardedBy("Segment.this")
    void enqueueNotification(@Nullable K paramK, int paramInt, LocalCache.ValueReference<K, V> paramValueReference, RemovalCause paramRemovalCause)
    {
      this.totalWeight -= paramValueReference.getWeight();
      if (paramRemovalCause.wasEvicted())
        this.statsCounter.recordEviction();
      if (this.map.removalNotificationQueue != LocalCache.DISCARDING_QUEUE)
      {
        RemovalNotification localRemovalNotification = new RemovalNotification(paramK, paramValueReference.get(), paramRemovalCause);
        this.map.removalNotificationQueue.offer(localRemovalNotification);
      }
    }

    @GuardedBy("Segment.this")
    void evictEntries()
    {
      if (!this.map.evictsBySize());
      LocalCache.ReferenceEntry localReferenceEntry;
      do
      {
        return;
        while (this.totalWeight <= this.maxSegmentWeight)
          drainRecencyQueue();
        localReferenceEntry = getNextEvictable();
      }
      while (removeEntry(localReferenceEntry, localReferenceEntry.getHash(), RemovalCause.SIZE));
      throw new AssertionError();
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
        LocalCache.ReferenceEntry localReferenceEntry1 = (LocalCache.ReferenceEntry)localAtomicReferenceArray1.get(m);
        LocalCache.ReferenceEntry localReferenceEntry2;
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
        for (LocalCache.ReferenceEntry localReferenceEntry3 = localReferenceEntry2; localReferenceEntry3 != null; localReferenceEntry3 = localReferenceEntry3.getNext())
        {
          int i3 = k & localReferenceEntry3.getHash();
          if (i3 != i1)
          {
            i1 = i3;
            localObject = localReferenceEntry3;
          }
        }
        localAtomicReferenceArray2.set(i1, localObject);
        LocalCache.ReferenceEntry localReferenceEntry4 = localReferenceEntry1;
        label189: if (localReferenceEntry4 != localObject)
        {
          int i2 = k & localReferenceEntry4.getHash();
          LocalCache.ReferenceEntry localReferenceEntry5 = copyEntry(localReferenceEntry4, (LocalCache.ReferenceEntry)localAtomicReferenceArray2.get(i2));
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
    void expireEntries(long paramLong)
    {
      drainRecencyQueue();
      LocalCache.ReferenceEntry localReferenceEntry1;
      do
      {
        localReferenceEntry1 = (LocalCache.ReferenceEntry)this.writeQueue.peek();
        if ((localReferenceEntry1 == null) || (!this.map.isExpired(localReferenceEntry1, paramLong)))
          break;
      }
      while (removeEntry(localReferenceEntry1, localReferenceEntry1.getHash(), RemovalCause.EXPIRED));
      throw new AssertionError();
      LocalCache.ReferenceEntry localReferenceEntry2;
      do
      {
        localReferenceEntry2 = (LocalCache.ReferenceEntry)this.accessQueue.peek();
        if ((localReferenceEntry2 == null) || (!this.map.isExpired(localReferenceEntry2, paramLong)))
          break;
      }
      while (removeEntry(localReferenceEntry2, localReferenceEntry2.getHash(), RemovalCause.EXPIRED));
      throw new AssertionError();
    }

    @Nullable
    V get(Object paramObject, int paramInt)
    {
      try
      {
        if (this.count != 0)
        {
          long l = this.map.ticker.read();
          LocalCache.ReferenceEntry localReferenceEntry = getLiveEntry(paramObject, paramInt, l);
          if (localReferenceEntry == null)
            return null;
          Object localObject2 = localReferenceEntry.getValueReference().get();
          if (localObject2 != null)
          {
            recordRead(localReferenceEntry, l);
            Object localObject3 = scheduleRefresh(localReferenceEntry, localReferenceEntry.getKey(), paramInt, localObject2, l, this.map.defaultLoader);
            return localObject3;
          }
          tryDrainReferenceQueues();
        }
        return null;
      }
      finally
      {
        postReadCleanup();
      }
    }

    V get(K paramK, int paramInt, CacheLoader<? super K, V> paramCacheLoader)
      throws ExecutionException
    {
      Preconditions.checkNotNull(paramK);
      Preconditions.checkNotNull(paramCacheLoader);
      Throwable localThrowable;
      try
      {
        if (this.count != 0)
        {
          LocalCache.ReferenceEntry localReferenceEntry = getEntry(paramK, paramInt);
          if (localReferenceEntry != null)
          {
            long l = this.map.ticker.read();
            Object localObject3 = getLiveValue(localReferenceEntry, l);
            if (localObject3 != null)
            {
              recordRead(localReferenceEntry, l);
              this.statsCounter.recordHits(1);
              Object localObject4 = scheduleRefresh(localReferenceEntry, paramK, paramInt, localObject3, l, paramCacheLoader);
              return localObject4;
            }
            LocalCache.ValueReference localValueReference = localReferenceEntry.getValueReference();
            if (localValueReference.isLoading())
            {
              Object localObject5 = waitForLoadingValue(localReferenceEntry, paramK, localValueReference);
              return localObject5;
            }
          }
        }
        Object localObject2 = lockedGetOrLoad(paramK, paramInt, paramCacheLoader);
        return localObject2;
      }
      catch (ExecutionException localExecutionException)
      {
        localThrowable = localExecutionException.getCause();
        if ((localThrowable instanceof Error))
          throw new ExecutionError((Error)localThrowable);
      }
      finally
      {
        postReadCleanup();
      }
      if ((localThrowable instanceof RuntimeException))
        throw new UncheckedExecutionException(localThrowable);
      throw localExecutionException;
    }

    V getAndRecordStats(K paramK, int paramInt, LocalCache.LoadingValueReference<K, V> paramLoadingValueReference, ListenableFuture<V> paramListenableFuture)
      throws ExecutionException
    {
      Object localObject1 = null;
      try
      {
        localObject1 = Uninterruptibles.getUninterruptibly(paramListenableFuture);
        if (localObject1 == null)
          throw new CacheLoader.InvalidCacheLoadException("CacheLoader returned null for key " + paramK + ".");
      }
      finally
      {
        if (localObject1 == null)
        {
          this.statsCounter.recordLoadException(paramLoadingValueReference.elapsedNanos());
          removeLoadingValue(paramK, paramInt, paramLoadingValueReference);
        }
      }
      this.statsCounter.recordLoadSuccess(paramLoadingValueReference.elapsedNanos());
      storeLoadedValue(paramK, paramInt, paramLoadingValueReference, localObject1);
      if (localObject1 == null)
      {
        this.statsCounter.recordLoadException(paramLoadingValueReference.elapsedNanos());
        removeLoadingValue(paramK, paramInt, paramLoadingValueReference);
      }
      return localObject1;
    }

    @Nullable
    LocalCache.ReferenceEntry<K, V> getEntry(Object paramObject, int paramInt)
    {
      LocalCache.ReferenceEntry localReferenceEntry = getFirst(paramInt);
      if (localReferenceEntry != null)
      {
        if (localReferenceEntry.getHash() != paramInt);
        Object localObject;
        label50: 
        do
          while (true)
          {
            localReferenceEntry = localReferenceEntry.getNext();
            break;
            localObject = localReferenceEntry.getKey();
            if (localObject != null)
              break label50;
            tryDrainReferenceQueues();
          }
        while (!this.map.keyEquivalence.equivalent(paramObject, localObject));
        return localReferenceEntry;
      }
      return null;
    }

    LocalCache.ReferenceEntry<K, V> getFirst(int paramInt)
    {
      AtomicReferenceArray localAtomicReferenceArray = this.table;
      return (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(paramInt & -1 + localAtomicReferenceArray.length());
    }

    @Nullable
    LocalCache.ReferenceEntry<K, V> getLiveEntry(Object paramObject, int paramInt, long paramLong)
    {
      LocalCache.ReferenceEntry localReferenceEntry = getEntry(paramObject, paramInt);
      if (localReferenceEntry == null)
        localReferenceEntry = null;
      while (!this.map.isExpired(localReferenceEntry, paramLong))
        return localReferenceEntry;
      tryExpireEntries(paramLong);
      return null;
    }

    V getLiveValue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry, long paramLong)
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
      while (!this.map.isExpired(paramReferenceEntry, paramLong));
      tryExpireEntries(paramLong);
      return null;
    }

    LocalCache.ReferenceEntry<K, V> getNextEvictable()
    {
      Iterator localIterator = this.accessQueue.iterator();
      while (localIterator.hasNext())
      {
        LocalCache.ReferenceEntry localReferenceEntry = (LocalCache.ReferenceEntry)localIterator.next();
        if (localReferenceEntry.getValueReference().getWeight() > 0)
          return localReferenceEntry;
      }
      throw new AssertionError();
    }

    void initTable(AtomicReferenceArray<LocalCache.ReferenceEntry<K, V>> paramAtomicReferenceArray)
    {
      this.threshold = (3 * paramAtomicReferenceArray.length() / 4);
      if ((!this.map.customWeigher()) && (this.threshold == this.maxSegmentWeight))
        this.threshold = (1 + this.threshold);
      this.table = paramAtomicReferenceArray;
    }

    @Nullable
    LocalCache.LoadingValueReference<K, V> insertLoadingValueReference(K paramK, int paramInt, boolean paramBoolean)
    {
      lock();
      try
      {
        long l1 = this.map.ticker.read();
        preWriteCleanup(l1);
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        int i = paramInt & -1 + localAtomicReferenceArray.length();
        LocalCache.ReferenceEntry localReferenceEntry1 = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(i);
        for (LocalCache.ReferenceEntry localReferenceEntry2 = localReferenceEntry1; localReferenceEntry2 != null; localReferenceEntry2 = localReferenceEntry2.getNext())
        {
          Object localObject2 = localReferenceEntry2.getKey();
          if ((localReferenceEntry2.getHash() == paramInt) && (localObject2 != null) && (this.map.keyEquivalence.equivalent(paramK, localObject2)))
          {
            LocalCache.ValueReference localValueReference = localReferenceEntry2.getValueReference();
            if (!localValueReference.isLoading())
            {
              if (paramBoolean)
              {
                long l2 = l1 - localReferenceEntry2.getWriteTime();
                long l3 = this.map.refreshNanos;
                if (l2 >= l3);
              }
            }
            else
              return null;
            this.modCount = (1 + this.modCount);
            LocalCache.LoadingValueReference localLoadingValueReference1 = new LocalCache.LoadingValueReference(localValueReference);
            localReferenceEntry2.setValueReference(localLoadingValueReference1);
            return localLoadingValueReference1;
          }
        }
        this.modCount = (1 + this.modCount);
        LocalCache.LoadingValueReference localLoadingValueReference2 = new LocalCache.LoadingValueReference();
        LocalCache.ReferenceEntry localReferenceEntry3 = newEntry(paramK, paramInt, localReferenceEntry1);
        localReferenceEntry3.setValueReference(localLoadingValueReference2);
        localAtomicReferenceArray.set(i, localReferenceEntry3);
        return localLoadingValueReference2;
      }
      finally
      {
        unlock();
        postWriteCleanup();
      }
    }

    ListenableFuture<V> loadAsync(final K paramK, final int paramInt, final LocalCache.LoadingValueReference<K, V> paramLoadingValueReference, CacheLoader<? super K, V> paramCacheLoader)
    {
      final ListenableFuture localListenableFuture = paramLoadingValueReference.loadFuture(paramK, paramCacheLoader);
      localListenableFuture.addListener(new Runnable()
      {
        public void run()
        {
          try
          {
            Object localObject = LocalCache.Segment.this.getAndRecordStats(paramK, paramInt, paramLoadingValueReference, localListenableFuture);
            paramLoadingValueReference.set(localObject);
            return;
          }
          catch (Throwable localThrowable)
          {
            LocalCache.logger.log(Level.WARNING, "Exception thrown during refresh", localThrowable);
            paramLoadingValueReference.setException(localThrowable);
          }
        }
      }
      , LocalCache.sameThreadExecutor);
      return localListenableFuture;
    }

    V loadSync(K paramK, int paramInt, LocalCache.LoadingValueReference<K, V> paramLoadingValueReference, CacheLoader<? super K, V> paramCacheLoader)
      throws ExecutionException
    {
      return getAndRecordStats(paramK, paramInt, paramLoadingValueReference, paramLoadingValueReference.loadFuture(paramK, paramCacheLoader));
    }

    // ERROR //
    V lockedGetOrLoad(K paramK, int paramInt, CacheLoader<? super K, V> paramCacheLoader)
      throws ExecutionException
    {
      // Byte code:
      //   0: iconst_1
      //   1: istore 4
      //   3: aload_0
      //   4: invokevirtual 132	com/google/common/cache/LocalCache$Segment:lock	()V
      //   7: aload_0
      //   8: getfield 47	com/google/common/cache/LocalCache$Segment:map	Lcom/google/common/cache/LocalCache;
      //   11: getfield 113	com/google/common/cache/LocalCache:ticker	Lcom/google/common/base/Ticker;
      //   14: invokevirtual 119	com/google/common/base/Ticker:read	()J
      //   17: lstore 6
      //   19: aload_0
      //   20: lload 6
      //   22: invokevirtual 480	com/google/common/cache/LocalCache$Segment:preWriteCleanup	(J)V
      //   25: iconst_m1
      //   26: aload_0
      //   27: getfield 129	com/google/common/cache/LocalCache$Segment:count	I
      //   30: iadd
      //   31: istore 8
      //   33: aload_0
      //   34: getfield 134	com/google/common/cache/LocalCache$Segment:table	Ljava/util/concurrent/atomic/AtomicReferenceArray;
      //   37: astore 9
      //   39: iload_2
      //   40: iconst_m1
      //   41: aload 9
      //   43: invokevirtual 140	java/util/concurrent/atomic/AtomicReferenceArray:length	()I
      //   46: iadd
      //   47: iand
      //   48: istore 10
      //   50: aload 9
      //   52: iload 10
      //   54: invokevirtual 144	java/util/concurrent/atomic/AtomicReferenceArray:get	(I)Ljava/lang/Object;
      //   57: checkcast 146	com/google/common/cache/LocalCache$ReferenceEntry
      //   60: astore 11
      //   62: aload 11
      //   64: astore 12
      //   66: aconst_null
      //   67: astore 13
      //   69: aload 12
      //   71: ifnull +66 -> 137
      //   74: aload 12
      //   76: invokeinterface 235 1 0
      //   81: astore 14
      //   83: aload 12
      //   85: invokeinterface 278 1 0
      //   90: iload_2
      //   91: if_icmpne +281 -> 372
      //   94: aload 14
      //   96: ifnull +276 -> 372
      //   99: aload_0
      //   100: getfield 47	com/google/common/cache/LocalCache$Segment:map	Lcom/google/common/cache/LocalCache;
      //   103: getfield 457	com/google/common/cache/LocalCache:keyEquivalence	Lcom/google/common/base/Equivalence;
      //   106: aload_1
      //   107: aload 14
      //   109: invokevirtual 230	com/google/common/base/Equivalence:equivalent	(Ljava/lang/Object;Ljava/lang/Object;)Z
      //   112: ifeq +260 -> 372
      //   115: aload 12
      //   117: invokeinterface 150 1 0
      //   122: astore 13
      //   124: aload 13
      //   126: invokeinterface 375 1 0
      //   131: ifeq +103 -> 234
      //   134: iconst_0
      //   135: istore 4
      //   137: aconst_null
      //   138: astore 16
      //   140: iload 4
      //   142: ifeq +49 -> 191
      //   145: new 433	com/google/common/cache/LocalCache$LoadingValueReference
      //   148: dup
      //   149: invokespecial 489	com/google/common/cache/LocalCache$LoadingValueReference:<init>	()V
      //   152: astore 17
      //   154: aload 12
      //   156: ifnonnull +232 -> 388
      //   159: aload_0
      //   160: aload_1
      //   161: iload_2
      //   162: aload 11
      //   164: invokevirtual 493	com/google/common/cache/LocalCache$Segment:newEntry	(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
      //   167: astore 12
      //   169: aload 12
      //   171: aload 17
      //   173: invokeinterface 252 2 0
      //   178: aload 9
      //   180: iload 10
      //   182: aload 12
      //   184: invokevirtual 173	java/util/concurrent/atomic/AtomicReferenceArray:set	(ILjava/lang/Object;)V
      //   187: aload 17
      //   189: astore 16
      //   191: aload_0
      //   192: invokevirtual 188	com/google/common/cache/LocalCache$Segment:unlock	()V
      //   195: aload_0
      //   196: invokevirtual 191	com/google/common/cache/LocalCache$Segment:postWriteCleanup	()V
      //   199: iload 4
      //   201: ifeq +226 -> 427
      //   204: aload 12
      //   206: monitorenter
      //   207: aload_0
      //   208: aload_1
      //   209: iload_2
      //   210: aload 16
      //   212: aload_3
      //   213: invokevirtual 520	com/google/common/cache/LocalCache$Segment:loadSync	(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
      //   216: astore 20
      //   218: aload 12
      //   220: monitorexit
      //   221: aload_0
      //   222: getfield 59	com/google/common/cache/LocalCache$Segment:statsCounter	Lcom/google/common/cache/AbstractCache$StatsCounter;
      //   225: iconst_1
      //   226: invokeinterface 523 2 0
      //   231: aload 20
      //   233: areturn
      //   234: aload 13
      //   236: invokeinterface 213 1 0
      //   241: astore 21
      //   243: aload 21
      //   245: ifnonnull +65 -> 310
      //   248: getstatic 526	com/google/common/cache/RemovalCause:COLLECTED	Lcom/google/common/cache/RemovalCause;
      //   251: astore 22
      //   253: aload_0
      //   254: aload 14
      //   256: iload_2
      //   257: aload 13
      //   259: aload 22
      //   261: invokevirtual 281	com/google/common/cache/LocalCache$Segment:enqueueNotification	(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V
      //   264: aload_0
      //   265: getfield 99	com/google/common/cache/LocalCache$Segment:writeQueue	Ljava/util/Queue;
      //   268: aload 12
      //   270: invokeinterface 529 2 0
      //   275: pop
      //   276: aload_0
      //   277: getfield 104	com/google/common/cache/LocalCache$Segment:accessQueue	Ljava/util/Queue;
      //   280: aload 12
      //   282: invokeinterface 529 2 0
      //   287: pop
      //   288: aload_0
      //   289: iload 8
      //   291: putfield 129	com/google/common/cache/LocalCache$Segment:count	I
      //   294: goto -157 -> 137
      //   297: astore 5
      //   299: aload_0
      //   300: invokevirtual 188	com/google/common/cache/LocalCache$Segment:unlock	()V
      //   303: aload_0
      //   304: invokevirtual 191	com/google/common/cache/LocalCache$Segment:postWriteCleanup	()V
      //   307: aload 5
      //   309: athrow
      //   310: aload_0
      //   311: getfield 47	com/google/common/cache/LocalCache$Segment:map	Lcom/google/common/cache/LocalCache;
      //   314: aload 12
      //   316: lload 6
      //   318: invokevirtual 343	com/google/common/cache/LocalCache:isExpired	(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z
      //   321: ifeq +22 -> 343
      //   324: getstatic 346	com/google/common/cache/RemovalCause:EXPIRED	Lcom/google/common/cache/RemovalCause;
      //   327: astore 25
      //   329: aload_0
      //   330: aload 14
      //   332: iload_2
      //   333: aload 13
      //   335: aload 25
      //   337: invokevirtual 281	com/google/common/cache/LocalCache$Segment:enqueueNotification	(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V
      //   340: goto -76 -> 264
      //   343: aload_0
      //   344: aload 12
      //   346: lload 6
      //   348: invokevirtual 532	com/google/common/cache/LocalCache$Segment:recordLockedRead	(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V
      //   351: aload_0
      //   352: getfield 59	com/google/common/cache/LocalCache$Segment:statsCounter	Lcom/google/common/cache/AbstractCache$StatsCounter;
      //   355: iconst_1
      //   356: invokeinterface 372 2 0
      //   361: aload_0
      //   362: invokevirtual 188	com/google/common/cache/LocalCache$Segment:unlock	()V
      //   365: aload_0
      //   366: invokevirtual 191	com/google/common/cache/LocalCache$Segment:postWriteCleanup	()V
      //   369: aload 21
      //   371: areturn
      //   372: aload 12
      //   374: invokeinterface 169 1 0
      //   379: astore 15
      //   381: aload 15
      //   383: astore 12
      //   385: goto -319 -> 66
      //   388: aload 12
      //   390: aload 17
      //   392: invokeinterface 252 2 0
      //   397: aload 17
      //   399: astore 16
      //   401: goto -210 -> 191
      //   404: astore 19
      //   406: aload 12
      //   408: monitorexit
      //   409: aload 19
      //   411: athrow
      //   412: astore 18
      //   414: aload_0
      //   415: getfield 59	com/google/common/cache/LocalCache$Segment:statsCounter	Lcom/google/common/cache/AbstractCache$StatsCounter;
      //   418: iconst_1
      //   419: invokeinterface 523 2 0
      //   424: aload 18
      //   426: athrow
      //   427: aload_0
      //   428: aload 12
      //   430: aload_1
      //   431: aload 13
      //   433: invokevirtual 379	com/google/common/cache/LocalCache$Segment:waitForLoadingValue	(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;)Ljava/lang/Object;
      //   436: areturn
      //   437: astore 5
      //   439: goto -140 -> 299
      //
      // Exception table:
      //   from	to	target	type
      //   7	62	297	finally
      //   74	94	297	finally
      //   99	134	297	finally
      //   145	154	297	finally
      //   234	243	297	finally
      //   248	264	297	finally
      //   264	294	297	finally
      //   310	340	297	finally
      //   343	361	297	finally
      //   372	381	297	finally
      //   207	221	404	finally
      //   406	409	404	finally
      //   204	207	412	finally
      //   409	412	412	finally
      //   159	187	437	finally
      //   388	397	437	finally
    }

    @GuardedBy("Segment.this")
    LocalCache.ReferenceEntry<K, V> newEntry(K paramK, int paramInt, @Nullable LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      return this.map.entryFactory.newEntry(this, Preconditions.checkNotNull(paramK), paramInt, paramReferenceEntry);
    }

    AtomicReferenceArray<LocalCache.ReferenceEntry<K, V>> newEntryArray(int paramInt)
    {
      return new AtomicReferenceArray(paramInt);
    }

    void postReadCleanup()
    {
      if ((0x3F & this.readCount.incrementAndGet()) == 0)
        cleanUp();
    }

    void postWriteCleanup()
    {
      runUnlockedCleanup();
    }

    @GuardedBy("Segment.this")
    void preWriteCleanup(long paramLong)
    {
      runLockedCleanup(paramLong);
    }

    @Nullable
    V put(K paramK, int paramInt, V paramV, boolean paramBoolean)
    {
      lock();
      try
      {
        long l = this.map.ticker.read();
        preWriteCleanup(l);
        if (1 + this.count > this.threshold)
        {
          expand();
          (1 + this.count);
        }
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        int i = paramInt & -1 + localAtomicReferenceArray.length();
        LocalCache.ReferenceEntry localReferenceEntry1 = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(i);
        for (LocalCache.ReferenceEntry localReferenceEntry2 = localReferenceEntry1; localReferenceEntry2 != null; localReferenceEntry2 = localReferenceEntry2.getNext())
        {
          Object localObject2 = localReferenceEntry2.getKey();
          if ((localReferenceEntry2.getHash() == paramInt) && (localObject2 != null) && (this.map.keyEquivalence.equivalent(paramK, localObject2)))
          {
            LocalCache.ValueReference localValueReference = localReferenceEntry2.getValueReference();
            Object localObject3 = localValueReference.get();
            if (localObject3 == null)
            {
              this.modCount = (1 + this.modCount);
              if (localValueReference.isActive())
              {
                enqueueNotification(paramK, paramInt, localValueReference, RemovalCause.COLLECTED);
                setValue(localReferenceEntry2, paramK, paramV, l);
              }
              for (int j = this.count; ; j = 1 + this.count)
              {
                this.count = j;
                evictEntries();
                return null;
                setValue(localReferenceEntry2, paramK, paramV, l);
              }
            }
            if (paramBoolean)
            {
              recordLockedRead(localReferenceEntry2, l);
              return localObject3;
            }
            this.modCount = (1 + this.modCount);
            enqueueNotification(paramK, paramInt, localValueReference, RemovalCause.REPLACED);
            setValue(localReferenceEntry2, paramK, paramV, l);
            evictEntries();
            return localObject3;
          }
        }
        this.modCount = (1 + this.modCount);
        LocalCache.ReferenceEntry localReferenceEntry3 = newEntry(paramK, paramInt, localReferenceEntry1);
        setValue(localReferenceEntry3, paramK, paramV, l);
        localAtomicReferenceArray.set(i, localReferenceEntry3);
        this.count = (1 + this.count);
        evictEntries();
        return null;
      }
      finally
      {
        unlock();
        postWriteCleanup();
      }
    }

    boolean reclaimKey(LocalCache.ReferenceEntry<K, V> paramReferenceEntry, int paramInt)
    {
      lock();
      try
      {
        (-1 + this.count);
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        int i = paramInt & -1 + localAtomicReferenceArray.length();
        LocalCache.ReferenceEntry localReferenceEntry1 = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(i);
        LocalCache.ReferenceEntry localReferenceEntry3;
        for (Object localObject2 = localReferenceEntry1; localObject2 != null; localObject2 = localReferenceEntry3)
        {
          if (localObject2 == paramReferenceEntry)
          {
            this.modCount = (1 + this.modCount);
            LocalCache.ReferenceEntry localReferenceEntry2 = removeValueFromChain(localReferenceEntry1, (LocalCache.ReferenceEntry)localObject2, ((LocalCache.ReferenceEntry)localObject2).getKey(), paramInt, ((LocalCache.ReferenceEntry)localObject2).getValueReference(), RemovalCause.COLLECTED);
            int j = -1 + this.count;
            localAtomicReferenceArray.set(i, localReferenceEntry2);
            this.count = j;
            return true;
          }
          localReferenceEntry3 = ((LocalCache.ReferenceEntry)localObject2).getNext();
        }
        return false;
      }
      finally
      {
        unlock();
        postWriteCleanup();
      }
    }

    boolean reclaimValue(K paramK, int paramInt, LocalCache.ValueReference<K, V> paramValueReference)
    {
      lock();
      try
      {
        (-1 + this.count);
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        int i = paramInt & -1 + localAtomicReferenceArray.length();
        LocalCache.ReferenceEntry localReferenceEntry1 = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(i);
        Object localObject2 = localReferenceEntry1;
        boolean bool2;
        if (localObject2 != null)
        {
          Object localObject3 = ((LocalCache.ReferenceEntry)localObject2).getKey();
          if ((((LocalCache.ReferenceEntry)localObject2).getHash() == paramInt) && (localObject3 != null) && (this.map.keyEquivalence.equivalent(paramK, localObject3)))
            if (((LocalCache.ReferenceEntry)localObject2).getValueReference() == paramValueReference)
            {
              this.modCount = (1 + this.modCount);
              LocalCache.ReferenceEntry localReferenceEntry3 = removeValueFromChain(localReferenceEntry1, (LocalCache.ReferenceEntry)localObject2, localObject3, paramInt, paramValueReference, RemovalCause.COLLECTED);
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
          LocalCache.ReferenceEntry localReferenceEntry2 = ((LocalCache.ReferenceEntry)localObject2).getNext();
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

    @GuardedBy("Segment.this")
    void recordLockedRead(LocalCache.ReferenceEntry<K, V> paramReferenceEntry, long paramLong)
    {
      if (this.map.recordsAccess())
        paramReferenceEntry.setAccessTime(paramLong);
      this.accessQueue.add(paramReferenceEntry);
    }

    void recordRead(LocalCache.ReferenceEntry<K, V> paramReferenceEntry, long paramLong)
    {
      if (this.map.recordsAccess())
        paramReferenceEntry.setAccessTime(paramLong);
      this.recencyQueue.add(paramReferenceEntry);
    }

    @GuardedBy("Segment.this")
    void recordWrite(LocalCache.ReferenceEntry<K, V> paramReferenceEntry, int paramInt, long paramLong)
    {
      drainRecencyQueue();
      this.totalWeight = (paramInt + this.totalWeight);
      if (this.map.recordsAccess())
        paramReferenceEntry.setAccessTime(paramLong);
      if (this.map.recordsWrite())
        paramReferenceEntry.setWriteTime(paramLong);
      this.accessQueue.add(paramReferenceEntry);
      this.writeQueue.add(paramReferenceEntry);
    }

    @Nullable
    V refresh(K paramK, int paramInt, CacheLoader<? super K, V> paramCacheLoader, boolean paramBoolean)
    {
      LocalCache.LoadingValueReference localLoadingValueReference = insertLoadingValueReference(paramK, paramInt, paramBoolean);
      if (localLoadingValueReference == null);
      ListenableFuture localListenableFuture;
      do
      {
        return null;
        localListenableFuture = loadAsync(paramK, paramInt, localLoadingValueReference, paramCacheLoader);
      }
      while (!localListenableFuture.isDone());
      try
      {
        Object localObject = Uninterruptibles.getUninterruptibly(localListenableFuture);
        return localObject;
      }
      catch (Throwable localThrowable)
      {
      }
      return null;
    }

    @Nullable
    V remove(Object paramObject, int paramInt)
    {
      lock();
      try
      {
        preWriteCleanup(this.map.ticker.read());
        (-1 + this.count);
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        int i = paramInt & -1 + localAtomicReferenceArray.length();
        LocalCache.ReferenceEntry localReferenceEntry1 = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(i);
        LocalCache.ReferenceEntry localReferenceEntry2;
        for (Object localObject2 = localReferenceEntry1; localObject2 != null; localObject2 = localReferenceEntry2)
        {
          Object localObject3 = ((LocalCache.ReferenceEntry)localObject2).getKey();
          if ((((LocalCache.ReferenceEntry)localObject2).getHash() == paramInt) && (localObject3 != null) && (this.map.keyEquivalence.equivalent(paramObject, localObject3)))
          {
            LocalCache.ValueReference localValueReference = ((LocalCache.ReferenceEntry)localObject2).getValueReference();
            Object localObject4 = localValueReference.get();
            if (localObject4 != null);
            for (RemovalCause localRemovalCause = RemovalCause.EXPLICIT; ; localRemovalCause = RemovalCause.COLLECTED)
            {
              this.modCount = (1 + this.modCount);
              LocalCache.ReferenceEntry localReferenceEntry3 = removeValueFromChain(localReferenceEntry1, (LocalCache.ReferenceEntry)localObject2, localObject3, paramInt, localValueReference, localRemovalCause);
              int j = -1 + this.count;
              localAtomicReferenceArray.set(i, localReferenceEntry3);
              this.count = j;
              return localObject4;
              if (!localValueReference.isActive())
                break;
            }
            return null;
          }
          localReferenceEntry2 = ((LocalCache.ReferenceEntry)localObject2).getNext();
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
        preWriteCleanup(this.map.ticker.read());
        (-1 + this.count);
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        int i = paramInt & -1 + localAtomicReferenceArray.length();
        LocalCache.ReferenceEntry localReferenceEntry1 = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(i);
        label252: LocalCache.ReferenceEntry localReferenceEntry2;
        for (Object localObject2 = localReferenceEntry1; localObject2 != null; localObject2 = localReferenceEntry2)
        {
          Object localObject3 = ((LocalCache.ReferenceEntry)localObject2).getKey();
          if ((((LocalCache.ReferenceEntry)localObject2).getHash() == paramInt) && (localObject3 != null) && (this.map.keyEquivalence.equivalent(paramObject1, localObject3)))
          {
            LocalCache.ValueReference localValueReference = ((LocalCache.ReferenceEntry)localObject2).getValueReference();
            Object localObject4 = localValueReference.get();
            RemovalCause localRemovalCause1;
            if (this.map.valueEquivalence.equivalent(paramObject2, localObject4))
            {
              localRemovalCause1 = RemovalCause.EXPLICIT;
              this.modCount = (1 + this.modCount);
              LocalCache.ReferenceEntry localReferenceEntry3 = removeValueFromChain(localReferenceEntry1, (LocalCache.ReferenceEntry)localObject2, localObject3, paramInt, localValueReference, localRemovalCause1);
              int j = -1 + this.count;
              localAtomicReferenceArray.set(i, localReferenceEntry3);
              this.count = j;
              RemovalCause localRemovalCause2 = RemovalCause.EXPLICIT;
              if (localRemovalCause1 != localRemovalCause2)
                break label252;
            }
            for (boolean bool = true; ; bool = false)
            {
              return bool;
              if ((localObject4 == null) && (localValueReference.isActive()))
              {
                localRemovalCause1 = RemovalCause.COLLECTED;
                break;
              }
              return false;
            }
          }
          localReferenceEntry2 = ((LocalCache.ReferenceEntry)localObject2).getNext();
        }
        return false;
      }
      finally
      {
        unlock();
        postWriteCleanup();
      }
    }

    @GuardedBy("Segment.this")
    void removeCollectedEntry(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      enqueueNotification(paramReferenceEntry, RemovalCause.COLLECTED);
      this.writeQueue.remove(paramReferenceEntry);
      this.accessQueue.remove(paramReferenceEntry);
    }

    @GuardedBy("Segment.this")
    boolean removeEntry(LocalCache.ReferenceEntry<K, V> paramReferenceEntry, int paramInt, RemovalCause paramRemovalCause)
    {
      (-1 + this.count);
      AtomicReferenceArray localAtomicReferenceArray = this.table;
      int i = paramInt & -1 + localAtomicReferenceArray.length();
      LocalCache.ReferenceEntry localReferenceEntry1 = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(i);
      for (LocalCache.ReferenceEntry localReferenceEntry2 = localReferenceEntry1; localReferenceEntry2 != null; localReferenceEntry2 = localReferenceEntry2.getNext())
        if (localReferenceEntry2 == paramReferenceEntry)
        {
          this.modCount = (1 + this.modCount);
          LocalCache.ReferenceEntry localReferenceEntry3 = removeValueFromChain(localReferenceEntry1, localReferenceEntry2, localReferenceEntry2.getKey(), paramInt, localReferenceEntry2.getValueReference(), paramRemovalCause);
          int j = -1 + this.count;
          localAtomicReferenceArray.set(i, localReferenceEntry3);
          this.count = j;
          return true;
        }
      return false;
    }

    @Nullable
    @GuardedBy("Segment.this")
    LocalCache.ReferenceEntry<K, V> removeEntryFromChain(LocalCache.ReferenceEntry<K, V> paramReferenceEntry1, LocalCache.ReferenceEntry<K, V> paramReferenceEntry2)
    {
      int i = this.count;
      Object localObject1 = paramReferenceEntry2.getNext();
      Object localObject2 = paramReferenceEntry1;
      if (localObject2 != paramReferenceEntry2)
      {
        LocalCache.ReferenceEntry localReferenceEntry = copyEntry((LocalCache.ReferenceEntry)localObject2, (LocalCache.ReferenceEntry)localObject1);
        if (localReferenceEntry != null)
          localObject1 = localReferenceEntry;
        while (true)
        {
          localObject2 = ((LocalCache.ReferenceEntry)localObject2).getNext();
          break;
          removeCollectedEntry((LocalCache.ReferenceEntry)localObject2);
          i--;
        }
      }
      this.count = i;
      return localObject1;
    }

    boolean removeLoadingValue(K paramK, int paramInt, LocalCache.LoadingValueReference<K, V> paramLoadingValueReference)
    {
      lock();
      while (true)
      {
        try
        {
          AtomicReferenceArray localAtomicReferenceArray = this.table;
          int i = paramInt & -1 + localAtomicReferenceArray.length();
          LocalCache.ReferenceEntry localReferenceEntry1 = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(i);
          localObject2 = localReferenceEntry1;
          if (localObject2 == null)
            break;
          Object localObject3 = ((LocalCache.ReferenceEntry)localObject2).getKey();
          if ((((LocalCache.ReferenceEntry)localObject2).getHash() != paramInt) || (localObject3 == null) || (!this.map.keyEquivalence.equivalent(paramK, localObject3)))
            break label163;
          if (((LocalCache.ReferenceEntry)localObject2).getValueReference() == paramLoadingValueReference)
          {
            if (paramLoadingValueReference.isActive())
            {
              ((LocalCache.ReferenceEntry)localObject2).setValueReference(paramLoadingValueReference.getOldValue());
              return true;
            }
            localAtomicReferenceArray.set(i, removeEntryFromChain(localReferenceEntry1, (LocalCache.ReferenceEntry)localObject2));
            continue;
          }
        }
        finally
        {
          unlock();
          postWriteCleanup();
        }
        unlock();
        postWriteCleanup();
        return false;
        label163: LocalCache.ReferenceEntry localReferenceEntry2 = ((LocalCache.ReferenceEntry)localObject2).getNext();
        Object localObject2 = localReferenceEntry2;
      }
      unlock();
      postWriteCleanup();
      return false;
    }

    @Nullable
    @GuardedBy("Segment.this")
    LocalCache.ReferenceEntry<K, V> removeValueFromChain(LocalCache.ReferenceEntry<K, V> paramReferenceEntry1, LocalCache.ReferenceEntry<K, V> paramReferenceEntry2, @Nullable K paramK, int paramInt, LocalCache.ValueReference<K, V> paramValueReference, RemovalCause paramRemovalCause)
    {
      enqueueNotification(paramK, paramInt, paramValueReference, paramRemovalCause);
      this.writeQueue.remove(paramReferenceEntry2);
      this.accessQueue.remove(paramReferenceEntry2);
      if (paramValueReference.isLoading())
      {
        paramValueReference.notifyNewValue(null);
        return paramReferenceEntry1;
      }
      return removeEntryFromChain(paramReferenceEntry1, paramReferenceEntry2);
    }

    @Nullable
    V replace(K paramK, int paramInt, V paramV)
    {
      lock();
      try
      {
        long l = this.map.ticker.read();
        preWriteCleanup(l);
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        int i = paramInt & -1 + localAtomicReferenceArray.length();
        LocalCache.ReferenceEntry localReferenceEntry1 = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(i);
        LocalCache.ReferenceEntry localReferenceEntry2;
        for (Object localObject2 = localReferenceEntry1; localObject2 != null; localObject2 = localReferenceEntry2)
        {
          Object localObject3 = ((LocalCache.ReferenceEntry)localObject2).getKey();
          if ((((LocalCache.ReferenceEntry)localObject2).getHash() == paramInt) && (localObject3 != null) && (this.map.keyEquivalence.equivalent(paramK, localObject3)))
          {
            LocalCache.ValueReference localValueReference = ((LocalCache.ReferenceEntry)localObject2).getValueReference();
            Object localObject4 = localValueReference.get();
            if (localObject4 == null)
            {
              if (localValueReference.isActive())
              {
                (-1 + this.count);
                this.modCount = (1 + this.modCount);
                LocalCache.ReferenceEntry localReferenceEntry3 = removeValueFromChain(localReferenceEntry1, (LocalCache.ReferenceEntry)localObject2, localObject3, paramInt, localValueReference, RemovalCause.COLLECTED);
                int j = -1 + this.count;
                localAtomicReferenceArray.set(i, localReferenceEntry3);
                this.count = j;
              }
              return null;
            }
            this.modCount = (1 + this.modCount);
            enqueueNotification(paramK, paramInt, localValueReference, RemovalCause.REPLACED);
            setValue((LocalCache.ReferenceEntry)localObject2, paramK, paramV, l);
            evictEntries();
            return localObject4;
          }
          localReferenceEntry2 = ((LocalCache.ReferenceEntry)localObject2).getNext();
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
        long l = this.map.ticker.read();
        preWriteCleanup(l);
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        int i = paramInt & -1 + localAtomicReferenceArray.length();
        LocalCache.ReferenceEntry localReferenceEntry1 = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(i);
        LocalCache.ReferenceEntry localReferenceEntry2;
        for (Object localObject2 = localReferenceEntry1; localObject2 != null; localObject2 = localReferenceEntry2)
        {
          Object localObject3 = ((LocalCache.ReferenceEntry)localObject2).getKey();
          if ((((LocalCache.ReferenceEntry)localObject2).getHash() == paramInt) && (localObject3 != null) && (this.map.keyEquivalence.equivalent(paramK, localObject3)))
          {
            LocalCache.ValueReference localValueReference = ((LocalCache.ReferenceEntry)localObject2).getValueReference();
            Object localObject4 = localValueReference.get();
            if (localObject4 == null)
            {
              if (localValueReference.isActive())
              {
                (-1 + this.count);
                this.modCount = (1 + this.modCount);
                LocalCache.ReferenceEntry localReferenceEntry3 = removeValueFromChain(localReferenceEntry1, (LocalCache.ReferenceEntry)localObject2, localObject3, paramInt, localValueReference, RemovalCause.COLLECTED);
                int j = -1 + this.count;
                localAtomicReferenceArray.set(i, localReferenceEntry3);
                this.count = j;
              }
              return false;
            }
            if (this.map.valueEquivalence.equivalent(paramV1, localObject4))
            {
              this.modCount = (1 + this.modCount);
              enqueueNotification(paramK, paramInt, localValueReference, RemovalCause.REPLACED);
              setValue((LocalCache.ReferenceEntry)localObject2, paramK, paramV2, l);
              evictEntries();
              return true;
            }
            recordLockedRead((LocalCache.ReferenceEntry)localObject2, l);
            return false;
          }
          localReferenceEntry2 = ((LocalCache.ReferenceEntry)localObject2).getNext();
        }
        return false;
      }
      finally
      {
        unlock();
        postWriteCleanup();
      }
    }

    void runLockedCleanup(long paramLong)
    {
      if (tryLock());
      try
      {
        drainReferenceQueues();
        expireEntries(paramLong);
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

    V scheduleRefresh(LocalCache.ReferenceEntry<K, V> paramReferenceEntry, K paramK, int paramInt, V paramV, long paramLong, CacheLoader<? super K, V> paramCacheLoader)
    {
      if ((this.map.refreshes()) && (paramLong - paramReferenceEntry.getWriteTime() > this.map.refreshNanos) && (!paramReferenceEntry.getValueReference().isLoading()))
      {
        Object localObject = refresh(paramK, paramInt, paramCacheLoader, true);
        if (localObject != null)
          return localObject;
      }
      return paramV;
    }

    @GuardedBy("Segment.this")
    void setValue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry, K paramK, V paramV, long paramLong)
    {
      LocalCache.ValueReference localValueReference = paramReferenceEntry.getValueReference();
      int i = this.map.weigher.weigh(paramK, paramV);
      if (i >= 0);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkState(bool, "Weights must be non-negative");
        paramReferenceEntry.setValueReference(this.map.valueStrength.referenceValue(this, paramReferenceEntry, paramV, i));
        recordWrite(paramReferenceEntry, i, paramLong);
        localValueReference.notifyNewValue(paramV);
        return;
      }
    }

    boolean storeLoadedValue(K paramK, int paramInt, LocalCache.LoadingValueReference<K, V> paramLoadingValueReference, V paramV)
    {
      lock();
      try
      {
        long l = this.map.ticker.read();
        preWriteCleanup(l);
        int i = 1 + this.count;
        int j = this.threshold;
        if (i > j)
        {
          expand();
          i = 1 + this.count;
        }
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        int k = paramInt & -1 + localAtomicReferenceArray.length();
        LocalCache.ReferenceEntry localReferenceEntry1 = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(k);
        for (LocalCache.ReferenceEntry localReferenceEntry2 = localReferenceEntry1; localReferenceEntry2 != null; localReferenceEntry2 = localReferenceEntry2.getNext())
        {
          Object localObject2 = localReferenceEntry2.getKey();
          if ((localReferenceEntry2.getHash() == paramInt) && (localObject2 != null) && (this.map.keyEquivalence.equivalent(paramK, localObject2)))
          {
            LocalCache.ValueReference localValueReference = localReferenceEntry2.getValueReference();
            Object localObject3 = localValueReference.get();
            if ((paramLoadingValueReference == localValueReference) || ((localObject3 == null) && (localValueReference != LocalCache.UNSET)))
            {
              this.modCount = (1 + this.modCount);
              if (paramLoadingValueReference.isActive())
                if (localObject3 != null)
                  break label241;
              label241: for (RemovalCause localRemovalCause = RemovalCause.COLLECTED; ; localRemovalCause = RemovalCause.REPLACED)
              {
                enqueueNotification(paramK, paramInt, paramLoadingValueReference, localRemovalCause);
                i--;
                setValue(localReferenceEntry2, paramK, paramV, l);
                this.count = i;
                evictEntries();
                return true;
              }
            }
            LocalCache.WeightedStrongValueReference localWeightedStrongValueReference = new LocalCache.WeightedStrongValueReference(paramV, 0);
            enqueueNotification(paramK, paramInt, localWeightedStrongValueReference, RemovalCause.REPLACED);
            return false;
          }
        }
        this.modCount = (1 + this.modCount);
        LocalCache.ReferenceEntry localReferenceEntry3 = newEntry(paramK, paramInt, localReferenceEntry1);
        setValue(localReferenceEntry3, paramK, paramV, l);
        localAtomicReferenceArray.set(k, localReferenceEntry3);
        this.count = i;
        evictEntries();
        return true;
      }
      finally
      {
        unlock();
        postWriteCleanup();
      }
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

    void tryExpireEntries(long paramLong)
    {
      if (tryLock());
      try
      {
        expireEntries(paramLong);
        return;
      }
      finally
      {
        unlock();
      }
    }

    V waitForLoadingValue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry, K paramK, LocalCache.ValueReference<K, V> paramValueReference)
      throws ExecutionException
    {
      if (!paramValueReference.isLoading())
        throw new AssertionError();
      if (!Thread.holdsLock(paramReferenceEntry));
      Object localObject2;
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkState(bool, "Recursive load");
        try
        {
          localObject2 = paramValueReference.waitForValue();
          if (localObject2 != null)
            break;
          throw new CacheLoader.InvalidCacheLoadException("CacheLoader returned null for key " + paramK + ".");
        }
        finally
        {
          this.statsCounter.recordMisses(1);
        }
      }
      recordRead(paramReferenceEntry, this.map.ticker.read());
      this.statsCounter.recordMisses(1);
      return localObject2;
    }
  }

  static class SoftValueReference<K, V> extends SoftReference<V>
    implements LocalCache.ValueReference<K, V>
  {
    final LocalCache.ReferenceEntry<K, V> entry;

    SoftValueReference(ReferenceQueue<V> paramReferenceQueue, V paramV, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramReferenceQueue);
      this.entry = paramReferenceEntry;
    }

    public LocalCache.ValueReference<K, V> copyFor(ReferenceQueue<V> paramReferenceQueue, V paramV, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      return new SoftValueReference(paramReferenceQueue, paramV, paramReferenceEntry);
    }

    public LocalCache.ReferenceEntry<K, V> getEntry()
    {
      return this.entry;
    }

    public int getWeight()
    {
      return 1;
    }

    public boolean isActive()
    {
      return true;
    }

    public boolean isLoading()
    {
      return false;
    }

    public void notifyNewValue(V paramV)
    {
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
      //   0: new 15	com/google/common/cache/LocalCache$Strength$1
      //   3: dup
      //   4: ldc 16
      //   6: iconst_0
      //   7: invokespecial 20	com/google/common/cache/LocalCache$Strength$1:<init>	(Ljava/lang/String;I)V
      //   10: putstatic 22	com/google/common/cache/LocalCache$Strength:STRONG	Lcom/google/common/cache/LocalCache$Strength;
      //   13: new 24	com/google/common/cache/LocalCache$Strength$2
      //   16: dup
      //   17: ldc 25
      //   19: iconst_1
      //   20: invokespecial 26	com/google/common/cache/LocalCache$Strength$2:<init>	(Ljava/lang/String;I)V
      //   23: putstatic 28	com/google/common/cache/LocalCache$Strength:SOFT	Lcom/google/common/cache/LocalCache$Strength;
      //   26: new 30	com/google/common/cache/LocalCache$Strength$3
      //   29: dup
      //   30: ldc 31
      //   32: iconst_2
      //   33: invokespecial 32	com/google/common/cache/LocalCache$Strength$3:<init>	(Ljava/lang/String;I)V
      //   36: putstatic 34	com/google/common/cache/LocalCache$Strength:WEAK	Lcom/google/common/cache/LocalCache$Strength;
      //   39: iconst_3
      //   40: anewarray 2	com/google/common/cache/LocalCache$Strength
      //   43: astore_0
      //   44: aload_0
      //   45: iconst_0
      //   46: getstatic 22	com/google/common/cache/LocalCache$Strength:STRONG	Lcom/google/common/cache/LocalCache$Strength;
      //   49: aastore
      //   50: aload_0
      //   51: iconst_1
      //   52: getstatic 28	com/google/common/cache/LocalCache$Strength:SOFT	Lcom/google/common/cache/LocalCache$Strength;
      //   55: aastore
      //   56: aload_0
      //   57: iconst_2
      //   58: getstatic 34	com/google/common/cache/LocalCache$Strength:WEAK	Lcom/google/common/cache/LocalCache$Strength;
      //   61: aastore
      //   62: aload_0
      //   63: putstatic 36	com/google/common/cache/LocalCache$Strength:$VALUES	[Lcom/google/common/cache/LocalCache$Strength;
      //   66: return
    }

    abstract Equivalence<Object> defaultEquivalence();

    abstract <K, V> LocalCache.ValueReference<K, V> referenceValue(LocalCache.Segment<K, V> paramSegment, LocalCache.ReferenceEntry<K, V> paramReferenceEntry, V paramV, int paramInt);
  }

  static final class StrongAccessEntry<K, V> extends LocalCache.StrongEntry<K, V>
    implements LocalCache.ReferenceEntry<K, V>
  {
    volatile long accessTime = 9223372036854775807L;

    @GuardedBy("Segment.this")
    LocalCache.ReferenceEntry<K, V> nextAccess = LocalCache.nullEntry();

    @GuardedBy("Segment.this")
    LocalCache.ReferenceEntry<K, V> previousAccess = LocalCache.nullEntry();

    StrongAccessEntry(K paramK, int paramInt, @Nullable LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramInt, paramReferenceEntry);
    }

    public long getAccessTime()
    {
      return this.accessTime;
    }

    public LocalCache.ReferenceEntry<K, V> getNextInAccessQueue()
    {
      return this.nextAccess;
    }

    public LocalCache.ReferenceEntry<K, V> getPreviousInAccessQueue()
    {
      return this.previousAccess;
    }

    public void setAccessTime(long paramLong)
    {
      this.accessTime = paramLong;
    }

    public void setNextInAccessQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextAccess = paramReferenceEntry;
    }

    public void setPreviousInAccessQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousAccess = paramReferenceEntry;
    }
  }

  static final class StrongAccessWriteEntry<K, V> extends LocalCache.StrongEntry<K, V>
    implements LocalCache.ReferenceEntry<K, V>
  {
    volatile long accessTime = 9223372036854775807L;

    @GuardedBy("Segment.this")
    LocalCache.ReferenceEntry<K, V> nextAccess = LocalCache.nullEntry();

    @GuardedBy("Segment.this")
    LocalCache.ReferenceEntry<K, V> nextWrite = LocalCache.nullEntry();

    @GuardedBy("Segment.this")
    LocalCache.ReferenceEntry<K, V> previousAccess = LocalCache.nullEntry();

    @GuardedBy("Segment.this")
    LocalCache.ReferenceEntry<K, V> previousWrite = LocalCache.nullEntry();
    volatile long writeTime = 9223372036854775807L;

    StrongAccessWriteEntry(K paramK, int paramInt, @Nullable LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramInt, paramReferenceEntry);
    }

    public long getAccessTime()
    {
      return this.accessTime;
    }

    public LocalCache.ReferenceEntry<K, V> getNextInAccessQueue()
    {
      return this.nextAccess;
    }

    public LocalCache.ReferenceEntry<K, V> getNextInWriteQueue()
    {
      return this.nextWrite;
    }

    public LocalCache.ReferenceEntry<K, V> getPreviousInAccessQueue()
    {
      return this.previousAccess;
    }

    public LocalCache.ReferenceEntry<K, V> getPreviousInWriteQueue()
    {
      return this.previousWrite;
    }

    public long getWriteTime()
    {
      return this.writeTime;
    }

    public void setAccessTime(long paramLong)
    {
      this.accessTime = paramLong;
    }

    public void setNextInAccessQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextAccess = paramReferenceEntry;
    }

    public void setNextInWriteQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextWrite = paramReferenceEntry;
    }

    public void setPreviousInAccessQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousAccess = paramReferenceEntry;
    }

    public void setPreviousInWriteQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousWrite = paramReferenceEntry;
    }

    public void setWriteTime(long paramLong)
    {
      this.writeTime = paramLong;
    }
  }

  static class StrongEntry<K, V>
    implements LocalCache.ReferenceEntry<K, V>
  {
    final int hash;
    final K key;
    final LocalCache.ReferenceEntry<K, V> next;
    volatile LocalCache.ValueReference<K, V> valueReference = LocalCache.unset();

    StrongEntry(K paramK, int paramInt, @Nullable LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.key = paramK;
      this.hash = paramInt;
      this.next = paramReferenceEntry;
    }

    public long getAccessTime()
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

    public LocalCache.ReferenceEntry<K, V> getNext()
    {
      return this.next;
    }

    public LocalCache.ReferenceEntry<K, V> getNextInAccessQueue()
    {
      throw new UnsupportedOperationException();
    }

    public LocalCache.ReferenceEntry<K, V> getNextInWriteQueue()
    {
      throw new UnsupportedOperationException();
    }

    public LocalCache.ReferenceEntry<K, V> getPreviousInAccessQueue()
    {
      throw new UnsupportedOperationException();
    }

    public LocalCache.ReferenceEntry<K, V> getPreviousInWriteQueue()
    {
      throw new UnsupportedOperationException();
    }

    public LocalCache.ValueReference<K, V> getValueReference()
    {
      return this.valueReference;
    }

    public long getWriteTime()
    {
      throw new UnsupportedOperationException();
    }

    public void setAccessTime(long paramLong)
    {
      throw new UnsupportedOperationException();
    }

    public void setNextInAccessQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setNextInWriteQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setPreviousInAccessQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setPreviousInWriteQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setValueReference(LocalCache.ValueReference<K, V> paramValueReference)
    {
      this.valueReference = paramValueReference;
    }

    public void setWriteTime(long paramLong)
    {
      throw new UnsupportedOperationException();
    }
  }

  static class StrongValueReference<K, V>
    implements LocalCache.ValueReference<K, V>
  {
    final V referent;

    StrongValueReference(V paramV)
    {
      this.referent = paramV;
    }

    public LocalCache.ValueReference<K, V> copyFor(ReferenceQueue<V> paramReferenceQueue, V paramV, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      return this;
    }

    public V get()
    {
      return this.referent;
    }

    public LocalCache.ReferenceEntry<K, V> getEntry()
    {
      return null;
    }

    public int getWeight()
    {
      return 1;
    }

    public boolean isActive()
    {
      return true;
    }

    public boolean isLoading()
    {
      return false;
    }

    public void notifyNewValue(V paramV)
    {
    }

    public V waitForValue()
    {
      return get();
    }
  }

  static final class StrongWriteEntry<K, V> extends LocalCache.StrongEntry<K, V>
    implements LocalCache.ReferenceEntry<K, V>
  {

    @GuardedBy("Segment.this")
    LocalCache.ReferenceEntry<K, V> nextWrite = LocalCache.nullEntry();

    @GuardedBy("Segment.this")
    LocalCache.ReferenceEntry<K, V> previousWrite = LocalCache.nullEntry();
    volatile long writeTime = 9223372036854775807L;

    StrongWriteEntry(K paramK, int paramInt, @Nullable LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramInt, paramReferenceEntry);
    }

    public LocalCache.ReferenceEntry<K, V> getNextInWriteQueue()
    {
      return this.nextWrite;
    }

    public LocalCache.ReferenceEntry<K, V> getPreviousInWriteQueue()
    {
      return this.previousWrite;
    }

    public long getWriteTime()
    {
      return this.writeTime;
    }

    public void setNextInWriteQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextWrite = paramReferenceEntry;
    }

    public void setPreviousInWriteQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousWrite = paramReferenceEntry;
    }

    public void setWriteTime(long paramLong)
    {
      this.writeTime = paramLong;
    }
  }

  final class ValueIterator extends LocalCache<K, V>.HashIterator<V>
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
    public abstract ValueReference<K, V> copyFor(ReferenceQueue<V> paramReferenceQueue, @Nullable V paramV, LocalCache.ReferenceEntry<K, V> paramReferenceEntry);

    @Nullable
    public abstract V get();

    @Nullable
    public abstract LocalCache.ReferenceEntry<K, V> getEntry();

    public abstract int getWeight();

    public abstract boolean isActive();

    public abstract boolean isLoading();

    public abstract void notifyNewValue(@Nullable V paramV);

    public abstract V waitForValue()
      throws ExecutionException;
  }

  final class Values extends LocalCache<K, V>.AbstractCacheSet<V>
  {
    Values()
    {
      super(localConcurrentMap);
    }

    public boolean contains(Object paramObject)
    {
      return this.map.containsValue(paramObject);
    }

    public Iterator<V> iterator()
    {
      return new LocalCache.ValueIterator(LocalCache.this);
    }
  }

  static final class WeakAccessEntry<K, V> extends LocalCache.WeakEntry<K, V>
    implements LocalCache.ReferenceEntry<K, V>
  {
    volatile long accessTime = 9223372036854775807L;

    @GuardedBy("Segment.this")
    LocalCache.ReferenceEntry<K, V> nextAccess = LocalCache.nullEntry();

    @GuardedBy("Segment.this")
    LocalCache.ReferenceEntry<K, V> previousAccess = LocalCache.nullEntry();

    WeakAccessEntry(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, @Nullable LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramK, paramInt, paramReferenceEntry);
    }

    public long getAccessTime()
    {
      return this.accessTime;
    }

    public LocalCache.ReferenceEntry<K, V> getNextInAccessQueue()
    {
      return this.nextAccess;
    }

    public LocalCache.ReferenceEntry<K, V> getPreviousInAccessQueue()
    {
      return this.previousAccess;
    }

    public void setAccessTime(long paramLong)
    {
      this.accessTime = paramLong;
    }

    public void setNextInAccessQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextAccess = paramReferenceEntry;
    }

    public void setPreviousInAccessQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousAccess = paramReferenceEntry;
    }
  }

  static final class WeakAccessWriteEntry<K, V> extends LocalCache.WeakEntry<K, V>
    implements LocalCache.ReferenceEntry<K, V>
  {
    volatile long accessTime = 9223372036854775807L;

    @GuardedBy("Segment.this")
    LocalCache.ReferenceEntry<K, V> nextAccess = LocalCache.nullEntry();

    @GuardedBy("Segment.this")
    LocalCache.ReferenceEntry<K, V> nextWrite = LocalCache.nullEntry();

    @GuardedBy("Segment.this")
    LocalCache.ReferenceEntry<K, V> previousAccess = LocalCache.nullEntry();

    @GuardedBy("Segment.this")
    LocalCache.ReferenceEntry<K, V> previousWrite = LocalCache.nullEntry();
    volatile long writeTime = 9223372036854775807L;

    WeakAccessWriteEntry(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, @Nullable LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramK, paramInt, paramReferenceEntry);
    }

    public long getAccessTime()
    {
      return this.accessTime;
    }

    public LocalCache.ReferenceEntry<K, V> getNextInAccessQueue()
    {
      return this.nextAccess;
    }

    public LocalCache.ReferenceEntry<K, V> getNextInWriteQueue()
    {
      return this.nextWrite;
    }

    public LocalCache.ReferenceEntry<K, V> getPreviousInAccessQueue()
    {
      return this.previousAccess;
    }

    public LocalCache.ReferenceEntry<K, V> getPreviousInWriteQueue()
    {
      return this.previousWrite;
    }

    public long getWriteTime()
    {
      return this.writeTime;
    }

    public void setAccessTime(long paramLong)
    {
      this.accessTime = paramLong;
    }

    public void setNextInAccessQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextAccess = paramReferenceEntry;
    }

    public void setNextInWriteQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextWrite = paramReferenceEntry;
    }

    public void setPreviousInAccessQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousAccess = paramReferenceEntry;
    }

    public void setPreviousInWriteQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousWrite = paramReferenceEntry;
    }

    public void setWriteTime(long paramLong)
    {
      this.writeTime = paramLong;
    }
  }

  static class WeakEntry<K, V> extends WeakReference<K>
    implements LocalCache.ReferenceEntry<K, V>
  {
    final int hash;
    final LocalCache.ReferenceEntry<K, V> next;
    volatile LocalCache.ValueReference<K, V> valueReference = LocalCache.unset();

    WeakEntry(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, @Nullable LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramReferenceQueue);
      this.hash = paramInt;
      this.next = paramReferenceEntry;
    }

    public long getAccessTime()
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

    public LocalCache.ReferenceEntry<K, V> getNext()
    {
      return this.next;
    }

    public LocalCache.ReferenceEntry<K, V> getNextInAccessQueue()
    {
      throw new UnsupportedOperationException();
    }

    public LocalCache.ReferenceEntry<K, V> getNextInWriteQueue()
    {
      throw new UnsupportedOperationException();
    }

    public LocalCache.ReferenceEntry<K, V> getPreviousInAccessQueue()
    {
      throw new UnsupportedOperationException();
    }

    public LocalCache.ReferenceEntry<K, V> getPreviousInWriteQueue()
    {
      throw new UnsupportedOperationException();
    }

    public LocalCache.ValueReference<K, V> getValueReference()
    {
      return this.valueReference;
    }

    public long getWriteTime()
    {
      throw new UnsupportedOperationException();
    }

    public void setAccessTime(long paramLong)
    {
      throw new UnsupportedOperationException();
    }

    public void setNextInAccessQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setNextInWriteQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setPreviousInAccessQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setPreviousInWriteQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setValueReference(LocalCache.ValueReference<K, V> paramValueReference)
    {
      this.valueReference = paramValueReference;
    }

    public void setWriteTime(long paramLong)
    {
      throw new UnsupportedOperationException();
    }
  }

  static class WeakValueReference<K, V> extends WeakReference<V>
    implements LocalCache.ValueReference<K, V>
  {
    final LocalCache.ReferenceEntry<K, V> entry;

    WeakValueReference(ReferenceQueue<V> paramReferenceQueue, V paramV, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramReferenceQueue);
      this.entry = paramReferenceEntry;
    }

    public LocalCache.ValueReference<K, V> copyFor(ReferenceQueue<V> paramReferenceQueue, V paramV, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      return new WeakValueReference(paramReferenceQueue, paramV, paramReferenceEntry);
    }

    public LocalCache.ReferenceEntry<K, V> getEntry()
    {
      return this.entry;
    }

    public int getWeight()
    {
      return 1;
    }

    public boolean isActive()
    {
      return true;
    }

    public boolean isLoading()
    {
      return false;
    }

    public void notifyNewValue(V paramV)
    {
    }

    public V waitForValue()
    {
      return get();
    }
  }

  static final class WeakWriteEntry<K, V> extends LocalCache.WeakEntry<K, V>
    implements LocalCache.ReferenceEntry<K, V>
  {

    @GuardedBy("Segment.this")
    LocalCache.ReferenceEntry<K, V> nextWrite = LocalCache.nullEntry();

    @GuardedBy("Segment.this")
    LocalCache.ReferenceEntry<K, V> previousWrite = LocalCache.nullEntry();
    volatile long writeTime = 9223372036854775807L;

    WeakWriteEntry(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, @Nullable LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramK, paramInt, paramReferenceEntry);
    }

    public LocalCache.ReferenceEntry<K, V> getNextInWriteQueue()
    {
      return this.nextWrite;
    }

    public LocalCache.ReferenceEntry<K, V> getPreviousInWriteQueue()
    {
      return this.previousWrite;
    }

    public long getWriteTime()
    {
      return this.writeTime;
    }

    public void setNextInWriteQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextWrite = paramReferenceEntry;
    }

    public void setPreviousInWriteQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousWrite = paramReferenceEntry;
    }

    public void setWriteTime(long paramLong)
    {
      this.writeTime = paramLong;
    }
  }

  static final class WeightedSoftValueReference<K, V> extends LocalCache.SoftValueReference<K, V>
  {
    final int weight;

    WeightedSoftValueReference(ReferenceQueue<V> paramReferenceQueue, V paramV, LocalCache.ReferenceEntry<K, V> paramReferenceEntry, int paramInt)
    {
      super(paramV, paramReferenceEntry);
      this.weight = paramInt;
    }

    public LocalCache.ValueReference<K, V> copyFor(ReferenceQueue<V> paramReferenceQueue, V paramV, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      return new WeightedSoftValueReference(paramReferenceQueue, paramV, paramReferenceEntry, this.weight);
    }

    public int getWeight()
    {
      return this.weight;
    }
  }

  static final class WeightedStrongValueReference<K, V> extends LocalCache.StrongValueReference<K, V>
  {
    final int weight;

    WeightedStrongValueReference(V paramV, int paramInt)
    {
      super();
      this.weight = paramInt;
    }

    public int getWeight()
    {
      return this.weight;
    }
  }

  static final class WeightedWeakValueReference<K, V> extends LocalCache.WeakValueReference<K, V>
  {
    final int weight;

    WeightedWeakValueReference(ReferenceQueue<V> paramReferenceQueue, V paramV, LocalCache.ReferenceEntry<K, V> paramReferenceEntry, int paramInt)
    {
      super(paramV, paramReferenceEntry);
      this.weight = paramInt;
    }

    public LocalCache.ValueReference<K, V> copyFor(ReferenceQueue<V> paramReferenceQueue, V paramV, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      return new WeightedWeakValueReference(paramReferenceQueue, paramV, paramReferenceEntry, this.weight);
    }

    public int getWeight()
    {
      return this.weight;
    }
  }

  static final class WriteQueue<K, V> extends AbstractQueue<LocalCache.ReferenceEntry<K, V>>
  {
    final LocalCache.ReferenceEntry<K, V> head = new LocalCache.AbstractReferenceEntry()
    {
      LocalCache.ReferenceEntry<K, V> nextWrite = this;
      LocalCache.ReferenceEntry<K, V> previousWrite = this;

      public LocalCache.ReferenceEntry<K, V> getNextInWriteQueue()
      {
        return this.nextWrite;
      }

      public LocalCache.ReferenceEntry<K, V> getPreviousInWriteQueue()
      {
        return this.previousWrite;
      }

      public long getWriteTime()
      {
        return 9223372036854775807L;
      }

      public void setNextInWriteQueue(LocalCache.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
      {
        this.nextWrite = paramAnonymousReferenceEntry;
      }

      public void setPreviousInWriteQueue(LocalCache.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
      {
        this.previousWrite = paramAnonymousReferenceEntry;
      }

      public void setWriteTime(long paramAnonymousLong)
      {
      }
    };

    public void clear()
    {
      LocalCache.ReferenceEntry localReferenceEntry;
      for (Object localObject = this.head.getNextInWriteQueue(); localObject != this.head; localObject = localReferenceEntry)
      {
        localReferenceEntry = ((LocalCache.ReferenceEntry)localObject).getNextInWriteQueue();
        LocalCache.nullifyWriteOrder((LocalCache.ReferenceEntry)localObject);
      }
      this.head.setNextInWriteQueue(this.head);
      this.head.setPreviousInWriteQueue(this.head);
    }

    public boolean contains(Object paramObject)
    {
      return ((LocalCache.ReferenceEntry)paramObject).getNextInWriteQueue() != LocalCache.NullEntry.INSTANCE;
    }

    public boolean isEmpty()
    {
      return this.head.getNextInWriteQueue() == this.head;
    }

    public Iterator<LocalCache.ReferenceEntry<K, V>> iterator()
    {
      return new AbstractSequentialIterator(peek())
      {
        protected LocalCache.ReferenceEntry<K, V> computeNext(LocalCache.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
        {
          LocalCache.ReferenceEntry localReferenceEntry = paramAnonymousReferenceEntry.getNextInWriteQueue();
          if (localReferenceEntry == LocalCache.WriteQueue.this.head)
            localReferenceEntry = null;
          return localReferenceEntry;
        }
      };
    }

    public boolean offer(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
    {
      LocalCache.connectWriteOrder(paramReferenceEntry.getPreviousInWriteQueue(), paramReferenceEntry.getNextInWriteQueue());
      LocalCache.connectWriteOrder(this.head.getPreviousInWriteQueue(), paramReferenceEntry);
      LocalCache.connectWriteOrder(paramReferenceEntry, this.head);
      return true;
    }

    public LocalCache.ReferenceEntry<K, V> peek()
    {
      LocalCache.ReferenceEntry localReferenceEntry = this.head.getNextInWriteQueue();
      if (localReferenceEntry == this.head)
        localReferenceEntry = null;
      return localReferenceEntry;
    }

    public LocalCache.ReferenceEntry<K, V> poll()
    {
      LocalCache.ReferenceEntry localReferenceEntry = this.head.getNextInWriteQueue();
      if (localReferenceEntry == this.head)
        return null;
      remove(localReferenceEntry);
      return localReferenceEntry;
    }

    public boolean remove(Object paramObject)
    {
      LocalCache.ReferenceEntry localReferenceEntry1 = (LocalCache.ReferenceEntry)paramObject;
      LocalCache.ReferenceEntry localReferenceEntry2 = localReferenceEntry1.getPreviousInWriteQueue();
      LocalCache.ReferenceEntry localReferenceEntry3 = localReferenceEntry1.getNextInWriteQueue();
      LocalCache.connectWriteOrder(localReferenceEntry2, localReferenceEntry3);
      LocalCache.nullifyWriteOrder(localReferenceEntry1);
      return localReferenceEntry3 != LocalCache.NullEntry.INSTANCE;
    }

    public int size()
    {
      int i = 0;
      for (LocalCache.ReferenceEntry localReferenceEntry = this.head.getNextInWriteQueue(); localReferenceEntry != this.head; localReferenceEntry = localReferenceEntry.getNextInWriteQueue())
        i++;
      return i;
    }
  }

  final class WriteThroughEntry
    implements Map.Entry<K, V>
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
      throw new UnsupportedOperationException();
    }

    public String toString()
    {
      return getKey() + "=" + getValue();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.cache.LocalCache
 * JD-Core Version:    0.6.2
 */