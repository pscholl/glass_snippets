package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import java.util.Map.Entry;
import javax.annotation.Nullable;

@GwtCompatible
public abstract class ForwardingMapEntry<K, V> extends ForwardingObject
  implements Map.Entry<K, V>
{
  protected abstract Map.Entry<K, V> delegate();

  public boolean equals(@Nullable Object paramObject)
  {
    return delegate().equals(paramObject);
  }

  public K getKey()
  {
    return delegate().getKey();
  }

  public V getValue()
  {
    return delegate().getValue();
  }

  public int hashCode()
  {
    return delegate().hashCode();
  }

  public V setValue(V paramV)
  {
    return delegate().setValue(paramV);
  }

  protected boolean standardEquals(@Nullable Object paramObject)
  {
    boolean bool1 = paramObject instanceof Map.Entry;
    boolean bool2 = false;
    if (bool1)
    {
      Map.Entry localEntry = (Map.Entry)paramObject;
      boolean bool3 = Objects.equal(getKey(), localEntry.getKey());
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = Objects.equal(getValue(), localEntry.getValue());
        bool2 = false;
        if (bool4)
          bool2 = true;
      }
    }
    return bool2;
  }

  protected int standardHashCode()
  {
    Object localObject1 = getKey();
    Object localObject2 = getValue();
    int i;
    int j;
    if (localObject1 == null)
    {
      i = 0;
      j = 0;
      if (localObject2 != null)
        break label36;
    }
    while (true)
    {
      return j ^ i;
      i = localObject1.hashCode();
      break;
      label36: j = localObject2.hashCode();
    }
  }

  @Beta
  protected String standardToString()
  {
    return getKey() + "=" + getValue();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ForwardingMapEntry
 * JD-Core Version:    0.6.2
 */