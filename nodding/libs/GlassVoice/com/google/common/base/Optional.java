package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible(serializable=true)
public abstract class Optional<T>
  implements Serializable
{
  private static final long serialVersionUID;

  public static <T> Optional<T> absent()
  {
    return Absent.INSTANCE;
  }

  public static <T> Optional<T> fromNullable(@Nullable T paramT)
  {
    if (paramT == null)
      return absent();
    return new Present(paramT);
  }

  public static <T> Optional<T> of(T paramT)
  {
    return new Present(Preconditions.checkNotNull(paramT));
  }

  @Beta
  public static <T> Iterable<T> presentInstances(Iterable<? extends Optional<? extends T>> paramIterable)
  {
    Preconditions.checkNotNull(paramIterable);
    return new Iterable()
    {
      public Iterator<T> iterator()
      {
        return new AbstractIterator()
        {
          private final Iterator<? extends Optional<? extends T>> iterator = (Iterator)Preconditions.checkNotNull(Optional.1.this.val$optionals.iterator());

          protected T computeNext()
          {
            while (this.iterator.hasNext())
            {
              Optional localOptional = (Optional)this.iterator.next();
              if (localOptional.isPresent())
                return localOptional.get();
            }
            return endOfData();
          }
        };
      }
    };
  }

  public abstract Set<T> asSet();

  public abstract boolean equals(@Nullable Object paramObject);

  public abstract T get();

  public abstract int hashCode();

  public abstract boolean isPresent();

  public abstract Optional<T> or(Optional<? extends T> paramOptional);

  @Beta
  public abstract T or(Supplier<? extends T> paramSupplier);

  public abstract T or(T paramT);

  @Nullable
  public abstract T orNull();

  public abstract String toString();

  public abstract <V> Optional<V> transform(Function<? super T, V> paramFunction);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.base.Optional
 * JD-Core Version:    0.6.2
 */