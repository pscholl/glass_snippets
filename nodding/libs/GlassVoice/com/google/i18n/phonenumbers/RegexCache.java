package com.google.i18n.phonenumbers;

import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.regex.Pattern;

public class RegexCache
{
  private LRUCache<String, Pattern> cache;

  public RegexCache(int paramInt)
  {
    this.cache = new LRUCache(paramInt);
  }

  boolean containsRegex(String paramString)
  {
    return this.cache.containsKey(paramString);
  }

  public Pattern getPatternForRegex(String paramString)
  {
    Pattern localPattern = (Pattern)this.cache.get(paramString);
    if (localPattern == null)
    {
      localPattern = Pattern.compile(paramString);
      this.cache.put(paramString, localPattern);
    }
    return localPattern;
  }

  private static class LRUCache<K, V>
  {
    private LinkedHashMap<K, V> map;
    private int size;

    public LRUCache(int paramInt)
    {
      this.size = paramInt;
      this.map = new LinkedHashMap(1 + paramInt * 4 / 3, 0.75F, true)
      {
        protected boolean removeEldestEntry(Map.Entry<K, V> paramAnonymousEntry)
        {
          return size() > RegexCache.LRUCache.this.size;
        }
      };
    }

    public boolean containsKey(K paramK)
    {
      try
      {
        boolean bool = this.map.containsKey(paramK);
        return bool;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public V get(K paramK)
    {
      try
      {
        Object localObject2 = this.map.get(paramK);
        return localObject2;
      }
      finally
      {
        localObject1 = finally;
        throw localObject1;
      }
    }

    public void put(K paramK, V paramV)
    {
      try
      {
        this.map.put(paramK, paramV);
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.i18n.phonenumbers.RegexCache
 * JD-Core Version:    0.6.2
 */