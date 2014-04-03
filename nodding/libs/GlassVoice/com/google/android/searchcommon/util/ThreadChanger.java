package com.google.android.searchcommon.util;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.concurrent.Executor;

public class ThreadChanger
{

  @VisibleForTesting
  static final boolean DEBUG = false;
  private static final String TAG = "ThreadChanger";

  private static Throwable addCallerStackTrace(Throwable paramThrowable1, Throwable paramThrowable2)
  {
    if (paramThrowable2 == null)
      return paramThrowable1;
    Throwable localThrowable = getOriginalCause(paramThrowable1);
    StackTraceElement[] arrayOfStackTraceElement1 = localThrowable.getStackTrace();
    StackTraceElement[] arrayOfStackTraceElement2 = paramThrowable2.getStackTrace();
    StackTraceElement[] arrayOfStackTraceElement3 = new StackTraceElement[arrayOfStackTraceElement1.length + arrayOfStackTraceElement2.length];
    System.arraycopy(arrayOfStackTraceElement1, 0, arrayOfStackTraceElement3, 0, arrayOfStackTraceElement1.length);
    System.arraycopy(arrayOfStackTraceElement2, 0, arrayOfStackTraceElement3, arrayOfStackTraceElement1.length, arrayOfStackTraceElement2.length);
    localThrowable.setStackTrace(arrayOfStackTraceElement3);
    return paramThrowable1;
  }

  public static final <T> T createNonBlockingThreadChangeProxy(final Executor paramExecutor, Class<T> paramClass, T paramT)
  {
    Preconditions.checkNotNull(paramExecutor);
    Preconditions.checkNotNull(paramClass);
    Preconditions.checkNotNull(paramT);
    InvocationHandler local1 = new InvocationHandler()
    {
      public Object invoke(Object paramAnonymousObject, final Method paramAnonymousMethod, final Object[] paramAnonymousArrayOfObject)
      {
        Runnable local1 = new Runnable()
        {
          public void run()
          {
            try
            {
              paramAnonymousMethod.invoke(ThreadChanger.1.this.val$delegate, paramAnonymousArrayOfObject);
              return;
            }
            catch (IllegalAccessException localIllegalAccessException)
            {
              throw new IllegalStateException(localIllegalAccessException);
            }
            catch (InvocationTargetException localInvocationTargetException)
            {
              Throwable localThrowable = ThreadChanger.addCallerStackTrace(localInvocationTargetException.getCause(), this.val$callerThrowable);
              if ((localThrowable instanceof RuntimeException))
                throw ((RuntimeException)localThrowable);
              if ((localThrowable instanceof Error))
                throw ((Error)localThrowable);
              throw new IllegalStateException(localThrowable);
            }
          }
        };
        paramExecutor.execute(local1);
        return null;
      }
    };
    return Proxy.newProxyInstance(paramClass.getClassLoader(), new Class[] { paramClass }, local1);
  }

  public static <T> T createNonBlockingThreadChangeProxy(Executor paramExecutor, T paramT)
  {
    int i = 1;
    Class[] arrayOfClass = paramT.getClass().getInterfaces();
    if (arrayOfClass.length == i);
    while (true)
    {
      Preconditions.checkArgument(i);
      return createNonBlockingThreadChangeProxy(paramExecutor, arrayOfClass[0], paramT);
      int j = 0;
    }
  }

  private static Throwable getCallerThrowable()
  {
    return null;
  }

  private static Throwable getOriginalCause(Throwable paramThrowable)
  {
    while (paramThrowable.getCause() != null)
      paramThrowable = paramThrowable.getCause();
    return paramThrowable;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.searchcommon.util.ThreadChanger
 * JD-Core Version:    0.6.2
 */