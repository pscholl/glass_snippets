package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
public class ImmutableListMultimap<K, V> extends ImmutableMultimap<K, V>
  implements ListMultimap<K, V>
{

  @GwtIncompatible("Not needed in emulated source")
  private static final long serialVersionUID;
  private transient ImmutableListMultimap<V, K> inverse;

  ImmutableListMultimap(ImmutableMap<K, ImmutableList<V>> paramImmutableMap, int paramInt)
  {
    super(paramImmutableMap, paramInt);
  }

  public static <K, V> Builder<K, V> builder()
  {
    return new Builder();
  }

  public static <K, V> ImmutableListMultimap<K, V> copyOf(Multimap<? extends K, ? extends V> paramMultimap)
  {
    ImmutableListMultimap localImmutableListMultimap;
    if (paramMultimap.isEmpty())
      localImmutableListMultimap = of();
    do
    {
      return localImmutableListMultimap;
      if (!(paramMultimap instanceof ImmutableListMultimap))
        break;
      localImmutableListMultimap = (ImmutableListMultimap)paramMultimap;
    }
    while (!localImmutableListMultimap.isPartialView());
    ImmutableMap.Builder localBuilder = ImmutableMap.builder();
    int i = 0;
    Iterator localIterator = paramMultimap.asMap().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      ImmutableList localImmutableList = ImmutableList.copyOf((Collection)localEntry.getValue());
      if (!localImmutableList.isEmpty())
      {
        localBuilder.put(localEntry.getKey(), localImmutableList);
        i += localImmutableList.size();
      }
    }
    return new ImmutableListMultimap(localBuilder.build(), i);
  }

  private ImmutableListMultimap<V, K> invert()
  {
    Builder localBuilder = builder();
    Iterator localIterator = entries().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localBuilder.put(localEntry.getValue(), localEntry.getKey());
    }
    ImmutableListMultimap localImmutableListMultimap = localBuilder.build();
    localImmutableListMultimap.inverse = this;
    return localImmutableListMultimap;
  }

  public static <K, V> ImmutableListMultimap<K, V> of()
  {
    return EmptyImmutableListMultimap.INSTANCE;
  }

  public static <K, V> ImmutableListMultimap<K, V> of(K paramK, V paramV)
  {
    Builder localBuilder = builder();
    localBuilder.put(paramK, paramV);
    return localBuilder.build();
  }

  public static <K, V> ImmutableListMultimap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2)
  {
    Builder localBuilder = builder();
    localBuilder.put(paramK1, paramV1);
    localBuilder.put(paramK2, paramV2);
    return localBuilder.build();
  }

  public static <K, V> ImmutableListMultimap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3)
  {
    Builder localBuilder = builder();
    localBuilder.put(paramK1, paramV1);
    localBuilder.put(paramK2, paramV2);
    localBuilder.put(paramK3, paramV3);
    return localBuilder.build();
  }

  public static <K, V> ImmutableListMultimap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4)
  {
    Builder localBuilder = builder();
    localBuilder.put(paramK1, paramV1);
    localBuilder.put(paramK2, paramV2);
    localBuilder.put(paramK3, paramV3);
    localBuilder.put(paramK4, paramV4);
    return localBuilder.build();
  }

  public static <K, V> ImmutableListMultimap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4, K paramK5, V paramV5)
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
      localBuilder.put(localObject, ImmutableList.copyOf(arrayOfObject));
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

  public ImmutableList<V> get(@Nullable K paramK)
  {
    ImmutableList localImmutableList = (ImmutableList)this.map.get(paramK);
    if (localImmutableList == null)
      localImmutableList = ImmutableList.of();
    return localImmutableList;
  }

  public ImmutableListMultimap<V, K> inverse()
  {
    ImmutableListMultimap localImmutableListMultimap = this.inverse;
    if (localImmutableListMultimap == null)
    {
      localImmutableListMultimap = invert();
      this.inverse = localImmutableListMultimap;
    }
    return localImmutableListMultimap;
  }

  @Deprecated
  public ImmutableList<V> removeAll(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public ImmutableList<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
  {
    throw new UnsupportedOperationException();
  }

  public static final class Builder<K, V> extends ImmutableMultimap.Builder<K, V>
  {
    public ImmutableListMultimap<K, V> build()
    {
      return (ImmutableListMultimap)super.build();
    }

    public Builder<K, V> orderKeysBy(Comparator<? super K> paramComparator)
    {
      super.orderKeysBy(paramComparator);
      return this;
    }

    public Builder<K, V> orderValuesBy(Comparator<? super V> paramComparator)
    {
      super.orderValuesBy(paramComparator);
      return this;
    }

    public Builder<K, V> put(K paramK, V paramV)
    {
      super.put(paramK, paramV);
      return this;
    }

    public Builder<K, V> put(Map.Entry<? extends K, ? extends V> paramEntry)
    {
      super.put(paramEntry);
      return this;
    }

    public Builder<K, V> putAll(Multimap<? extends K, ? extends V> paramMultimap)
    {
      super.putAll(paramMultimap);
      return this;
    }

    public Builder<K, V> putAll(K paramK, Iterable<? extends V> paramIterable)
    {
      super.putAll(paramK, paramIterable);
      return this;
    }

    public Builder<K, V> putAll(K paramK, V[] paramArrayOfV)
    {
      super.putAll(paramK, paramArrayOfV);
      return this;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableListMultimap
 * JD-Core Version:    0.6.2
 */