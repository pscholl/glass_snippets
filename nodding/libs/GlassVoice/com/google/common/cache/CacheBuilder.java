package com.google.common.cache;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.Equivalence;
import com.google.common.base.Objects;
import com.google.common.base.Objects.ToStringHelper;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.base.Ticker;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckReturnValue;

@GwtCompatible(emulated=true)
public final class CacheBuilder<K, V>
{
  static final Supplier<AbstractCache.StatsCounter> CACHE_STATS_COUNTER = new Supplier()
  {
    public AbstractCache.StatsCounter get()
    {
      return new AbstractCache.SimpleStatsCounter();
    }
  };
  private static final int DEFAULT_CONCURRENCY_LEVEL = 4;
  private static final int DEFAULT_EXPIRATION_NANOS = 0;
  private static final int DEFAULT_INITIAL_CAPACITY = 16;
  private static final int DEFAULT_REFRESH_NANOS = 0;
  static final CacheStats EMPTY_STATS;
  static final Supplier<? extends AbstractCache.StatsCounter> NULL_STATS_COUNTER = Suppliers.ofInstance(new AbstractCache.StatsCounter()
  {
    public void recordEviction()
    {
    }

    public void recordHits(int paramAnonymousInt)
    {
    }

    public void recordLoadException(long paramAnonymousLong)
    {
    }

    public void recordLoadSuccess(long paramAnonymousLong)
    {
    }

    public void recordMisses(int paramAnonymousInt)
    {
    }

    public CacheStats snapshot()
    {
      return CacheBuilder.EMPTY_STATS;
    }
  });
  static final Ticker NULL_TICKER = new Ticker()
  {
    public long read()
    {
      return 0L;
    }
  };
  static final int UNSET_INT = -1;
  private static final Logger logger = Logger.getLogger(CacheBuilder.class.getName());
  int concurrencyLevel = -1;
  long expireAfterAccessNanos = -1L;
  long expireAfterWriteNanos = -1L;
  int initialCapacity = -1;
  Equivalence<Object> keyEquivalence;
  LocalCache.Strength keyStrength;
  long maximumSize = -1L;
  long maximumWeight = -1L;
  long refreshNanos = -1L;
  RemovalListener<? super K, ? super V> removalListener;
  Supplier<? extends AbstractCache.StatsCounter> statsCounterSupplier = NULL_STATS_COUNTER;
  boolean strictParsing = true;
  Ticker ticker;
  Equivalence<Object> valueEquivalence;
  LocalCache.Strength valueStrength;
  Weigher<? super K, ? super V> weigher;

  static
  {
    EMPTY_STATS = new CacheStats(0L, 0L, 0L, 0L, 0L, 0L);
  }

