package com.x.google.masf;

import java.util.Hashtable;
import java.util.Vector;

public class OneTimeCache
{
  private static final int DEFAULT_CACHE_SIZE = 8;
  private final int capacity;
  private final Hashtable table;
  private final Vector urls;

  public OneTimeCache()
  {
    this(8);
  }

  public OneTimeCache(int paramInt)
  {
    this.capacity = paramInt;
    this.table = new Hashtable(paramInt);
    this.urls = new Vector(paramInt);
  }

  private void evictOldest()
  {
    Object localObject = this.urls.elementAt(0);
    this.urls.removeElementAt(0);
    this.table.remove(localObject);
  }

  public Object get(Object paramObject)
  {
    try
    {
      Object localObject2 = this.table.remove(paramObject);
      if (localObject2 != null)
        this.urls.removeElement(paramObject);
      return localObject2;
    }
    finally
    {
    }
  }

  public void put(Object paramObject1, Object paramObject2)
  {
    try
    {
      if (this.table.size() == this.capacity)
        evictOldest();
      if (this.table.put(paramObject1, paramObject2) != null)
        this.urls.removeElement(paramObject1);
      this.urls.addElement(paramObject1);
      return;
    }
    finally
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.OneTimeCache
 * JD-Core Version:    0.6.2
 */