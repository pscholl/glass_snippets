package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;

@GwtCompatible
public final class AtomicLongMap<K>
{
  private transient Map<K, Long> asMap;
  private final ConcurrentHashMap<K, AtomicLong> map;

  private AtomicLongMap(ConcurrentHashMap<K, AtomicLong> paramConcurrentHashMap)
  {
    this.map = ((ConcurrentHashMap)Preconditions.checkNotNull(paramConcurrentHashMap));
  }

  public static <K> AtomicLongMap<K> create()
  {
    return new AtomicLongMap(new ConcurrentHashMap());
  }

  public static <K> AtomicLongMap<K> create(Map<? extends K, ? extends Long> paramMap)
  {
    AtomicLongMap localAtomicLongMap = create();
    localAtomicLongMap.putAll(paramMap);
    return localAtomicLongMap;
  }

  private Map<K, Long> createAsMap()
  {
    return Collections.unmodifiableMap(Maps.transformValues(this.map, new Function()
    {
      public Long apply(AtomicLong paramAnonymousAtomicLong)
      {
        return Long.valueOf(paramAnonymousAtomicLong.get());
      }
    }));
  }

  public long addAndGet(K paramK, long paramLong)
  {
    AtomicLong localAtomicLong = (AtomicLong)this.map.get(paramK);
    if (localAtomicLong == null)
    {
      localAtomicLong = (AtomicLong)this.map.putIfAbsent(paramK, new AtomicLong(paramLong));
      if (localAtomicLong == null)
        return paramLong;
    }
    long l1;
    long l2;
    do
    {
      l1 = localAtomicLong.get();
      if (l1 == 0L)
      {
        if (!this.map.replace(paramK, localAtomicLong, new AtomicLong(paramLong)))
          break;
        return paramLong;
      }
      l2 = l1 + paramLong;
    }
    while (!localAtomicLong.compareAndSet(l1, l2));
    return l2;
  }

  public Map<K, Long> asMap()
  {
    Map localMap = this.asMap;
    if (localMap == null)
    {
      localMap = createAsMap();
      this.asMap = localMap;
    }
    return localMap;
  }

  public void clear()
  {
    this.map.clear();
  }

  public boolean containsKey(Object paramObject)
  {
    return this.map.containsKey(paramObject);
  }

  public long decrementAndGet(K paramK)
  {
    return addAndGet(paramK, -1L);
  }

  public long get(K paramK)
  {
    AtomicLong localAtomicLong = (AtomicLong)this.map.get(paramK);
    if (localAtomicLong == null)
      return 0L;
    return localAtomicLong.get();
  }

  public long getAndAdd(K paramK, long paramLong)
  {
    AtomicLong localAtomicLong = (AtomicLong)this.map.get(paramK);
    if (localAtomicLong == null)
    {
      localAtomicLong = (AtomicLong)this.map.putIfAbsent(paramK, new AtomicLong(paramLong));
      if (localAtomicLong == null)
        return 0L;
    }
    long l;
    do
    {
      l = localAtomicLong.get();
      if (l == 0L)
      {
        if (!this.map.replace(paramK, localAtomicLong, new AtomicLong(paramLong)))
          break;
        return 0L;
      }
    }
    while (!localAtomicLong.compareAndSet(l, l + paramLong));
    return l;
  }

  public long getAndDecrement(K paramK)
  {
    return getAndAdd(paramK, -1L);
  }

  public long getAndIncrement(K paramK)
  {
    return getAndAdd(paramK, 1L);
  }

  public long incrementAndGet(K paramK)
  {
    return addAndGet(paramK, 1L);
  }

  public boolean isEmpty()
  {
    return this.map.isEmpty();
  }

  public long put(K paramK, long paramLong)
  {
    AtomicLong localAtomicLong = (AtomicLong)this.map.get(paramK);
    if (localAtomicLong == null)
    {
      localAtomicLong = (AtomicLong)this.map.putIfAbsent(paramK, new AtomicLong(paramLong));
      if (localAtomicLong == null)
        return 0L;
    }
    long l;
    do
    {
      l = localAtomicLong.get();
      if (l == 0L)
      {
        if (!this.map.replace(paramK, localAtomicLong, new AtomicLong(paramLong)))
          break;
        return 0L;
      }
    }
    while (!localAtomicLong.compareAndSet(l, paramLong));
    return l;
  }

  public void putAll(Map<? extends K, ? extends Long> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      put(localEntry.getKey(), ((Long)localEntry.getValue()).longValue());
    }
  }

  long putIfAbsent(K paramK, long paramLong)
  {
    AtomicLong localAtomicLong;
    do
    {
      localAtomicLong = (AtomicLong)this.map.get(paramK);
      long l;
      if (localAtomicLong == null)
      {
        localAtomicLong = (AtomicLong)this.map.putIfAbsent(paramK, new AtomicLong(paramLong));
        if (localAtomicLong == null)
          l = 0L;
      }
      do
      {
        return l;
        l = localAtomicLong.get();
      }
      while (l != 0L);
    }
    while (!this.map.replace(paramK, localAtomicLong, new AtomicLong(paramLong)));
    return 0L;
  }

  public long remove(K paramK)
  {
    AtomicLong localAtomicLong = (AtomicLong)this.map.get(paramK);
    if (localAtomicLong == null)
      return 0L;
    long l;
    do
      l = localAtomicLong.get();
    while ((l != 0L) && (!localAtomicLong.compareAndSet(l, 0L)));
    this.map.remove(paramK, localAtomicLong);
    return l;
  }

  boolean remove(K paramK, long paramLong)
  {
    AtomicLong localAtomicLong = (AtomicLong)this.map.get(paramK);
    if (localAtomicLong == null);
    long l;
    do
    {
      return false;
      l = localAtomicLong.get();
    }
    while ((l != paramLong) || ((l != 0L) && (!localAtomicLong.compareAndSet(l, 0L))));
    this.map.remove(paramK, localAtomicLong);
    return true;
  }

  public void removeAllZeros()
  {
    Iterator localIterator = this.map.keySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      AtomicLong localAtomicLong = (AtomicLong)this.map.get(localObject);
      if ((localAtomicLong != null) && (localAtomicLong.get() == 0L))
        this.map.remove(localObject, localAtomicLong);
    }
  }

  boolean replace(K paramK, long paramLong1, long paramLong2)
  {
    boolean bool1;
    if (paramLong1 == 0L)
    {
      boolean bool2 = putIfAbsent(paramK, paramLong2) < 0L;
      bool1 = false;
      if (!bool2)
        bool1 = true;
    }
    AtomicLong localAtomicLong;
    do
    {
      return bool1;
      localAtomicLong = (AtomicLong)this.map.get(paramK);
      bool1 = false;
    }
    while (localAtomicLong == null);
    return localAtomicLong.compareAndSet(paramLong1, paramLong2);
  }

  public int size()
  {
    return this.map.size();
  }

  public long sum()
  {
    long l = 0L;
    Iterator localIterator = this.map.values().iterator();
    while (localIterator.hasNext())
      l += ((AtomicLong)localIterator.next()).get();
    return l;
  }

  public String toString()
  {
    return this.map.toString();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.AtomicLongMap
 * JD-Core Version:    0.6.2
 */