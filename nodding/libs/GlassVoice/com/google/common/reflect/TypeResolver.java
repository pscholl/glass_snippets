package com.google.common.reflect;

import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMap.Builder;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;

class TypeResolver
{
  private final ImmutableMap<TypeVariable<?>, Type> typeTable;

  public TypeResolver()
  {
    this.typeTable = ImmutableMap.of();
  }

  private TypeResolver(ImmutableMap<TypeVariable<?>, Type> paramImmutableMap)
  {
    this.typeTable = paramImmutableMap;
  }

  static TypeResolver accordingTo(Type paramType)
  {
    return new TypeResolver().where(TypeMappingIntrospector.getTypeMappings(paramType));
  }

  private static <T> T checkNonNullArgument(T paramT, String paramString, Object[] paramArrayOfObject)
  {
    if (paramT != null);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, paramString, paramArrayOfObject);
      return paramT;
    }
  }

  private static <T> T expectArgument(Class<T> paramClass, Object paramObject)
  {
    try
    {
      Object localObject = paramClass.cast(paramObject);
      return localObject;
    }
    catch (ClassCastException localClassCastException)
    {
    }
    throw new IllegalArgumentException(paramObject + " is not a " + paramClass.getSimpleName());
  }

  private static void populateTypeMappings(Map<TypeVariable<?>, Type> paramMap, Type paramType1, Type paramType2)
  {
    if (paramType1.equals(paramType2));
    while (true)
    {
      return;
      if ((paramType1 instanceof TypeVariable))
      {
        paramMap.put((TypeVariable)paramType1, paramType2);
        return;
      }
      if ((paramType1 instanceof GenericArrayType))
      {
        populateTypeMappings(paramMap, ((GenericArrayType)paramType1).getGenericComponentType(), (Type)checkNonNullArgument(Types.getComponentType(paramType2), "%s is not an array type.", new Object[] { paramType2 }));
        return;
      }
      if ((paramType1 instanceof ParameterizedType))
      {
        ParameterizedType localParameterizedType1 = (ParameterizedType)paramType1;
        ParameterizedType localParameterizedType2 = (ParameterizedType)expectArgument(ParameterizedType.class, paramType2);
        Preconditions.checkArgument(localParameterizedType1.getRawType().equals(localParameterizedType2.getRawType()), "Inconsistent raw type: %s vs. %s", new Object[] { paramType1, paramType2 });
        Type[] arrayOfType5 = localParameterizedType1.getActualTypeArguments();
        Type[] arrayOfType6 = localParameterizedType2.getActualTypeArguments();
        if (arrayOfType5.length == arrayOfType6.length);
        for (boolean bool2 = true; ; bool2 = false)
        {
          Preconditions.checkArgument(bool2);
          for (int k = 0; k < arrayOfType5.length; k++)
            populateTypeMappings(paramMap, arrayOfType5[k], arrayOfType6[k]);
          break;
        }
      }
      if (!(paramType1 instanceof WildcardType))
        break;
      WildcardType localWildcardType1 = (WildcardType)paramType1;
      WildcardType localWildcardType2 = (WildcardType)expectArgument(WildcardType.class, paramType2);
      Type[] arrayOfType1 = localWildcardType1.getUpperBounds();
      Type[] arrayOfType2 = localWildcardType2.getUpperBounds();
      Type[] arrayOfType3 = localWildcardType1.getLowerBounds();
      Type[] arrayOfType4 = localWildcardType2.getLowerBounds();
      if ((arrayOfType1.length == arrayOfType2.length) && (arrayOfType3.length == arrayOfType4.length));
      for (boolean bool1 = true; ; bool1 = false)
      {
        Preconditions.checkArgument(bool1, "Incompatible type: %s vs. %s", new Object[] { paramType1, paramType2 });
        for (int i = 0; i < arrayOfType1.length; i++)
          populateTypeMappings(paramMap, arrayOfType1[i], arrayOfType2[i]);
      }
      for (int j = 0; j < arrayOfType3.length; j++)
        populateTypeMappings(paramMap, arrayOfType3[j], arrayOfType4[j]);
    }
    throw new IllegalArgumentException("No type mapping from " + paramType1);
  }

  private Type resolveGenericArrayType(GenericArrayType paramGenericArrayType)
  {
    return Types.newArrayType(resolveType(paramGenericArrayType.getGenericComponentType()));
  }

  private ParameterizedType resolveParameterizedType(ParameterizedType paramParameterizedType)
  {
    Type localType1 = paramParameterizedType.getOwnerType();
    if (localType1 == null);
    Type localType3;
    Type[] arrayOfType2;
    for (Type localType2 = null; ; localType2 = resolveType(localType1))
    {
      localType3 = resolveType(paramParameterizedType.getRawType());
      Type[] arrayOfType1 = paramParameterizedType.getActualTypeArguments();
      arrayOfType2 = new Type[arrayOfType1.length];
      for (int i = 0; i < arrayOfType1.length; i++)
        arrayOfType2[i] = resolveType(arrayOfType1[i]);
    }
    return Types.newParameterizedTypeWithOwner(localType2, (Class)localType3, arrayOfType2);
  }

  private Type resolveTypeVariable(final TypeVariable<?> paramTypeVariable)
  {
    return resolveTypeVariable(paramTypeVariable, new TypeResolver(this.typeTable, paramTypeVariable)
    {
      Type resolveTypeVariable(TypeVariable<?> paramAnonymousTypeVariable, TypeResolver paramAnonymousTypeResolver)
      {
        if (paramAnonymousTypeVariable.getGenericDeclaration().equals(paramTypeVariable.getGenericDeclaration()))
          return paramAnonymousTypeVariable;
        return jdField_this.resolveTypeVariable(paramAnonymousTypeVariable, paramAnonymousTypeResolver);
      }
    });
  }

  private Type[] resolveTypes(Type[] paramArrayOfType)
  {
    Type[] arrayOfType = new Type[paramArrayOfType.length];
    for (int i = 0; i < paramArrayOfType.length; i++)
      arrayOfType[i] = resolveType(paramArrayOfType[i]);
    return arrayOfType;
  }

  public final Type resolveType(Type paramType)
  {
    Preconditions.checkNotNull(paramType);
    if ((paramType instanceof TypeVariable))
      paramType = resolveTypeVariable((TypeVariable)paramType);
    do
    {
      return paramType;
      if ((paramType instanceof ParameterizedType))
        return resolveParameterizedType((ParameterizedType)paramType);
      if ((paramType instanceof GenericArrayType))
        return resolveGenericArrayType((GenericArrayType)paramType);
    }
    while (!(paramType instanceof WildcardType));
    WildcardType localWildcardType = (WildcardType)paramType;
    return new Types.WildcardTypeImpl(resolveTypes(localWildcardType.getLowerBounds()), resolveTypes(localWildcardType.getUpperBounds()));
  }

  Type resolveTypeVariable(TypeVariable<?> paramTypeVariable, TypeResolver paramTypeResolver)
  {
    Preconditions.checkNotNull(paramTypeResolver);
    Type localType = (Type)this.typeTable.get(paramTypeVariable);
    if (localType == null)
    {
      Type[] arrayOfType = paramTypeVariable.getBounds();
      if (arrayOfType.length == 0)
        return paramTypeVariable;
      return Types.newTypeVariable(paramTypeVariable.getGenericDeclaration(), paramTypeVariable.getName(), paramTypeResolver.resolveTypes(arrayOfType));
    }
    return paramTypeResolver.resolveType(localType);
  }

  public final TypeResolver where(Type paramType1, Type paramType2)
  {
    HashMap localHashMap = Maps.newHashMap();
    populateTypeMappings(localHashMap, (Type)Preconditions.checkNotNull(paramType1), (Type)Preconditions.checkNotNull(paramType2));
    return where(localHashMap);
  }

  final TypeResolver where(Map<? extends TypeVariable<?>, ? extends Type> paramMap)
  {
    ImmutableMap.Builder localBuilder = ImmutableMap.builder();
    localBuilder.putAll(this.typeTable);
    Iterator localIterator = paramMap.entrySet().iterator();
    if (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      TypeVariable localTypeVariable = (TypeVariable)localEntry.getKey();
      Type localType = (Type)localEntry.getValue();
      if (!localTypeVariable.equals(localType));
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool, "Type variable %s bound to itself", new Object[] { localTypeVariable });
        localBuilder.put(localTypeVariable, localType);
        break;
      }
    }
    return new TypeResolver(localBuilder.build());
  }

  private static final class TypeMappingIntrospector
  {
    private static final TypeResolver.WildcardCapturer wildcardCapturer = new TypeResolver.WildcardCapturer(null);
    private final Set<Type> introspectedTypes = Sets.newHashSet();
    private final Map<TypeVariable<?>, Type> mappings = Maps.newHashMap();

    static ImmutableMap<TypeVariable<?>, Type> getTypeMappings(Type paramType)
    {
      TypeMappingIntrospector localTypeMappingIntrospector = new TypeMappingIntrospector();
      localTypeMappingIntrospector.introspect(wildcardCapturer.capture(paramType));
      return ImmutableMap.copyOf(localTypeMappingIntrospector.mappings);
    }

    private void introspect(Type paramType)
    {
      if (!this.introspectedTypes.add(paramType));
      while (true)
      {
        return;
        if ((paramType instanceof ParameterizedType))
        {
          introspectParameterizedType((ParameterizedType)paramType);
          return;
        }
        if ((paramType instanceof Class))
        {
          introspectClass((Class)paramType);
          return;
        }
        if ((paramType instanceof TypeVariable))
        {
          Type[] arrayOfType2 = ((TypeVariable)paramType).getBounds();
          int k = arrayOfType2.length;
          for (int m = 0; m < k; m++)
            introspect(arrayOfType2[m]);
        }
        else if ((paramType instanceof WildcardType))
        {
          Type[] arrayOfType1 = ((WildcardType)paramType).getUpperBounds();
          int i = arrayOfType1.length;
          for (int j = 0; j < i; j++)
            introspect(arrayOfType1[j]);
        }
      }
    }

    private void introspectClass(Class<?> paramClass)
    {
      introspect(paramClass.getGenericSuperclass());
      Type[] arrayOfType = paramClass.getGenericInterfaces();
      int i = arrayOfType.length;
      for (int j = 0; j < i; j++)
        introspect(arrayOfType[j]);
    }

    private void introspectParameterizedType(ParameterizedType paramParameterizedType)
    {
      Class localClass = (Class)paramParameterizedType.getRawType();
      TypeVariable[] arrayOfTypeVariable = localClass.getTypeParameters();
      Type[] arrayOfType = paramParameterizedType.getActualTypeArguments();
      if (arrayOfTypeVariable.length == arrayOfType.length);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkState(bool);
        for (int i = 0; i < arrayOfTypeVariable.length; i++)
          map(arrayOfTypeVariable[i], arrayOfType[i]);
      }
      introspectClass(localClass);
      introspect(paramParameterizedType.getOwnerType());
    }

    private void map(TypeVariable<?> paramTypeVariable, Type paramType)
    {
      if (this.mappings.containsKey(paramTypeVariable))
        return;
      for (Type localType1 = paramType; ; localType1 = (Type)this.mappings.get(localType1))
      {
        if (localType1 == null)
          break label72;
        if (paramTypeVariable.equals(localType1))
        {
          for (Type localType2 = paramType; localType2 != null; localType2 = (Type)this.mappings.remove(localType2));
          break;
        }
      }
      label72: this.mappings.put(paramTypeVariable, paramType);
    }
  }

  private static final class WildcardCapturer
  {
    private final AtomicInteger id = new AtomicInteger();

    private Type[] capture(Type[] paramArrayOfType)
    {
      Type[] arrayOfType = new Type[paramArrayOfType.length];
      for (int i = 0; i < paramArrayOfType.length; i++)
        arrayOfType[i] = capture(paramArrayOfType[i]);
      return arrayOfType;
    }

    private Type captureNullable(@Nullable Type paramType)
    {
      if (paramType == null)
        return null;
      return capture(paramType);
    }

    Type capture(Type paramType)
    {
      Preconditions.checkNotNull(paramType);
      if ((paramType instanceof Class));
      WildcardType localWildcardType;
      do
      {
        do
          return paramType;
        while ((paramType instanceof TypeVariable));
        if ((paramType instanceof GenericArrayType))
          return Types.newArrayType(capture(((GenericArrayType)paramType).getGenericComponentType()));
        if ((paramType instanceof ParameterizedType))
        {
          ParameterizedType localParameterizedType = (ParameterizedType)paramType;
          return Types.newParameterizedTypeWithOwner(captureNullable(localParameterizedType.getOwnerType()), (Class)localParameterizedType.getRawType(), capture(localParameterizedType.getActualTypeArguments()));
        }
        if (!(paramType instanceof WildcardType))
          break;
        localWildcardType = (WildcardType)paramType;
      }
      while (localWildcardType.getLowerBounds().length != 0);
      Type[] arrayOfType = localWildcardType.getUpperBounds();
      return Types.newTypeVariable(WildcardCapturer.class, "capture#" + this.id.incrementAndGet() + "-of ? extends " + Joiner.on('&').join(arrayOfType), localWildcardType.getUpperBounds());
      throw new AssertionError("must have been one of the known types");
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.reflect.TypeResolver
 * JD-Core Version:    0.6.2
 */