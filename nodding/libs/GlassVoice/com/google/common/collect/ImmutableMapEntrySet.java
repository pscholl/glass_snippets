package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.io.Serializable;
import java.util.Map.Entry;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
abstract class ImmutableMapEntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>>
{
  public boolean contains(@Nullable Object paramObject)
  {
    boolean bool1 = paramObject instanceof Map.Entry;
    boolean bool2 = false;
    if (bool1)
    {
      Map.Entry localEntry = (Map.Entry)paramObject;
      Object localObject = map().get(localEntry.getKey());
      bool2 = false;
      if (localObject != null)
      {
        boolean bool3 = localObject.equals(localEntry.getValue());
        bool2 = false;
        if (bool3)
          bool2 = true;
      }
    }
    return bool2;
  }

  boolean isPartialView()
  {
    return map().isPartialView();
  }

  abstract ImmutableMap<K, V> map();

  public int size()
  {
    return map().size();
  }

  @GwtIncompatible("serialization")
  Object writeReplace()
  {
    return new EntrySetSerializedForm(map());
  }

  @GwtIncompatible("serialization")
  private static class EntrySetSerializedForm<K, V>
    implements Serializable
  {
    private static final long serialVersionUID;
    final ImmutableMap<K, V> map;

    EntrySetSerializedForm(ImmutableMap<K, V> paramImmutableMap)
    {
      this.map = paramImmutableMap;
    }

    Object readResolve()
    {
      return this.map.entrySet();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableMapEntrySet
 * JD-Core Version:    0.6.2
 */