package com.google.glass.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.widget.Adapter;
import com.google.glass.common.R.anim;
import com.google.glass.util.AnimationUtils;
import com.google.glass.util.SimpleAnimationListener;
import com.google.glass.widget.horizontalscroll.BaseHorizontalScrollView;
import java.util.Iterator;
import java.util.List;

@Deprecated
public class OptionMenuView extends BaseHorizontalScrollView<Integer, OptionMenu.Item>
  implements OptionMenu.ItemStateListener
{
  private Animation hideMenuAnimation;
  protected Listener listener;
  private OptionMenu optionMenu;
  private Animation showMenuAnimation;

  public OptionMenuView(Context paramContext)
  {
    super(paramContext, false);
  }

  public OptionMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, false);
  }

  public OptionMenuView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt, false);
  }

  public int findIdPosition(Integer paramInteger)
  {
    return findItemPosition(this.optionMenu.findItem(paramInteger.intValue()));
  }

  public int findItemPosition(OptionMenu.Item paramItem)
  {
    for (int i = 0; i < this.optionMenu.getVisibleItemCount(); i++)
      if (this.optionMenu.getVisibleItem(i).equals(paramItem))
        return i;
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

  public void hide()
  {
    if (!isShown())
      return;
    AnimationUtils.startAnimation(this, this.hideMenuAnimation);
  }

  public void init(Listener paramListener)
  {
    this.listener = paramListener;
    this.showMenuAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.contextual_enter);
    this.hideMenuAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.contextual_exit);
    this.hideMenuAnimation.setAnimationListener(new SimpleAnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        OptionMenuView.this.setVisibility(8);
      }
    });
  }

  public void onStateChanged(int paramInt, boolean paramBoolean)
  {
    updateViews(true);
  }

  public void setListener(Listener paramListener)
  {
    this.listener = paramListener;
  }

  public void setOptionMenu(OptionMenu paramOptionMenu)
  {
    if (this.optionMenu != null)
    {
      Iterator localIterator2 = this.optionMenu.getItems().iterator();
      while (localIterator2.hasNext())
        ((OptionMenu.Item)localIterator2.next()).setStateListener(null);
    }
    this.optionMenu = paramOptionMenu;
    setAdapter(new OptionMenuAdapter(getContext(), paramOptionMenu, this.listener));
    Iterator localIterator1 = paramOptionMenu.getItems().iterator();
    while (localIterator1.hasNext())
      ((OptionMenu.Item)localIterator1.next()).setStateListener(this);
    updateViews(true);
  }

  public void show()
  {
    if (isShown())
      return;
    setVisibility(0);
    AnimationUtils.startAnimation(this, this.showMenuAnimation);
  }

  public static abstract interface Listener
  {
    public abstract boolean onMenuOptionConfirmed(OptionMenu.Item paramItem);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.OptionMenuView
 * JD-Core Version:    0.6.2
 */