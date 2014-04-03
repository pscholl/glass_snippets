package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Function;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.collect.Ordering;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.UndeclaredThrowableException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

@Beta
public final class Futures
{
  private static final AsyncFunction<ListenableFuture<Object>, Object> DEREFERENCER = new AsyncFunction()
  {
    public ListenableFuture<Object> apply(ListenableFuture<Object> paramAnonymousListenableFuture)
    {
      return paramAnonymousListenableFuture;
    }
  };
  private static final Ordering<Constructor<?>> WITH_STRING_PARAM_FIRST = Ordering.natural().onResultOf(new Function()
  {
    public Boolean apply(Constructor<?> paramAnonymousConstructor)
    {
      return Boolean.valueOf(Arrays.asList(paramAnonymousConstructor.getParameterTypes()).contains(String.class));
    }
  }).reverse();

  public static <V> void addCallback(ListenableFuture<V> paramListenableFuture, FutureCallback<? super V> paramFutureCallback)
  {
    addCallback(paramListenableFuture, paramFutureCallback, MoreExecutors.sameThreadExecutor());
  }

  public static <V> void addCallback(ListenableFuture<V> paramListenableFuture, final FutureCallback<? super V> paramFutureCallback, Executor paramExecutor)
  {
    Preconditions.checkNotNull(paramFutureCallback);
    paramListenableFuture.addListener(new Runnable()
    {
      public void run()
      {
        try
        {
          Object localObject = Uninterruptibles.getUninterruptibly(this.val$future);
          paramFutureCallback.onSuccess(localObject);
          return;
        }
        catch (ExecutionException localExecutionException)
        {
          paramFutureCallback.onFailure(localExecutionException.getCause());
          return;
        }
        catch (RuntimeException localRuntimeException)
        {
          paramFutureCallback.onFailure(localRuntimeException);
          return;
        }
        catch (Error localError)
        {
          paramFutureCallback.onFailure(localError);
        }
      }
    }
    , paramExecutor);
  }

  @Beta
  public static <V> ListenableFuture<List<V>> allAsList(Iterable<? extends ListenableFuture<? extends V>> paramIterable)
  {
    return listFuture(ImmutableList.copyOf(paramIterable), true, MoreExecutors.sameThreadExecutor());
  }

  @Beta
  public static <V> ListenableFuture<List<V>> allAsList(ListenableFuture<? extends V>[] paramArrayOfListenableFuture)
  {
    return listFuture(ImmutableList.copyOf(paramArrayOfListenableFuture), true, MoreExecutors.sameThreadExecutor());
  }

  @Beta
  public static <V> ListenableFuture<V> dereference(ListenableFuture<? extends ListenableFuture<? extends V>> paramListenableFuture)
  {
    return transform(paramListenableFuture, DEREFERENCER);
  }

  @Beta
  public static <V, X extends Exception> V get(Future<V> paramFuture, long paramLong, TimeUnit paramTimeUnit, Class<X> paramClass)
    throws Exception
  {
    Preconditions.checkNotNull(paramFuture);
    Preconditions.checkNotNull(paramTimeUnit);
    boolean bool;
    if (!RuntimeException.class.isAssignableFrom(paramClass))
      bool = true;
    while (true)
    {
      Preconditions.checkArgument(bool, "Futures.get exception type (%s) must not be a RuntimeException", new Object[] { paramClass });
      try
      {
        Object localObject = paramFuture.get(paramLong, paramTimeUnit);
        return localObject;
        bool = false;
      }
      catch (InterruptedException localInterruptedException)
      {
        Thread.currentThread().interrupt();
        throw newWithCause(paramClass, localInterruptedException);
      }
      catch (TimeoutException localTimeoutException)
      {
        throw newWithCause(paramClass, localTimeoutException);
      }
      catch (ExecutionException localExecutionException)
      {
        wrapAndThrowExceptionOrError(localExecutionException.getCause(), paramClass);
      }
    }
    throw new AssertionError();
  }

