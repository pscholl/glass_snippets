package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Map;
import javax.annotation.Nullable;

@GwtCompatible
public final class Functions
{
  public static <A, B, C> Function<A, C> compose(Function<B, C> paramFunction, Function<A, ? extends B> paramFunction1)
  {
    return new FunctionComposition(paramFunction, paramFunction1);
  }

  public static <E> Function<Object, E> constant(@Nullable E paramE)
  {
    return new ConstantFunction(paramE);
  }

  public static <K, V> Function<K, V> forMap(Map<K, V> paramMap)
  {
    return new FunctionForMapNoDefault(paramMap);
  }

  public static <K, V> Function<K, V> forMap(Map<K, ? extends V> paramMap, @Nullable V paramV)
  {
    return new ForMapWithDefault(paramMap, paramV);
  }

  public static <T> Function<T, Boolean> forPredicate(Predicate<T> paramPredicate)
  {
    return new PredicateFunction(paramPredicate, null);
  }

  @Beta
  public static <T> Function<Object, T> forSupplier(Supplier<T> paramSupplier)
  {
    return new SupplierFunction(paramSupplier, null);
  }

  public static <E> Function<E, E> identity()
  {
    return IdentityFunction.INSTANCE;
  }

  public static Function<Object, String> toStringFunction()
  {
    return ToStringFunction.INSTANCE;
  }

  private static class ConstantFunction<E>
    implements Function<Object, E>, Serializable
  {
    private static final long serialVersionUID;
    private final E value;

    public ConstantFunction(@Nullable E paramE)
    {
      this.value = paramE;
    }

    public E apply(@Nullable Object paramObject)
    {
      return this.value;
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if ((paramObject instanceof ConstantFunction))
      {
        ConstantFunction localConstantFunction = (ConstantFunction)paramObject;
        return Objects.equal(this.value, localConstantFunction.value);
      }
      return false;
    }

    public int hashCode()
    {
      if (this.value == null)
        return 0;
      return this.value.hashCode();
    }

    public String toString()
    {
      return "constant(" + this.value + ")";
    }
  }

  private static class ForMapWithDefault<K, V>
    implements Function<K, V>, Serializable
  {
    private static final long serialVersionUID;
    final V defaultValue;
    final Map<K, ? extends V> map;

    ForMapWithDefault(Map<K, ? extends V> paramMap, @Nullable V paramV)
    {
      this.map = ((Map)Preconditions.checkNotNull(paramMap));
      this.defaultValue = paramV;
    }

    public V apply(@Nullable K paramK)
    {
      Object localObject = this.map.get(paramK);
      if ((localObject != null) || (this.map.containsKey(paramK)))
        return localObject;
      return this.defaultValue;
    }

    public boolean equals(@Nullable Object paramObject)
    {
      boolean bool1 = paramObject instanceof ForMapWithDefault;
      boolean bool2 = false;
      if (bool1)
      {
        ForMapWithDefault localForMapWithDefault = (ForMapWithDefault)paramObject;
        boolean bool3 = this.map.equals(localForMapWithDefault.map);
        bool2 = false;
        if (bool3)
        {
          boolean bool4 = Objects.equal(this.defaultValue, localForMapWithDefault.defaultValue);
          bool2 = false;
          if (bool4)
            bool2 = true;
        }
      }
      return bool2;
    }

    public int hashCode()
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = this.map;
      arrayOfObject[1] = this.defaultValue;
      return Objects.hashCode(arrayOfObject);
    }

