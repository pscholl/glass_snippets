package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.io.Serializable;
import java.util.Map.Entry;

@GwtCompatible(emulated=true)
final class ImmutableMapValues<K, V> extends ImmutableCollection<V>
{
  private final ImmutableMap<K, V> map;

  ImmutableMapValues(ImmutableMap<K, V> paramImmutableMap)
  {
    this.map = paramImmutableMap;
  }

  public boolean contains(Object paramObject)
  {
    return this.map.containsValue(paramObject);
  }

  ImmutableList<V> createAsList()
  {
    return new ImmutableAsList()
    {
      ImmutableCollection<V> delegateCollection()
      {
        return ImmutableMapValues.this;
      }

      public V get(int paramAnonymousInt)
      {
        return ((Map.Entry)this.val$entryList.get(paramAnonymousInt)).getValue();
      }
    };
  }

  boolean isPartialView()
  {
    return true;
  }

  public UnmodifiableIterator<V> iterator()
  {
    return Maps.valueIterator(this.map.entrySet().iterator());
  }

  public int size()
  {
    return this.map.size();
  }

  @GwtIncompatible("serialization")
  Object writeReplace()
  {
    return new SerializedForm(this.map);
  }

  @GwtIncompatible("serialization")
  private static class SerializedForm<V>
    implements Serializable
  {
    private static final long serialVersionUID;
    final ImmutableMap<?, V> map;

    SerializedForm(ImmutableMap<?, V> paramImmutableMap)
    {
      this.map = paramImmutableMap;
    }

    Object readResolve()
    {
      return this.map.values();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableMapValues
 * JD-Core Version:    0.6.2
 */