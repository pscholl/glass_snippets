package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
public class TreeMultimap<K, V> extends AbstractSortedKeySortedSetMultimap<K, V>
{

  @GwtIncompatible("not needed in emulated source")
  private static final long serialVersionUID;
  private transient Comparator<? super K> keyComparator;
  private transient Comparator<? super V> valueComparator;

  TreeMultimap(Comparator<? super K> paramComparator, Comparator<? super V> paramComparator1)
  {
    super(new TreeMap(paramComparator));
    this.keyComparator = paramComparator;
    this.valueComparator = paramComparator1;
  }

  private TreeMultimap(Comparator<? super K> paramComparator, Comparator<? super V> paramComparator1, Multimap<? extends K, ? extends V> paramMultimap)
  {
    this(paramComparator, paramComparator1);
    putAll(paramMultimap);
  }

  public static <K extends Comparable, V extends Comparable> TreeMultimap<K, V> create()
  {
    return new TreeMultimap(Ordering.natural(), Ordering.natural());
  }

  public static <K extends Comparable, V extends Comparable> TreeMultimap<K, V> create(Multimap<? extends K, ? extends V> paramMultimap)
  {
    return new TreeMultimap(Ordering.natural(), Ordering.natural(), paramMultimap);
  }

  public static <K, V> TreeMultimap<K, V> create(Comparator<? super K> paramComparator, Comparator<? super V> paramComparator1)
  {
    return new TreeMultimap((Comparator)Preconditions.checkNotNull(paramComparator), (Comparator)Preconditions.checkNotNull(paramComparator1));
  }

  @GwtIncompatible("java.io.ObjectInputStream")
  private void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    paramObjectInputStream.defaultReadObject();
    this.keyComparator = ((Comparator)Preconditions.checkNotNull((Comparator)paramObjectInputStream.readObject()));
    this.valueComparator = ((Comparator)Preconditions.checkNotNull((Comparator)paramObjectInputStream.readObject()));
    setMap(new TreeMap(this.keyComparator));
    Serialization.populateMultimap(this, paramObjectInputStream);
  }

  @GwtIncompatible("java.io.ObjectOutputStream")
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeObject(keyComparator());
    paramObjectOutputStream.writeObject(valueComparator());
    Serialization.writeMultimap(this, paramObjectOutputStream);
  }

  public SortedMap<K, Collection<V>> asMap()
  {
    return super.asMap();
  }

  Collection<V> createCollection(@Nullable K paramK)
  {
    if (paramK == null)
      keyComparator().compare(paramK, paramK);
    return super.createCollection(paramK);
  }

  SortedSet<V> createCollection()
  {
    return new TreeSet(this.valueComparator);
  }

  public Comparator<? super K> keyComparator()
  {
    return this.keyComparator;
  }

  public SortedSet<K> keySet()
  {
    return super.keySet();
  }

  public Comparator<? super V> valueComparator()
  {
    return this.valueComparator;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.TreeMultimap
 * JD-Core Version:    0.6.2
 */