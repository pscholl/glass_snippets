package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;

@Beta
public final class Closer
  implements Closeable
{
  private static final Suppressor SUPPRESSOR;
  private final LinkedList<Closeable> stack = new LinkedList();

  @VisibleForTesting
  final Suppressor suppressor;
  private Throwable thrown;

  static
  {
    if (SuppressingSuppressor.isAvailable());
    for (Object localObject = SuppressingSuppressor.INSTANCE; ; localObject = LoggingSuppressor.INSTANCE)
    {
      SUPPRESSOR = (Suppressor)localObject;
      return;
    }
  }

  @VisibleForTesting
  Closer(Suppressor paramSuppressor)
  {
    this.suppressor = ((Suppressor)Preconditions.checkNotNull(paramSuppressor));
  }

  public static Closer create()
  {
    return new Closer(SUPPRESSOR);
  }

  public void close()
    throws IOException
  {
    Object localObject = this.thrown;
    while (!this.stack.isEmpty())
    {
      Closeable localCloseable = (Closeable)this.stack.removeFirst();
      try
      {
        localCloseable.close();
      }
      catch (Throwable localThrowable)
      {
        if (localObject == null)
          localObject = localThrowable;
        else
          this.suppressor.suppress(localCloseable, (Throwable)localObject, localThrowable);
      }
    }
    if ((this.thrown == null) && (localObject != null))
    {
      Throwables.propagateIfPossible((Throwable)localObject, IOException.class);
      throw new AssertionError(localObject);
    }
  }

  public <C extends Closeable> C register(C paramC)
  {
    this.stack.addFirst(paramC);
    return paramC;
  }

  public RuntimeException rethrow(Throwable paramThrowable)
    throws IOException
  {
    this.thrown = paramThrowable;
    Throwables.propagateIfPossible(paramThrowable, IOException.class);
    throw Throwables.propagate(paramThrowable);
  }

  public <X extends Exception> RuntimeException rethrow(Throwable paramThrowable, Class<X> paramClass)
    throws Exception, IOException
  {
    this.thrown = paramThrowable;
    Throwables.propagateIfPossible(paramThrowable, IOException.class);
    Throwables.propagateIfPossible(paramThrowable, paramClass);
    throw Throwables.propagate(paramThrowable);
  }

  public <X1 extends Exception, X2 extends Exception> RuntimeException rethrow(Throwable paramThrowable, Class<X1> paramClass, Class<X2> paramClass1)
    throws IOException, Exception, Exception
  {
    this.thrown = paramThrowable;
    Throwables.propagateIfPossible(paramThrowable, IOException.class);
    Throwables.propagateIfPossible(paramThrowable, paramClass, paramClass1);
    throw Throwables.propagate(paramThrowable);
  }

  @VisibleForTesting
  static final class LoggingSuppressor
    implements Closer.Suppressor
  {
    static final LoggingSuppressor INSTANCE = new LoggingSuppressor();

    public void suppress(Closeable paramCloseable, Throwable paramThrowable1, Throwable paramThrowable2)
    {
      Closeables.logger.log(Level.WARNING, "Suppressing exception thrown when closing " + paramCloseable, paramThrowable2);
    }
  }

  @VisibleForTesting
  static final class SuppressingSuppressor
    implements Closer.Suppressor
  {
    static final SuppressingSuppressor INSTANCE = new SuppressingSuppressor();
    static final Method addSuppressed = getAddSuppressed();

    private static Method getAddSuppressed()
    {
      try
      {
        Method localMethod = Throwable.class.getMethod("addSuppressed", new Class[] { Throwable.class });
        return localMethod;
      }
      catch (Throwable localThrowable)
      {
      }
      return null;
    }

    static boolean isAvailable()
    {
      return addSuppressed != null;
    }

    public void suppress(Closeable paramCloseable, Throwable paramThrowable1, Throwable paramThrowable2)
    {
      if (paramThrowable1 == paramThrowable2)
        return;
      try
      {
        addSuppressed.invoke(paramThrowable1, new Object[] { paramThrowable2 });
        return;
      }
      catch (Throwable localThrowable)
      {
        Closer.LoggingSuppressor.INSTANCE.suppress(paramCloseable, paramThrowable1, paramThrowable2);
      }
    }
  }

  @VisibleForTesting
  static abstract interface Suppressor
  {
    public abstract void suppress(Closeable paramCloseable, Throwable paramThrowable1, Throwable paramThrowable2);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.io.Closer
 * JD-Core Version:    0.6.2
 */