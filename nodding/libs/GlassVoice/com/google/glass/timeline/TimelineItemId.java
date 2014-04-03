package com.google.glass.timeline;

import android.text.TextUtils;
import com.google.glass.predicates.Assert;
import com.google.glass.util.PrimitiveUtils;
import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;
import java.io.Serializable;

public class TimelineItemId
  implements Serializable
{
  private final String bundleId;
  private final long displayTime;
  private final boolean isBundleCover;
  private final boolean isPinned;
  private final String itemId;

  public TimelineItemId(TimelineNano.TimelineItem paramTimelineItem)
  {
    this(paramTimelineItem.id, PrimitiveUtils.safeBoolean(paramTimelineItem.isPinned), TimelineHelper.getDisplayTime(paramTimelineItem), paramTimelineItem.bundleId, PrimitiveUtils.safeBoolean(paramTimelineItem.isBundleCover));
  }

  public TimelineItemId(String paramString1, boolean paramBoolean1, long paramLong, String paramString2, boolean paramBoolean2)
  {
    Assert.assertFalse(TextUtils.isEmpty(paramString1));
    this.itemId = paramString1;
    this.isPinned = paramBoolean1;
    this.displayTime = paramLong;
    this.bundleId = paramString2;
    this.isBundleCover = paramBoolean2;
  }

  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof TimelineItemId))
    {
      TimelineItemId localTimelineItemId = (TimelineItemId)paramObject;
      return this.itemId.equals(localTimelineItemId.getItemId());
    }
    return false;
  }

  public String getBundleId()
  {
    return this.bundleId;
  }

  public long getDisplayTime()
  {
    return this.displayTime;
  }

  public String getItemId()
  {
    return this.itemId;
  }

  public int hashCode()
  {
    return this.itemId.hashCode();
  }

  public boolean isBundleCover()
  {
    return this.isBundleCover;
  }

  public boolean isPinned()
  {
    return this.isPinned;
  }

  public String toString()
  {
    return "{ itemId: " + this.itemId + ", isPinned: " + this.isPinned + ", displayTime: " + this.displayTime + ", bundleId: " + this.bundleId + ", isBundleCover: " + this.isBundleCover + " }";
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.timeline.TimelineItemId
 * JD-Core Version:    0.6.2
 */