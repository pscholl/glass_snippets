package com.google.common.reflect;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableList.Builder;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import javax.annotation.Nullable;

@Beta
public abstract class Invokable<T, R> extends Element
  implements GenericDeclaration
{
  <M extends AccessibleObject,  extends Member> Invokable(M paramM)
  {
    super(paramM);
  }

  public static <T> Invokable<T, T> from(Constructor<T> paramConstructor)
  {
    return new ConstructorInvokable(paramConstructor);
  }

  public static Invokable<?, Object> from(Method paramMethod)
  {
    return new MethodInvokable(paramMethod);
  }

  public final Class<? super T> getDeclaringClass()
  {
    return super.getDeclaringClass();
  }

  public final ImmutableList<TypeToken<? extends Throwable>> getExceptionTypes()
  {
    ImmutableList.Builder localBuilder = ImmutableList.builder();
    Type[] arrayOfType = getGenericExceptionTypes();
    int i = arrayOfType.length;
    for (int j = 0; j < i; j++)
      localBuilder.add(TypeToken.of(arrayOfType[j]));
    return localBuilder.build();
  }

  abstract Type[] getGenericExceptionTypes();

  abstract Type[] getGenericParameterTypes();

  abstract Type getGenericReturnType();

  public TypeToken<T> getOwnerType()
  {
    return TypeToken.of(getDeclaringClass());
  }

  abstract Annotation[][] getParameterAnnotations();

  public final ImmutableList<Parameter> getParameters()
  {
    Type[] arrayOfType = getGenericParameterTypes();
    Annotation[][] arrayOfAnnotation = getParameterAnnotations();
    ImmutableList.Builder localBuilder = ImmutableList.builder();
    for (int i = 0; i < arrayOfType.length; i++)
      localBuilder.add(new Parameter(this, i, TypeToken.of(arrayOfType[i]), arrayOfAnnotation[i]));
    return localBuilder.build();
  }

  public final TypeToken<? extends R> getReturnType()
  {
    return TypeToken.of(getGenericReturnType());
  }

  public final R invoke(@Nullable T paramT, Object[] paramArrayOfObject)
    throws InvocationTargetException, IllegalAccessException
  {
    return invokeInternal(paramT, (Object[])Preconditions.checkNotNull(paramArrayOfObject));
  }

  abstract Object invokeInternal(@Nullable Object paramObject, Object[] paramArrayOfObject)
    throws InvocationTargetException, IllegalAccessException;

  public abstract boolean isOverridable();

  public abstract boolean isVarArgs();

  public final <R1 extends R> Invokable<T, R1> returning(TypeToken<R1> paramTypeToken)
  {
    if (!paramTypeToken.isAssignableFrom(getReturnType()))
      throw new IllegalArgumentException("Invokable is known to return " + getReturnType() + ", not " + paramTypeToken);
    return this;
  }

  public final <R1 extends R> Invokable<T, R1> returning(Class<R1> paramClass)
  {
    return returning(TypeToken.of(paramClass));
  }

  static class ConstructorInvokable<T> extends Invokable<T, T>
  {
    private final Constructor<?> constructor;

    ConstructorInvokable(Constructor<?> paramConstructor)
    {
      super();
      this.constructor = paramConstructor;
    }

    Type[] getGenericExceptionTypes()
    {
      return this.constructor.getGenericExceptionTypes();
    }

    Type[] getGenericParameterTypes()
    {
      Type[] arrayOfType1 = this.constructor.getGenericParameterTypes();
      Class localClass = this.constructor.getDeclaringClass();
      if ((!Modifier.isStatic(localClass.getModifiers())) && (localClass.getEnclosingClass() != null) && (arrayOfType1.length == this.constructor.getParameterTypes().length))
      {
        Type[] arrayOfType2 = new Type[-1 + arrayOfType1.length];
        System.arraycopy(arrayOfType1, 1, arrayOfType2, 0, -1 + arrayOfType1.length);
        return arrayOfType2;
      }
      return arrayOfType1;
    }

    Type getGenericReturnType()
    {
      return this.constructor.getDeclaringClass();
    }

    final Annotation[][] getParameterAnnotations()
    {
      return this.constructor.getParameterAnnotations();
    }

    public final TypeVariable<?>[] getTypeParameters()
    {
      return this.constructor.getTypeParameters();
    }

    final Object invokeInternal(@Nullable Object paramObject, Object[] paramArrayOfObject)
      throws InvocationTargetException, IllegalAccessException
    {
      try
      {
        Object localObject = this.constructor.newInstance(paramArrayOfObject);
        return localObject;
      }
      catch (InstantiationException localInstantiationException)
      {
        throw new RuntimeException(this.constructor + " failed.", localInstantiationException);
      }
    }

    public final boolean isOverridable()
    {
      return false;
    }

    public final boolean isVarArgs()
    {
      return this.constructor.isVarArgs();
    }
  }

  static class MethodInvokable<T> extends Invokable<T, Object>
  {
    private final Method method;

    MethodInvokable(Method paramMethod)
    {
      super();
      this.method = paramMethod;
    }

    Type[] getGenericExceptionTypes()
    {
      return this.method.getGenericExceptionTypes();
    }

    Type[] getGenericParameterTypes()
    {
      return this.method.getGenericParameterTypes();
    }

    Type getGenericReturnType()
    {
      return this.method.getGenericReturnType();
    }

    final Annotation[][] getParameterAnnotations()
    {
      return this.method.getParameterAnnotations();
    }

    public final TypeVariable<?>[] getTypeParameters()
    {
      return this.method.getTypeParameters();
    }

    final Object invokeInternal(@Nullable Object paramObject, Object[] paramArrayOfObject)
      throws InvocationTargetException, IllegalAccessException
    {
      return this.method.invoke(paramObject, paramArrayOfObject);
    }

    public final boolean isOverridable()
    {
      return (!isFinal()) && (!isPrivate()) && (!isStatic()) && (!Modifier.isFinal(getDeclaringClass().getModifiers()));
    }

    public final boolean isVarArgs()
    {
      return this.method.isVarArgs();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.reflect.Invokable
 * JD-Core Version:    0.6.2
 */