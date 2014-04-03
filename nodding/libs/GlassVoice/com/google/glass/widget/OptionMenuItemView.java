package com.google.glass.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import com.google.glass.common.R.id;
import com.google.glass.common.R.layout;
import com.google.glass.widget.horizontalscroll.LinearLayoutCard;

public class OptionMenuItemView extends LinearLayoutCard
{
  private OptionMenuView.Listener listener;
  private boolean suppressTapSound;

  public OptionMenuItemView(Context paramContext)
  {
    super(paramContext);
    initialize();
  }

  public OptionMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initialize();
  }

  public OptionMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    initialize();
  }

  private void initialize()
  {
    LayoutInflater.from(getContext()).inflate(R.layout.option_menu_item, this);
  }

  public boolean onConfirm()
  {
    if (this.listener != null)
    {
      OptionMenu.Item localItem = (OptionMenu.Item)getTag(R.id.tag_horizontal_scroll_item);
      if ((localItem.isEnabled()) && (this.listener.onMenuOptionConfirmed(localItem)))
        return true;
    }
    return false;
  }

  public void setListener(OptionMenuView.Listener paramListener)
  {
    this.listener = paramListener;
  }

  public void setShouldSuppressSingleTapSound(boolean paramBoolean)
  {
    this.suppressTapSound = paramBoolean;
  }

  public boolean shouldSuppressSingleTapSound()
  {
    return this.suppressTapSound;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.OptionMenuItemView
 * JD-Core Version:    0.6.2
 */