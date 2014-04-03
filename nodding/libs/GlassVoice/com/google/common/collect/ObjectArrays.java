package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
public final class ObjectArrays
{
  static final Object[] EMPTY_ARRAY = new Object[0];

  static <T> T[] arraysCopyOf(T[] paramArrayOfT, int paramInt)
  {
    Object[] arrayOfObject = newArray(paramArrayOfT, paramInt);
    System.arraycopy(paramArrayOfT, 0, arrayOfObject, 0, Math.min(paramArrayOfT.length, paramInt));
    return arrayOfObject;
  }

  static Object checkElementNotNull(Object paramObject, int paramInt)
  {
    if (paramObject == null)
      throw new NullPointerException("at index " + paramInt);
    return paramObject;
  }

  public static <T> T[] concat(@Nullable T paramT, T[] paramArrayOfT)
  {
    Object[] arrayOfObject = newArray(paramArrayOfT, 1 + paramArrayOfT.length);
    arrayOfObject[0] = paramT;
    System.arraycopy(paramArrayOfT, 0, arrayOfObject, 1, paramArrayOfT.length);
    return arrayOfObject;
  }

  public static <T> T[] concat(T[] paramArrayOfT, @Nullable T paramT)
  {
    Object[] arrayOfObject = arraysCopyOf(paramArrayOfT, 1 + paramArrayOfT.length);
    arrayOfObject[paramArrayOfT.length] = paramT;
    return arrayOfObject;
  }

  @GwtIncompatible("Array.newInstance(Class, int)")
  public static <T> T[] concat(T[] paramArrayOfT1, T[] paramArrayOfT2, Class<T> paramClass)
  {
    Object[] arrayOfObject = newArray(paramClass, paramArrayOfT1.length + paramArrayOfT2.length);
    System.arraycopy(paramArrayOfT1, 0, arrayOfObject, 0, paramArrayOfT1.length);
    System.arraycopy(paramArrayOfT2, 0, arrayOfObject, paramArrayOfT1.length, paramArrayOfT2.length);
    return arrayOfObject;
  }

  private static Object[] fillArray(Iterable<?> paramIterable, Object[] paramArrayOfObject)
  {
    int i = 0;
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      int j = i + 1;
      paramArrayOfObject[i] = localObject;
      i = j;
    }
    return paramArrayOfObject;
  }

  @GwtIncompatible("Array.newInstance(Class, int)")
  public static <T> T[] newArray(Class<T> paramClass, int paramInt)
  {
    return (Object[])Array.newInstance(paramClass, paramInt);
  }

  public static <T> T[] newArray(T[] paramArrayOfT, int paramInt)
  {
    return Platform.newArray(paramArrayOfT, paramInt);
  }

  static void swap(Object[] paramArrayOfObject, int paramInt1, int paramInt2)
  {
    Object localObject = paramArrayOfObject[paramInt1];
    paramArrayOfObject[paramInt1] = paramArrayOfObject[paramInt2];
    paramArrayOfObject[paramInt2] = localObject;
  }

  static Object[] toArrayImpl(Collection<?> paramCollection)
  {
    return fillArray(paramCollection, new Object[paramCollection.size()]);
  }

  static <T> T[] toArrayImpl(Collection<?> paramCollection, T[] paramArrayOfT)
  {
    int i = paramCollection.size();
    if (paramArrayOfT.length < i)
      paramArrayOfT = newArray(paramArrayOfT, i);
    fillArray(paramCollection, paramArrayOfT);
    if (paramArrayOfT.length > i)
      paramArrayOfT[i] = null;
    return paramArrayOfT;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ObjectArrays
 * JD-Core Version:    0.6.2
 */