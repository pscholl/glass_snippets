package com.google.glass.widget;

import android.content.Context;
import android.util.Pair;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.glass.common.R.id;
import com.google.glass.entity.EntityHelper;
import com.google.glass.util.DeferredContentLoader.LoadingTask;
import com.google.glass.util.EntityImageDownloadTask;
import com.google.glass.util.PersonImageDownloadTask.LabelVisibility;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import java.util.List;

public class EntityImageLoader extends BaseImageLoader<TimelineNano.Entity>
{
  private PersonImageDownloadTask.LabelVisibility visibility;

  public EntityImageLoader(List<TimelineNano.Entity> paramList, PersonImageDownloadTask.LabelVisibility paramLabelVisibility, int paramInt1, int paramInt2)
  {
    super(paramList, paramInt1, paramInt2);
    this.visibility = paramLabelVisibility;
    Pair localPair = ImageLoaderUtils.getDrawingEntities(paramList, paramInt1, paramInt2);
    setDrawImageSources((List)localPair.first);
    setGroupCountType((MosaicView.GroupCountType)localPair.second);
  }

  public DeferredContentLoader.LoadingTask<?> createLoadingTask(Context paramContext, FrameLayout paramFrameLayout, int paramInt1, int paramInt2, int paramInt3)
  {
    ImageView localImageView = (ImageView)paramFrameLayout.findViewById(R.id.image);
    TextView localTextView = (TextView)paramFrameLayout.findViewById(R.id.text);
    EntityImageDownloadTask localEntityImageDownloadTask = new EntityImageDownloadTask(paramContext, (TimelineNano.Entity)get(paramInt1), localImageView, localTextView, paramInt2, paramInt3);
    localEntityImageDownloadTask.setLabelVisibility(this.visibility);
    return localEntityImageDownloadTask;
  }

  public String getBackoffText(int paramInt)
  {
    if (paramInt == -1)
      return null;
    return EntityHelper.getDisplayName((TimelineNano.Entity)get(paramInt));
  }

  protected String getImageSourceKey(TimelineNano.Entity paramEntity)
  {
    return paramEntity.id;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.EntityImageLoader
 * JD-Core Version:    0.6.2
 */