  @Beta
  public static <V, X extends Exception> V get(Future<V> paramFuture, Class<X> paramClass)
    throws Exception
  {
    Preconditions.checkNotNull(paramFuture);
    boolean bool;
    if (!RuntimeException.class.isAssignableFrom(paramClass))
      bool = true;
    while (true)
    {
      Preconditions.checkArgument(bool, "Futures.get exception type (%s) must not be a RuntimeException", new Object[] { paramClass });
      try
      {
        Object localObject = paramFuture.get();
        return localObject;
        bool = false;
      }
      catch (InterruptedException localInterruptedException)
      {
        Thread.currentThread().interrupt();
        throw newWithCause(paramClass, localInterruptedException);
      }
      catch (ExecutionException localExecutionException)
      {
        wrapAndThrowExceptionOrError(localExecutionException.getCause(), paramClass);
      }
    }
    throw new AssertionError();
  }

  @Beta
  public static <V> V getUnchecked(Future<V> paramFuture)
  {
    Preconditions.checkNotNull(paramFuture);
    try
    {
      Object localObject = Uninterruptibles.getUninterruptibly(paramFuture);
      return localObject;
    }
    catch (ExecutionException localExecutionException)
    {
      wrapAndThrowUnchecked(localExecutionException.getCause());
    }
    throw new AssertionError();
  }

  public static <V> ListenableFuture<V> immediateCancelledFuture()
  {
    return new ImmediateCancelledFuture();
  }

  public static <V, X extends Exception> CheckedFuture<V, X> immediateCheckedFuture(@Nullable V paramV)
  {
    return new ImmediateSuccessfulCheckedFuture(paramV);
  }

  public static <V, X extends Exception> CheckedFuture<V, X> immediateFailedCheckedFuture(X paramX)
  {
    Preconditions.checkNotNull(paramX);
    return new ImmediateFailedCheckedFuture(paramX);
  }

  public static <V> ListenableFuture<V> immediateFailedFuture(Throwable paramThrowable)
  {
    Preconditions.checkNotNull(paramThrowable);
    return new ImmediateFailedFuture(paramThrowable);
  }

  public static <V> ListenableFuture<V> immediateFuture(@Nullable V paramV)
  {
    return new ImmediateSuccessfulFuture(paramV);
  }

  @Beta
  public static <I, O> Future<O> lazyTransform(Future<I> paramFuture, final Function<? super I, ? extends O> paramFunction)
  {
    Preconditions.checkNotNull(paramFuture);
    Preconditions.checkNotNull(paramFunction);
    return new Future()
    {
      private O applyTransformation(I paramAnonymousI)
        throws ExecutionException
      {
        try
        {
          Object localObject = paramFunction.apply(paramAnonymousI);
          return localObject;
        }
        catch (Throwable localThrowable)
        {
          throw new ExecutionException(localThrowable);
        }
      }

      public boolean cancel(boolean paramAnonymousBoolean)
      {
        return this.val$input.cancel(paramAnonymousBoolean);
      }

      public O get()
        throws InterruptedException, ExecutionException
      {
        return applyTransformation(this.val$input.get());
      }

      public O get(long paramAnonymousLong, TimeUnit paramAnonymousTimeUnit)
        throws InterruptedException, ExecutionException, TimeoutException
      {
        return applyTransformation(this.val$input.get(paramAnonymousLong, paramAnonymousTimeUnit));
      }

      public boolean isCancelled()
      {
        return this.val$input.isCancelled();
      }

      public boolean isDone()
      {
        return this.val$input.isDone();
      }
    };
  }

  private static <V> ListenableFuture<List<V>> listFuture(ImmutableList<ListenableFuture<? extends V>> paramImmutableList, boolean paramBoolean, Executor paramExecutor)
  {
    return new CombinedFuture(paramImmutableList, paramBoolean, paramExecutor, new FutureCombiner()
    {
      public List<V> combine(List<Optional<V>> paramAnonymousList)
      {
        ArrayList localArrayList = Lists.newArrayList();
        Iterator localIterator = paramAnonymousList.iterator();
        if (localIterator.hasNext())
        {
          Optional localOptional = (Optional)localIterator.next();
          if (localOptional != null);
          for (Object localObject = localOptional.orNull(); ; localObject = null)
          {
            localArrayList.add(localObject);
            break;
          }
        }
        return localArrayList;
      }
    });
  }

