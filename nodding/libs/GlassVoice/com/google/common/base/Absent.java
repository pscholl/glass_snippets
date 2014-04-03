package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import java.util.Collections;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible
final class Absent extends Optional<Object>
{
  static final Absent INSTANCE = new Absent();
  private static final long serialVersionUID;

  private Object readResolve()
  {
    return INSTANCE;
  }

  public Set<Object> asSet()
  {
    return Collections.emptySet();
  }

  public boolean equals(@Nullable Object paramObject)
  {
    return paramObject == this;
  }

  public Object get()
  {
    throw new IllegalStateException("Optional.get() cannot be called on an absent value");
  }

  public int hashCode()
  {
    return 1502476572;
  }

  public boolean isPresent()
  {
    return false;
  }

  public Optional<Object> or(Optional<?> paramOptional)
  {
    return (Optional)Preconditions.checkNotNull(paramOptional);
  }

  public Object or(Supplier<?> paramSupplier)
  {
    return Preconditions.checkNotNull(paramSupplier.get(), "use Optional.orNull() instead of a Supplier that returns null");
  }

  public Object or(Object paramObject)
  {
    return Preconditions.checkNotNull(paramObject, "use Optional.orNull() instead of Optional.or(null)");
  }

  @Nullable
  public Object orNull()
  {
    return null;
  }

  public String toString()
  {
    return "Optional.absent()";
  }

  public <V> Optional<V> transform(Function<Object, V> paramFunction)
  {
    Preconditions.checkNotNull(paramFunction);
    return Optional.absent();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.base.Absent
 * JD-Core Version:    0.6.2
 */