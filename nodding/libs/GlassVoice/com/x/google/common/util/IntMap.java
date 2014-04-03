package com.x.google.common.util;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.NoSuchElementException;

public class IntMap
{
  private static final int INITIAL_LOWER_BUFFER_SIZE = 16;
  private static final int MAX_LOWER_BUFFER_SIZE = 128;
  private Hashtable higher;
  private Object[] lower;
  private int lowerCount;
  private int maxKey;
  private int maxLowerKey;

  public IntMap()
  {
    this(16);
  }

  IntMap(int paramInt)
  {
    int i = 16;
    if (paramInt > 0)
      i = Math.min(paramInt, 128);
    this.lower = new Object[i];
    this.lowerCount = 0;
    this.maxKey = -2147483648;
    this.maxLowerKey = -2147483648;
  }

  private static boolean compareHashtable(Hashtable paramHashtable1, Hashtable paramHashtable2)
  {
    if (paramHashtable1 == paramHashtable2);
    Object localObject;
    do
    {
      Enumeration localEnumeration;
      while (!localEnumeration.hasMoreElements())
      {
        return true;
        if ((paramHashtable1 == null) || (paramHashtable2 == null))
          return false;
        if (paramHashtable1.size() != paramHashtable2.size())
          return false;
        localEnumeration = paramHashtable1.keys();
      }
      localObject = localEnumeration.nextElement();
    }
    while (paramHashtable1.get(localObject).equals(paramHashtable2.get(localObject)));
    return false;
  }

  private boolean compareLowerBuffer(Object[] paramArrayOfObject1, Object[] paramArrayOfObject2)
  {
    int i = Math.min(paramArrayOfObject1.length, paramArrayOfObject2.length);
    for (int j = 0; j < i; j++)
      if (((paramArrayOfObject1[j] == null) && (paramArrayOfObject2[j] != null)) || ((paramArrayOfObject1[j] != null) && (!paramArrayOfObject1[j].equals(paramArrayOfObject2[j]))))
        return false;
    if (paramArrayOfObject1.length > paramArrayOfObject2.length)
      while (i < paramArrayOfObject1.length)
      {
        if (paramArrayOfObject1[i] != null)
          return false;
        i++;
      }
    if (paramArrayOfObject1.length < paramArrayOfObject2.length)
      while (i < paramArrayOfObject2.length)
      {
        if (paramArrayOfObject2[i] != null)
          return false;
        i++;
      }
    return true;
  }

  private boolean expandLowerIfNecessary(int paramInt)
  {
    boolean bool = false;
    if (paramInt < 128)
    {
      int i = this.lower.length;
      bool = false;
      if (paramInt >= i)
      {
        bool = false;
        if (paramInt > 0)
        {
          int j = this.lower.length;
          do
            j <<= 1;
          while (j <= paramInt);
          Object[] arrayOfObject = new Object[Math.min(j, 128)];
          System.arraycopy(this.lower, 0, arrayOfObject, 0, this.lower.length);
          this.lower = arrayOfObject;
          bool = true;
        }
      }
    }
    return bool;
  }

  public void clear()
  {
    for (int i = 0; i < this.lower.length; i++)
      this.lower[i] = null;
    if (this.higher != null)
      this.higher.clear();
    this.maxKey = -2147483648;
    this.maxLowerKey = -2147483648;
    this.lowerCount = 0;
  }

  public boolean containsKey(int paramInt)
  {
    boolean bool;
    if ((paramInt >= 0) && (paramInt < this.lower.length))
    {
      Object localObject = this.lower[paramInt];
      bool = false;
      if (localObject != null)
        bool = true;
    }
    Hashtable localHashtable;
    do
    {
      return bool;
      localHashtable = this.higher;
      bool = false;
    }
    while (localHashtable == null);
    return this.higher.containsKey(Primitives.toInteger(paramInt));
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    IntMap localIntMap;
    do
    {
      return true;
      if ((paramObject == null) || (!(paramObject instanceof IntMap)))
        return false;
      localIntMap = (IntMap)paramObject;
      if (size() != localIntMap.size())
        return false;
    }
    while ((compareLowerBuffer(this.lower, localIntMap.lower)) && (compareHashtable(this.higher, localIntMap.higher)));
    return false;
  }