  public static <V, X extends Exception> CheckedFuture<V, X> makeChecked(ListenableFuture<V> paramListenableFuture, Function<Exception, X> paramFunction)
  {
    return new MappingCheckedFuture((ListenableFuture)Preconditions.checkNotNull(paramListenableFuture), paramFunction);
  }

  @Nullable
  private static <X> X newFromConstructor(Constructor<X> paramConstructor, Throwable paramThrowable)
  {
    Class[] arrayOfClass = paramConstructor.getParameterTypes();
    Object[] arrayOfObject = new Object[arrayOfClass.length];
    int i = 0;
    Object localObject2;
    if (i < arrayOfClass.length)
    {
      Class localClass = arrayOfClass[i];
      if (localClass.equals(String.class))
        arrayOfObject[i] = paramThrowable.toString();
      while (true)
      {
        i++;
        break;
        boolean bool = localClass.equals(Throwable.class);
        localObject2 = null;
        if (!bool)
          break label87;
        arrayOfObject[i] = paramThrowable;
      }
    }
    try
    {
      Object localObject1 = paramConstructor.newInstance(arrayOfObject);
      localObject2 = localObject1;
      label87: return localObject2;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      return null;
    }
    catch (InstantiationException localInstantiationException)
    {
      return null;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return null;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
    }
    return null;
  }

  private static <X extends Exception> X newWithCause(Class<X> paramClass, Throwable paramThrowable)
  {
    Iterator localIterator = preferringStrings(Arrays.asList(paramClass.getConstructors())).iterator();
    while (localIterator.hasNext())
    {
      Exception localException = (Exception)newFromConstructor((Constructor)localIterator.next(), paramThrowable);
      if (localException != null)
      {
        if (localException.getCause() == null)
          localException.initCause(paramThrowable);
        return localException;
      }
    }
    throw new IllegalArgumentException("No appropriate constructor for exception of type " + paramClass + " in response to chained exception", paramThrowable);
  }

  private static <X extends Exception> List<Constructor<X>> preferringStrings(List<Constructor<X>> paramList)
  {
    return WITH_STRING_PARAM_FIRST.sortedCopy(paramList);
  }

  @Beta
  public static <V> ListenableFuture<List<V>> successfulAsList(Iterable<? extends ListenableFuture<? extends V>> paramIterable)
  {
    return listFuture(ImmutableList.copyOf(paramIterable), false, MoreExecutors.sameThreadExecutor());
  }

  @Beta
  public static <V> ListenableFuture<List<V>> successfulAsList(ListenableFuture<? extends V>[] paramArrayOfListenableFuture)
  {
    return listFuture(ImmutableList.copyOf(paramArrayOfListenableFuture), false, MoreExecutors.sameThreadExecutor());
  }

  public static <I, O> ListenableFuture<O> transform(ListenableFuture<I> paramListenableFuture, Function<? super I, ? extends O> paramFunction)
  {
    return transform(paramListenableFuture, paramFunction, MoreExecutors.sameThreadExecutor());
  }

  public static <I, O> ListenableFuture<O> transform(ListenableFuture<I> paramListenableFuture, Function<? super I, ? extends O> paramFunction, Executor paramExecutor)
  {
    Preconditions.checkNotNull(paramFunction);
    return transform(paramListenableFuture, new AsyncFunction()
    {
      public ListenableFuture<O> apply(I paramAnonymousI)
      {
        return Futures.immediateFuture(this.val$function.apply(paramAnonymousI));
      }
    }
    , paramExecutor);
  }

  public static <I, O> ListenableFuture<O> transform(ListenableFuture<I> paramListenableFuture, AsyncFunction<? super I, ? extends O> paramAsyncFunction)
  {
    return transform(paramListenableFuture, paramAsyncFunction, MoreExecutors.sameThreadExecutor());
  }

  public static <I, O> ListenableFuture<O> transform(ListenableFuture<I> paramListenableFuture, AsyncFunction<? super I, ? extends O> paramAsyncFunction, Executor paramExecutor)
  {
    ChainingListenableFuture localChainingListenableFuture = new ChainingListenableFuture(paramAsyncFunction, paramListenableFuture, null);
    paramListenableFuture.addListener(localChainingListenableFuture, paramExecutor);
    return localChainingListenableFuture;
  }

