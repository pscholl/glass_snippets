package com.google.common.cache;

import com.google.common.annotations.Beta;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.common.util.concurrent.UncheckedExecutionException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;

@Beta
public abstract class AbstractLoadingCache<K, V> extends AbstractCache<K, V>
  implements LoadingCache<K, V>
{
  public final V apply(K paramK)
  {
    return getUnchecked(paramK);
  }

  public ImmutableMap<K, V> getAll(Iterable<? extends K> paramIterable)
    throws ExecutionException
  {
    LinkedHashMap localLinkedHashMap = Maps.newLinkedHashMap();
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if (!localLinkedHashMap.containsKey(localObject))
        localLinkedHashMap.put(localObject, get(localObject));
    }
    return ImmutableMap.copyOf(localLinkedHashMap);
  }

  public V getUnchecked(K paramK)
  {
    try
    {
      Object localObject = get(paramK);
      return localObject;
    }
    catch (ExecutionException localExecutionException)
    {
      throw new UncheckedExecutionException(localExecutionException.getCause());
    }
  }

  public void refresh(K paramK)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.cache.AbstractLoadingCache
 * JD-Core Version:    0.6.2
 */