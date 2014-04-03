package com.google.common.base;

import com.google.common.annotations.VisibleForTesting;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.logging.Level;
import java.util.logging.Logger;

public class FinalizableReferenceQueue
  implements Closeable
{
  private static final String FINALIZER_CLASS_NAME = "com.google.common.base.internal.Finalizer";
  private static final Logger logger = Logger.getLogger(FinalizableReferenceQueue.class.getName());
  private static final Method startFinalizer = getStartFinalizer(loadFinalizer(arrayOfFinalizerLoader));
  final PhantomReference<Object> frqRef = new PhantomReference(this, this.queue);
  final ReferenceQueue<Object> queue = new ReferenceQueue();
  final boolean threadStarted;

  static
  {
    FinalizerLoader[] arrayOfFinalizerLoader = new FinalizerLoader[3];
    arrayOfFinalizerLoader[0] = new SystemLoader();
    arrayOfFinalizerLoader[1] = new DecoupledLoader();
    arrayOfFinalizerLoader[2] = new DirectLoader();
  }

  public FinalizableReferenceQueue()
  {
    try
    {
      Method localMethod = startFinalizer;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = FinalizableReference.class;
      arrayOfObject[1] = this.queue;
      arrayOfObject[2] = this.frqRef;
      localMethod.invoke(null, arrayOfObject);
      bool = true;
      this.threadStarted = bool;
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new AssertionError(localIllegalAccessException);
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        logger.log(Level.INFO, "Failed to start reference finalizer thread. Reference cleanup will only occur when new references are created.", localThrowable);
        boolean bool = false;
      }
    }
  }

  static Method getStartFinalizer(Class<?> paramClass)
  {
    try
    {
      Method localMethod = paramClass.getMethod("startFinalizer", new Class[] { Class.class, ReferenceQueue.class, PhantomReference.class });
      return localMethod;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      throw new AssertionError(localNoSuchMethodException);
    }
  }

  private static Class<?> loadFinalizer(FinalizerLoader[] paramArrayOfFinalizerLoader)
  {
    int i = paramArrayOfFinalizerLoader.length;
    for (int j = 0; j < i; j++)
    {
      Class localClass = paramArrayOfFinalizerLoader[j].loadFinalizer();
      if (localClass != null)
        return localClass;
    }
    throw new AssertionError();
  }

  void cleanUp()
  {
    if (this.threadStarted)
      return;
    while (true)
    {
      Reference localReference = this.queue.poll();
      if (localReference == null)
        break;
      localReference.clear();
      try
      {
        ((FinalizableReference)localReference).finalizeReferent();
      }
      catch (Throwable localThrowable)
      {
        logger.log(Level.SEVERE, "Error cleaning up after reference.", localThrowable);
      }
    }
  }

  public void close()
  {
    this.frqRef.enqueue();
    cleanUp();
  }

  static class DecoupledLoader
    implements FinalizableReferenceQueue.FinalizerLoader
  {
    private static final String LOADING_ERROR = "Could not load Finalizer in its own class loader.Loading Finalizer in the current class loader instead. As a result, you will not be ableto garbage collect this class loader. To support reclaiming this class loader, eitherresolve the underlying issue, or move Google Collections to your system class path.";

    URL getBaseUrl()
      throws IOException
    {
      String str1 = "com.google.common.base.internal.Finalizer".replace('.', '/') + ".class";
      URL localURL = getClass().getClassLoader().getResource(str1);
      if (localURL == null)
        throw new FileNotFoundException(str1);
      String str2 = localURL.toString();
      if (!str2.endsWith(str1))
        throw new IOException("Unsupported path style: " + str2);
      return new URL(localURL, str2.substring(0, str2.length() - str1.length()));
    }

    public Class<?> loadFinalizer()
    {
      try
      {
        Class localClass = newLoader(getBaseUrl()).loadClass("com.google.common.base.internal.Finalizer");
        return localClass;
      }
      catch (Exception localException)
      {
        FinalizableReferenceQueue.logger.log(Level.WARNING, "Could not load Finalizer in its own class loader.Loading Finalizer in the current class loader instead. As a result, you will not be ableto garbage collect this class loader. To support reclaiming this class loader, eitherresolve the underlying issue, or move Google Collections to your system class path.", localException);
      }
      return null;
    }

    URLClassLoader newLoader(URL paramURL)
    {
      return new URLClassLoader(new URL[] { paramURL }, null);
    }
  }

  static class DirectLoader
    implements FinalizableReferenceQueue.FinalizerLoader
  {
    public Class<?> loadFinalizer()
    {
      try
      {
        Class localClass = Class.forName("com.google.common.base.internal.Finalizer");
        return localClass;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        throw new AssertionError(localClassNotFoundException);
      }
    }
  }

  static abstract interface FinalizerLoader
  {
    public abstract Class<?> loadFinalizer();
  }

  static class SystemLoader
    implements FinalizableReferenceQueue.FinalizerLoader
  {

    @VisibleForTesting
    static boolean disabled;

    // ERROR //
    public Class<?> loadFinalizer()
    {
      // Byte code:
      //   0: getstatic 21	com/google/common/base/FinalizableReferenceQueue$SystemLoader:disabled	Z
      //   3: ifeq +5 -> 8
      //   6: aconst_null
      //   7: areturn
      //   8: invokestatic 27	java/lang/ClassLoader:getSystemClassLoader	()Ljava/lang/ClassLoader;
      //   11: astore_2
      //   12: aload_2
      //   13: ifnull -7 -> 6
      //   16: aload_2
      //   17: ldc 29
      //   19: invokevirtual 33	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
      //   22: astore 4
      //   24: aload 4
      //   26: areturn
      //   27: astore_1
      //   28: invokestatic 39	com/google/common/base/FinalizableReferenceQueue:access$000	()Ljava/util/logging/Logger;
      //   31: ldc 41
      //   33: invokevirtual 47	java/util/logging/Logger:info	(Ljava/lang/String;)V
      //   36: aconst_null
      //   37: areturn
      //   38: astore_3
      //   39: aconst_null
      //   40: areturn
      //
      // Exception table:
      //   from	to	target	type
      //   8	12	27	java/lang/SecurityException
      //   16	24	38	java/lang/ClassNotFoundException
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.base.FinalizableReferenceQueue
 * JD-Core Version:    0.6.2
 */