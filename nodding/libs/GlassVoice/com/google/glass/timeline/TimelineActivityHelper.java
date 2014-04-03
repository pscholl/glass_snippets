package com.google.glass.timeline;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import com.google.glass.input.SwipeDirection;
import com.google.glass.ongoing.OngoingActivityManager.ActivityType;
import com.google.glass.util.IntentSender;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;
import com.google.protobuf.nano.MessageNano;

public class TimelineActivityHelper
{
  public static final String ACTION_ENTITY_TIMELINE = "com.google.glass.ACTION_ENTITY_TIMELINE";
  public static final String ACTION_GO_TO_BUNDLE = "com.google.glass.ACTION_GO_TO_BUNDLE";
  public static final String ACTION_NOTIFICATION_RECEIVED = "com.google.glass.ACTION_NOTIFICATION_RECEIVED";
  public static final String ACTION_PLAY_VIDEO = "com.google.glass.action.VIDEOPLAYER";
  public static final String ACTION_READ_MORE_HTML = "com.google.glass.ACTION_READ_MORE_HTML";
  public static final String ACTION_READ_MORE_TEXT = "com.google.glass.ACTION_READ_MORE_TEXT";
  public static final String ACTION_REVEAL_CARD = "com.google.android.glass.action.REVEAL_CARD";
  public static final String EXTRA_ANIMATE_TO_ITEM = "animate";
  public static final String EXTRA_ENTITY_IMAGE = "entityImage";
  public static final String EXTRA_FILTER_ENTITY = "filterEntity";
  public static final String EXTRA_IS_NOTIFICATION = "is_notification";
  public static final String EXTRA_SHOW_VOICE_MENU = "show_voice_menu";
  public static final String EXTRA_SWIPED_TO_BACKGROUND = "swipedToBackground";
  public static final String EXTRA_SWIPE_SOURCE = "swipeSource";
  public static final String EXTRA_TIMELINE_BROADCAST_TIMELINE_ITEM_ID = "itemId";
  public static final String EXTRA_TIMELINE_BUNDLE_ITEM = "bundle_item";
  public static final String EXTRA_TIMELINE_BUNDLE_ITEM_ID = "bundle_item_id";
  public static final String EXTRA_TIMELINE_CREATOR = "creator";
  public static final String EXTRA_TIMELINE_ITEM = "item";
  public static final String EXTRA_TIMELINE_ITEM_ID = "item_id";
  public static final String EXTRA_TIMELINE_MENU_ITEM_ID = "menu_item_id";
  public static final String EXTRA_TIMELINE_SHARE_TARGET_COUNT = "share_target_count";
  public static final String EXTRA_TIMELINE_SHARE_TARGET_PREFIX = "share_target";

  public static String createShareTargetExtraKey(int paramInt)
  {
    return "share_target" + paramInt;
  }

  public static void goToBundle(Context paramContext, TimelineNano.TimelineItem paramTimelineItem, TimelineItemId paramTimelineItemId, boolean paramBoolean1, boolean paramBoolean2)
  {
    Intent localIntent = new Intent("com.google.glass.ACTION_GO_TO_BUNDLE");
    localIntent.addFlags(268435456);
    if (paramTimelineItem != null)
      localIntent.putExtra("item", MessageNano.toByteArray(paramTimelineItem));
    localIntent.putExtra("item_id", paramTimelineItemId);
    localIntent.putExtra("is_notification", paramBoolean1);
    localIntent.putExtra("show_voice_menu", paramBoolean2);
    paramContext.startActivity(localIntent);
  }

  public static void goToEntityTimeline(Context paramContext, TimelineNano.Entity paramEntity, Bitmap paramBitmap)
  {
    Intent localIntent = new Intent("com.google.glass.ACTION_ENTITY_TIMELINE");
    localIntent.putExtra("filterEntity", MessageNano.toByteArray(paramEntity));
    paramContext.startActivity(localIntent);
  }

  public static void goToTimeline(Context paramContext, TimelineItemId paramTimelineItemId, boolean paramBoolean)
  {
    Bundle localBundle = new Bundle();
    if (paramTimelineItemId != null)
      localBundle.putSerializable("item_id", paramTimelineItemId);
    localBundle.putBoolean("animate", paramBoolean);
    goToTimelineWithExtras(paramContext, localBundle);
  }

  public static void goToTimelineHome(Context paramContext)
  {
    goToTimeline(paramContext, null, false);
  }

  public static void goToTimelineWithExtras(Context paramContext, Bundle paramBundle)
  {
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.addCategory("android.intent.category.HOME");
    localIntent.addFlags(268435456);
    if (paramBundle != null)
    {
      localIntent.putExtras(paramBundle);
      if (localIntent.getBooleanExtra("animate", false))
        localIntent.addFlags(65536);
    }
    IntentSender.getInstance().startActivity(paramContext, localIntent);
  }

  public static void playVideo(Context paramContext, String paramString1, String paramString2)
  {
    Intent localIntent = new Intent("com.google.glass.action.VIDEOPLAYER");
    localIntent.putExtra(paramString1, paramString2);
    IntentSender.getInstance().startActivity(paramContext, localIntent);
  }

  public static void readMoreHtml(Context paramContext, TimelineItemId paramTimelineItemId)
  {
    Intent localIntent = new Intent("com.google.glass.ACTION_READ_MORE_HTML");
    localIntent.addFlags(268435456);
    localIntent.putExtra("item_id", paramTimelineItemId);
    paramContext.startActivity(localIntent);
  }

  public static void readMoreText(Context paramContext, TimelineItemId paramTimelineItemId)
  {
    Intent localIntent = new Intent("com.google.glass.ACTION_READ_MORE_TEXT");
    localIntent.addFlags(268435456);
    localIntent.putExtra("item_id", paramTimelineItemId);
    paramContext.startActivity(localIntent);
  }

  public static void swipeToTimeline(Context paramContext, OngoingActivityManager.ActivityType paramActivityType, SwipeDirection paramSwipeDirection)
  {
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("swipedToBackground", paramSwipeDirection);
    localBundle.putSerializable("swipeSource", paramActivityType);
    goToTimelineWithExtras(paramContext, localBundle);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.timeline.TimelineActivityHelper
 * JD-Core Version:    0.6.2
 */