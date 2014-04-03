package com.google.glass.widget;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import com.google.glass.common.R.dimen;
import com.google.glass.entity.EntityHelper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.ArrayUtils;
import com.google.glass.util.PersonImageDownloadTask.LabelVisibility;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class ImageLoaders
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  @VisibleForTesting
  protected static void dedupeList(List<TimelineNano.Entity> paramList)
  {
    HashSet localHashSet = Sets.newHashSet();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String[] arrayOfString = EntityHelper.getIds((TimelineNano.Entity)localIterator.next());
      if (arrayOfString != null)
      {
        int i = arrayOfString.length;
        for (int j = 0; ; j++)
        {
          int k = 0;
          if (j < i)
          {
            if (localHashSet.contains(arrayOfString[j]))
              k = 1;
          }
          else
          {
            if (k == 0)
              break label90;
            localIterator.remove();
            break;
          }
        }
        label90: int m = arrayOfString.length;
        for (int n = 0; n < m; n++)
          localHashSet.add(arrayOfString[n]);
      }
    }
  }

  public static ImageLoader forByteImages(List<byte[]> paramList, int paramInt1, int paramInt2, int paramInt3)
  {
    return new ByteImageLoader(paramList, paramInt1, paramInt2, paramInt3);
  }

  public static ImageLoader forEntities(List<TimelineNano.Entity> paramList, int paramInt1, int paramInt2)
  {
    return forEntities(paramList, PersonImageDownloadTask.LabelVisibility.DEFAULT, paramInt1, paramInt2);
  }

  public static ImageLoader forEntities(List<TimelineNano.Entity> paramList, PersonImageDownloadTask.LabelVisibility paramLabelVisibility, int paramInt1, int paramInt2)
  {
    return new EntityImageLoader(paramList, paramLabelVisibility, paramInt1, paramInt2);
  }

  public static ImageLoader forImageUrls(List<String> paramList, int paramInt1, int paramInt2)
  {
    return forImageUrls(paramList, PersonImageDownloadTask.LabelVisibility.DEFAULT, paramInt1, paramInt2);
  }

  public static ImageLoader forImageUrls(List<String> paramList, PersonImageDownloadTask.LabelVisibility paramLabelVisibility, int paramInt1, int paramInt2)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    for (int i = 0; i < paramList.size(); i++)
    {
      TimelineNano.Entity localEntity = new TimelineNano.Entity();
      localEntity.id = Integer.toString(i);
      String[] arrayOfString = new String[1];
      arrayOfString[0] = ((String)paramList.get(i));
      localEntity.imageUrl = arrayOfString;
      localArrayList.add(localEntity);
    }
    return new EntityImageLoader(localArrayList, paramLabelVisibility, paramInt1, paramInt2);
  }

  public static ImageLoader forTimelineItem(TimelineNano.TimelineItem paramTimelineItem, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    LinkedList localLinkedList = Lists.newLinkedList();
    if (paramTimelineItem.creator != null)
      localLinkedList.add(paramTimelineItem.creator);
    if ((!paramBoolean) && (!ArrayUtils.isEmpty(paramTimelineItem.shareTarget)))
    {
      TimelineNano.Entity[] arrayOfEntity = paramTimelineItem.shareTarget;
      int i = arrayOfEntity.length;
      for (int j = 0; j < i; j++)
        localLinkedList.add(arrayOfEntity[j]);
    }
    dedupeList(localLinkedList);
    return forEntities(localLinkedList, paramInt1, paramInt2);
  }

  public static ImageLoader forTimelineItemInView(TimelineNano.TimelineItem paramTimelineItem, boolean paramBoolean, View paramView)
  {
    Resources localResources = paramView.getResources();
    int i = localResources.getDimensionPixelSize(R.dimen.lhs_width);
    int j = localResources.getDisplayMetrics().heightPixels;
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(i);
    arrayOfObject[1] = Integer.valueOf(j);
    localFormattingLogger.d("Computed view dimensions at %d x %d", arrayOfObject);
    return forTimelineItem(paramTimelineItem, paramBoolean, i, j);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.ImageLoaders
 * JD-Core Version:    0.6.2
 */