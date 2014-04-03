package com.google.common.cache;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;

@Beta
@GwtCompatible
public abstract class AbstractCache<K, V>
  implements Cache<K, V>
{
  public ConcurrentMap<K, V> asMap()
  {
    throw new UnsupportedOperationException();
  }

  public void cleanUp()
  {
  }

  public V get(K paramK, Callable<? extends V> paramCallable)
    throws ExecutionException
  {
    throw new UnsupportedOperationException();
  }

  public ImmutableMap<K, V> getAllPresent(Iterable<?> paramIterable)
  {
    LinkedHashMap localLinkedHashMap = Maps.newLinkedHashMap();
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if (!localLinkedHashMap.containsKey(localObject))
        localLinkedHashMap.put(localObject, getIfPresent(localObject));
    }
    return ImmutableMap.copyOf(localLinkedHashMap);
  }

  public void invalidate(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }

  public void invalidateAll()
  {
    throw new UnsupportedOperationException();
  }

  public void invalidateAll(Iterable<?> paramIterable)
  {
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
      invalidate(localIterator.next());
  }

  public void put(K paramK, V paramV)
  {
    throw new UnsupportedOperationException();
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

  public long size()
  {
    throw new UnsupportedOperationException();
  }

  public CacheStats stats()
  {
    throw new UnsupportedOperationException();
  }

  @Beta
  public static final class SimpleStatsCounter
    implements AbstractCache.StatsCounter
  {
    private final LongAddable evictionCount = LongAddables.create();
    private final LongAddable hitCount = LongAddables.create();
    private final LongAddable loadExceptionCount = LongAddables.create();
    private final LongAddable loadSuccessCount = LongAddables.create();
    private final LongAddable missCount = LongAddables.create();
    private final LongAddable totalLoadTime = LongAddables.create();

    public void incrementBy(AbstractCache.StatsCounter paramStatsCounter)
    {
      CacheStats localCacheStats = paramStatsCounter.snapshot();
      this.hitCount.add(localCacheStats.hitCount());
      this.missCount.add(localCacheStats.missCount());
      this.loadSuccessCount.add(localCacheStats.loadSuccessCount());
      this.loadExceptionCount.add(localCacheStats.loadExceptionCount());
      this.totalLoadTime.add(localCacheStats.totalLoadTime());
      this.evictionCount.add(localCacheStats.evictionCount());
    }

    public void recordEviction()
    {
      this.evictionCount.increment();
    }

    public void recordHits(int paramInt)
    {
      this.hitCount.add(paramInt);
    }

    public void recordLoadException(long paramLong)
    {
      this.loadExceptionCount.increment();
      this.totalLoadTime.add(paramLong);
    }

    public void recordLoadSuccess(long paramLong)
    {
      this.loadSuccessCount.increment();
      this.totalLoadTime.add(paramLong);
    }

    public void recordMisses(int paramInt)
    {
      this.missCount.add(paramInt);
    }

    public CacheStats snapshot()
    {
      return new CacheStats(this.hitCount.sum(), this.missCount.sum(), this.loadSuccessCount.sum(), this.loadExceptionCount.sum(), this.totalLoadTime.sum(), this.evictionCount.sum());
    }
  }

  @Beta
  public static abstract interface StatsCounter
  {
    public abstract void recordEviction();

    public abstract void recordHits(int paramInt);

    public abstract void recordLoadException(long paramLong);

    public abstract void recordLoadSuccess(long paramLong);

    public abstract void recordMisses(int paramInt);

    public abstract CacheStats snapshot();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.cache.AbstractCache
 * JD-Core Version:    0.6.2
 */