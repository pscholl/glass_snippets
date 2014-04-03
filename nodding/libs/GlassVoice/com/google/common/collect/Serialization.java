package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class Serialization
{
  static <T> FieldSetter<T> getFieldSetter(Class<T> paramClass, String paramString)
  {
    try
    {
      FieldSetter localFieldSetter = new FieldSetter(paramClass.getDeclaredField(paramString), null);
      return localFieldSetter;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      throw new AssertionError(localNoSuchFieldException);
    }
  }

  static <K, V> void populateMap(Map<K, V> paramMap, ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    populateMap(paramMap, paramObjectInputStream, paramObjectInputStream.readInt());
  }

  static <K, V> void populateMap(Map<K, V> paramMap, ObjectInputStream paramObjectInputStream, int paramInt)
    throws IOException, ClassNotFoundException
  {
    for (int i = 0; i < paramInt; i++)
      paramMap.put(paramObjectInputStream.readObject(), paramObjectInputStream.readObject());
  }

  static <K, V> void populateMultimap(Multimap<K, V> paramMultimap, ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    populateMultimap(paramMultimap, paramObjectInputStream, paramObjectInputStream.readInt());
  }

  static <K, V> void populateMultimap(Multimap<K, V> paramMultimap, ObjectInputStream paramObjectInputStream, int paramInt)
    throws IOException, ClassNotFoundException
  {
    for (int i = 0; i < paramInt; i++)
    {
      Collection localCollection = paramMultimap.get(paramObjectInputStream.readObject());
      int j = paramObjectInputStream.readInt();
      for (int k = 0; k < j; k++)
        localCollection.add(paramObjectInputStream.readObject());
    }
  }

  static <E> void populateMultiset(Multiset<E> paramMultiset, ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    populateMultiset(paramMultiset, paramObjectInputStream, paramObjectInputStream.readInt());
  }

  static <E> void populateMultiset(Multiset<E> paramMultiset, ObjectInputStream paramObjectInputStream, int paramInt)
    throws IOException, ClassNotFoundException
  {
    for (int i = 0; i < paramInt; i++)
      paramMultiset.add(paramObjectInputStream.readObject(), paramObjectInputStream.readInt());
  }

  static int readCount(ObjectInputStream paramObjectInputStream)
    throws IOException
  {
    return paramObjectInputStream.readInt();
  }

  static <K, V> void writeMap(Map<K, V> paramMap, ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    paramObjectOutputStream.writeInt(paramMap.size());
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramObjectOutputStream.writeObject(localEntry.getKey());
      paramObjectOutputStream.writeObject(localEntry.getValue());
    }
  }

  static <K, V> void writeMultimap(Multimap<K, V> paramMultimap, ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    paramObjectOutputStream.writeInt(paramMultimap.asMap().size());
    Iterator localIterator1 = paramMultimap.asMap().entrySet().iterator();
    while (localIterator1.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator1.next();
      paramObjectOutputStream.writeObject(localEntry.getKey());
      paramObjectOutputStream.writeInt(((Collection)localEntry.getValue()).size());
      Iterator localIterator2 = ((Collection)localEntry.getValue()).iterator();
      while (localIterator2.hasNext())
        paramObjectOutputStream.writeObject(localIterator2.next());
    }
  }

  static <E> void writeMultiset(Multiset<E> paramMultiset, ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    paramObjectOutputStream.writeInt(paramMultiset.entrySet().size());
    Iterator localIterator = paramMultiset.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Multiset.Entry localEntry = (Multiset.Entry)localIterator.next();
      paramObjectOutputStream.writeObject(localEntry.getElement());
      paramObjectOutputStream.writeInt(localEntry.getCount());
    }
  }

  static final class FieldSetter<T>
  {
    private final Field field;

    private FieldSetter(Field paramField)
    {
      this.field = paramField;
      paramField.setAccessible(true);
    }

    void set(T paramT, int paramInt)
    {
      try
      {
        this.field.set(paramT, Integer.valueOf(paramInt));
        return;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        throw new AssertionError(localIllegalAccessException);
      }
    }

    void set(T paramT, Object paramObject)
    {
      try
      {
        this.field.set(paramT, paramObject);
        return;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        throw new AssertionError(localIllegalAccessException);
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.Serialization
 * JD-Core Version:    0.6.2
 */