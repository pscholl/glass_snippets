package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.collect.ObjectArrays;
import com.google.common.collect.Sets;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@Beta
public final class SimpleTimeLimiter
  implements TimeLimiter
{
  private final ExecutorService executor;

  public SimpleTimeLimiter()
  {
    this(Executors.newCachedThreadPool());
  }

  public SimpleTimeLimiter(ExecutorService paramExecutorService)
  {
    this.executor = ((ExecutorService)Preconditions.checkNotNull(paramExecutorService));
  }

  private static boolean declaresInterruptedEx(Method paramMethod)
  {
    Class[] arrayOfClass = paramMethod.getExceptionTypes();
    int i = arrayOfClass.length;
    for (int j = 0; j < i; j++)
      if (arrayOfClass[j] == InterruptedException.class)
        return true;
    return false;
  }

  private static Set<Method> findInterruptibleMethods(Class<?> paramClass)
  {
    HashSet localHashSet = Sets.newHashSet();
    for (Method localMethod : paramClass.getMethods())
      if (declaresInterruptedEx(localMethod))
        localHashSet.add(localMethod);
    return localHashSet;
  }

  private static <T> T newProxy(Class<T> paramClass, InvocationHandler paramInvocationHandler)
  {
    return paramClass.cast(Proxy.newProxyInstance(paramClass.getClassLoader(), new Class[] { paramClass }, paramInvocationHandler));
  }

  private static Exception throwCause(Exception paramException, boolean paramBoolean)
    throws Exception
  {
    Throwable localThrowable = paramException.getCause();
    if (localThrowable == null)
      throw paramException;
    if (paramBoolean)
      localThrowable.setStackTrace((StackTraceElement[])ObjectArrays.concat(localThrowable.getStackTrace(), paramException.getStackTrace(), StackTraceElement.class));
    if ((localThrowable instanceof Exception))
      throw ((Exception)localThrowable);
    if ((localThrowable instanceof Error))
      throw ((Error)localThrowable);
    throw paramException;
  }

  public <T> T callWithTimeout(Callable<T> paramCallable, long paramLong, TimeUnit paramTimeUnit, boolean paramBoolean)
    throws Exception
  {
    Preconditions.checkNotNull(paramCallable);
    Preconditions.checkNotNull(paramTimeUnit);
    boolean bool;
    if (paramLong > 0L)
      bool = true;
    while (true)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(paramLong);
      Preconditions.checkArgument(bool, "timeout must be positive: %s", arrayOfObject);
      Future localFuture = this.executor.submit(paramCallable);
      if (paramBoolean);
      try
      {
        Object localObject2 = localFuture.get(paramLong, paramTimeUnit);
        return localObject2;
        bool = false;
      }
      catch (InterruptedException localInterruptedException)
      {
        localFuture.cancel(true);
        throw localInterruptedException;
      }
      catch (ExecutionException localExecutionException)
      {
        throw throwCause(localExecutionException, true);
        Object localObject1 = Uninterruptibles.getUninterruptibly(localFuture, paramLong, paramTimeUnit);
        return localObject1;
      }
      catch (TimeoutException localTimeoutException)
      {
        localFuture.cancel(true);
        throw new UncheckedTimeoutException(localTimeoutException);
      }
    }
  }

  public <T> T newProxy(final T paramT, Class<T> paramClass, final long paramLong, TimeUnit paramTimeUnit)
  {
    Preconditions.checkNotNull(paramT);
    Preconditions.checkNotNull(paramClass);
    Preconditions.checkNotNull(paramTimeUnit);
    if (paramLong > 0L);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "bad timeout: " + paramLong);
      Preconditions.checkArgument(paramClass.isInterface(), "interfaceType must be an interface type");
      return newProxy(paramClass, new InvocationHandler()
      {
        public Object invoke(Object paramAnonymousObject, final Method paramAnonymousMethod, final Object[] paramAnonymousArrayOfObject)
          throws Throwable
        {
          Callable local1 = new Callable()
          {
            public Object call()
              throws Exception
            {
              try
              {
                Object localObject = paramAnonymousMethod.invoke(SimpleTimeLimiter.1.this.val$target, paramAnonymousArrayOfObject);
                return localObject;
              }
              catch (InvocationTargetException localInvocationTargetException)
              {
                SimpleTimeLimiter.throwCause(localInvocationTargetException, false);
              }
              throw new AssertionError("can't get here");
            }
          };
          return SimpleTimeLimiter.this.callWithTimeout(local1, paramLong, this.val$timeoutUnit, this.val$interruptibleMethods.contains(paramAnonymousMethod));
        }
      });
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.SimpleTimeLimiter
 * JD-Core Version:    0.6.2
 */