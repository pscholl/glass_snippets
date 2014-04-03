package com.google.common.eventbus;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class SynchronizedEventHandler extends EventHandler
{
  public SynchronizedEventHandler(Object paramObject, Method paramMethod)
  {
    super(paramObject, paramMethod);
  }

  public void handleEvent(Object paramObject)
    throws InvocationTargetException
  {
    try
    {
      super.handleEvent(paramObject);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.eventbus.SynchronizedEventHandler
 * JD-Core Version:    0.6.2
 */