  public static <V> ListenableFuture<V> withFallback(ListenableFuture<? extends V> paramListenableFuture, FutureFallback<? extends V> paramFutureFallback)
  {
    return withFallback(paramListenableFuture, paramFutureFallback, MoreExecutors.sameThreadExecutor());
  }

  public static <V> ListenableFuture<V> withFallback(ListenableFuture<? extends V> paramListenableFuture, FutureFallback<? extends V> paramFutureFallback, Executor paramExecutor)
  {
    Preconditions.checkNotNull(paramFutureFallback);
    return new FallbackFuture(paramListenableFuture, paramFutureFallback, paramExecutor);
  }

  private static <X extends Exception> void wrapAndThrowExceptionOrError(Throwable paramThrowable, Class<X> paramClass)
    throws Exception
  {
    if ((paramThrowable instanceof Error))
      throw new ExecutionError((Error)paramThrowable);
    if ((paramThrowable instanceof RuntimeException))
      throw new UncheckedExecutionException(paramThrowable);
    throw newWithCause(paramClass, paramThrowable);
  }

  private static void wrapAndThrowUnchecked(Throwable paramThrowable)
  {
    if ((paramThrowable instanceof Error))
      throw new ExecutionError((Error)paramThrowable);
    throw new UncheckedExecutionException(paramThrowable);
  }

  private static class ChainingListenableFuture<I, O> extends AbstractFuture<O>
    implements Runnable
  {
    private AsyncFunction<? super I, ? extends O> function;
    private ListenableFuture<? extends I> inputFuture;
    private final CountDownLatch outputCreated = new CountDownLatch(1);
    private volatile ListenableFuture<? extends O> outputFuture;

    private ChainingListenableFuture(AsyncFunction<? super I, ? extends O> paramAsyncFunction, ListenableFuture<? extends I> paramListenableFuture)
    {
      this.function = ((AsyncFunction)Preconditions.checkNotNull(paramAsyncFunction));
      this.inputFuture = ((ListenableFuture)Preconditions.checkNotNull(paramListenableFuture));
    }

    private void cancel(@Nullable Future<?> paramFuture, boolean paramBoolean)
    {
      if (paramFuture != null)
        paramFuture.cancel(paramBoolean);
    }

    public boolean cancel(boolean paramBoolean)
    {
      if (super.cancel(paramBoolean))
      {
        cancel(this.inputFuture, paramBoolean);
        cancel(this.outputFuture, paramBoolean);
        return true;
      }
      return false;
    }

    public void run()
    {
      try
      {
        Object localObject2 = Uninterruptibles.getUninterruptibly(this.inputFuture);
        localListenableFuture = this.function.apply(localObject2);
        this.outputFuture = localListenableFuture;
        if (isCancelled())
        {
          localListenableFuture.cancel(wasInterrupted());
          this.outputFuture = null;
          return;
        }
      }
      catch (CancellationException localCancellationException)
      {
        cancel(false);
        return;
      }
      catch (ExecutionException localExecutionException)
      {
        final ListenableFuture localListenableFuture;
        setException(localExecutionException.getCause());
        return;
        localListenableFuture.addListener(new Runnable()
        {
          public void run()
          {
            try
            {
              Futures.ChainingListenableFuture.this.set(Uninterruptibles.getUninterruptibly(localListenableFuture));
              return;
            }
            catch (CancellationException localCancellationException)
            {
              Futures.ChainingListenableFuture.this.cancel(false);
              return;
            }
            catch (ExecutionException localExecutionException)
            {
              Futures.ChainingListenableFuture.this.setException(localExecutionException.getCause());
              return;
            }
            finally
            {
              Futures.ChainingListenableFuture.access$302(Futures.ChainingListenableFuture.this, null);
            }
          }
        }
        , MoreExecutors.sameThreadExecutor());
        return;
      }
      catch (UndeclaredThrowableException localUndeclaredThrowableException)
      {
        setException(localUndeclaredThrowableException.getCause());
        return;
      }
      catch (Exception localException)
      {
        setException(localException);
        return;
      }
      catch (Error localError)
      {
        setException(localError);
        return;
      }
      finally
      {
        this.function = null;
        this.inputFuture = null;
        this.outputCreated.countDown();
      }
    }
  }

