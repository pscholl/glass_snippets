package com.google.glass.timeline.active;

import android.content.Context;
import com.google.glass.ongoing.OngoingActivityManager.ActivityType;
import com.google.glass.timeline.TimelineActivityHelper;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.util.CustomItemIdGenerator;

public final class ActiveItemApi
{
  private static final CustomItemIdGenerator idGenerator = new CustomItemIdGenerator("active");

  public static OngoingActivityManager.ActivityType convertToEnum(String paramString)
  {
    if (idGenerator.isId(paramString))
      paramString = idGenerator.getPostfix(paramString);
    return OngoingActivityManager.ActivityType.valueOf(paramString);
  }

  public static String createActiveItemId(OngoingActivityManager.ActivityType paramActivityType)
  {
    return idGenerator.createId(paramActivityType.name());
  }

  public static void goToActiveTimeline(Context paramContext, OngoingActivityManager.ActivityType paramActivityType)
  {
    goToActiveTimeline(paramContext, paramActivityType, false);
  }

  public static void goToActiveTimeline(Context paramContext, OngoingActivityManager.ActivityType paramActivityType, boolean paramBoolean)
  {
    TimelineActivityHelper.goToTimeline(paramContext, new TimelineItemId(createActiveItemId(paramActivityType), true, -1L, null, false), paramBoolean);
  }

  public static boolean isActiveItemId(String paramString)
  {
    return idGenerator.isId(paramString);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.timeline.active.ActiveItemApi
 * JD-Core Version:    0.6.2
 */