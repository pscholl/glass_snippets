package com.google.common.cache;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Objects;
import com.google.common.base.Objects.ToStringHelper;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMap.Builder;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

@Beta
public final class CacheBuilderSpec
{
  private static final Splitter KEYS_SPLITTER = Splitter.on(',').trimResults();
  private static final Splitter KEY_VALUE_SPLITTER = Splitter.on('=').trimResults();
  private static final ImmutableMap<String, ValueParser> VALUE_PARSERS = ImmutableMap.builder().put("initialCapacity", new InitialCapacityParser()).put("maximumSize", new MaximumSizeParser()).put("maximumWeight", new MaximumWeightParser()).put("concurrencyLevel", new ConcurrencyLevelParser()).put("weakKeys", new KeyStrengthParser(LocalCache.Strength.WEAK)).put("softValues", new ValueStrengthParser(LocalCache.Strength.SOFT)).put("weakValues", new ValueStrengthParser(LocalCache.Strength.WEAK)).put("expireAfterAccess", new AccessDurationParser()).put("expireAfterWrite", new WriteDurationParser()).put("refreshAfterWrite", new RefreshDurationParser()).put("refreshInterval", new RefreshDurationParser()).build();

  @VisibleForTesting
  long accessExpirationDuration;

  @VisibleForTesting
  TimeUnit accessExpirationTimeUnit;

  @VisibleForTesting
  Integer concurrencyLevel;

  @VisibleForTesting
  Integer initialCapacity;

  @VisibleForTesting
  LocalCache.Strength keyStrength;

  @VisibleForTesting
  Long maximumSize;

  @VisibleForTesting
  Long maximumWeight;

  @VisibleForTesting
  long refreshDuration;

  @VisibleForTesting
  TimeUnit refreshTimeUnit;
  private final String specification;

  @VisibleForTesting
  LocalCache.Strength valueStrength;

  @VisibleForTesting
  long writeExpirationDuration;

  @VisibleForTesting
  TimeUnit writeExpirationTimeUnit;

  private CacheBuilderSpec(String paramString)
  {
    this.specification = paramString;
  }

  public static CacheBuilderSpec disableCaching()
  {
    return parse("maximumSize=0");
  }

  @Nullable
  private static Long durationInNanos(long paramLong, @Nullable TimeUnit paramTimeUnit)
  {
    if (paramTimeUnit == null)
      return null;
    return Long.valueOf(paramTimeUnit.toNanos(paramLong));
  }

  public static CacheBuilderSpec parse(String paramString)
  {
    CacheBuilderSpec localCacheBuilderSpec = new CacheBuilderSpec(paramString);
    if (paramString.length() != 0)
    {
      Iterator localIterator = KEYS_SPLITTER.split(paramString).iterator();
      if (localIterator.hasNext())
      {
        String str1 = (String)localIterator.next();
        ImmutableList localImmutableList = ImmutableList.copyOf(KEY_VALUE_SPLITTER.split(str1));
        boolean bool1;
        label73: boolean bool2;
        label94: String str2;
        ValueParser localValueParser;
        boolean bool3;
        if (!localImmutableList.isEmpty())
        {
          bool1 = true;
          Preconditions.checkArgument(bool1, "blank key-value pair");
          if (localImmutableList.size() > 2)
            break label194;
          bool2 = true;
          Preconditions.checkArgument(bool2, "key-value pair %s with more than one equals sign", new Object[] { str1 });
          str2 = (String)localImmutableList.get(0);
          localValueParser = (ValueParser)VALUE_PARSERS.get(str2);
          if (localValueParser == null)
            break label200;
          bool3 = true;
          label143: Preconditions.checkArgument(bool3, "unknown key %s", new Object[] { str2 });
          if (localImmutableList.size() != 1)
            break label206;
        }
        label194: label200: label206: for (String str3 = null; ; str3 = (String)localImmutableList.get(1))
        {
          localValueParser.parse(localCacheBuilderSpec, str2, str3);
          break;
          bool1 = false;
          break label73;
          bool2 = false;
          break label94;
          bool3 = false;
          break label143;
        }
      }
    }
    return localCacheBuilderSpec;
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (this == paramObject);
    CacheBuilderSpec localCacheBuilderSpec;
    do
    {
      return true;
      if (!(paramObject instanceof CacheBuilderSpec))
        return false;
      localCacheBuilderSpec = (CacheBuilderSpec)paramObject;
    }
    while ((Objects.equal(this.initialCapacity, localCacheBuilderSpec.initialCapacity)) && (Objects.equal(this.maximumSize, localCacheBuilderSpec.maximumSize)) && (Objects.equal(this.maximumWeight, localCacheBuilderSpec.maximumWeight)) && (Objects.equal(this.concurrencyLevel, localCacheBuilderSpec.concurrencyLevel)) && (Objects.equal(this.keyStrength, localCacheBuilderSpec.keyStrength)) && (Objects.equal(this.valueStrength, localCacheBuilderSpec.valueStrength)) && (Objects.equal(durationInNanos(this.writeExpirationDuration, this.writeExpirationTimeUnit), durationInNanos(localCacheBuilderSpec.writeExpirationDuration, localCacheBuilderSpec.writeExpirationTimeUnit))) && (Objects.equal(durationInNanos(this.accessExpirationDuration, this.accessExpirationTimeUnit), durationInNanos(localCacheBuilderSpec.accessExpirationDuration, localCacheBuilderSpec.accessExpirationTimeUnit))) && (Objects.equal(durationInNanos(this.refreshDuration, this.refreshTimeUnit), durationInNanos(localCacheBuilderSpec.refreshDuration, localCacheBuilderSpec.refreshTimeUnit))));
    return false;
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[9];
    arrayOfObject[0] = this.initialCapacity;
    arrayOfObject[1] = this.maximumSize;
    arrayOfObject[2] = this.maximumWeight;
    arrayOfObject[3] = this.concurrencyLevel;
    arrayOfObject[4] = this.keyStrength;
    arrayOfObject[5] = this.valueStrength;
    arrayOfObject[6] = durationInNanos(this.writeExpirationDuration, this.writeExpirationTimeUnit);
    arrayOfObject[7] = durationInNanos(this.accessExpirationDuration, this.accessExpirationTimeUnit);
    arrayOfObject[8] = durationInNanos(this.refreshDuration, this.refreshTimeUnit);
    return Objects.hashCode(arrayOfObject);
  }

