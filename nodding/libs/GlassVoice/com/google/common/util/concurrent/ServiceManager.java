package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.base.Objects.ToStringHelper;
import com.google.common.base.Preconditions;
import com.google.common.base.Stopwatch;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMap.Builder;
import com.google.common.collect.ImmutableMultimap;
import com.google.common.collect.ImmutableMultimap.Builder;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Ordering;
import com.google.common.collect.Queues;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.Immutable;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
@Beta
public final class ServiceManager
{
  private static final Logger logger = Logger.getLogger(ServiceManager.class.getName());
  private final ImmutableMap<Service, ServiceListener> services;
  private final ServiceManagerState state;

  public ServiceManager(Iterable<? extends Service> paramIterable)
  {
    ImmutableList localImmutableList = ImmutableList.copyOf(paramIterable);
    this.state = new ServiceManagerState(localImmutableList.size());
    ImmutableMap.Builder localBuilder = ImmutableMap.builder();
    ListeningExecutorService localListeningExecutorService = MoreExecutors.sameThreadExecutor();
    Iterator localIterator = localImmutableList.iterator();
    if (localIterator.hasNext())
    {
      Service localService = (Service)localIterator.next();
      ServiceListener localServiceListener = new ServiceListener(localService, this.state);
      localService.addListener(localServiceListener, localListeningExecutorService);
      if (localService.state() == Service.State.NEW);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool, "Can only manage NEW services, %s", new Object[] { localService });
        localBuilder.put(localService, localServiceListener);
        break;
      }
    }
    this.services = localBuilder.build();
  }

  @Inject
  ServiceManager(Set<Service> paramSet)
  {
    this(paramSet);
  }

  public void addListener(Listener paramListener, Executor paramExecutor)
  {
    this.state.addListener(paramListener, paramExecutor);
  }

  public void awaitHealthy()
  {
    this.state.awaitHealthy();
    Preconditions.checkState(isHealthy(), "Expected to be healthy after starting");
  }

  public void awaitHealthy(long paramLong, TimeUnit paramTimeUnit)
    throws TimeoutException
  {
    if (!this.state.awaitHealthy(paramLong, paramTimeUnit))
      throw new TimeoutException("Timeout waiting for the services to become healthy.");
    Preconditions.checkState(isHealthy(), "Expected to be healthy after starting");
  }

  public void awaitStopped()
  {
    this.state.awaitStopped();
  }

  public void awaitStopped(long paramLong, TimeUnit paramTimeUnit)
    throws TimeoutException
  {
    if (!this.state.awaitStopped(paramLong, paramTimeUnit))
      throw new TimeoutException("Timeout waiting for the services to stop.");
  }

  public boolean isHealthy()
  {
    Iterator localIterator = this.services.keySet().iterator();
    while (localIterator.hasNext())
      if (!((Service)localIterator.next()).isRunning())
        return false;
    return true;
  }

  public ImmutableMultimap<Service.State, Service> servicesByState()
  {
    ImmutableMultimap.Builder localBuilder = ImmutableMultimap.builder();
    Iterator localIterator = this.services.keySet().iterator();
    while (localIterator.hasNext())
    {
      Service localService = (Service)localIterator.next();
      localBuilder.put(localService.state(), localService);
    }
    return localBuilder.build();
  }

  public ServiceManager startAsync()
  {
    Iterator localIterator1 = this.services.entrySet().iterator();
    if (localIterator1.hasNext())
    {
      Service localService = (Service)((Map.Entry)localIterator1.next()).getKey();
      Service.State localState = localService.state();
      if (localState == Service.State.NEW);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkState(bool, "Service %s is %s, cannot start it.", new Object[] { localService, localState });
        break;
      }
    }
    Iterator localIterator2 = this.services.values().iterator();
    while (localIterator2.hasNext())
      ((ServiceListener)localIterator2.next()).start();
    return this;
  }

  public ImmutableMap<Service, Long> startupTimes()
  {
    HashMap localHashMap = Maps.newHashMapWithExpectedSize(this.services.size());
    Iterator localIterator1 = this.services.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator1.next();
      Service.State localState = ((Service)localEntry.getKey()).state();
      if ((localState != Service.State.NEW) && (localState != Service.State.STARTING))
        localHashMap.put(localEntry.getKey(), Long.valueOf(((ServiceListener)localEntry.getValue()).startupTimeMillis()));
    }
    List localList = Ordering.natural().onResultOf(new Function()
    {
      public Long apply(Map.Entry<Service, Long> paramAnonymousEntry)
      {
        return (Long)paramAnonymousEntry.getValue();
      }
    }).sortedCopy(localHashMap.entrySet());
    ImmutableMap.Builder localBuilder = ImmutableMap.builder();
    Iterator localIterator2 = localList.iterator();
    while (localIterator2.hasNext())
      localBuilder.put((Map.Entry)localIterator2.next());
    return localBuilder.build();
  }

  public ServiceManager stopAsync()
  {
    Iterator localIterator = this.services.keySet().iterator();
    while (localIterator.hasNext())
      ((Service)localIterator.next()).stop();
    return this;
  }

  public String toString()
  {
    return Objects.toStringHelper(ServiceManager.class).add("services", this.services.keySet()).toString();
  }

  @Beta
  public static abstract interface Listener
  {
    public abstract void failure(Service paramService);

    public abstract void healthy();

    public abstract void stopped();
  }

  @Immutable
  private static final class ListenerExecutorPair
  {
    final Executor executor;
    final ServiceManager.Listener listener;

    ListenerExecutorPair(ServiceManager.Listener paramListener, Executor paramExecutor)
    {
      this.listener = paramListener;
      this.executor = paramExecutor;
    }

    void execute(Runnable paramRunnable)
    {
      try
      {
        this.executor.execute(paramRunnable);
        return;
      }
      catch (Exception localException)
      {
        ServiceManager.logger.log(Level.SEVERE, "Exception while executing listener " + this.listener + " with executor " + this.executor, localException);
      }
    }
  }

  private static final class ServiceListener
    implements Service.Listener
  {
    final Service service;
    final ServiceManager.ServiceManagerState state;

    @GuardedBy("watch")
    final Stopwatch watch = new Stopwatch();

    ServiceListener(Service paramService, ServiceManager.ServiceManagerState paramServiceManagerState)
    {
      this.service = paramService;
      this.state = paramServiceManagerState;
    }

    public void failed(Service.State paramState, Throwable paramThrowable)
    {
      ServiceManager.logger.log(Level.SEVERE, "Service " + this.service + " has failed in the " + paramState + " state.", paramThrowable);
      this.state.monitor.enter();
      try
      {
        if (paramState == Service.State.STARTING)
          finishedStarting(false);
        ServiceManager.ServiceManagerState.access$300(this.state, this.service);
        return;
      }
      finally
      {
        this.state.monitor.leave();
        ServiceManager.ServiceManagerState.access$000(this.state);
      }
    }

    @GuardedBy("monitor")
    void finishedStarting(boolean paramBoolean)
    {
      synchronized (this.watch)
      {
        this.watch.stop();
        ServiceManager.logger.log(Level.INFO, "Started " + this.service + " in " + startupTimeMillis() + " ms.");
        ServiceManager.ServiceManagerState.access$400(this.state, this.service, paramBoolean);
        return;
      }
    }

    public void running()
    {
      this.state.monitor.enter();
      try
      {
        finishedStarting(true);
        return;
      }
      finally
      {
        this.state.monitor.leave();
        ServiceManager.ServiceManagerState.access$000(this.state);
      }
    }

    void start()
    {
      startTimer();
      this.service.start();
    }

    void startTimer()
    {
      synchronized (this.watch)
      {
        if (!this.watch.isRunning())
        {
          this.watch.start();
          ServiceManager.logger.log(Level.INFO, "Starting {0}", this.service);
        }
        return;
      }
    }

    public void starting()
    {
      startTimer();
    }

    long startupTimeMillis()
    {
      try
      {
        synchronized (this.watch)
        {
          long l = this.watch.elapsed(TimeUnit.MILLISECONDS);
          return l;
        }
      }
      finally
      {
      }
    }

    public void stopping(Service.State paramState)
    {
      if (paramState == Service.State.STARTING)
        this.state.monitor.enter();
      try
      {
        finishedStarting(false);
        return;
      }
      finally
      {
        this.state.monitor.leave();
        ServiceManager.ServiceManagerState.access$000(this.state);
      }
    }

    public void terminated(Service.State paramState)
    {
      ServiceManager.logger.info("Service " + this.service + " has terminated. Previous state was " + paramState + " state.");
      this.state.monitor.enter();
      try
      {
        if (paramState == Service.State.NEW)
        {
          startTimer();
          finishedStarting(false);
        }
        ServiceManager.ServiceManagerState.access$200(this.state, this.service);
        return;
      }
      finally
      {
        this.state.monitor.leave();
        ServiceManager.ServiceManagerState.access$000(this.state);
      }
    }
  }

  private static final class ServiceManagerState
  {
    final Monitor.Guard awaitHealthGuard = new Monitor.Guard(this.monitor)
    {
      public boolean isSatisfied()
      {
        return (ServiceManager.ServiceManagerState.this.unstartedServices == 0) || (ServiceManager.ServiceManagerState.this.unstoppedServices != ServiceManager.ServiceManagerState.this.numberOfServices);
      }
    };

    @GuardedBy("monitor")
    final List<ServiceManager.ListenerExecutorPair> listeners = Lists.newArrayList();
    final Monitor monitor = new Monitor();
    final int numberOfServices;

    @GuardedBy("queuedListeners")
    final Queue<Runnable> queuedListeners = Queues.newConcurrentLinkedQueue();
    final Monitor.Guard stoppedGuard = new Monitor.Guard(this.monitor)
    {
      public boolean isSatisfied()
      {
        return ServiceManager.ServiceManagerState.this.unstoppedServices == 0;
      }
    };

    @GuardedBy("monitor")
    int unstartedServices;

    @GuardedBy("monitor")
    int unstoppedServices;

    ServiceManagerState(int paramInt)
    {
      this.numberOfServices = paramInt;
      this.unstoppedServices = paramInt;
      this.unstartedServices = paramInt;
    }

    private void executeListeners()
    {
      if (!this.monitor.isOccupiedByCurrentThread());
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkState(bool, "It is incorrect to execute listeners with the monitor held.");
        synchronized (this.queuedListeners)
        {
          Runnable localRunnable = (Runnable)this.queuedListeners.poll();
          if (localRunnable == null)
            break;
          localRunnable.run();
        }
      }
    }

    @GuardedBy("monitor")
    private void serviceFailed(final Service paramService)
    {
      Iterator localIterator = this.listeners.iterator();
      while (localIterator.hasNext())
      {
        final ServiceManager.ListenerExecutorPair localListenerExecutorPair = (ServiceManager.ListenerExecutorPair)localIterator.next();
        this.queuedListeners.add(new Runnable()
        {
          public void run()
          {
            localListenerExecutorPair.execute(new Runnable()
            {
              public void run()
              {
                ServiceManager.ServiceManagerState.4.this.val$pair.listener.failure(ServiceManager.ServiceManagerState.4.this.val$service);
              }
            });
          }
        });
      }
      serviceStopped(paramService);
    }

    @GuardedBy("monitor")
    private void serviceFinishedStarting(Service paramService, boolean paramBoolean)
    {
      if (this.unstartedServices > 0);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkState(bool, "All services should have already finished starting but %s just finished.", new Object[] { paramService });
        this.unstartedServices = (-1 + this.unstartedServices);
        if ((!paramBoolean) || (this.unstartedServices != 0) || (this.unstoppedServices != this.numberOfServices))
          break;
        Iterator localIterator = this.listeners.iterator();
        while (localIterator.hasNext())
        {
          final ServiceManager.ListenerExecutorPair localListenerExecutorPair = (ServiceManager.ListenerExecutorPair)localIterator.next();
          this.queuedListeners.add(new Runnable()
          {
            public void run()
            {
              localListenerExecutorPair.execute(new Runnable()
              {
                public void run()
                {
                  ServiceManager.ServiceManagerState.3.this.val$pair.listener.healthy();
                }
              });
            }
          });
        }
      }
    }

    @GuardedBy("monitor")
    private void serviceStopped(Service paramService)
    {
      boolean bool1;
      if (this.unstoppedServices > 0)
      {
        bool1 = true;
        Preconditions.checkState(bool1, "All services should have already stopped but %s just stopped.", new Object[] { paramService });
        this.unstoppedServices = (-1 + this.unstoppedServices);
        if (this.unstoppedServices != 0)
          return;
        if (this.unstartedServices != 0)
          break label135;
      }
      label135: for (boolean bool2 = true; ; bool2 = false)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(this.unstartedServices);
        Preconditions.checkState(bool2, "All services are stopped but %d services haven't finished starting", arrayOfObject);
        Iterator localIterator = this.listeners.iterator();
        while (localIterator.hasNext())
        {
          final ServiceManager.ListenerExecutorPair localListenerExecutorPair = (ServiceManager.ListenerExecutorPair)localIterator.next();
          this.queuedListeners.add(new Runnable()
          {
            public void run()
            {
              localListenerExecutorPair.execute(new Runnable()
              {
                public void run()
                {
                  ServiceManager.ServiceManagerState.5.this.val$pair.listener.stopped();
                }
              });
            }
          });
        }
        bool1 = false;
        break;
      }
      this.listeners.clear();
    }

    @GuardedBy("monitor")
    private void serviceTerminated(Service paramService)
    {
      serviceStopped(paramService);
    }

    void addListener(ServiceManager.Listener paramListener, Executor paramExecutor)
    {
      Preconditions.checkNotNull(paramListener, "listener");
      Preconditions.checkNotNull(paramExecutor, "executor");
      this.monitor.enter();
      try
      {
        if ((this.unstartedServices > 0) || (this.unstoppedServices > 0))
          this.listeners.add(new ServiceManager.ListenerExecutorPair(paramListener, paramExecutor));
        return;
      }
      finally
      {
        this.monitor.leave();
      }
    }

    void awaitHealthy()
    {
      this.monitor.enter();
      try
      {
        this.monitor.waitForUninterruptibly(this.awaitHealthGuard);
        return;
      }
      finally
      {
        this.monitor.leave();
      }
    }

    boolean awaitHealthy(long paramLong, TimeUnit paramTimeUnit)
    {
      this.monitor.enter();
      try
      {
        boolean bool = this.monitor.waitForUninterruptibly(this.awaitHealthGuard, paramLong, paramTimeUnit);
        return bool;
      }
      finally
      {
        this.monitor.leave();
      }
    }

    void awaitStopped()
    {
      this.monitor.enter();
      try
      {
        this.monitor.waitForUninterruptibly(this.stoppedGuard);
        return;
      }
      finally
      {
        this.monitor.leave();
      }
    }

    boolean awaitStopped(long paramLong, TimeUnit paramTimeUnit)
    {
      this.monitor.enter();
      try
      {
        boolean bool = this.monitor.waitForUninterruptibly(this.stoppedGuard, paramLong, paramTimeUnit);
        return bool;
      }
      finally
      {
        this.monitor.leave();
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.ServiceManager
 * JD-Core Version:    0.6.2
 */