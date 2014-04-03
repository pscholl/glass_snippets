package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible
public abstract interface BiMap<K, V> extends Map<K, V>
{
  public abstract V forcePut(@Nullable K paramK, @Nullable V paramV);

  public abstract BiMap<V, K> inverse();

  public abstract V put(@Nullable K paramK, @Nullable V paramV);

  public abstract void putAll(Map<? extends K, ? extends V> paramMap);

  public abstract Set<V> values();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.BiMap
 * JD-Core Version:    0.6.2
 */