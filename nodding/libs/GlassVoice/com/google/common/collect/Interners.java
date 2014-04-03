package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Equivalence;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import java.util.concurrent.ConcurrentMap;

@Beta
public final class Interners
{
  public static <E> Function<E, E> asFunction(Interner<E> paramInterner)
  {
    return new InternerFunction((Interner)Preconditions.checkNotNull(paramInterner));
  }

  public static <E> Interner<E> newStrongInterner()
  {
    return new Interner()
    {
      public E intern(E paramAnonymousE)
      {
        Object localObject = this.val$map.putIfAbsent(Preconditions.checkNotNull(paramAnonymousE), paramAnonymousE);
        if (localObject == null)
          return paramAnonymousE;
        return localObject;
      }
    };
  }

  @GwtIncompatible("java.lang.ref.WeakReference")
  public static <E> Interner<E> newWeakInterner()
  {
    return new WeakInterner(null);
  }

  private static class InternerFunction<E>
    implements Function<E, E>
  {
    private final Interner<E> interner;

    public InternerFunction(Interner<E> paramInterner)
    {
      this.interner = paramInterner;
    }

    public E apply(E paramE)
    {
      return this.interner.intern(paramE);
    }

    public boolean equals(Object paramObject)
    {
      if ((paramObject instanceof InternerFunction))
      {
        InternerFunction localInternerFunction = (InternerFunction)paramObject;
        return this.interner.equals(localInternerFunction.interner);
      }
      return false;
    }

    public int hashCode()
    {
      return this.interner.hashCode();
    }
  }

  private static class WeakInterner<E>
    implements Interner<E>
  {
    private final MapMakerInternalMap<E, Dummy> map = new MapMaker().weakKeys().keyEquivalence(Equivalence.equals()).makeCustomMap();

    public E intern(E paramE)
    {
      do
      {
        MapMakerInternalMap.ReferenceEntry localReferenceEntry = this.map.getEntry(paramE);
        if (localReferenceEntry != null)
        {
          Object localObject = localReferenceEntry.getKey();
          if (localObject != null)
            return localObject;
        }
      }
      while ((Dummy)this.map.putIfAbsent(paramE, Dummy.VALUE) != null);
      return paramE;
    }

    private static enum Dummy
    {
      static
      {
        Dummy[] arrayOfDummy = new Dummy[1];
        arrayOfDummy[0] = VALUE;
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.Interners
 * JD-Core Version:    0.6.2
 */