  CacheBuilder<Object, Object> toCacheBuilder()
  {
    CacheBuilder localCacheBuilder = CacheBuilder.newBuilder();
    if (this.initialCapacity != null)
      localCacheBuilder.initialCapacity(this.initialCapacity.intValue());
    if (this.maximumSize != null)
      localCacheBuilder.maximumSize(this.maximumSize.longValue());
    if (this.maximumWeight != null)
      localCacheBuilder.maximumWeight(this.maximumWeight.longValue());
    if (this.concurrencyLevel != null)
      localCacheBuilder.concurrencyLevel(this.concurrencyLevel.intValue());
    if (this.keyStrength != null)
    {
      switch (1.$SwitchMap$com$google$common$cache$LocalCache$Strength[this.keyStrength.ordinal()])
      {
      default:
        throw new AssertionError();
      case 1:
      }
      localCacheBuilder.weakKeys();
    }
    if (this.valueStrength != null)
      switch (1.$SwitchMap$com$google$common$cache$LocalCache$Strength[this.valueStrength.ordinal()])
      {
      default:
        throw new AssertionError();
      case 2:
        localCacheBuilder.softValues();
      case 1:
      }
    while (true)
    {
      if (this.writeExpirationTimeUnit != null)
        localCacheBuilder.expireAfterWrite(this.writeExpirationDuration, this.writeExpirationTimeUnit);
      if (this.accessExpirationTimeUnit != null)
        localCacheBuilder.expireAfterAccess(this.accessExpirationDuration, this.accessExpirationTimeUnit);
      if (this.refreshTimeUnit != null)
        localCacheBuilder.refreshAfterWrite(this.refreshDuration, this.refreshTimeUnit);
      return localCacheBuilder;
      localCacheBuilder.weakValues();
    }
  }

  public String toParsableString()
  {
    return this.specification;
  }

  public String toString()
  {
    return Objects.toStringHelper(this).addValue(toParsableString()).toString();
  }

