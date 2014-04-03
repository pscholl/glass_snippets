package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
public class ImmutableSetMultimap<K, V> extends ImmutableMultimap<K, V>
  implements SetMultimap<K, V>
{

  @GwtIncompatible("not needed in emulated source.")
  private static final long serialVersionUID;
  private final transient ImmutableSortedSet<V> emptySet;
  private transient ImmutableSet<Map.Entry<K, V>> entries;
  private transient ImmutableSetMultimap<V, K> inverse;

  ImmutableSetMultimap(ImmutableMap<K, ImmutableSet<V>> paramImmutableMap, int paramInt, @Nullable Comparator<? super V> paramComparator)
  {
    super(paramImmutableMap, paramInt);
    if (paramComparator == null);
    for (ImmutableSortedSet localImmutableSortedSet = null; ; localImmutableSortedSet = ImmutableSortedSet.emptySet(paramComparator))
    {
      this.emptySet = localImmutableSortedSet;
      return;
    }
  }

  public static <K, V> Builder<K, V> builder()
  {
    return new Builder();
  }

  public static <K, V> ImmutableSetMultimap<K, V> copyOf(Multimap<? extends K, ? extends V> paramMultimap)
  {
    return copyOf(paramMultimap, null);
  }

  private static <K, V> ImmutableSetMultimap<K, V> copyOf(Multimap<? extends K, ? extends V> paramMultimap, Comparator<? super V> paramComparator)
  {
    Preconditions.checkNotNull(paramMultimap);
    ImmutableSetMultimap localImmutableSetMultimap;
    if ((paramMultimap.isEmpty()) && (paramComparator == null))
      localImmutableSetMultimap = of();
    do
    {
      return localImmutableSetMultimap;
      if (!(paramMultimap instanceof ImmutableSetMultimap))
        break;
      localImmutableSetMultimap = (ImmutableSetMultimap)paramMultimap;
    }
    while (!localImmutableSetMultimap.isPartialView());
    ImmutableMap.Builder localBuilder = ImmutableMap.builder();
    int i = 0;
    Iterator localIterator = paramMultimap.asMap().entrySet().iterator();
    label165: 
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject1 = localEntry.getKey();
      Collection localCollection = (Collection)localEntry.getValue();
      if (paramComparator == null);
      for (Object localObject2 = ImmutableSet.copyOf(localCollection); ; localObject2 = ImmutableSortedSet.copyOf(paramComparator, localCollection))
      {
        if (((ImmutableSet)localObject2).isEmpty())
          break label165;
        localBuilder.put(localObject1, localObject2);
        i += ((ImmutableSet)localObject2).size();
        break;
      }
    }
    return new ImmutableSetMultimap(localBuilder.build(), i, paramComparator);
  }

  private ImmutableSetMultimap<V, K> invert()
  {
    Builder localBuilder = builder();
    Iterator localIterator = entries().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localBuilder.put(localEntry.getValue(), localEntry.getKey());
    }
    ImmutableSetMultimap localImmutableSetMultimap = localBuilder.build();
    localImmutableSetMultimap.inverse = this;
    return localImmutableSetMultimap;
  }

  public static <K, V> ImmutableSetMultimap<K, V> of()
  {
    return EmptyImmutableSetMultimap.INSTANCE;
  }

  public static <K, V> ImmutableSetMultimap<K, V> of(K paramK, V paramV)
  {
    Builder localBuilder = builder();
    localBuilder.put(paramK, paramV);
    return localBuilder.build();
  }

  public static <K, V> ImmutableSetMultimap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2)
  {
    Builder localBuilder = builder();
    localBuilder.put(paramK1, paramV1);
    localBuilder.put(paramK2, paramV2);
    return localBuilder.build();
  }

  public static <K, V> ImmutableSetMultimap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3)
  {
    Builder localBuilder = builder();
    localBuilder.put(paramK1, paramV1);
    localBuilder.put(paramK2, paramV2);
    localBuilder.put(paramK3, paramV3);
    return localBuilder.build();
  }

  public static <K, V> ImmutableSetMultimap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4)
  {
    Builder localBuilder = builder();
    localBuilder.put(paramK1, paramV1);
    localBuilder.put(paramK2, paramV2);
    localBuilder.put(paramK3, paramV3);
    localBuilder.put(paramK4, paramV4);
    return localBuilder.build();
  }

  public static <K, V> ImmutableSetMultimap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4, K paramK5, V paramV5)
  {
    Builder localBuilder = builder();
    localBuilder.put(paramK1, paramV1);
    localBuilder.put(paramK2, paramV2);
    localBuilder.put(paramK3, paramV3);
    localBuilder.put(paramK4, paramV4);
    localBuilder.put(paramK5, paramV5);
    return localBuilder.build();
  }

  @GwtIncompatible("java.io.ObjectInputStream")
  private void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    paramObjectInputStream.defaultReadObject();
    int i = paramObjectInputStream.readInt();
    if (i < 0)
      throw new InvalidObjectException("Invalid key count " + i);
    ImmutableMap.Builder localBuilder = ImmutableMap.builder();
    int j = 0;
    for (int k = 0; k < i; k++)
    {
      Object localObject = paramObjectInputStream.readObject();
      int m = paramObjectInputStream.readInt();
      if (m <= 0)
        throw new InvalidObjectException("Invalid value count " + m);
      Object[] arrayOfObject = new Object[m];
      for (int n = 0; n < m; n++)
        arrayOfObject[n] = paramObjectInputStream.readObject();
      ImmutableSet localImmutableSet = ImmutableSet.copyOf(arrayOfObject);
      if (localImmutableSet.size() != arrayOfObject.length)
        throw new InvalidObjectException("Duplicate key-value pairs exist for key " + localObject);
      localBuilder.put(localObject, localImmutableSet);
      j += m;
    }
    try
    {
      ImmutableMap localImmutableMap = localBuilder.build();
      ImmutableMultimap.FieldSettersHolder.MAP_FIELD_SETTER.set(this, localImmutableMap);
      ImmutableMultimap.FieldSettersHolder.SIZE_FIELD_SETTER.set(this, j);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw ((InvalidObjectException)new InvalidObjectException(localIllegalArgumentException.getMessage()).initCause(localIllegalArgumentException));
    }
  }

  @GwtIncompatible("java.io.ObjectOutputStream")
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    paramObjectOutputStream.defaultWriteObject();
    Serialization.writeMultimap(this, paramObjectOutputStream);
  }

  public ImmutableSet<Map.Entry<K, V>> entries()
  {
    ImmutableSet localImmutableSet = this.entries;
    if (localImmutableSet == null)
    {
      localImmutableSet = ImmutableSet.copyOf(super.entries());
      this.entries = localImmutableSet;
    }
    return localImmutableSet;
  }

  public ImmutableSet<V> get(@Nullable K paramK)
  {
    ImmutableSet localImmutableSet = (ImmutableSet)this.map.get(paramK);
    if (localImmutableSet != null)
      return localImmutableSet;
    if (this.emptySet != null)
      return this.emptySet;
    return ImmutableSet.of();
  }

  public ImmutableSetMultimap<V, K> inverse()
  {
    ImmutableSetMultimap localImmutableSetMultimap = this.inverse;
    if (localImmutableSetMultimap == null)
    {
      localImmutableSetMultimap = invert();
      this.inverse = localImmutableSetMultimap;
    }
    return localImmutableSetMultimap;
  }

  @Deprecated
  public ImmutableSet<V> removeAll(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public ImmutableSet<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
  {
    throw new UnsupportedOperationException();
  }

  public static final class Builder<K, V> extends ImmutableMultimap.Builder<K, V>
  {
    public Builder()
    {
      this.builderMultimap = new ImmutableSetMultimap.BuilderMultimap();
    }

    public ImmutableSetMultimap<K, V> build()
    {
      if (this.keyComparator != null)
      {
        ImmutableSetMultimap.BuilderMultimap localBuilderMultimap = new ImmutableSetMultimap.BuilderMultimap();
        ArrayList localArrayList = Lists.newArrayList(this.builderMultimap.asMap().entrySet());
        Collections.sort(localArrayList, Ordering.from(this.keyComparator).onResultOf(new Function()
        {
          public K apply(Map.Entry<K, Collection<V>> paramAnonymousEntry)
          {
            return paramAnonymousEntry.getKey();
          }
        }));
        Iterator localIterator = localArrayList.iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          localBuilderMultimap.putAll(localEntry.getKey(), (Iterable)localEntry.getValue());
        }
        this.builderMultimap = localBuilderMultimap;
      }
      return ImmutableSetMultimap.copyOf(this.builderMultimap, this.valueComparator);
    }

    public Builder<K, V> orderKeysBy(Comparator<? super K> paramComparator)
    {
      this.keyComparator = ((Comparator)Preconditions.checkNotNull(paramComparator));
      return this;
    }

    public Builder<K, V> orderValuesBy(Comparator<? super V> paramComparator)
    {
      super.orderValuesBy(paramComparator);
      return this;
    }

    public Builder<K, V> put(K paramK, V paramV)
    {
      this.builderMultimap.put(Preconditions.checkNotNull(paramK), Preconditions.checkNotNull(paramV));
      return this;
    }

    public Builder<K, V> put(Map.Entry<? extends K, ? extends V> paramEntry)
    {
      this.builderMultimap.put(Preconditions.checkNotNull(paramEntry.getKey()), Preconditions.checkNotNull(paramEntry.getValue()));
      return this;
    }

    public Builder<K, V> putAll(Multimap<? extends K, ? extends V> paramMultimap)
    {
      Iterator localIterator = paramMultimap.asMap().entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        putAll(localEntry.getKey(), (Iterable)localEntry.getValue());
      }
      return this;
    }

    public Builder<K, V> putAll(K paramK, Iterable<? extends V> paramIterable)
    {
      Collection localCollection = this.builderMultimap.get(Preconditions.checkNotNull(paramK));
      Iterator localIterator = paramIterable.iterator();
      while (localIterator.hasNext())
        localCollection.add(Preconditions.checkNotNull(localIterator.next()));
      return this;
    }

    public Builder<K, V> putAll(K paramK, V[] paramArrayOfV)
    {
      return putAll(paramK, Arrays.asList(paramArrayOfV));
    }
  }

  private static class BuilderMultimap<K, V> extends AbstractMapBasedMultimap<K, V>
  {
    private static final long serialVersionUID;

    BuilderMultimap()
    {
      super();
    }

    Collection<V> createCollection()
    {
      return Sets.newLinkedHashSet();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableSetMultimap
 * JD-Core Version:    0.6.2
 */