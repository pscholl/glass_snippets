package com.google.common.reflect;

import com.google.common.annotations.Beta;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import javax.annotation.Nullable;

@Beta
public abstract class AbstractInvocationHandler
  implements InvocationHandler
{
  private static final Object[] NO_ARGS = new Object[0];

  public boolean equals(Object paramObject)
  {
    return super.equals(paramObject);
  }

  protected abstract Object handleInvocation(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
    throws Throwable;

  public int hashCode()
  {
    return super.hashCode();
  }

  public final Object invoke(Object paramObject, Method paramMethod, @Nullable Object[] paramArrayOfObject)
    throws Throwable
  {
    int i = 1;
    if (paramArrayOfObject == null)
      paramArrayOfObject = NO_ARGS;
    if ((paramArrayOfObject.length == 0) && (paramMethod.getName().equals("hashCode")))
      return Integer.valueOf(hashCode());
    if ((paramArrayOfObject.length == i) && (paramMethod.getName().equals("equals")) && (paramMethod.getParameterTypes()[0] == Object.class))
    {
      Object localObject = paramArrayOfObject[0];
      if ((paramObject.getClass().isInstance(localObject)) && (equals(Proxy.getInvocationHandler(localObject))));
      while (true)
      {
        return Boolean.valueOf(i);
        int j = 0;
      }
    }
    if ((paramArrayOfObject.length == 0) && (paramMethod.getName().equals("toString")))
      return toString();
    return handleInvocation(paramObject, paramMethod, paramArrayOfObject);
  }

  public String toString()
  {
    return super.toString();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.reflect.AbstractInvocationHandler
 * JD-Core Version:    0.6.2
 */