  static class AccessDurationParser extends CacheBuilderSpec.DurationParser
  {
    protected void parseDuration(CacheBuilderSpec paramCacheBuilderSpec, long paramLong, TimeUnit paramTimeUnit)
    {
      if (paramCacheBuilderSpec.accessExpirationTimeUnit == null);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool, "expireAfterAccess already set");
        paramCacheBuilderSpec.accessExpirationDuration = paramLong;
        paramCacheBuilderSpec.accessExpirationTimeUnit = paramTimeUnit;
        return;
      }
    }
  }

  static class ConcurrencyLevelParser extends CacheBuilderSpec.IntegerParser
  {
    protected void parseInteger(CacheBuilderSpec paramCacheBuilderSpec, int paramInt)
    {
      if (paramCacheBuilderSpec.concurrencyLevel == null);
      for (boolean bool = true; ; bool = false)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = paramCacheBuilderSpec.concurrencyLevel;
        Preconditions.checkArgument(bool, "concurrency level was already set to ", arrayOfObject);
        paramCacheBuilderSpec.concurrencyLevel = Integer.valueOf(paramInt);
        return;
      }
    }
  }

  static abstract class DurationParser
    implements CacheBuilderSpec.ValueParser
  {
    public void parse(CacheBuilderSpec paramCacheBuilderSpec, String paramString1, String paramString2)
    {
      if ((paramString2 != null) && (paramString2.length() != 0));
      long l;
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool, "value of key %s omitted", new Object[] { paramString1 });
        try
        {
          int i = paramString2.charAt(-1 + paramString2.length());
          l = 1L;
          switch (i)
          {
          default:
            throw new IllegalArgumentException(String.format("key %s invalid format.  was %s, must end with one of [dDhHmMsS]", new Object[] { paramString1, paramString2 }));
          case 100:
          case 104:
          case 109:
          case 115:
          }
        }
        catch (NumberFormatException localNumberFormatException)
        {
          throw new IllegalArgumentException(String.format("key %s value set to %s, must be integer", new Object[] { paramString1, paramString2 }));
        }
      }
      l *= 24L;
      l *= 60L;
      l *= 60L;
      TimeUnit localTimeUnit = TimeUnit.SECONDS;
      parseDuration(paramCacheBuilderSpec, l * Long.parseLong(paramString2.substring(0, -1 + paramString2.length())), localTimeUnit);
    }

    protected abstract void parseDuration(CacheBuilderSpec paramCacheBuilderSpec, long paramLong, TimeUnit paramTimeUnit);
  }

  static class InitialCapacityParser extends CacheBuilderSpec.IntegerParser
  {
    protected void parseInteger(CacheBuilderSpec paramCacheBuilderSpec, int paramInt)
    {
      if (paramCacheBuilderSpec.initialCapacity == null);
      for (boolean bool = true; ; bool = false)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = paramCacheBuilderSpec.initialCapacity;
        Preconditions.checkArgument(bool, "initial capacity was already set to ", arrayOfObject);
        paramCacheBuilderSpec.initialCapacity = Integer.valueOf(paramInt);
        return;
      }
    }
  }

  static abstract class IntegerParser
    implements CacheBuilderSpec.ValueParser
  {
    public void parse(CacheBuilderSpec paramCacheBuilderSpec, String paramString1, String paramString2)
    {
      boolean bool;
      if ((paramString2 != null) && (paramString2.length() != 0))
        bool = true;
      while (true)
      {
        Preconditions.checkArgument(bool, "value of key %s omitted", new Object[] { paramString1 });
        try
        {
          parseInteger(paramCacheBuilderSpec, Integer.parseInt(paramString2));
          return;
          bool = false;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          throw new IllegalArgumentException(String.format("key %s value set to %s, must be integer", new Object[] { paramString1, paramString2 }), localNumberFormatException);
        }
      }
    }

    protected abstract void parseInteger(CacheBuilderSpec paramCacheBuilderSpec, int paramInt);
  }

  static class KeyStrengthParser
    implements CacheBuilderSpec.ValueParser
  {
    private final LocalCache.Strength strength;

    public KeyStrengthParser(LocalCache.Strength paramStrength)
    {
      this.strength = paramStrength;
    }

    public void parse(CacheBuilderSpec paramCacheBuilderSpec, String paramString1, @Nullable String paramString2)
    {
      boolean bool1;
      if (paramString2 == null)
      {
        bool1 = true;
        Preconditions.checkArgument(bool1, "key %s does not take values", new Object[] { paramString1 });
        if (paramCacheBuilderSpec.keyStrength != null)
          break label75;
      }
      label75: for (boolean bool2 = true; ; bool2 = false)
      {
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = paramString1;
        arrayOfObject[1] = paramCacheBuilderSpec.keyStrength;
        Preconditions.checkArgument(bool2, "%s was already set to %s", arrayOfObject);
        paramCacheBuilderSpec.keyStrength = this.strength;
        return;
        bool1 = false;
        break;
      }
    }
  }

  static abstract class LongParser
    implements CacheBuilderSpec.ValueParser
  {
    public void parse(CacheBuilderSpec paramCacheBuilderSpec, String paramString1, String paramString2)
    {
      boolean bool;
      if ((paramString2 != null) && (paramString2.length() != 0))
        bool = true;
      while (true)
      {
        Preconditions.checkArgument(bool, "value of key %s omitted", new Object[] { paramString1 });
        try
        {
          parseLong(paramCacheBuilderSpec, Long.parseLong(paramString2));
          return;
          bool = false;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          throw new IllegalArgumentException(String.format("key %s value set to %s, must be integer", new Object[] { paramString1, paramString2 }), localNumberFormatException);
        }
      }
    }

    protected abstract void parseLong(CacheBuilderSpec paramCacheBuilderSpec, long paramLong);
  }

  static class MaximumSizeParser extends CacheBuilderSpec.LongParser
  {
    protected void parseLong(CacheBuilderSpec paramCacheBuilderSpec, long paramLong)
    {
      boolean bool1;
      if (paramCacheBuilderSpec.maximumSize == null)
      {
        bool1 = true;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = paramCacheBuilderSpec.maximumSize;
        Preconditions.checkArgument(bool1, "maximum size was already set to ", arrayOfObject1);
        if (paramCacheBuilderSpec.maximumWeight != null)
          break label81;
      }
      label81: for (boolean bool2 = true; ; bool2 = false)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = paramCacheBuilderSpec.maximumWeight;
        Preconditions.checkArgument(bool2, "maximum weight was already set to ", arrayOfObject2);
        paramCacheBuilderSpec.maximumSize = Long.valueOf(paramLong);
        return;
        bool1 = false;
        break;
      }
    }
  }

  static class MaximumWeightParser extends CacheBuilderSpec.LongParser
  {
    protected void parseLong(CacheBuilderSpec paramCacheBuilderSpec, long paramLong)
    {
      boolean bool1;
      if (paramCacheBuilderSpec.maximumWeight == null)
      {
        bool1 = true;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = paramCacheBuilderSpec.maximumWeight;
        Preconditions.checkArgument(bool1, "maximum weight was already set to ", arrayOfObject1);
        if (paramCacheBuilderSpec.maximumSize != null)
          break label81;
      }
      label81: for (boolean bool2 = true; ; bool2 = false)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = paramCacheBuilderSpec.maximumSize;
        Preconditions.checkArgument(bool2, "maximum size was already set to ", arrayOfObject2);
        paramCacheBuilderSpec.maximumWeight = Long.valueOf(paramLong);
        return;
        bool1 = false;
        break;
      }
    }
  }

  static class RefreshDurationParser extends CacheBuilderSpec.DurationParser
  {
    protected void parseDuration(CacheBuilderSpec paramCacheBuilderSpec, long paramLong, TimeUnit paramTimeUnit)
    {
      if (paramCacheBuilderSpec.refreshTimeUnit == null);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool, "refreshAfterWrite already set");
        paramCacheBuilderSpec.refreshDuration = paramLong;
        paramCacheBuilderSpec.refreshTimeUnit = paramTimeUnit;
        return;
      }
    }
  }

  private static abstract interface ValueParser
  {
    public abstract void parse(CacheBuilderSpec paramCacheBuilderSpec, String paramString1, @Nullable String paramString2);
  }

  static class ValueStrengthParser
    implements CacheBuilderSpec.ValueParser
  {
    private final LocalCache.Strength strength;

    public ValueStrengthParser(LocalCache.Strength paramStrength)
    {
      this.strength = paramStrength;
    }

    public void parse(CacheBuilderSpec paramCacheBuilderSpec, String paramString1, @Nullable String paramString2)
    {
      boolean bool1;
      if (paramString2 == null)
      {
        bool1 = true;
        Preconditions.checkArgument(bool1, "key %s does not take values", new Object[] { paramString1 });
        if (paramCacheBuilderSpec.valueStrength != null)
          break label75;
      }
      label75: for (boolean bool2 = true; ; bool2 = false)
      {
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = paramString1;
        arrayOfObject[1] = paramCacheBuilderSpec.valueStrength;
        Preconditions.checkArgument(bool2, "%s was already set to %s", arrayOfObject);
        paramCacheBuilderSpec.valueStrength = this.strength;
        return;
        bool1 = false;
        break;
      }
    }
  }

  static class WriteDurationParser extends CacheBuilderSpec.DurationParser
  {
    protected void parseDuration(CacheBuilderSpec paramCacheBuilderSpec, long paramLong, TimeUnit paramTimeUnit)
    {
      if (paramCacheBuilderSpec.writeExpirationTimeUnit == null);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool, "expireAfterWrite already set");
        paramCacheBuilderSpec.writeExpirationDuration = paramLong;
        paramCacheBuilderSpec.writeExpirationTimeUnit = paramTimeUnit;
        return;
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.cache.CacheBuilderSpec
 * JD-Core Version:    0.6.2
 */