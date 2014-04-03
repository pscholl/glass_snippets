package com.google.common.eventbus;

import com.google.common.base.Throwables;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import com.google.common.collect.HashMultimap;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableList.Builder;
import com.google.common.collect.Multimap;
import com.google.common.reflect.TypeToken;
import com.google.common.reflect.TypeToken.TypeSet;
import com.google.common.util.concurrent.UncheckedExecutionException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Set;

class AnnotatedHandlerFinder
  implements HandlerFindingStrategy
{
  private static final LoadingCache<Class<?>, ImmutableList<Method>> handlerMethodsCache = CacheBuilder.newBuilder().weakKeys().build(new CacheLoader()
  {
    public ImmutableList<Method> load(Class<?> paramAnonymousClass)
      throws Exception
    {
      return AnnotatedHandlerFinder.getAnnotatedMethodsInternal(paramAnonymousClass);
    }
  });

  private static ImmutableList<Method> getAnnotatedMethods(Class<?> paramClass)
  {
    try
    {
      ImmutableList localImmutableList = (ImmutableList)handlerMethodsCache.getUnchecked(paramClass);
      return localImmutableList;
    }
    catch (UncheckedExecutionException localUncheckedExecutionException)
    {
      throw Throwables.propagate(localUncheckedExecutionException.getCause());
    }
  }

  private static ImmutableList<Method> getAnnotatedMethodsInternal(Class<?> paramClass)
  {
    Set localSet = TypeToken.of(paramClass).getTypes().rawTypes();
    ImmutableList.Builder localBuilder = ImmutableList.builder();
    Method[] arrayOfMethod = paramClass.getMethods();
    int i = arrayOfMethod.length;
    int j = 0;
    Method localMethod;
    Iterator localIterator;
    if (j < i)
    {
      localMethod = arrayOfMethod[j];
      localIterator = localSet.iterator();
    }
    while (true)
      while (true)
      {
        Class localClass;
        if (localIterator.hasNext())
          localClass = (Class)localIterator.next();
        try
        {
          if (localClass.getMethod(localMethod.getName(), localMethod.getParameterTypes()).isAnnotationPresent(Subscribe.class))
          {
            Class[] arrayOfClass = localMethod.getParameterTypes();
            if (arrayOfClass.length != 1)
              throw new IllegalArgumentException("Method " + localMethod + " has @Subscribe annotation, but requires " + arrayOfClass.length + " arguments.  Event handler methods must require a single argument.");
            arrayOfClass[0];
            localBuilder.add(localMethod);
            j++;
            break;
            return localBuilder.build();
          }
        }
        catch (NoSuchMethodException localNoSuchMethodException)
        {
        }
      }
  }

  private static EventHandler makeHandler(Object paramObject, Method paramMethod)
  {
    if (methodIsDeclaredThreadSafe(paramMethod))
      return new EventHandler(paramObject, paramMethod);
    return new SynchronizedEventHandler(paramObject, paramMethod);
  }

  private static boolean methodIsDeclaredThreadSafe(Method paramMethod)
  {
    return paramMethod.getAnnotation(AllowConcurrentEvents.class) != null;
  }

  public Multimap<Class<?>, EventHandler> findAllHandlers(Object paramObject)
  {
    HashMultimap localHashMultimap = HashMultimap.create();
    Iterator localIterator = getAnnotatedMethods(paramObject.getClass()).iterator();
    while (localIterator.hasNext())
    {
      Method localMethod = (Method)localIterator.next();
      localHashMultimap.put(localMethod.getParameterTypes()[0], makeHandler(paramObject, localMethod));
    }
    return localHashMultimap;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.eventbus.AnnotatedHandlerFinder
 * JD-Core Version:    0.6.2
 */