    public String toString()
    {
      return "forMap(" + this.map + ", defaultValue=" + this.defaultValue + ")";
    }
  }

  private static class FunctionComposition<A, B, C>
    implements Function<A, C>, Serializable
  {
    private static final long serialVersionUID;
    private final Function<A, ? extends B> f;
    private final Function<B, C> g;

    public FunctionComposition(Function<B, C> paramFunction, Function<A, ? extends B> paramFunction1)
    {
      this.g = ((Function)Preconditions.checkNotNull(paramFunction));
      this.f = ((Function)Preconditions.checkNotNull(paramFunction1));
    }

    public C apply(@Nullable A paramA)
    {
      return this.g.apply(this.f.apply(paramA));
    }

    public boolean equals(@Nullable Object paramObject)
    {
      boolean bool1 = paramObject instanceof FunctionComposition;
      boolean bool2 = false;
      if (bool1)
      {
        FunctionComposition localFunctionComposition = (FunctionComposition)paramObject;
        boolean bool3 = this.f.equals(localFunctionComposition.f);
        bool2 = false;
        if (bool3)
        {
          boolean bool4 = this.g.equals(localFunctionComposition.g);
          bool2 = false;
          if (bool4)
            bool2 = true;
        }
      }
      return bool2;
    }

    public int hashCode()
    {
      return this.f.hashCode() ^ this.g.hashCode();
    }

    public String toString()
    {
      return this.g.toString() + "(" + this.f.toString() + ")";
    }
  }

  private static class FunctionForMapNoDefault<K, V>
    implements Function<K, V>, Serializable
  {
    private static final long serialVersionUID;
    final Map<K, V> map;

    FunctionForMapNoDefault(Map<K, V> paramMap)
    {
      this.map = ((Map)Preconditions.checkNotNull(paramMap));
    }

    public V apply(@Nullable K paramK)
    {
      Object localObject = this.map.get(paramK);
      if ((localObject != null) || (this.map.containsKey(paramK)));
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool, "Key '%s' not present in map", new Object[] { paramK });
        return localObject;
      }
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if ((paramObject instanceof FunctionForMapNoDefault))
      {
        FunctionForMapNoDefault localFunctionForMapNoDefault = (FunctionForMapNoDefault)paramObject;
        return this.map.equals(localFunctionForMapNoDefault.map);
      }
      return false;
    }

    public int hashCode()
    {
      return this.map.hashCode();
    }

    public String toString()
    {
      return "forMap(" + this.map + ")";
    }
  }

  private static enum IdentityFunction
    implements Function<Object, Object>
  {
    static
    {
      IdentityFunction[] arrayOfIdentityFunction = new IdentityFunction[1];
      arrayOfIdentityFunction[0] = INSTANCE;
    }

    @Nullable
    public Object apply(@Nullable Object paramObject)
    {
      return paramObject;
    }

    public String toString()
    {
      return "identity";
    }
  }

  private static class PredicateFunction<T>
    implements Function<T, Boolean>, Serializable
  {
    private static final long serialVersionUID;
    private final Predicate<T> predicate;

    private PredicateFunction(Predicate<T> paramPredicate)
    {
      this.predicate = ((Predicate)Preconditions.checkNotNull(paramPredicate));
    }

    public Boolean apply(@Nullable T paramT)
    {
      return Boolean.valueOf(this.predicate.apply(paramT));
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if ((paramObject instanceof PredicateFunction))
      {
        PredicateFunction localPredicateFunction = (PredicateFunction)paramObject;
        return this.predicate.equals(localPredicateFunction.predicate);
      }
      return false;
    }

    public int hashCode()
    {
      return this.predicate.hashCode();
    }

    public String toString()
    {
      return "forPredicate(" + this.predicate + ")";
    }
  }

  private static class SupplierFunction<T>
    implements Function<Object, T>, Serializable
  {
    private static final long serialVersionUID;
    private final Supplier<T> supplier;

    private SupplierFunction(Supplier<T> paramSupplier)
    {
      this.supplier = ((Supplier)Preconditions.checkNotNull(paramSupplier));
    }

    public T apply(@Nullable Object paramObject)
    {
      return this.supplier.get();
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if ((paramObject instanceof SupplierFunction))
      {
        SupplierFunction localSupplierFunction = (SupplierFunction)paramObject;
        return this.supplier.equals(localSupplierFunction.supplier);
      }
      return false;
    }

    public int hashCode()
    {
      return this.supplier.hashCode();
    }

    public String toString()
    {
      return "forSupplier(" + this.supplier + ")";
    }
  }

  private static enum ToStringFunction
    implements Function<Object, String>
  {
    static
    {
      ToStringFunction[] arrayOfToStringFunction = new ToStringFunction[1];
      arrayOfToStringFunction[0] = INSTANCE;
    }

    public String apply(Object paramObject)
    {
      Preconditions.checkNotNull(paramObject);
      return paramObject.toString();
    }

    public String toString()
    {
      return "toString";
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.base.Functions
 * JD-Core Version:    0.6.2
 */