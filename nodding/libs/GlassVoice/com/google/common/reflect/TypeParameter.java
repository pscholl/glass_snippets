package com.google.common.reflect;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import javax.annotation.Nullable;

@Beta
public abstract class TypeParameter<T> extends TypeCapture<T>
{
  final TypeVariable<?> typeVariable;

  protected TypeParameter()
  {
    Type localType = capture();
    Preconditions.checkArgument(localType instanceof TypeVariable, "%s should be a type variable.", new Object[] { localType });
    this.typeVariable = ((TypeVariable)localType);
  }

  public final boolean equals(@Nullable Object paramObject)
  {
    if ((paramObject instanceof TypeParameter))
    {
      TypeParameter localTypeParameter = (TypeParameter)paramObject;
      return this.typeVariable.equals(localTypeParameter.typeVariable);
    }
    return false;
  }

  public final int hashCode()
  {
    return this.typeVariable.hashCode();
  }

  public String toString()
  {
    return this.typeVariable.toString();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.reflect.TypeParameter
 * JD-Core Version:    0.6.2
 */