  public Object get(int paramInt)
  {
    Object localObject;
    if ((paramInt <= this.maxLowerKey) && (paramInt >= 0))
      localObject = this.lower[paramInt];
    Hashtable localHashtable;
    do
    {
      int i;
      do
      {
        return localObject;
        i = this.maxKey;
        localObject = null;
      }
      while (paramInt > i);
      localHashtable = this.higher;
      localObject = null;
    }
    while (localHashtable == null);
    return this.higher.get(Primitives.toInteger(paramInt));
  }

  public int getNumBytesOverhead()
  {
    int i = 4 * this.lower.length;
    int k;
    int j;
    if (this.higher != null)
    {
      k = 4 * this.higher.size();
      j = 4 * (4 * this.higher.size()) / 3;
    }
    while (true)
    {
      return j + (k + i);
      j = 0;
      k = 0;
    }
  }

  public int hashCode()
  {
    int i = 1;
    for (int j = 0; j < this.lower.length; j++)
    {
      Object localObject = this.lower[j];
      if (localObject != null)
        i = j + (i * 31 + localObject.hashCode());
    }
    if (this.higher == null)
      return i;
    return i + this.higher.size();
  }

  public boolean isEmpty()
  {
    return size() == 0;
  }

  public KeyIterator keys()
  {
    return new KeyIterator();
  }

  public int maxKey()
  {
    return this.maxKey;
  }

  public IntMap newIntMapWithSameBufferSize()
  {
    return new IntMap(this.maxLowerKey);
  }

  public void put(int paramInt, Object paramObject)
  {
    if (paramObject == null)
    {
      remove(paramInt);
      return;
    }
    if (paramInt > this.maxKey)
      this.maxKey = paramInt;
    if (((paramInt >= 0) && (paramInt < this.lower.length)) || (expandLowerIfNecessary(paramInt)))
    {
      if (paramInt > this.maxLowerKey)
      {
        this.maxLowerKey = paramInt;
        this.lowerCount = (1 + this.lowerCount);
      }
      while (true)
      {
        this.lower[paramInt] = paramObject;
        return;
        if (this.lower[paramInt] == null)
          this.lowerCount = (1 + this.lowerCount);
      }
    }
    if (this.higher == null)
      this.higher = new Hashtable();
    this.higher.put(Primitives.toInteger(paramInt), paramObject);
  }

  public Object remove(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < this.lower.length))
    {
      Object localObject = this.lower[paramInt];
      if (localObject != null)
        this.lowerCount = (-1 + this.lowerCount);
      this.lower[paramInt] = null;
      return localObject;
    }
    if (this.higher != null)
      return this.higher.remove(Primitives.toInteger(paramInt));
    return null;
  }

  public int size()
  {
    if (this.higher == null)
      return this.lowerCount;
    return this.lowerCount + this.higher.size();
  }

  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer("IntMap{lower:");
    for (int i = 0; i < this.lower.length; i++)
      if (this.lower[i] != null)
      {
        localStringBuffer.append(i);
        localStringBuffer.append("=>");
        localStringBuffer.append(this.lower[i]);
        localStringBuffer.append(", ");
      }
    localStringBuffer.append(", higher:" + this.higher + "}");
    return localStringBuffer.toString();
  }

  public class KeyIterator
  {
    private int currentKey = -2147483648;
    private Enumeration higherKeyEnumerator = null;
    private int oneAheadIndex = 0;

    public KeyIterator()
    {
    }

    public boolean hasNext()
    {
      if (this.currentKey != -2147483648)
        return true;
      if (this.oneAheadIndex <= IntMap.this.maxLowerKey)
        while (this.oneAheadIndex <= IntMap.this.maxLowerKey)
        {
          if (IntMap.this.lower[this.oneAheadIndex] != null)
          {
            int i = this.oneAheadIndex;
            this.oneAheadIndex = (i + 1);
            this.currentKey = i;
            return true;
          }
          this.oneAheadIndex = (1 + this.oneAheadIndex);
        }
      if (IntMap.this.higher != null)
      {
        if (this.higherKeyEnumerator == null)
          this.higherKeyEnumerator = IntMap.this.higher.keys();
        if (this.higherKeyEnumerator.hasMoreElements())
        {
          this.currentKey = ((Integer)this.higherKeyEnumerator.nextElement()).intValue();
          return true;
        }
      }
      return false;
    }

    public int next()
    {
      if (!hasNext())
        throw new NoSuchElementException();
      int i = this.currentKey;
      this.currentKey = -2147483648;
      return i;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.util.IntMap
 * JD-Core Version:    0.6.2
 */