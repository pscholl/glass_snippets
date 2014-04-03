package com.google.glass.entity;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Adapter;
import com.google.glass.widget.horizontalscroll.BaseHorizontalScrollView;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;

public class EntityHorizontalScrollView extends BaseHorizontalScrollView<String, TimelineNano.Entity>
{
  public EntityHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, false);
  }

  public int findIdPosition(String paramString)
  {
    return -1;
  }

  public int findItemPosition(TimelineNano.Entity paramEntity)
  {
    return -1;
  }

  public int getHomePosition()
  {
    return 0;
  }

  public View getViewForPosition(int paramInt, View paramView)
  {
    return getAdapter().getView(paramInt, paramView, this);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.entity.EntityHorizontalScrollView
 * JD-Core Version:    0.6.2
 */