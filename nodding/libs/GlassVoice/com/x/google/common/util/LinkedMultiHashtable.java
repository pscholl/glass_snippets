package com.x.google.common.util;

import com.x.google.common.util.text.TextUtil;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

public class LinkedMultiHashtable
{
  private Vector orderedEntries;
  private Hashtable table;

  public LinkedMultiHashtable()
  {
    this.table = new Hashtable();
    this.orderedEntries = new Vector();
  }

  public LinkedMultiHashtable(int paramInt)
  {
    this.table = new Hashtable(paramInt);
    this.orderedEntries = new Vector(paramInt);
  }

  public static LinkedMultiHashtable fromString(String paramString1, String paramString2, String paramString3)
  {
    if (paramString1 == null)
      return null;
    String[] arrayOfString = TextUtil.splitAndTrim(paramString1, paramString2);
    LinkedMultiHashtable localLinkedMultiHashtable = new LinkedMultiHashtable();
    int i = 0;
    if (i < arrayOfString.length)
    {
      int j = arrayOfString[i].indexOf(paramString3, 0);
      String str1;
      if (j > -1)
        str1 = arrayOfString[i].substring(0, j).trim();
      for (String str2 = arrayOfString[i].substring(j + paramString3.length()).trim(); ; str2 = null)
      {
        localLinkedMultiHashtable.put(str1, str2);
        i++;
        break;
        str1 = arrayOfString[i];
      }
    }
    return localLinkedMultiHashtable;
  }

  public void addEntries(LinkedMultiHashtable paramLinkedMultiHashtable)
  {
    Enumeration localEnumeration = paramLinkedMultiHashtable.elements();
    while (localEnumeration.hasMoreElements())
    {
      Entry localEntry = (Entry)localEnumeration.nextElement();
      put(localEntry.getKey(), localEntry.getValue());
    }
  }

  public void clear()
  {
    this.table.clear();
    this.orderedEntries.removeAllElements();
  }

  public LinkedMultiHashtable clone()
  {
    LinkedMultiHashtable localLinkedMultiHashtable = new LinkedMultiHashtable();
    Enumeration localEnumeration = elements();
    while (localEnumeration.hasMoreElements())
    {
      Entry localEntry = (Entry)localEnumeration.nextElement();
      localLinkedMultiHashtable.put(localEntry.getKey(), localEntry.getValue());
    }
    return localLinkedMultiHashtable;
  }

  public boolean contains(Object paramObject)
  {
    Enumeration localEnumeration = this.orderedEntries.elements();
    while (localEnumeration.hasMoreElements())
    {
      Entry localEntry = (Entry)localEnumeration.nextElement();
      if (((paramObject == null) && (localEntry.value == null)) || ((paramObject != null) && (paramObject.equals(localEntry.value))))
        return true;
    }
    return false;
  }

  public boolean containsKey(Object paramObject)
  {
    return this.table.containsKey(paramObject);
  }

  public Enumeration elements()
  {
    return this.orderedEntries.elements();
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == this);
    Enumeration localEnumeration1;
    Enumeration localEnumeration2;
    do
    {
      return true;
      if (!(paramObject instanceof LinkedMultiHashtable))
        break;
      LinkedMultiHashtable localLinkedMultiHashtable = (LinkedMultiHashtable)paramObject;
      localEnumeration1 = elements();
      localEnumeration2 = localLinkedMultiHashtable.elements();
      while ((localEnumeration1.hasMoreElements()) && (localEnumeration2.hasMoreElements()))
        if (!localEnumeration1.nextElement().equals(localEnumeration2.nextElement()))
          return false;
    }
    while ((!localEnumeration1.hasMoreElements()) && (!localEnumeration2.hasMoreElements()));
    return false;
    return false;
  }

  public Vector get(Object paramObject)
  {
    return (Vector)this.table.get(paramObject);
  }

  public int hashCode()
  {
    int i = 17;
    Enumeration localEnumeration = elements();
    while (localEnumeration.hasMoreElements())
      i = i * 37 + localEnumeration.nextElement().hashCode();
    return i;
  }

  public boolean isEmpty()
  {
    return this.table.isEmpty();
  }

  public String join(char paramChar1, char paramChar2)
  {
    return join(String.valueOf(paramChar1), String.valueOf(paramChar2));
  }

  public String join(String paramString1, String paramString2)
  {
    Enumeration localEnumeration = elements();
    if (!localEnumeration.hasMoreElements())
      return "";
    StringBuffer localStringBuffer = new StringBuffer();
    ((Entry)localEnumeration.nextElement()).appendToStringBuffer(localStringBuffer, paramString2);
    while (localEnumeration.hasMoreElements())
    {
      localStringBuffer.append(paramString1);
      ((Entry)localEnumeration.nextElement()).appendToStringBuffer(localStringBuffer, paramString2);
    }
    return localStringBuffer.toString();
  }

  public Object put(Object paramObject1, Object paramObject2)
  {
    Vector localVector4;
    Object localObject;
    if (this.table.containsKey(paramObject1))
    {
      Vector localVector3 = (Vector)this.table.get(paramObject1);
      localVector4 = new Vector(localVector3.size());
      ArrayUtil.copyIntoVector(localVector3, 0, localVector4);
      localObject = localVector3;
    }
    for (Vector localVector2 = localVector4; ; localVector2 = null)
    {
      ((Vector)localObject).addElement(paramObject2);
      this.orderedEntries.addElement(new Entry(paramObject1, paramObject2, null));
      return localVector2;
      Vector localVector1 = new Vector(1);
      this.table.put(paramObject1, localVector1);
      localObject = localVector1;
    }
  }

  public Vector remove(Object paramObject)
  {
    int i = 0;
    while (i < this.orderedEntries.size())
      if (((Entry)this.orderedEntries.elementAt(i)).getKey().equals(paramObject))
        this.orderedEntries.removeElementAt(i);
      else
        i++;
    return (Vector)this.table.remove(paramObject);
  }

  public int size()
  {
    return this.table.size();
  }

  public static class Entry
  {
    Object key;
    Object value;

    private Entry(Object paramObject1, Object paramObject2)
    {
      if (paramObject1 == null)
        throw new NullPointerException();
      this.key = paramObject1;
      this.value = paramObject2;
    }

    public void appendToStringBuffer(StringBuffer paramStringBuffer, String paramString)
    {
      paramStringBuffer.append(getKey());
      if (getValue() != null)
      {
        paramStringBuffer.append(paramString);
        paramStringBuffer.append(getValue());
      }
    }

    public boolean equals(Object paramObject)
    {
      if (this == paramObject);
      Entry localEntry;
      do
      {
        return true;
        if (!(paramObject instanceof Entry))
          break;
        localEntry = (Entry)paramObject;
      }
      while ((this.key.equals(localEntry.key)) && (((this.value == null) && (localEntry.value == null)) || ((this.value != null) && (this.value.equals(localEntry.value)))));
      return false;
      return false;
    }

    public Object getKey()
    {
      return this.key;
    }

    public Object getValue()
    {
      return this.value;
    }

    public int hashCode()
    {
      int i = 37 * (629 + this.key.hashCode());
      if (this.value == null);
      for (int j = 0; ; j = this.value.hashCode())
        return j + i;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.util.LinkedMultiHashtable
 * JD-Core Version:    0.6.2
 */