  private static class CombinedFuture<V, C> extends AbstractFuture<C>
  {
    final boolean allMustSucceed;
    Futures.FutureCombiner<V, C> combiner;
    ImmutableCollection<? extends ListenableFuture<? extends V>> futures;
    final AtomicInteger remaining;
    List<Optional<V>> values;

    CombinedFuture(ImmutableCollection<? extends ListenableFuture<? extends V>> paramImmutableCollection, boolean paramBoolean, Executor paramExecutor, Futures.FutureCombiner<V, C> paramFutureCombiner)
    {
      this.futures = paramImmutableCollection;
      this.allMustSucceed = paramBoolean;
      this.remaining = new AtomicInteger(paramImmutableCollection.size());
      this.combiner = paramFutureCombiner;
      this.values = Lists.newArrayListWithCapacity(paramImmutableCollection.size());
      init(paramExecutor);
    }

    private void setOneValue(int paramInt, Future<? extends V> paramFuture)
    {
      boolean bool1 = true;
      List localList = this.values;
      if ((isDone()) || (localList == null))
      {
        boolean bool2;
        if (!this.allMustSucceed)
        {
          boolean bool3 = isCancelled();
          bool2 = false;
          if (!bool3);
        }
        else
        {
          bool2 = bool1;
        }
        Preconditions.checkState(bool2, "Future was done before all dependencies completed");
      }
      label135: label214: label377: int i;
      while (true)
      {
        return;
        try
        {
          Preconditions.checkState(paramFuture.isDone(), "Tried to set value from future which is not done");
          localList.set(paramInt, Optional.fromNullable(Uninterruptibles.getUninterruptibly(paramFuture)));
          int i1 = this.remaining.decrementAndGet();
          if (i1 >= 0);
          while (true)
          {
            Preconditions.checkState(bool1, "Less than 0 remaining futures");
            if (i1 != 0)
              break;
            Futures.FutureCombiner localFutureCombiner6 = this.combiner;
            if (localFutureCombiner6 == null)
              break label135;
            set(localFutureCombiner6.combine(localList));
            return;
            bool1 = false;
          }
          Preconditions.checkState(isDone());
          return;
        }
        catch (CancellationException localCancellationException)
        {
          if (this.allMustSucceed)
            cancel(false);
          int n = this.remaining.decrementAndGet();
          if (n >= 0);
          while (true)
          {
            Preconditions.checkState(bool1, "Less than 0 remaining futures");
            if (n != 0)
              break;
            Futures.FutureCombiner localFutureCombiner5 = this.combiner;
            if (localFutureCombiner5 == null)
              break label214;
            set(localFutureCombiner5.combine(localList));
            return;
            bool1 = false;
          }
          Preconditions.checkState(isDone());
          return;
        }
        catch (ExecutionException localExecutionException)
        {
          if (this.allMustSucceed)
            setException(localExecutionException.getCause());
          int m = this.remaining.decrementAndGet();
          if (m >= 0);
          while (true)
          {
            Preconditions.checkState(bool1, "Less than 0 remaining futures");
            if (m != 0)
              break;
            Futures.FutureCombiner localFutureCombiner4 = this.combiner;
            if (localFutureCombiner4 == null)
              break label297;
            set(localFutureCombiner4.combine(localList));
            return;
            bool1 = false;
          }
          Preconditions.checkState(isDone());
          return;
        }
        catch (RuntimeException localRuntimeException)
        {
          if (this.allMustSucceed)
            setException(localRuntimeException);
          int k = this.remaining.decrementAndGet();
          if (k >= 0);
          while (true)
          {
            Preconditions.checkState(bool1, "Less than 0 remaining futures");
            if (k != 0)
              break;
            Futures.FutureCombiner localFutureCombiner3 = this.combiner;
            if (localFutureCombiner3 == null)
              break label377;
            set(localFutureCombiner3.combine(localList));
            return;
            bool1 = false;
          }
          Preconditions.checkState(isDone());
          return;
        }
        catch (Error localError)
        {
          label297: setException(localError);
          int j = this.remaining.decrementAndGet();
          if (j >= 0);
          while (true)
          {
            Preconditions.checkState(bool1, "Less than 0 remaining futures");
            if (j != 0)
              break;
            Futures.FutureCombiner localFutureCombiner2 = this.combiner;
            if (localFutureCombiner2 == null)
              break label450;
            set(localFutureCombiner2.combine(localList));
            return;
            bool1 = false;
          }
          label450: Preconditions.checkState(isDone());
          return;
        }
        finally
        {
          i = this.remaining.decrementAndGet();
          if (i < 0)
            break label513;
        }
      }
      Preconditions.checkState(bool1, "Less than 0 remaining futures");
      if (i == 0)
      {
        Futures.FutureCombiner localFutureCombiner1 = this.combiner;
        if (localFutureCombiner1 == null)
          break label518;
        set(localFutureCombiner1.combine(localList));
      }
      while (true)
      {
        throw localObject;
        label513: bool1 = false;
        break;
        label518: Preconditions.checkState(isDone());
      }
    }

