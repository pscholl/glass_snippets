package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

@GwtCompatible
final class WellBehavedMap<K, V> extends ForwardingMap<K, V>
{
  private final Map<K, V> delegate;
  private Set<Map.Entry<K, V>> entrySet;

  private WellBehavedMap(Map<K, V> paramMap)
  {
    this.delegate = paramMap;
  }

  static <K, V> WellBehavedMap<K, V> wrap(Map<K, V> paramMap)
  {
    return new WellBehavedMap(paramMap);
  }

  protected Map<K, V> delegate()
  {
    return this.delegate;
  }

  public Set<Map.Entry<K, V>> entrySet()
  {
    Set localSet = this.entrySet;
    if (localSet != null)
      return localSet;
    EntrySet localEntrySet = new EntrySet(null);
    this.entrySet = localEntrySet;
    return localEntrySet;
  }

  private final class EntrySet extends Maps.EntrySet<K, V>
  {
    private EntrySet()
    {
    }

    public Iterator<Map.Entry<K, V>> iterator()
    {
      return new TransformedIterator(WellBehavedMap.this.keySet().iterator())
      {
        Map.Entry<K, V> transform(final K paramAnonymousK)
        {
          return new AbstractMapEntry()
          {
            public K getKey()
            {
              return paramAnonymousK;
            }

            public V getValue()
            {
              return WellBehavedMap.this.get(paramAnonymousK);
            }

            public V setValue(V paramAnonymous2V)
            {
              return WellBehavedMap.this.put(paramAnonymousK, paramAnonymous2V);
            }
          };
        }
      };
    }

    Map<K, V> map()
    {
      return WellBehavedMap.this;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.WellBehavedMap
 * JD-Core Version:    0.6.2
 */