  private void checkNonLoadingCache()
  {
    if (this.refreshNanos == -1L);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkState(bool, "refreshAfterWrite requires a LoadingCache");
      return;
    }
  }

  private void checkWeightWithWeigher()
  {
    boolean bool = true;
    if (this.weigher == null)
      if (this.maximumWeight == -1L)
        Preconditions.checkState(bool, "maximumWeight requires weigher");
    do
    {
      return;
      bool = false;
      break;
      if (this.strictParsing)
      {
        if (this.maximumWeight != -1L);
        while (true)
        {
          Preconditions.checkState(bool, "weigher requires maximumWeight");
          return;
          bool = false;
        }
      }
    }
    while (this.maximumWeight != -1L);
    logger.log(Level.WARNING, "ignoring weigher specified without maximumWeight");
  }

  @Beta
  @GwtIncompatible("To be supported")
  public static CacheBuilder<Object, Object> from(CacheBuilderSpec paramCacheBuilderSpec)
  {
    return paramCacheBuilderSpec.toCacheBuilder().lenientParsing();
  }

  @Beta
  @GwtIncompatible("To be supported")
  public static CacheBuilder<Object, Object> from(String paramString)
  {
    return from(CacheBuilderSpec.parse(paramString));
  }

  public static CacheBuilder<Object, Object> newBuilder()
  {
    return new CacheBuilder();
  }

  public <K1 extends K, V1 extends V> Cache<K1, V1> build()
  {
    checkWeightWithWeigher();
    checkNonLoadingCache();
    return new LocalCache.LocalManualCache(this);
  }

  public <K1 extends K, V1 extends V> LoadingCache<K1, V1> build(CacheLoader<? super K1, V1> paramCacheLoader)
  {
    checkWeightWithWeigher();
    return new LocalCache.LocalLoadingCache(this, paramCacheLoader);
  }

  public CacheBuilder<K, V> concurrencyLevel(int paramInt)
  {
    boolean bool1 = true;
    boolean bool2;
    if (this.concurrencyLevel == -1)
    {
      bool2 = bool1;
      Object[] arrayOfObject = new Object[bool1];
      arrayOfObject[0] = Integer.valueOf(this.concurrencyLevel);
      Preconditions.checkState(bool2, "concurrency level was already set to %s", arrayOfObject);
      if (paramInt <= 0)
        break label57;
    }
    while (true)
    {
      Preconditions.checkArgument(bool1);
      this.concurrencyLevel = paramInt;
      return this;
      bool2 = false;
      break;
      label57: bool1 = false;
    }
  }

  public CacheBuilder<K, V> expireAfterAccess(long paramLong, TimeUnit paramTimeUnit)
  {
    boolean bool1;
    if (this.expireAfterAccessNanos == -1L)
    {
      bool1 = true;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Long.valueOf(this.expireAfterAccessNanos);
      Preconditions.checkState(bool1, "expireAfterAccess was already set to %s ns", arrayOfObject1);
      if (paramLong < 0L)
        break label94;
    }
    label94: for (boolean bool2 = true; ; bool2 = false)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Long.valueOf(paramLong);
      arrayOfObject2[1] = paramTimeUnit;
      Preconditions.checkArgument(bool2, "duration cannot be negative: %s %s", arrayOfObject2);
      this.expireAfterAccessNanos = paramTimeUnit.toNanos(paramLong);
      return this;
      bool1 = false;
      break;
    }
  }

  public CacheBuilder<K, V> expireAfterWrite(long paramLong, TimeUnit paramTimeUnit)
  {
    boolean bool1;
    if (this.expireAfterWriteNanos == -1L)
    {
      bool1 = true;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Long.valueOf(this.expireAfterWriteNanos);
      Preconditions.checkState(bool1, "expireAfterWrite was already set to %s ns", arrayOfObject1);
      if (paramLong < 0L)
        break label94;
    }
    label94: for (boolean bool2 = true; ; bool2 = false)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Long.valueOf(paramLong);
      arrayOfObject2[1] = paramTimeUnit;
      Preconditions.checkArgument(bool2, "duration cannot be negative: %s %s", arrayOfObject2);
      this.expireAfterWriteNanos = paramTimeUnit.toNanos(paramLong);
      return this;
      bool1 = false;
      break;
    }
  }

  int getConcurrencyLevel()
  {
    if (this.concurrencyLevel == -1)
      return 4;
    return this.concurrencyLevel;
  }

  long getExpireAfterAccessNanos()
  {
    if (this.expireAfterAccessNanos == -1L)
      return 0L;
    return this.expireAfterAccessNanos;
  }

  long getExpireAfterWriteNanos()
  {
    if (this.expireAfterWriteNanos == -1L)
      return 0L;
    return this.expireAfterWriteNanos;
  }

  int getInitialCapacity()
  {
    if (this.initialCapacity == -1)
      return 16;
    return this.initialCapacity;
  }

  Equivalence<Object> getKeyEquivalence()
  {
    return (Equivalence)Objects.firstNonNull(this.keyEquivalence, getKeyStrength().defaultEquivalence());
  }

  LocalCache.Strength getKeyStrength()
  {
    return (LocalCache.Strength)Objects.firstNonNull(this.keyStrength, LocalCache.Strength.STRONG);
  }

  long getMaximumWeight()
  {
    if ((this.expireAfterWriteNanos == 0L) || (this.expireAfterAccessNanos == 0L))
      return 0L;
    if (this.weigher == null)
      return this.maximumSize;
    return this.maximumWeight;
  }

  long getRefreshNanos()
  {
    if (this.refreshNanos == -1L)
      return 0L;
    return this.refreshNanos;
  }

  <K1 extends K, V1 extends V> RemovalListener<K1, V1> getRemovalListener()
  {
    return (RemovalListener)Objects.firstNonNull(this.removalListener, NullListener.INSTANCE);
  }

  Supplier<? extends AbstractCache.StatsCounter> getStatsCounterSupplier()
  {
    return this.statsCounterSupplier;
  }

  Ticker getTicker(boolean paramBoolean)
  {
    if (this.ticker != null)
      return this.ticker;
    if (paramBoolean)
      return Ticker.systemTicker();
    return NULL_TICKER;
  }

  Equivalence<Object> getValueEquivalence()
  {
    return (Equivalence)Objects.firstNonNull(this.valueEquivalence, getValueStrength().defaultEquivalence());
  }

  LocalCache.Strength getValueStrength()
  {
    return (LocalCache.Strength)Objects.firstNonNull(this.valueStrength, LocalCache.Strength.STRONG);
  }

  <K1 extends K, V1 extends V> Weigher<K1, V1> getWeigher()
  {
    return (Weigher)Objects.firstNonNull(this.weigher, OneWeigher.INSTANCE);
  }

  public CacheBuilder<K, V> initialCapacity(int paramInt)
  {
    boolean bool1 = true;
    boolean bool2;
    if (this.initialCapacity == -1)
    {
      bool2 = bool1;
      Object[] arrayOfObject = new Object[bool1];
      arrayOfObject[0] = Integer.valueOf(this.initialCapacity);
      Preconditions.checkState(bool2, "initial capacity was already set to %s", arrayOfObject);
      if (paramInt < 0)
        break label58;
    }
    while (true)
    {
      Preconditions.checkArgument(bool1);
      this.initialCapacity = paramInt;
      return this;
      bool2 = false;
      break;
      label58: bool1 = false;
    }
  }

  @GwtIncompatible("To be supported")
  CacheBuilder<K, V> keyEquivalence(Equivalence<Object> paramEquivalence)
  {
    if (this.keyEquivalence == null);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.keyEquivalence;
      Preconditions.checkState(bool, "key equivalence was already set to %s", arrayOfObject);
      this.keyEquivalence = ((Equivalence)Preconditions.checkNotNull(paramEquivalence));
      return this;
    }
  }

  @GwtIncompatible("To be supported")
  CacheBuilder<K, V> lenientParsing()
  {
    this.strictParsing = false;
    return this;
  }

  public CacheBuilder<K, V> maximumSize(long paramLong)
  {
    boolean bool1 = true;
    boolean bool2;
    boolean bool3;
    label57: boolean bool4;
    if (this.maximumSize == -1L)
    {
      bool2 = bool1;
      Object[] arrayOfObject1 = new Object[bool1];
      arrayOfObject1[0] = Long.valueOf(this.maximumSize);
      Preconditions.checkState(bool2, "maximum size was already set to %s", arrayOfObject1);
      if (this.maximumWeight != -1L)
        break label128;
      bool3 = bool1;
      Object[] arrayOfObject2 = new Object[bool1];
      arrayOfObject2[0] = Long.valueOf(this.maximumWeight);
      Preconditions.checkState(bool3, "maximum weight was already set to %s", arrayOfObject2);
      if (this.weigher != null)
        break label134;
      bool4 = bool1;
      label94: Preconditions.checkState(bool4, "maximum size can not be combined with weigher");
      if (paramLong < 0L)
        break label140;
    }
    while (true)
    {
      Preconditions.checkArgument(bool1, "maximum size must not be negative");
      this.maximumSize = paramLong;
      return this;
      bool2 = false;
      break;
      label128: bool3 = false;
      break label57;
      label134: bool4 = false;
      break label94;
      label140: bool1 = false;
    }
  }

  @GwtIncompatible("To be supported")
  public CacheBuilder<K, V> maximumWeight(long paramLong)
  {
    boolean bool1 = true;
    boolean bool2;
    boolean bool3;
    if (this.maximumWeight == -1L)
    {
      bool2 = bool1;
      Object[] arrayOfObject1 = new Object[bool1];
      arrayOfObject1[0] = Long.valueOf(this.maximumWeight);
      Preconditions.checkState(bool2, "maximum weight was already set to %s", arrayOfObject1);
      if (this.maximumSize != -1L)
        break label110;
      bool3 = bool1;
      label57: Object[] arrayOfObject2 = new Object[bool1];
      arrayOfObject2[0] = Long.valueOf(this.maximumSize);
      Preconditions.checkState(bool3, "maximum size was already set to %s", arrayOfObject2);
      this.maximumWeight = paramLong;
      if (paramLong < 0L)
        break label116;
    }
    while (true)
    {
      Preconditions.checkArgument(bool1, "maximum weight must not be negative");
      return this;
      bool2 = false;
      break;
      label110: bool3 = false;
      break label57;
      label116: bool1 = false;
    }
  }

  public CacheBuilder<K, V> recordStats()
  {
    this.statsCounterSupplier = CACHE_STATS_COUNTER;
    return this;
  }

  @Beta
  @GwtIncompatible("To be supported (synchronously).")
  public CacheBuilder<K, V> refreshAfterWrite(long paramLong, TimeUnit paramTimeUnit)
  {
    Preconditions.checkNotNull(paramTimeUnit);
    boolean bool1;
    if (this.refreshNanos == -1L)
    {
      bool1 = true;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Long.valueOf(this.refreshNanos);
      Preconditions.checkState(bool1, "refresh was already set to %s ns", arrayOfObject1);
      if (paramLong <= 0L)
        break label101;
    }
    label101: for (boolean bool2 = true; ; bool2 = false)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Long.valueOf(paramLong);
      arrayOfObject2[1] = paramTimeUnit;
      Preconditions.checkArgument(bool2, "duration must be positive: %s %s", arrayOfObject2);
      this.refreshNanos = paramTimeUnit.toNanos(paramLong);
      return this;
      bool1 = false;
      break;
    }
  }

  @CheckReturnValue
  public <K1 extends K, V1 extends V> CacheBuilder<K1, V1> removalListener(RemovalListener<? super K1, ? super V1> paramRemovalListener)
  {
    if (this.removalListener == null);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkState(bool);
      this.removalListener = ((RemovalListener)Preconditions.checkNotNull(paramRemovalListener));
      return this;
    }
  }

  CacheBuilder<K, V> setKeyStrength(LocalCache.Strength paramStrength)
  {
    if (this.keyStrength == null);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.keyStrength;
      Preconditions.checkState(bool, "Key strength was already set to %s", arrayOfObject);
      this.keyStrength = ((LocalCache.Strength)Preconditions.checkNotNull(paramStrength));
      return this;
    }
  }

  CacheBuilder<K, V> setValueStrength(LocalCache.Strength paramStrength)
  {
    if (this.valueStrength == null);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.valueStrength;
      Preconditions.checkState(bool, "Value strength was already set to %s", arrayOfObject);
      this.valueStrength = ((LocalCache.Strength)Preconditions.checkNotNull(paramStrength));
      return this;
    }
  }

  @GwtIncompatible("java.lang.ref.SoftReference")
  public CacheBuilder<K, V> softValues()
  {
    return setValueStrength(LocalCache.Strength.SOFT);
  }

  public CacheBuilder<K, V> ticker(Ticker paramTicker)
  {
    if (this.ticker == null);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkState(bool);
      this.ticker = ((Ticker)Preconditions.checkNotNull(paramTicker));
      return this;
    }
  }

  public String toString()
  {
    Objects.ToStringHelper localToStringHelper = Objects.toStringHelper(this);
    if (this.initialCapacity != -1)
      localToStringHelper.add("initialCapacity", this.initialCapacity);
    if (this.concurrencyLevel != -1)
      localToStringHelper.add("concurrencyLevel", this.concurrencyLevel);
    if (this.maximumSize != -1L)
      localToStringHelper.add("maximumSize", this.maximumSize);
    if (this.maximumWeight != -1L)
      localToStringHelper.add("maximumWeight", this.maximumWeight);
    if (this.expireAfterWriteNanos != -1L)
      localToStringHelper.add("expireAfterWrite", this.expireAfterWriteNanos + "ns");
    if (this.expireAfterAccessNanos != -1L)
      localToStringHelper.add("expireAfterAccess", this.expireAfterAccessNanos + "ns");
    if (this.keyStrength != null)
      localToStringHelper.add("keyStrength", Ascii.toLowerCase(this.keyStrength.toString()));
    if (this.valueStrength != null)
      localToStringHelper.add("valueStrength", Ascii.toLowerCase(this.valueStrength.toString()));
    if (this.keyEquivalence != null)
      localToStringHelper.addValue("keyEquivalence");
    if (this.valueEquivalence != null)
      localToStringHelper.addValue("valueEquivalence");
    if (this.removalListener != null)
      localToStringHelper.addValue("removalListener");
    return localToStringHelper.toString();
  }

  @GwtIncompatible("To be supported")
  CacheBuilder<K, V> valueEquivalence(Equivalence<Object> paramEquivalence)
  {
    if (this.valueEquivalence == null);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.valueEquivalence;
      Preconditions.checkState(bool, "value equivalence was already set to %s", arrayOfObject);
      this.valueEquivalence = ((Equivalence)Preconditions.checkNotNull(paramEquivalence));
      return this;
    }
  }

  @GwtIncompatible("java.lang.ref.WeakReference")
  public CacheBuilder<K, V> weakKeys()
  {
    return setKeyStrength(LocalCache.Strength.WEAK);
  }

  @GwtIncompatible("java.lang.ref.WeakReference")
  public CacheBuilder<K, V> weakValues()
  {
    return setValueStrength(LocalCache.Strength.WEAK);
  }

  @GwtIncompatible("To be supported")
  public <K1 extends K, V1 extends V> CacheBuilder<K1, V1> weigher(Weigher<? super K1, ? super V1> paramWeigher)
  {
    boolean bool1;
    if (this.weigher == null)
    {
      bool1 = true;
      Preconditions.checkState(bool1);
      if (this.strictParsing)
        if (this.maximumSize != -1L)
          break label77;
    }
    label77: for (boolean bool2 = true; ; bool2 = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(this.maximumSize);
      Preconditions.checkState(bool2, "weigher can not be combined with maximum size", arrayOfObject);
      this.weigher = ((Weigher)Preconditions.checkNotNull(paramWeigher));
      return this;
      bool1 = false;
      break;
    }
  }

  static enum NullListener
    implements RemovalListener<Object, Object>
  {
    static
    {
      NullListener[] arrayOfNullListener = new NullListener[1];
      arrayOfNullListener[0] = INSTANCE;
    }

    public void onRemoval(RemovalNotification<Object, Object> paramRemovalNotification)
    {
    }
  }

  static enum OneWeigher
    implements Weigher<Object, Object>
  {
    static
    {
      OneWeigher[] arrayOfOneWeigher = new OneWeigher[1];
      arrayOfOneWeigher[0] = INSTANCE;
    }

    public int weigh(Object paramObject1, Object paramObject2)
    {
      return 1;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.cache.CacheBuilder
 * JD-Core Version:    0.6.2
 */