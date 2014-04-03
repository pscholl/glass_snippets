package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Collection;
import java.util.EnumSet;

@GwtCompatible(emulated=true, serializable=true)
final class ImmutableEnumSet<E extends Enum<E>> extends ImmutableSet<E>
{
  private final transient EnumSet<E> delegate;
  private transient int hashCode;

  private ImmutableEnumSet(EnumSet<E> paramEnumSet)
  {
    this.delegate = paramEnumSet;
  }

  static <E extends Enum<E>> ImmutableSet<E> asImmutable(EnumSet<E> paramEnumSet)
  {
    switch (paramEnumSet.size())
    {
    default:
      return new ImmutableEnumSet(paramEnumSet);
    case 0:
      return ImmutableSet.of();
    case 1:
    }
    return ImmutableSet.of(Iterables.getOnlyElement(paramEnumSet));
  }

  public boolean contains(Object paramObject)
  {
    return this.delegate.contains(paramObject);
  }

  public boolean containsAll(Collection<?> paramCollection)
  {
    return this.delegate.containsAll(paramCollection);
  }

  public boolean equals(Object paramObject)
  {
    return (paramObject == this) || (this.delegate.equals(paramObject));
  }

  public int hashCode()
  {
    int i = this.hashCode;
    if (i == 0)
    {
      i = this.delegate.hashCode();
      this.hashCode = i;
    }
    return i;
  }

  public boolean isEmpty()
  {
    return this.delegate.isEmpty();
  }

  boolean isPartialView()
  {
    return false;
  }

  public UnmodifiableIterator<E> iterator()
  {
    return Iterators.unmodifiableIterator(this.delegate.iterator());
  }

  public int size()
  {
    return this.delegate.size();
  }

  public Object[] toArray()
  {
    return this.delegate.toArray();
  }

  public <T> T[] toArray(T[] paramArrayOfT)
  {
    return this.delegate.toArray(paramArrayOfT);
  }

  public String toString()
  {
    return this.delegate.toString();
  }

  Object writeReplace()
  {
    return new EnumSerializedForm(this.delegate);
  }

  private static class EnumSerializedForm<E extends Enum<E>>
    implements Serializable
  {
    private static final long serialVersionUID;
    final EnumSet<E> delegate;

    EnumSerializedForm(EnumSet<E> paramEnumSet)
    {
      this.delegate = paramEnumSet;
    }

    Object readResolve()
    {
      return new ImmutableEnumSet(this.delegate.clone(), null);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableEnumSet
 * JD-Core Version:    0.6.2
 */