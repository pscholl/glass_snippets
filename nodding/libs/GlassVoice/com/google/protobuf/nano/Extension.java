package com.google.protobuf.nano;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

public class Extension<T>
{
  public final int fieldNumber;
  public Class<T> fieldType;
  public boolean isRepeatedField;
  public Class<T> listType;

  private Extension(int paramInt, TypeLiteral<T> paramTypeLiteral)
  {
    this.fieldNumber = paramInt;
    this.isRepeatedField = paramTypeLiteral.isList();
    this.fieldType = paramTypeLiteral.getTargetClass();
    if (this.isRepeatedField);
    for (Class localClass = paramTypeLiteral.getListType(); ; localClass = null)
    {
      this.listType = localClass;
      return;
    }
  }

  public static <T> Extension<T> create(int paramInt, TypeLiteral<T> paramTypeLiteral)
  {
    return new Extension(paramInt, paramTypeLiteral);
  }

  public static <T> Extension<List<T>> createRepeated(int paramInt, TypeLiteral<List<T>> paramTypeLiteral)
  {
    return new Extension(paramInt, paramTypeLiteral);
  }

  public static abstract class TypeLiteral<T>
  {
    private final Type type;

    protected TypeLiteral()
    {
      Type localType = getClass().getGenericSuperclass();
      if ((localType instanceof Class))
        throw new RuntimeException("Missing type parameter");
      this.type = ((ParameterizedType)localType).getActualTypeArguments()[0];
    }

    private Class<T> getListType()
    {
      return (Class)((ParameterizedType)this.type).getRawType();
    }

    private Class<T> getTargetClass()
    {
      if (isList())
        return (Class)((ParameterizedType)this.type).getActualTypeArguments()[0];
      return (Class)this.type;
    }

    private boolean isList()
    {
      return this.type instanceof ParameterizedType;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.protobuf.nano.Extension
 * JD-Core Version:    0.6.2
 */