package com.google.common.cache;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.util.concurrent.Executor;

@Beta
public final class RemovalListeners
{
  public static <K, V> RemovalListener<K, V> asynchronous(final RemovalListener<K, V> paramRemovalListener, Executor paramExecutor)
  {
    Preconditions.checkNotNull(paramRemovalListener);
    Preconditions.checkNotNull(paramExecutor);
    return new RemovalListener()
    {
      public void onRemoval(final RemovalNotification<K, V> paramAnonymousRemovalNotification)
      {
        this.val$executor.execute(new Runnable()
        {
          public void run()
          {
            RemovalListeners.1.this.val$listener.onRemoval(paramAnonymousRemovalNotification);
          }
        });
      }
    };
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.cache.RemovalListeners
 * JD-Core Version:    0.6.2
 */