package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;

@GwtCompatible(emulated=true, serializable=true)
final class RegularImmutableSet<E> extends ImmutableSet.ArrayImmutableSet<E>
{
  private final transient int hashCode;
  private final transient int mask;

  @VisibleForTesting
  final transient Object[] table;

  RegularImmutableSet(Object[] paramArrayOfObject1, int paramInt1, Object[] paramArrayOfObject2, int paramInt2)
  {
    super(paramArrayOfObject1);
    this.table = paramArrayOfObject2;
    this.mask = paramInt2;
    this.hashCode = paramInt1;
  }

  public boolean contains(Object paramObject)
  {
    if (paramObject == null)
      return false;
    for (int i = Hashing.smear(paramObject.hashCode()); ; i++)
    {
      Object localObject = this.table[(i & this.mask)];
      if (localObject == null)
        break;
      if (localObject.equals(paramObject))
        return true;
    }
  }

  public int hashCode()
  {
    return this.hashCode;
  }

  boolean isHashCodeFast()
  {
    return true;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.RegularImmutableSet
 * JD-Core Version:    0.6.2
 */