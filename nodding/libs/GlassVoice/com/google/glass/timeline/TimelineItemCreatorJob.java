package com.google.glass.timeline;

import android.content.Context;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.userevent.UserEventAction.TimelineItemInserted;
import com.google.glass.util.PrimitiveUtils;
import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineNano.UserAction;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

public abstract class TimelineItemCreatorJob
  implements Runnable
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private volatile boolean cancelled = false;
  private final Context context;
  private volatile TimelineNano.TimelineItem finalItem;
  private volatile boolean finalItemReady = false;
  private final UserEventAction.TimelineItemInserted itemType;
  private Thread runningOnThread;
  private volatile TimelineNano.TimelineItem temporaryItem;
  private volatile boolean temporaryItemCreated = false;
  private volatile boolean temporaryItemReady = false;
  protected final TimelineHelper timelineHelper;
  private int userActionType = -2147483648;

  public TimelineItemCreatorJob(Context paramContext, UserEventAction.TimelineItemInserted paramTimelineItemInserted)
  {
    this(paramContext, paramTimelineItemInserted, -2147483648);
  }

  public TimelineItemCreatorJob(Context paramContext, UserEventAction.TimelineItemInserted paramTimelineItemInserted, int paramInt)
  {
    this(paramContext, paramTimelineItemInserted, paramInt, new TimelineHelper());
  }

  @VisibleForTesting
  protected TimelineItemCreatorJob(Context paramContext, UserEventAction.TimelineItemInserted paramTimelineItemInserted, int paramInt, TimelineHelper paramTimelineHelper)
  {
    this.context = paramContext.getApplicationContext();
    this.itemType = paramTimelineItemInserted;
    this.userActionType = paramInt;
    this.timelineHelper = paramTimelineHelper;
  }

  private void checkCancel()
    throws CancellationException
  {
    Assert.assertEquals(Thread.currentThread(), this.runningOnThread);
    if (this.cancelled)
    {
      logger.d("Processing cancel", new Object[0]);
      throw new CancellationException();
    }
  }

  private void deleteTemporaryItem()
  {
    Assert.assertEquals(Thread.currentThread(), this.runningOnThread);
    if (!this.temporaryItemCreated)
      return;
    logger.d("Deleting temporary item", new Object[0]);
    this.timelineHelper.deleteTimelineItem(this.context, this.temporaryItem);
  }

  private void dispatchCreateFinalItem()
  {
    Assert.assertNotNull(Integer.valueOf(this.userActionType));
    TimelineHelper.Update local2 = new TimelineHelper.Update()
    {
      public TimelineNano.TimelineItem onExecute()
      {
        boolean bool1 = TimelineItemCreatorJob.this.shouldCreateTemporaryItem();
        TimelineNano.TimelineItem localTimelineItem1 = null;
        if (bool1)
        {
          localTimelineItem1 = TimelineItemCreatorJob.this.timelineHelper.queryTimelineItem(TimelineItemCreatorJob.this.context.getContentResolver(), TimelineItemCreatorJob.this.temporaryItem.id);
          if ((localTimelineItem1 == null) || (PrimitiveUtils.safeBoolean(localTimelineItem1.isDeleted)))
          {
            TimelineItemCreatorJob.logger.w("Not updating item that no longer exists.", new Object[0]);
            TimelineItemCreatorJob.this.cancel();
          }
        }
        TimelineNano.TimelineItem localTimelineItem2 = TimelineItemCreatorJob.this.createFinalTimelineItem(localTimelineItem1);
        if (localTimelineItem2 == null)
        {
          TimelineItemCreatorJob.logger.w("Final item was null.  Cancelling.", new Object[0]);
          TimelineItemCreatorJob.this.cancel();
        }
        if ((localTimelineItem2.cloudSyncProtocol != 2) || (localTimelineItem2.companionSyncProtocol != 2));
        for (boolean bool2 = true; ; bool2 = false)
        {
          Assert.assertTrue(bool2);
          if (localTimelineItem1 != null)
            break;
          TimelineNano.UserAction localUserAction = new TimelineNano.UserAction();
          localUserAction.type = TimelineItemCreatorJob.this.userActionType;
          TimelineItemCreatorJob.this.timelineHelper.insertTimelineItem(TimelineItemCreatorJob.this.context, localTimelineItem2, TimelineItemCreatorJob.this.itemType, localUserAction);
          return localTimelineItem2;
        }
        return TimelineItemCreatorJob.this.timelineHelper.updateTimelineItem(TimelineItemCreatorJob.this.context, localTimelineItem2, null, false, false);
      }
    };
    this.timelineHelper.atomicUpdateTimelineItem(local2);
    this.finalItem = local2.getItem();
    if (this.finalItem == null)
    {
      logger.e("Final item could not be updated.  Cancelling job", new Object[0]);
      cancel();
    }
    onFinalItemCreated(this.finalItem);
  }

  private void dispatchCreateTemporaryItem()
  {
    Assert.assertNotNull(Integer.valueOf(this.userActionType));
    final TimelineNano.TimelineItem localTimelineItem = createTemporaryItem();
    if (localTimelineItem == null)
    {
      logger.w("Temporary item was null.  Cancelling job", new Object[0]);
      cancel();
    }
    TimelineHelper.Update local1 = new TimelineHelper.Update()
    {
      public TimelineNano.TimelineItem onExecute()
      {
        Assert.assertEquals(Integer.valueOf(localTimelineItem.cloudSyncProtocol), Integer.valueOf(2));
        Assert.assertEquals(Integer.valueOf(localTimelineItem.companionSyncProtocol), Integer.valueOf(2));
        TimelineNano.UserAction localUserAction = new TimelineNano.UserAction();
        localUserAction.type = TimelineItemCreatorJob.this.userActionType;
        TimelineItemCreatorJob.this.timelineHelper.insertTimelineItem(TimelineItemCreatorJob.this.context, localTimelineItem, TimelineItemCreatorJob.this.itemType, localUserAction);
        return localTimelineItem;
      }
    };
    this.timelineHelper.atomicUpdateTimelineItem(local1);
    if (localTimelineItem != null)
    {
      this.temporaryItem = local1.getItem();
      this.temporaryItemCreated = true;
      logger.d("Temporary item created", new Object[0]);
      onTemporaryItemCreated(this.temporaryItem);
      return;
    }
    logger.d("Could not create temporary item", new Object[0]);
    cancel();
  }

  private void waitForFinalItem()
  {
    try
    {
      while (!this.finalItemReady)
      {
        boolean bool = this.cancelled;
        if (bool)
          break;
        try
        {
          wait();
        }
        catch (InterruptedException localInterruptedException)
        {
        }
      }
      return;
    }
    finally
    {
    }
  }

  private void waitForTemporaryItem()
  {
    try
    {
      while (!this.temporaryItemReady)
      {
        boolean bool = this.cancelled;
        if (bool)
          break;
        try
        {
          wait();
        }
        catch (InterruptedException localInterruptedException)
        {
        }
      }
      return;
    }
    finally
    {
    }
  }

  public void cancel()
  {
    while (true)
    {
      try
      {
        boolean bool = this.cancelled;
        if (bool)
          return;
        logger.d("Cancelling timeline item creation", new Object[0]);
        this.cancelled = true;
        if (Thread.currentThread() == this.runningOnThread)
          throw new CancellationException();
      }
      finally
      {
      }
      notifyAll();
    }
  }

  public void cancelIfNotFinished()
  {
    try
    {
      if (!this.finalItemReady)
        cancel();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected abstract TimelineNano.TimelineItem createFinalTimelineItem(TimelineNano.TimelineItem paramTimelineItem);

  protected abstract TimelineNano.TimelineItem createTemporaryItem();

  public TimelineNano.TimelineItem getFinalItem()
  {
    return this.finalItem;
  }

  public TimelineNano.TimelineItem getTemporaryItem()
  {
    return this.temporaryItem;
  }

  public boolean isCancelled()
  {
    return this.cancelled;
  }

  public boolean isDone()
  {
    return (isCancelled()) || (this.finalItem != null);
  }

  public void notifyReadyToCreateTemporaryItem()
  {
    try
    {
      this.temporaryItemReady = true;
      notifyAll();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void notifyReadyToUpdateToFinalItem()
  {
    try
    {
      this.finalItemReady = true;
      notifyAll();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void onFinalItemCreated(TimelineNano.TimelineItem paramTimelineItem)
  {
  }

  protected void onPreExecute()
  {
  }

  public void onTemporaryItemCreated(TimelineNano.TimelineItem paramTimelineItem)
  {
  }

  public void run()
  {
    Assert.assertNotUiThread();
    this.runningOnThread = Thread.currentThread();
    try
    {
      onPreExecute();
      if (shouldCreateTemporaryItem())
      {
        waitForTemporaryItem();
        checkCancel();
        dispatchCreateTemporaryItem();
      }
      checkCancel();
      waitForFinalItem();
      checkCancel();
      dispatchCreateFinalItem();
      return;
    }
    catch (CancellationException localCancellationException)
    {
      logger.d("Processing cancellation request", new Object[0]);
      deleteTemporaryItem();
    }
  }

  public void setUserActionType(int paramInt)
  {
    this.userActionType = paramInt;
  }

  protected boolean shouldCreateTemporaryItem()
  {
    return true;
  }

  public final void start()
  {
    AsyncThreadExecutorManager.getThreadPoolExecutor().execute(this);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.timeline.TimelineItemCreatorJob
 * JD-Core Version:    0.6.2
 */