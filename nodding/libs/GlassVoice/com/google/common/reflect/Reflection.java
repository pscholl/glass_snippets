package com.google.common.reflect;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;

@Beta
public final class Reflection
{
  public static String getPackageName(Class<?> paramClass)
  {
    return getPackageName(paramClass.getName());
  }

  public static String getPackageName(String paramString)
  {
    int i = paramString.lastIndexOf('.');
    if (i < 0)
      return "";
    return paramString.substring(0, i);
  }

  public static void initialize(Class<?>[] paramArrayOfClass)
  {
    int i = paramArrayOfClass.length;
    int j = 0;
    while (j < i)
    {
      Class<?> localClass = paramArrayOfClass[j];
      try
      {
        Class.forName(localClass.getName(), true, localClass.getClassLoader());
        j++;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        throw new AssertionError(localClassNotFoundException);
      }
    }
  }

  public static <T> T newProxy(Class<T> paramClass, InvocationHandler paramInvocationHandler)
  {
    Preconditions.checkNotNull(paramInvocationHandler);
    Preconditions.checkArgument(paramClass.isInterface(), "%s is not an interface", new Object[] { paramClass });
    return paramClass.cast(Proxy.newProxyInstance(paramClass.getClassLoader(), new Class[] { paramClass }, paramInvocationHandler));
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.reflect.Reflection
 * JD-Core Version:    0.6.2
 */