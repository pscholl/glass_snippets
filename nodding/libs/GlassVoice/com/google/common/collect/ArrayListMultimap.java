package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@GwtCompatible(emulated=true, serializable=true)
public final class ArrayListMultimap<K, V> extends AbstractListMultimap<K, V>
{
  private static final int DEFAULT_VALUES_PER_KEY = 3;

  @GwtIncompatible("Not needed in emulated source.")
  private static final long serialVersionUID;

  @VisibleForTesting
  transient int expectedValuesPerKey;

  private ArrayListMultimap()
  {
    super(new HashMap());
    this.expectedValuesPerKey = 3;
  }

  private ArrayListMultimap(int paramInt1, int paramInt2)
  {
    super(Maps.newHashMapWithExpectedSize(paramInt1));
    if (paramInt2 >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      this.expectedValuesPerKey = paramInt2;
      return;
    }
  }

  private ArrayListMultimap(Multimap<? extends K, ? extends V> paramMultimap)
  {
  }

  public static <K, V> ArrayListMultimap<K, V> create()
  {
    return new ArrayListMultimap();
  }

  public static <K, V> ArrayListMultimap<K, V> create(int paramInt1, int paramInt2)
  {
    return new ArrayListMultimap(paramInt1, paramInt2);
  }

  public static <K, V> ArrayListMultimap<K, V> create(Multimap<? extends K, ? extends V> paramMultimap)
  {
    return new ArrayListMultimap(paramMultimap);
  }

  @GwtIncompatible("java.io.ObjectOutputStream")
  private void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    paramObjectInputStream.defaultReadObject();
    this.expectedValuesPerKey = paramObjectInputStream.readInt();
    int i = Serialization.readCount(paramObjectInputStream);
    setMap(Maps.newHashMapWithExpectedSize(i));
    Serialization.populateMultimap(this, paramObjectInputStream, i);
  }

  @GwtIncompatible("java.io.ObjectOutputStream")
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeInt(this.expectedValuesPerKey);
    Serialization.writeMultimap(this, paramObjectOutputStream);
  }

  List<V> createCollection()
  {
    return new ArrayList(this.expectedValuesPerKey);
  }

  public void trimToSize()
  {
    Iterator localIterator = backingMap().values().iterator();
    while (localIterator.hasNext())
      ((ArrayList)localIterator.next()).trimToSize();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ArrayListMultimap
 * JD-Core Version:    0.6.2
 */