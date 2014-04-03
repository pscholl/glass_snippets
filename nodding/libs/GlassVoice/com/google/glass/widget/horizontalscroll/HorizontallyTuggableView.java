package com.google.glass.widget.horizontalscroll;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.BaseAdapter;
import com.google.glass.common.R.id;

public class HorizontallyTuggableView extends BaseHorizontalScrollView<Void, Void>
{
  private View view;

  public HorizontallyTuggableView(Context paramContext)
  {
    super(paramContext, true);
  }

  public HorizontallyTuggableView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, true);
  }

  public HorizontallyTuggableView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt, true);
  }

  public int findIdPosition(Void paramVoid)
  {
    return 0;
  }

  public int findItemPosition(Void paramVoid)
  {
    return 0;
  }

  public int getHomePosition()
  {
    return 0;
  }

  public View getView()
  {
    return this.view;
  }

  public View getViewForPosition(int paramInt, View paramView)
  {
    return getAdapter().getView(paramInt, paramView, this);
  }

  public void setView(View paramView)
  {
    if (!(paramView instanceof Card))
      throw new IllegalArgumentException("The wrapped View needs to be a Card.");
    this.view = paramView;
    paramView.setTag(R.id.tag_horizontal_scroll_item_view_recycler, new NoopViewRecycler());
    setAdapter(new BaseAdapter()
    {
      public int getCount()
      {
        return 1;
      }

      public Object getItem(int paramAnonymousInt)
      {
        return null;
      }

      public long getItemId(int paramAnonymousInt)
      {
        return 0L;
      }

      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        return HorizontallyTuggableView.this.view;
      }
    });
    updateViews(true);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.horizontalscroll.HorizontallyTuggableView
 * JD-Core Version:    0.6.2
 */