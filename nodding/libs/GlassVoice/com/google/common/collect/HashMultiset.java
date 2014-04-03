package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;

@GwtCompatible(emulated=true, serializable=true)
public final class HashMultiset<E> extends AbstractMapBasedMultiset<E>
{

  @GwtIncompatible("Not needed in emulated source.")
  private static final long serialVersionUID;

  private HashMultiset()
  {
    super(new HashMap());
  }

  private HashMultiset(int paramInt)
  {
    super(Maps.newHashMapWithExpectedSize(paramInt));
  }

  public static <E> HashMultiset<E> create()
  {
    return new HashMultiset();
  }

  public static <E> HashMultiset<E> create(int paramInt)
  {
    return new HashMultiset(paramInt);
  }

  public static <E> HashMultiset<E> create(Iterable<? extends E> paramIterable)
  {
    HashMultiset localHashMultiset = create(Multisets.inferDistinctElements(paramIterable));
    Iterables.addAll(localHashMultiset, paramIterable);
    return localHashMultiset;
  }

  @GwtIncompatible("java.io.ObjectInputStream")
  private void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    paramObjectInputStream.defaultReadObject();
    int i = Serialization.readCount(paramObjectInputStream);
    setBackingMap(Maps.newHashMapWithExpectedSize(i));
    Serialization.populateMultiset(this, paramObjectInputStream, i);
  }

  @GwtIncompatible("java.io.ObjectOutputStream")
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    paramObjectOutputStream.defaultWriteObject();
    Serialization.writeMultiset(this, paramObjectOutputStream);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.HashMultiset
 * JD-Core Version:    0.6.2
 */