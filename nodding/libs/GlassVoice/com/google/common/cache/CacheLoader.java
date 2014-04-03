package com.google.common.cache;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.Serializable;
import java.util.Map;

@GwtCompatible(emulated=true)
public abstract class CacheLoader<K, V>
{
  @Beta
  public static <K, V> CacheLoader<K, V> from(Function<K, V> paramFunction)
  {
    return new FunctionToCacheLoader(paramFunction);
  }

  @Beta
  public static <V> CacheLoader<Object, V> from(Supplier<V> paramSupplier)
  {
    return new SupplierToCacheLoader(paramSupplier);
  }

  public abstract V load(K paramK)
    throws Exception;

  public Map<K, V> loadAll(Iterable<? extends K> paramIterable)
    throws Exception
  {
    throw new UnsupportedLoadingOperationException();
  }

  @GwtIncompatible("Futures")
  public ListenableFuture<V> reload(K paramK, V paramV)
    throws Exception
  {
    Preconditions.checkNotNull(paramK);
    Preconditions.checkNotNull(paramV);
    return Futures.immediateFuture(load(paramK));
  }

  private static final class FunctionToCacheLoader<K, V> extends CacheLoader<K, V>
    implements Serializable
  {
    private static final long serialVersionUID;
    private final Function<K, V> computingFunction;

    public FunctionToCacheLoader(Function<K, V> paramFunction)
    {
      this.computingFunction = ((Function)Preconditions.checkNotNull(paramFunction));
    }

    public V load(K paramK)
    {
      return this.computingFunction.apply(Preconditions.checkNotNull(paramK));
    }
  }

  public static final class InvalidCacheLoadException extends RuntimeException
  {
    public InvalidCacheLoadException(String paramString)
    {
      super();
    }
  }

  private static final class SupplierToCacheLoader<V> extends CacheLoader<Object, V>
    implements Serializable
  {
    private static final long serialVersionUID;
    private final Supplier<V> computingSupplier;

    public SupplierToCacheLoader(Supplier<V> paramSupplier)
    {
      this.computingSupplier = ((Supplier)Preconditions.checkNotNull(paramSupplier));
    }

    public V load(Object paramObject)
    {
      Preconditions.checkNotNull(paramObject);
      return this.computingSupplier.get();
    }
  }

  static final class UnsupportedLoadingOperationException extends UnsupportedOperationException
  {
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.cache.CacheLoader
 * JD-Core Version:    0.6.2
 */