package com.google.common.reflect;

import com.google.common.base.Preconditions;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

abstract class TypeCapture<T>
{
  final Type capture()
  {
    Type localType = getClass().getGenericSuperclass();
    Preconditions.checkArgument(localType instanceof ParameterizedType, "%s isn't parameterized", new Object[] { localType });
    return ((ParameterizedType)localType).getActualTypeArguments()[0];
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.reflect.TypeCapture
 * JD-Core Version:    0.6.2
 */