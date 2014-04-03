package com.google.glass.timeline;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Pair;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Lists;
import com.google.glass.app.GlassApplication;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.html.HtmlRenderer;
import com.google.glass.html.HtmlRenderer.OnPageCountChangeListener;
import com.google.glass.html.HtmlRenderer.OnRenderListener;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.util.ArrayUtils;
import com.google.glass.util.BroadcastUnderWakeLock;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.util.MainThreadExecutorManager;
import com.google.glass.util.PrimitiveUtils;
import com.google.googlex.glass.common.proto.TimelineNano.Attachment;
import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;
import com.google.protobuf.nano.MessageNano;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public class TimelineNotificationHelper
{
  public static final String ACTION_NOTIFY_TIMELINE_ITEM = "com.google.glass.action.NOTIFY_TIMELINE_ITEM";
  private static final String[] ATTACHMENT_TYPES_TO_PRELOAD = getAttachmentTypesToPreload();
  public static final String EXTRA_BUNDLE_ITEM = "bundle_item";
  public static final String EXTRA_BUNDLE_ITEM_ID = "bundle_item_id";
  public static final String EXTRA_ITEM = "item";
  public static final String EXTRA_ITEM_ID = "item_id";
  public static final String EXTRA_NUM_NOTIFICATIONS = "numNotifications";
  private static final int HTML_RESOURCE_WAIT_TIME_SECONDS = 30;
  private static final String TAG = TimelineNotificationHelper.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);

  private static String[] getAttachmentTypesToPreload()
  {
    ArrayList localArrayList = Lists.newArrayList();
    localArrayList.addAll(Arrays.asList(TimelineHelper.SUPPORTED_IMAGE_MIME_TYPES));
    localArrayList.add("video/vnd.google-glass.stream-url");
    return (String[])localArrayList.toArray(new String[localArrayList.size()]);
  }

  @VisibleForTesting
  void broadcastIntent(Context paramContext, Intent paramIntent)
  {
    BroadcastUnderWakeLock.sendBroadcastUnderWakeLock(paramContext, paramIntent, TAG + "_BroadcastWakeLock");
  }

  @VisibleForTesting
  Pair<TimelineNano.TimelineItem, Integer> getBundleCover(Context paramContext, TimelineNano.TimelineItem paramTimelineItem)
  {
    return TimelineHelper.getBundleCover(paramContext.getContentResolver(), paramTimelineItem.bundleId);
  }

  public void notify(final Context paramContext, final TimelineNano.TimelineItem paramTimelineItem, final int paramInt)
  {
    AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
    {
      public void run()
      {
        TimelineNano.TimelineItem localTimelineItem = new TimelineHelper().queryTimelineItem(paramContext.getContentResolver(), paramTimelineItem.id);
        if (localTimelineItem != null)
        {
          TimelineNotificationHelper.this.notifyInternal(paramContext, localTimelineItem, paramInt);
          return;
        }
        TimelineNotificationHelper.logger.w("Item from database was null not notifying.", new Object[0]);
      }
    });
  }

  @VisibleForTesting
  void notifyInternal(Context paramContext, TimelineNano.TimelineItem paramTimelineItem, int paramInt)
  {
    Assert.assertNotUiThread();
    if (PrimitiveUtils.safeBoolean(paramTimelineItem.isDeleted))
    {
      logger.w("Not notifying on a deleted item.", new Object[0]);
      return;
    }
    TimelineNano.TimelineItem localTimelineItem1;
    TimelineNano.TimelineItem localTimelineItem2;
    if (!TextUtils.isEmpty(paramTimelineItem.bundleId))
    {
      TimelineItemId localTimelineItemId = new TimelineItemId(paramTimelineItem);
      logger.v("Item is in a bundle, we must make sure we notify for the bundle cover: %s", new Object[] { localTimelineItemId });
      Pair localPair = getBundleCover(paramContext, paramTimelineItem);
      if (localPair == null)
      {
        logger.w("Not able to find bundle cover for: %s", new Object[] { localTimelineItemId });
        return;
      }
      localTimelineItem1 = (TimelineNano.TimelineItem)localPair.first;
      if (((Integer)localPair.second).intValue() != 3)
        localTimelineItem2 = paramTimelineItem;
    }
    while (true)
    {
      CachedBitmapFactory localCachedBitmapFactory = GlassApplication.from(paramContext).getBitmapFactory();
      preloadAttachments(localCachedBitmapFactory, localTimelineItem1);
      if (localTimelineItem2 != null)
        preloadAttachments(localCachedBitmapFactory, localTimelineItem2);
      FormattingLogger localFormattingLogger1 = logger;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = localTimelineItem1.id;
      localFormattingLogger1.v("Notifying user of main timeline item: %s", arrayOfObject1);
      Intent localIntent = new Intent().setAction("com.google.glass.action.NOTIFY_TIMELINE_ITEM");
      localIntent.putExtra("item", MessageNano.toByteArray(localTimelineItem1));
      localIntent.putExtra("item_id", new TimelineItemId(localTimelineItem1));
      if (localTimelineItem2 != null)
      {
        FormattingLogger localFormattingLogger2 = logger;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = localTimelineItem2.id;
        localFormattingLogger2.v("... and bundle timeline item: %s", arrayOfObject2);
        localIntent.putExtra("bundle_item", MessageNano.toByteArray(localTimelineItem2));
        localIntent.putExtra("bundle_item_id", new TimelineItemId(localTimelineItem2));
      }
      localIntent.putExtra("numNotifications", paramInt);
      broadcastIntent(paramContext, localIntent);
      return;
      localTimelineItem2 = null;
      continue;
      localTimelineItem1 = paramTimelineItem;
      localTimelineItem2 = null;
    }
  }

  @VisibleForTesting
  void preloadAttachments(CachedBitmapFactory paramCachedBitmapFactory, final TimelineNano.TimelineItem paramTimelineItem)
  {
    final AtomicReference localAtomicReference;
    if (!TextUtils.isEmpty(paramTimelineItem.html))
      localAtomicReference = new AtomicReference();
    while (true)
    {
      try
      {
        final CountDownLatch localCountDownLatch = new CountDownLatch(1);
        MainThreadExecutorManager.getMainThreadExecutor().execute(new Runnable()
        {
          public void run()
          {
            HtmlRenderer localHtmlRenderer = HtmlRenderer.obtain();
            if (localHtmlRenderer == null)
            {
              TimelineNotificationHelper.logger.d("Cannot load HTML resources; no HTML renderer available.", new Object[0]);
              localCountDownLatch.countDown();
              return;
            }
            localAtomicReference.set(localHtmlRenderer);
            localHtmlRenderer.render(paramTimelineItem, 0, true, new HtmlRenderer.OnPageCountChangeListener()
            {
              public void onPageCountChange(int paramAnonymous2Int)
              {
              }
            });
            localHtmlRenderer.registerListenerForPage(0, null, new HtmlRenderer.OnRenderListener()
            {
              public void onRender(HtmlRenderer paramAnonymous2HtmlRenderer)
              {
                if (paramAnonymous2HtmlRenderer.isDoneLoadingResources())
                {
                  TimelineNotificationHelper.logger.d("Done loading HTML resources.", new Object[0]);
                  TimelineNotificationHelper.2.this.val$resourceLoadLatch.countDown();
                }
              }
            });
          }
        });
        try
        {
          if (!localCountDownLatch.await(30L, TimeUnit.SECONDS))
            logger.d("Timed out while loading HTML resources.", new Object[0]);
          return;
        }
        catch (InterruptedException localInterruptedException)
        {
          logger.w(localInterruptedException, "Interrupted while waiting for HTML resources.", new Object[0]);
          continue;
        }
      }
      finally
      {
        MainThreadExecutorManager.getMainThreadExecutor().execute(new Runnable()
        {
          public void run()
          {
            HtmlRenderer localHtmlRenderer = (HtmlRenderer)localAtomicReference.get();
            if (localHtmlRenderer != null)
              localHtmlRenderer.release();
          }
        });
      }
      if (!ArrayUtils.isEmpty(paramTimelineItem.attachment))
        for (TimelineNano.Attachment localAttachment : paramTimelineItem.attachment)
          if (TimelineHelper.isSupportedType(localAttachment.contentType, ATTACHMENT_TYPES_TO_PRELOAD))
          {
            FormattingLogger localFormattingLogger = logger;
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = localAttachment.id;
            localFormattingLogger.d("Preloading image attachment %s for notification.", arrayOfObject);
            paramCachedBitmapFactory.decodeAttachment(localAttachment, false, null);
            return;
          }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.timeline.TimelineNotificationHelper
 * JD-Core Version:    0.6.2
 */