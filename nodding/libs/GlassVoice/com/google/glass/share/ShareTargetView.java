package com.google.glass.share;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import com.google.glass.common.R.id;
import com.google.glass.common.R.layout;
import com.google.glass.widget.horizontalscroll.LinearLayoutCard;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;

public class ShareTargetView extends LinearLayoutCard
{
  private ShareHorizontalScrollView.Listener listener;

  public ShareTargetView(Context paramContext)
  {
    super(paramContext);
    initialize();
  }

  public ShareTargetView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initialize();
  }

  public ShareTargetView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    initialize();
  }

  private void initialize()
  {
    LayoutInflater.from(getContext()).inflate(R.layout.share_target, this);
  }

  public boolean onConfirm()
  {
    if (this.listener != null)
    {
      TimelineNano.Entity localEntity = (TimelineNano.Entity)getTag(R.id.tag_horizontal_scroll_item);
      if (this.listener.onShareTargetSelected(localEntity))
        return true;
    }
    return false;
  }

  public void setListener(ShareHorizontalScrollView.Listener paramListener)
  {
    this.listener = paramListener;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.share.ShareTargetView
 * JD-Core Version:    0.6.2
 */