    protected void init(Executor paramExecutor)
    {
      addListener(new Runnable()
      {
        public void run()
        {
          if (Futures.CombinedFuture.this.isCancelled())
          {
            Iterator localIterator = Futures.CombinedFuture.this.futures.iterator();
            while (localIterator.hasNext())
              ((ListenableFuture)localIterator.next()).cancel(Futures.CombinedFuture.this.wasInterrupted());
          }
          Futures.CombinedFuture.this.futures = null;
          Futures.CombinedFuture.this.values = null;
          Futures.CombinedFuture.this.combiner = null;
        }
      }
      , MoreExecutors.sameThreadExecutor());
      if (this.futures.isEmpty())
        set(this.combiner.combine(ImmutableList.of()));
      while (true)
      {
        return;
        for (int i = 0; i < this.futures.size(); i++)
          this.values.add(null);
        final int j = 0;
        Iterator localIterator = this.futures.iterator();
        while (localIterator.hasNext())
        {
          final ListenableFuture localListenableFuture = (ListenableFuture)localIterator.next();
          int k = j + 1;
          localListenableFuture.addListener(new Runnable()
          {
            public void run()
            {
              Futures.CombinedFuture.this.setOneValue(j, localListenableFuture);
            }
          }
          , paramExecutor);
          j = k;
        }
      }
    }
  }

  private static class FallbackFuture<V> extends AbstractFuture<V>
  {
    private volatile ListenableFuture<? extends V> running;

    FallbackFuture(ListenableFuture<? extends V> paramListenableFuture, final FutureFallback<? extends V> paramFutureFallback, Executor paramExecutor)
    {
      this.running = paramListenableFuture;
      Futures.addCallback(this.running, new FutureCallback()
      {
        public void onFailure(Throwable paramAnonymousThrowable)
        {
          if (Futures.FallbackFuture.this.isCancelled())
            return;
          try
          {
            Futures.FallbackFuture.access$102(Futures.FallbackFuture.this, paramFutureFallback.create(paramAnonymousThrowable));
            if (Futures.FallbackFuture.this.isCancelled())
            {
              Futures.FallbackFuture.this.running.cancel(Futures.FallbackFuture.this.wasInterrupted());
              return;
            }
          }
          catch (Exception localException)
          {
            Futures.FallbackFuture.this.setException(localException);
            return;
            Futures.addCallback(Futures.FallbackFuture.this.running, new FutureCallback()
            {
              public void onFailure(Throwable paramAnonymous2Throwable)
              {
                if (Futures.FallbackFuture.this.running.isCancelled())
                {
                  Futures.FallbackFuture.this.cancel(false);
                  return;
                }
                Futures.FallbackFuture.this.setException(paramAnonymous2Throwable);
              }

              public void onSuccess(V paramAnonymous2V)
              {
                Futures.FallbackFuture.this.set(paramAnonymous2V);
              }
            }
            , MoreExecutors.sameThreadExecutor());
            return;
          }
          catch (Error localError)
          {
            Futures.FallbackFuture.this.setException(localError);
          }
        }

        public void onSuccess(V paramAnonymousV)
        {
          Futures.FallbackFuture.this.set(paramAnonymousV);
        }
      }
      , paramExecutor);
    }

    public boolean cancel(boolean paramBoolean)
    {
      if (super.cancel(paramBoolean))
      {
        this.running.cancel(paramBoolean);
        return true;
      }
      return false;
    }
  }

