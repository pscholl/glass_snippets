package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import javax.annotation.Nullable;

@GwtCompatible
public abstract class ForwardingSortedMap<K, V> extends ForwardingMap<K, V>
  implements SortedMap<K, V>
{
  private int unsafeCompare(Object paramObject1, Object paramObject2)
  {
    Comparator localComparator = comparator();
    if (localComparator == null)
      return ((Comparable)paramObject1).compareTo(paramObject2);
    return localComparator.compare(paramObject1, paramObject2);
  }

  public Comparator<? super K> comparator()
  {
    return delegate().comparator();
  }

  protected abstract SortedMap<K, V> delegate();

  public K firstKey()
  {
    return delegate().firstKey();
  }

  public SortedMap<K, V> headMap(K paramK)
  {
    return delegate().headMap(paramK);
  }

  public K lastKey()
  {
    return delegate().lastKey();
  }

  @Beta
  protected boolean standardContainsKey(@Nullable Object paramObject)
  {
    try
    {
      int i = unsafeCompare(tailMap(paramObject).firstKey(), paramObject);
      boolean bool = false;
      if (i == 0)
        bool = true;
      return bool;
    }
    catch (ClassCastException localClassCastException)
    {
      return false;
    }
    catch (NoSuchElementException localNoSuchElementException)
    {
      return false;
    }
    catch (NullPointerException localNullPointerException)
    {
    }
    return false;
  }

  @Beta
  protected V standardRemove(@Nullable Object paramObject)
  {
    try
    {
      Iterator localIterator = tailMap(paramObject).entrySet().iterator();
      if (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (unsafeCompare(localEntry.getKey(), paramObject) == 0)
        {
          Object localObject = localEntry.getValue();
          localIterator.remove();
          return localObject;
        }
      }
    }
    catch (ClassCastException localClassCastException)
    {
      return null;
    }
    catch (NullPointerException localNullPointerException)
    {
      return null;
    }
    return null;
  }

  @Beta
  protected SortedMap<K, V> standardSubMap(K paramK1, K paramK2)
  {
    return tailMap(paramK1).headMap(paramK2);
  }

  public SortedMap<K, V> subMap(K paramK1, K paramK2)
  {
    return delegate().subMap(paramK1, paramK2);
  }

  public SortedMap<K, V> tailMap(K paramK)
  {
    return delegate().tailMap(paramK);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ForwardingSortedMap
 * JD-Core Version:    0.6.2
 */