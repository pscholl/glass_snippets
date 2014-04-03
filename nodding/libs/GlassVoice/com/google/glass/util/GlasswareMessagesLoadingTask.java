package com.google.glass.util;

import android.content.Context;
import android.text.TextUtils;
import android.util.LruCache;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.entity.EntityHelper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.net.ProtoRequestDispatcher;
import com.google.glass.predicates.Assert;
import com.google.googlex.glass.common.proto.GlasswareRegistryNano.GlasswareMessages;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public class GlasswareMessagesLoadingTask extends GlasswareResourceLoadingTask<GlasswareRegistryNano.GlasswareMessages>
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private MessagesReceiver receiver;

  @VisibleForTesting
  GlasswareMessagesLoadingTask(Context paramContext, CachedFilesManager paramCachedFilesManager, ProtoRequestDispatcher paramProtoRequestDispatcher, LruCache<String, GlasswareResourceLoadingTask.CacheEntry<?>> paramLruCache, Clock paramClock, Executor paramExecutor, String paramString)
  {
    super(paramContext, paramCachedFilesManager, paramProtoRequestDispatcher, paramLruCache, paramClock, paramExecutor, paramString, 4);
  }

  public GlasswareMessagesLoadingTask(Context paramContext, String paramString, MessagesReceiver paramMessagesReceiver)
  {
    super(paramContext, paramString, 4);
    this.receiver = paramMessagesReceiver;
  }

  @VisibleForTesting
  static String getGlasswareName(long paramLong, GlasswareMessagesLoadingTask paramGlasswareMessagesLoadingTask)
    throws InterruptedException
  {
    if (paramLong > 0L)
      Assert.assertNotUiThread();
    final CountDownLatch localCountDownLatch = new CountDownLatch(1);
    AtomicReference localAtomicReference = new AtomicReference();
    paramGlasswareMessagesLoadingTask.setMessagesReceiver(new MessagesReceiver()
    {
      public void onMessagesLoaded(GlasswareRegistryNano.GlasswareMessages paramAnonymousGlasswareMessages)
      {
        this.val$ref.set(paramAnonymousGlasswareMessages);
        localCountDownLatch.countDown();
      }
    });
    if (Assert.isUiThread())
      DeferredContentLoader.load(paramGlasswareMessagesLoadingTask);
    try
    {
      if (!localCountDownLatch.await(paramLong, TimeUnit.MILLISECONDS))
      {
        if (paramLong > 0L)
          logger.w("Timed out waiting for glassware name", new Object[0]);
        while (true)
        {
          return "";
          DeferredContentLoader.postLoadToUiThread(paramGlasswareMessagesLoadingTask);
          break;
          logger.w("No glassware name available in cache", new Object[0]);
        }
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      logger.w("Interrupted waiting for glassware name", new Object[0]);
      paramGlasswareMessagesLoadingTask.cancel(true);
      throw localInterruptedException;
    }
    GlasswareRegistryNano.GlasswareMessages localGlasswareMessages = (GlasswareRegistryNano.GlasswareMessages)localAtomicReference.get();
    if (localGlasswareMessages == null)
    {
      logger.w("Failed to load glassware name", new Object[0]);
      return "";
    }
    if (!TextUtils.isEmpty(localGlasswareMessages.speakableName))
      return localGlasswareMessages.speakableName;
    if (!TextUtils.isEmpty(localGlasswareMessages.name))
      return localGlasswareMessages.name;
    logger.w("Glassware has no defined name.", new Object[0]);
    return "";
  }

  public static String getGlasswareName(Context paramContext, TimelineNano.Entity paramEntity, long paramLong)
    throws InterruptedException
  {
    if ((TextUtils.isEmpty(paramEntity.source)) || (!paramEntity.source.startsWith("api:")))
    {
      logger.w("No glassware resources available for this entity", new Object[0]);
      return "";
    }
    return getGlasswareName(paramContext, EntityHelper.getProjectId(paramEntity), paramLong);
  }

  public static String getGlasswareName(Context paramContext, TimelineNano.TimelineItem paramTimelineItem, long paramLong)
    throws InterruptedException
  {
    if ((TextUtils.isEmpty(paramTimelineItem.source)) || (!paramTimelineItem.source.startsWith("api:")))
    {
      logger.w("No glassware resources available for this timeline item", new Object[0]);
      return "";
    }
    return getGlasswareName(paramContext, paramTimelineItem.source.substring("api:".length()), paramLong);
  }

  public static String getGlasswareName(Context paramContext, String paramString, long paramLong)
    throws InterruptedException
  {
    return getGlasswareName(paramLong, new GlasswareMessagesLoadingTask(paramContext, paramString, null));
  }

  public static String getGlasswareNameImmediately(Context paramContext, TimelineNano.Entity paramEntity)
  {
    try
    {
      String str = getGlasswareName(paramContext, paramEntity, 0L);
      return str;
    }
    catch (InterruptedException localInterruptedException)
    {
      throw new AssertionError(localInterruptedException);
    }
  }

  public static String getGlasswareNameImmediately(Context paramContext, TimelineNano.TimelineItem paramTimelineItem)
  {
    try
    {
      String str = getGlasswareName(paramContext, paramTimelineItem, 0L);
      return str;
    }
    catch (InterruptedException localInterruptedException)
    {
      throw new AssertionError(localInterruptedException);
    }
  }

  private void setMessagesReceiver(MessagesReceiver paramMessagesReceiver)
  {
    this.receiver = paramMessagesReceiver;
  }

  protected void bindContent(GlasswareRegistryNano.GlasswareMessages paramGlasswareMessages)
  {
    if (this.receiver != null)
    {
      this.receiver.onMessagesLoaded(paramGlasswareMessages);
      return;
    }
    logger.w("Got glassware messages without a receiver to deliver them to.", new Object[0]);
  }

  protected String getUserEventTag()
  {
    return "gm";
  }

  protected GlasswareResourceLoadingTask.CacheEntry<GlasswareRegistryNano.GlasswareMessages> newCacheEntry()
  {
    return new NameCacheEntry();
  }

  protected void prepareContent()
  {
    GlasswareRegistryNano.GlasswareMessages localGlasswareMessages = (GlasswareRegistryNano.GlasswareMessages)loadContentFromCache();
    if (localGlasswareMessages != null)
    {
      if (this.receiver == null)
        break label35;
      this.receiver.onMessagesLoaded(localGlasswareMessages);
    }
    while (true)
    {
      cancel(false);
      return;
      label35: logger.w("Got glassware messages without a receiver to deliver them to.", new Object[0]);
    }
  }

  public static abstract interface MessagesReceiver
  {
    public abstract void onMessagesLoaded(GlasswareRegistryNano.GlasswareMessages paramGlasswareMessages);
  }

  static class NameCacheEntry extends GlasswareResourceLoadingTask.CacheEntry<GlasswareRegistryNano.GlasswareMessages>
  {
    GlasswareRegistryNano.GlasswareMessages decode(byte[] paramArrayOfByte)
    {
      try
      {
        GlasswareRegistryNano.GlasswareMessages localGlasswareMessages = GlasswareRegistryNano.GlasswareMessages.parseFrom(paramArrayOfByte);
        return localGlasswareMessages;
      }
      catch (InvalidProtocolBufferNanoException localInvalidProtocolBufferNanoException)
      {
        GlasswareMessagesLoadingTask.logger.e(localInvalidProtocolBufferNanoException, "Failed to parse message proto", new Object[0]);
      }
      return new GlasswareRegistryNano.GlasswareMessages();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.GlasswareMessagesLoadingTask
 * JD-Core Version:    0.6.2
 */