  private static abstract interface FutureCombiner<V, C>
  {
    public abstract C combine(List<Optional<V>> paramList);
  }

  private static class ImmediateCancelledFuture<V> extends Futures.ImmediateFuture<V>
  {
    private final CancellationException thrown = new CancellationException("Immediate cancelled future.");

    ImmediateCancelledFuture()
    {
      super();
    }

    public V get()
    {
      throw AbstractFuture.cancellationExceptionWithCause("Task was cancelled.", this.thrown);
    }

    public boolean isCancelled()
    {
      return true;
    }
  }

  private static class ImmediateFailedCheckedFuture<V, X extends Exception> extends Futures.ImmediateFuture<V>
    implements CheckedFuture<V, X>
  {
    private final X thrown;

    ImmediateFailedCheckedFuture(X paramX)
    {
      super();
      this.thrown = paramX;
    }

    public V checkedGet()
      throws Exception
    {
      throw this.thrown;
    }

    public V checkedGet(long paramLong, TimeUnit paramTimeUnit)
      throws Exception
    {
      Preconditions.checkNotNull(paramTimeUnit);
      throw this.thrown;
    }

    public V get()
      throws ExecutionException
    {
      throw new ExecutionException(this.thrown);
    }
  }

  private static class ImmediateFailedFuture<V> extends Futures.ImmediateFuture<V>
  {
    private final Throwable thrown;

    ImmediateFailedFuture(Throwable paramThrowable)
    {
      super();
      this.thrown = paramThrowable;
    }

    public V get()
      throws ExecutionException
    {
      throw new ExecutionException(this.thrown);
    }
  }

  private static abstract class ImmediateFuture<V>
    implements ListenableFuture<V>
  {
    private static final Logger log = Logger.getLogger(ImmediateFuture.class.getName());

    public void addListener(Runnable paramRunnable, Executor paramExecutor)
    {
      Preconditions.checkNotNull(paramRunnable, "Runnable was null.");
      Preconditions.checkNotNull(paramExecutor, "Executor was null.");
      try
      {
        paramExecutor.execute(paramRunnable);
        return;
      }
      catch (RuntimeException localRuntimeException)
      {
        log.log(Level.SEVERE, "RuntimeException while executing runnable " + paramRunnable + " with executor " + paramExecutor, localRuntimeException);
      }
    }

    public boolean cancel(boolean paramBoolean)
    {
      return false;
    }

    public abstract V get()
      throws ExecutionException;

    public V get(long paramLong, TimeUnit paramTimeUnit)
      throws ExecutionException
    {
      Preconditions.checkNotNull(paramTimeUnit);
      return get();
    }

    public boolean isCancelled()
    {
      return false;
    }

    public boolean isDone()
    {
      return true;
    }
  }

  private static class ImmediateSuccessfulCheckedFuture<V, X extends Exception> extends Futures.ImmediateFuture<V>
    implements CheckedFuture<V, X>
  {

    @Nullable
    private final V value;

    ImmediateSuccessfulCheckedFuture(@Nullable V paramV)
    {
      super();
      this.value = paramV;
    }

    public V checkedGet()
    {
      return this.value;
    }

    public V checkedGet(long paramLong, TimeUnit paramTimeUnit)
    {
      Preconditions.checkNotNull(paramTimeUnit);
      return this.value;
    }

    public V get()
    {
      return this.value;
    }
  }

  private static class ImmediateSuccessfulFuture<V> extends Futures.ImmediateFuture<V>
  {

    @Nullable
    private final V value;

    ImmediateSuccessfulFuture(@Nullable V paramV)
    {
      super();
      this.value = paramV;
    }

    public V get()
    {
      return this.value;
    }
  }

  private static class MappingCheckedFuture<V, X extends Exception> extends AbstractCheckedFuture<V, X>
  {
    final Function<Exception, X> mapper;

    MappingCheckedFuture(ListenableFuture<V> paramListenableFuture, Function<Exception, X> paramFunction)
    {
      super();
      this.mapper = ((Function)Preconditions.checkNotNull(paramFunction));
    }

    protected X mapException(Exception paramException)
    {
      return (Exception)this.mapper.apply(paramException);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.Futures
 * JD-Core Version:    0.6.2
 */