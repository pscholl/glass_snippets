package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.io.Serializable;
import java.util.Map.Entry;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
final class ImmutableMapKeySet<K, V> extends ImmutableSet<K>
{
  private final ImmutableMap<K, V> map;

  ImmutableMapKeySet(ImmutableMap<K, V> paramImmutableMap)
  {
    this.map = paramImmutableMap;
  }

  public boolean contains(@Nullable Object paramObject)
  {
    return this.map.containsKey(paramObject);
  }

  ImmutableList<K> createAsList()
  {
    return new ImmutableAsList()
    {
      ImmutableCollection<K> delegateCollection()
      {
        return ImmutableMapKeySet.this;
      }

      public K get(int paramAnonymousInt)
      {
        return ((Map.Entry)this.val$entryList.get(paramAnonymousInt)).getKey();
      }
    };
  }

  boolean isPartialView()
  {
    return true;
  }

  public UnmodifiableIterator<K> iterator()
  {
    return asList().iterator();
  }

  public int size()
  {
    return this.map.size();
  }

  @GwtIncompatible("serialization")
  Object writeReplace()
  {
    return new KeySetSerializedForm(this.map);
  }

  @GwtIncompatible("serialization")
  private static class KeySetSerializedForm<K>
    implements Serializable
  {
    private static final long serialVersionUID;
    final ImmutableMap<K, ?> map;

    KeySetSerializedForm(ImmutableMap<K, ?> paramImmutableMap)
    {
      this.map = paramImmutableMap;
    }

    Object readResolve()
    {
      return this.map.keySet();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableMapKeySet
 * JD-Core Version:    0.6.2
 */