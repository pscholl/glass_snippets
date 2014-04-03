package com.google.common.eventbus;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;

@Beta
public class AsyncEventBus extends EventBus
{
  private final ConcurrentLinkedQueue<EventBus.EventWithHandler> eventsToDispatch = new ConcurrentLinkedQueue();
  private final Executor executor;

  public AsyncEventBus(String paramString, Executor paramExecutor)
  {
    super(paramString);
    this.executor = ((Executor)Preconditions.checkNotNull(paramExecutor));
  }

  public AsyncEventBus(Executor paramExecutor)
  {
    this.executor = ((Executor)Preconditions.checkNotNull(paramExecutor));
  }

  void dispatch(final Object paramObject, final EventHandler paramEventHandler)
  {
    Preconditions.checkNotNull(paramObject);
    Preconditions.checkNotNull(paramEventHandler);
    this.executor.execute(new Runnable()
    {
      public void run()
      {
        AsyncEventBus.this.dispatch(paramObject, paramEventHandler);
      }
    });
  }

  protected void dispatchQueuedEvents()
  {
    while (true)
    {
      EventBus.EventWithHandler localEventWithHandler = (EventBus.EventWithHandler)this.eventsToDispatch.poll();
      if (localEventWithHandler == null)
        return;
      dispatch(localEventWithHandler.event, localEventWithHandler.handler);
    }
  }

  void enqueueEvent(Object paramObject, EventHandler paramEventHandler)
  {
    this.eventsToDispatch.offer(new EventBus.EventWithHandler(paramObject, paramEventHandler));
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.eventbus.AsyncEventBus
 * JD-Core Version:    0.6.2
 */