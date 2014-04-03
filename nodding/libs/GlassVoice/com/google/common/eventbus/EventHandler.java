package com.google.common.eventbus;

import com.google.common.base.Preconditions;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import javax.annotation.Nullable;

class EventHandler
{
  private final Method method;
  private final Object target;

  EventHandler(Object paramObject, Method paramMethod)
  {
    Preconditions.checkNotNull(paramObject, "EventHandler target cannot be null.");
    Preconditions.checkNotNull(paramMethod, "EventHandler method cannot be null.");
    this.target = paramObject;
    this.method = paramMethod;
    paramMethod.setAccessible(true);
  }

  public boolean equals(@Nullable Object paramObject)
  {
    boolean bool1 = paramObject instanceof EventHandler;
    boolean bool2 = false;
    if (bool1)
    {
      EventHandler localEventHandler = (EventHandler)paramObject;
      Object localObject1 = this.target;
      Object localObject2 = localEventHandler.target;
      bool2 = false;
      if (localObject1 == localObject2)
      {
        boolean bool3 = this.method.equals(localEventHandler.method);
        bool2 = false;
        if (bool3)
          bool2 = true;
      }
    }
    return bool2;
  }

  public void handleEvent(Object paramObject)
    throws InvocationTargetException
  {
    Preconditions.checkNotNull(paramObject);
    try
    {
      this.method.invoke(this.target, new Object[] { paramObject });
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw new Error("Method rejected target/argument: " + paramObject, localIllegalArgumentException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new Error("Method became inaccessible: " + paramObject, localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      if ((localInvocationTargetException.getCause() instanceof Error))
        throw ((Error)localInvocationTargetException.getCause());
      throw localInvocationTargetException;
    }
  }

  public int hashCode()
  {
    return 31 * (31 + this.method.hashCode()) + System.identityHashCode(this.target);
  }

  public String toString()
  {
    return "[wrapper " + this.method + "]";
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.eventbus.EventHandler
 * JD-Core Version:    0.6.2
 */