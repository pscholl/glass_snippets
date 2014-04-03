package com.google.glass.share;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.google.glass.common.R.id;
import com.google.glass.entity.EntityHelper;
import com.google.glass.util.ArrayUtils;
import com.google.glass.util.DeferredContentLoader;
import com.google.glass.util.GlasswareIconLoadingTask;
import com.google.glass.util.GlasswareIconLoadingTask.IconSize;
import com.google.glass.widget.ImageLoaders;
import com.google.glass.widget.MosaicView;
import com.google.glass.widget.TypophileTextView;
import com.google.glass.widget.horizontalscroll.ViewRecycler;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import java.util.Arrays;
import java.util.List;

public class ShareTargetAdapter extends BaseAdapter
  implements ViewRecycler
{
  private final Context context;
  private final ShareHorizontalScrollView.Listener listener;
  private final List<TimelineNano.Entity> shareTargets;

  public ShareTargetAdapter(Context paramContext, List<TimelineNano.Entity> paramList, ShareHorizontalScrollView.Listener paramListener)
  {
    this.context = paramContext;
    this.shareTargets = paramList;
    this.listener = paramListener;
  }

  private void bindGlasswareIcon(TimelineNano.Entity paramEntity, View paramView)
  {
    ImageView localImageView = (ImageView)paramView.findViewById(R.id.glassware_icon);
    if ((paramEntity.source != null) && (paramEntity.source.startsWith("api:")))
    {
      String str = paramEntity.source.substring("api:".length());
      GlasswareIconLoadingTask localGlasswareIconLoadingTask = new GlasswareIconLoadingTask(this.context, str, GlasswareIconLoadingTask.IconSize.MEDIUM, localImageView);
      DeferredContentLoader.load(localGlasswareIconLoadingTask);
      paramView.setTag(R.id.tag_loading_task, localGlasswareIconLoadingTask);
    }
  }

  public int getCount()
  {
    return this.shareTargets.size();
  }

  public TimelineNano.Entity getItem(int paramInt)
  {
    return (TimelineNano.Entity)this.shareTargets.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return getItem(paramInt).id.hashCode();
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    TimelineNano.Entity localEntity = getItem(paramInt);
    if (paramView == null)
    {
      paramView = new ShareTargetView(this.context);
      ((ShareTargetView)paramView).setListener(this.listener);
    }
    ((TypophileTextView)paramView.findViewById(R.id.label)).setText(EntityHelper.getDisplayName(localEntity));
    bindGlasswareIcon(localEntity, paramView);
    MosaicView localMosaicView = (MosaicView)paramView.findViewById(R.id.mosaic);
    int i = this.context.getResources().getDisplayMetrics().widthPixels;
    int j = this.context.getResources().getDisplayMetrics().heightPixels;
    if (!ArrayUtils.isEmpty(localEntity.imageUrl))
    {
      localMosaicView.loadImages(ImageLoaders.forImageUrls(Arrays.asList(localEntity.imageUrl), i, j));
      localMosaicView.setVisibility(0);
    }
    while (true)
    {
      paramView.setTag(R.id.tag_horizontal_scroll_item, getItem(paramInt));
      paramView.setTag(R.id.tag_horizontal_scroll_item_view_recycler, this);
      return paramView;
      localMosaicView.setVisibility(8);
    }
  }

  public int getViewTypeCount()
  {
    return 1;
  }

  public void recycleView(View paramView)
  {
    GlasswareIconLoadingTask localGlasswareIconLoadingTask = (GlasswareIconLoadingTask)paramView.getTag(R.id.tag_loading_task);
    if (localGlasswareIconLoadingTask != null)
    {
      localGlasswareIconLoadingTask.cancel(false);
      paramView.setTag(R.id.tag_loading_task, null);
    }
    MosaicView localMosaicView = (MosaicView)paramView.findViewById(R.id.mosaic);
    localMosaicView.cancelImageDownloads();
    localMosaicView.clearImages();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.share.ShareTargetAdapter
 * JD-Core Version:    0.6.2
 */