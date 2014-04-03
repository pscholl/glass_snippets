package com.google.glass.entity;

import android.content.Context;
import android.database.DataSetObserver;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import com.google.glass.app.GlassFragment;
import com.google.glass.common.R.id;
import com.google.glass.common.R.layout;
import com.google.glass.widget.SliderView;
import com.google.glass.widget.horizontalscroll.BaseHorizontalScrollView;
import com.google.glass.widget.horizontalscroll.BaseHorizontalScrollView.PositionListener;
import com.google.glass.widget.horizontalscroll.FastScrollOverlay;

public abstract class EntityListFragment extends GlassFragment
{
  public static final String FRAGMENT_ID = "entity";
  private static final String TAG = EntityListFragment.class.getSimpleName();
  private EntityHorizontalScrollView scrollView;
  protected SliderView sliderView;
  private View view;

  protected abstract Adapter getAdapter();

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.view = paramLayoutInflater.inflate(R.layout.entity_scroller, paramViewGroup, false);
    this.scrollView = ((EntityHorizontalScrollView)this.view.findViewById(R.id.scroll_view));
    this.sliderView = ((SliderView)this.view.findViewById(R.id.slider));
    this.sliderView.setScrollView(this.scrollView);
    final Adapter localAdapter = getAdapter();
    this.scrollView.setAdapter(localAdapter);
    final FastScrollOverlay local1 = new FastScrollOverlay(getActivity(), this.scrollView)
    {
      protected String getLabelForItem(View paramAnonymousView, int paramAnonymousInt)
      {
        if (!EntityListFragment.this.showFastScrollLabel(paramAnonymousInt));
        String str;
        do
        {
          return null;
          str = ((EntityItemView)paramAnonymousView).getDisplayName();
        }
        while (TextUtils.isEmpty(str));
        return Character.toString(str.charAt(0));
      }
    };
    ((ViewGroup)this.view).addView(local1);
    this.scrollView.addPositionListener(new BaseHorizontalScrollView.PositionListener()
    {
      public void onFocused(int paramAnonymousInt)
      {
      }

      public void onScaleChanged(float paramAnonymousFloat)
      {
        local1.onScaleChanged(paramAnonymousFloat);
      }

      public void onScrollPositionChanged(float paramAnonymousFloat)
      {
        local1.onScrollPositionChanged(paramAnonymousFloat);
      }

      public void onSettled(int paramAnonymousInt)
      {
      }

      public void onUnsettled(int paramAnonymousInt)
      {
      }
    });
    localAdapter.registerDataSetObserver(new DataSetObserver()
    {
      public void onChanged()
      {
        EntityListFragment.this.sliderView.setCount(localAdapter.getCount());
      }
    });
    this.sliderView.setCount(localAdapter.getCount());
    return this.view;
  }

  public void onPause()
  {
    super.onPause();
    this.scrollView.deactivate();
  }

  public void onResume()
  {
    super.onResume();
    this.scrollView.activate();
  }

  protected boolean showFastScrollLabel(int paramInt)
  {
    return true;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.entity.EntityListFragment
 * JD-Core Version:    0.6.2
 */