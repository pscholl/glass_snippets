package com.google.common.eventbus;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import com.google.common.collect.HashMultimap;
import com.google.common.collect.Multimap;
import com.google.common.collect.SetMultimap;
import com.google.common.reflect.TypeToken;
import com.google.common.reflect.TypeToken.TypeSet;
import com.google.common.util.concurrent.UncheckedExecutionException;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.logging.Level;
import java.util.logging.Logger;

@Beta
public class EventBus
{
  private static final LoadingCache<Class<?>, Set<Class<?>>> flattenHierarchyCache = CacheBuilder.newBuilder().weakKeys().build(new CacheLoader()
  {
    public Set<Class<?>> load(Class<?> paramAnonymousClass)
    {
      return TypeToken.of(paramAnonymousClass).getTypes().rawTypes();
    }
  });
  private final ThreadLocal<Queue<EventWithHandler>> eventsToDispatch = new ThreadLocal()
  {
    protected Queue<EventBus.EventWithHandler> initialValue()
    {
      return new LinkedList();
    }
  };
  private final HandlerFindingStrategy finder = new AnnotatedHandlerFinder();
  private final SetMultimap<Class<?>, EventHandler> handlersByType = HashMultimap.create();
  private final ReadWriteLock handlersByTypeLock = new ReentrantReadWriteLock();
  private final ThreadLocal<Boolean> isDispatching = new ThreadLocal()
  {
    protected Boolean initialValue()
    {
      return Boolean.valueOf(false);
    }
  };
  private final Logger logger;

  public EventBus()
  {
    this("default");
  }

  public EventBus(String paramString)
  {
    this.logger = Logger.getLogger(EventBus.class.getName() + "." + (String)Preconditions.checkNotNull(paramString));
  }

  void dispatch(Object paramObject, EventHandler paramEventHandler)
  {
    try
    {
      paramEventHandler.handleEvent(paramObject);
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      this.logger.log(Level.SEVERE, "Could not dispatch event: " + paramObject + " to handler " + paramEventHandler, localInvocationTargetException);
    }
  }

  void dispatchQueuedEvents()
  {
    if (((Boolean)this.isDispatching.get()).booleanValue())
      return;
    this.isDispatching.set(Boolean.valueOf(true));
    try
    {
      Queue localQueue = (Queue)this.eventsToDispatch.get();
      while (true)
      {
        EventWithHandler localEventWithHandler = (EventWithHandler)localQueue.poll();
        if (localEventWithHandler == null)
          break;
        dispatch(localEventWithHandler.event, localEventWithHandler.handler);
      }
    }
    finally
    {
      this.isDispatching.remove();
      this.eventsToDispatch.remove();
    }
    this.isDispatching.remove();
    this.eventsToDispatch.remove();
  }

  void enqueueEvent(Object paramObject, EventHandler paramEventHandler)
  {
    ((Queue)this.eventsToDispatch.get()).offer(new EventWithHandler(paramObject, paramEventHandler));
  }

  @VisibleForTesting
  Set<Class<?>> flattenHierarchy(Class<?> paramClass)
  {
    try
    {
      Set localSet = (Set)flattenHierarchyCache.getUnchecked(paramClass);
      return localSet;
    }
    catch (UncheckedExecutionException localUncheckedExecutionException)
    {
      throw Throwables.propagate(localUncheckedExecutionException.getCause());
    }
  }

  public void post(Object paramObject)
  {
    Set localSet1 = flattenHierarchy(paramObject.getClass());
    int i = 0;
    Iterator localIterator1 = localSet1.iterator();
    while (localIterator1.hasNext())
    {
      Class localClass = (Class)localIterator1.next();
      this.handlersByTypeLock.readLock().lock();
      try
      {
        Set localSet2 = this.handlersByType.get(localClass);
        if (!localSet2.isEmpty())
        {
          i = 1;
          Iterator localIterator2 = localSet2.iterator();
          while (localIterator2.hasNext())
            enqueueEvent(paramObject, (EventHandler)localIterator2.next());
        }
      }
      finally
      {
        this.handlersByTypeLock.readLock().unlock();
      }
      this.handlersByTypeLock.readLock().unlock();
    }
    if ((i == 0) && (!(paramObject instanceof DeadEvent)))
      post(new DeadEvent(this, paramObject));
    dispatchQueuedEvents();
  }

  public void register(Object paramObject)
  {
    Multimap localMultimap = this.finder.findAllHandlers(paramObject);
    this.handlersByTypeLock.writeLock().lock();
    try
    {
      this.handlersByType.putAll(localMultimap);
      return;
    }
    finally
    {
      this.handlersByTypeLock.writeLock().unlock();
    }
  }

  public void unregister(Object paramObject)
  {
    Iterator localIterator = this.finder.findAllHandlers(paramObject).asMap().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Class localClass = (Class)localEntry.getKey();
      Collection localCollection = (Collection)localEntry.getValue();
      this.handlersByTypeLock.writeLock().lock();
      Set localSet;
      try
      {
        localSet = this.handlersByType.get(localClass);
        if (!localSet.containsAll(localCollection))
          throw new IllegalArgumentException("missing event handler for an annotated method. Is " + paramObject + " registered?");
      }
      finally
      {
        this.handlersByTypeLock.writeLock().unlock();
      }
      localSet.removeAll(localCollection);
      this.handlersByTypeLock.writeLock().unlock();
    }
  }

  static class EventWithHandler
  {
    final Object event;
    final EventHandler handler;

    public EventWithHandler(Object paramObject, EventHandler paramEventHandler)
    {
      this.event = Preconditions.checkNotNull(paramObject);
      this.handler = ((EventHandler)Preconditions.checkNotNull(paramEventHandler));
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.eventbus.EventBus
 * JD-Core Version:    0.6.2
 */