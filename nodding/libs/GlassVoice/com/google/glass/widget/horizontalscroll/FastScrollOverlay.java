package com.google.glass.widget.horizontalscroll;

import android.content.Context;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Adapter;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.google.glass.common.R.id;
import com.google.glass.common.R.layout;
import com.google.glass.predicates.Assert;
import com.google.glass.widget.TypophileTextView;
import java.util.List;

public abstract class FastScrollOverlay extends FrameLayout
{
  private static final float ITEM_VIEW_SPACING = 10.0F;
  private static final float ITEM_VIEW_WIDTH = 211.20001F;
  private static final float LABEL_LEFT_MARGIN = 40.0F;
  private static final float LABEL_OFFSET_PER_ITEM = 221.20001F;
  private static final float LABEL_OFFSET_WHEN_LEFT_ALIGNED = 60.0F;
  private static final float LABEL_OFFSET_WHEN_RIGHT_ALIGNED = 10.0F;
  private static final float LABEL_RIGHT_MARGIN = 40.0F;
  private static final int MIN_ITEM_POSITION_FOR_LABEL = 1;
  private static final int NUM_LABELS = 5;
  private static final int NUM_LABELS_RIGHT_ALIGNED = 3;
  private static final float SCREEN_WIDTH = 640.0F;
  private String[] labelText = new String[5];
  private float[] labelTextWidths = new float[5];
  private float[] labelX = new float[5];
  private TypophileTextView[] labels = new TypophileTextView[5];
  private int lastCenterPosition = -1;
  private float lastZoomFactor = 0.0F;
  private FrameLayout overlay;
  private final BaseHorizontalScrollView<?, ?> scrollView;

  public FastScrollOverlay(Context paramContext, AttributeSet paramAttributeSet, int paramInt, BaseHorizontalScrollView<?, ?> paramBaseHorizontalScrollView)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.scrollView = paramBaseHorizontalScrollView;
    this.overlay = new FrameLayout(paramContext);
    this.overlay.setLayoutParams(new FrameLayout.LayoutParams(-1, -2, 80));
    addView(this.overlay);
    LayoutInflater localLayoutInflater = LayoutInflater.from(paramContext);
    for (int i = 0; i < 5; i++)
    {
      this.labels[i] = ((TypophileTextView)localLayoutInflater.inflate(R.layout.fast_scroll_label, null));
      this.labels[i].setVisibility(4);
      this.labelText[i] = "";
      this.labelTextWidths[i] = -1.0F;
      this.overlay.addView(this.labels[i]);
    }
    this.overlay.setTranslationY(this.overlay.getHeight());
    this.overlay.setAlpha(0.0F);
  }

  public FastScrollOverlay(Context paramContext, AttributeSet paramAttributeSet, BaseHorizontalScrollView<?, ?> paramBaseHorizontalScrollView)
  {
    this(paramContext, paramAttributeSet, 0, paramBaseHorizontalScrollView);
  }

  public FastScrollOverlay(Context paramContext, BaseHorizontalScrollView<?, ?> paramBaseHorizontalScrollView)
  {
    this(paramContext, null, paramBaseHorizontalScrollView);
  }

  private void adjustFadeOutViewsAlphaForItemView(final View paramView)
  {
    Assert.assertUiThread();
    float f1 = this.scrollView.getZoomOutFactor();
    if (isLabelReady(paramView))
    {
      List localList = (List)paramView.getTag(R.id.tag_horizontal_scroll_fade_out_on_scroll);
      if (localList != null)
      {
        float f2 = 1.0F - f1;
        for (int i = 0; i < localList.size(); i++)
          ((View)localList.get(i)).setAlpha(f2);
      }
    }
    else
    {
      setRunnableForWhenLabelReady(paramView, new Runnable()
      {
        public void run()
        {
          FastScrollOverlay.this.adjustFadeOutViewsAlphaForItemView(paramView);
        }
      });
    }
  }

  private float getLabelTextWidth(int paramInt)
  {
    if (this.labelTextWidths[paramInt] < 0.0F)
      this.labelTextWidths[paramInt] = this.labels[paramInt].getPaint().measureText(this.labelText[paramInt]);
    return this.labelTextWidths[paramInt];
  }

  private void setLabelText(int paramInt, String paramString, boolean paramBoolean)
  {
    if (paramString == null)
      paramString = "";
    this.labelText[paramInt] = paramString;
    this.labelTextWidths[paramInt] = -1.0F;
    if (paramBoolean)
    {
      updateLabelVisibility(paramInt);
      if (this.labels[paramInt].getVisibility() == 0)
        this.labels[paramInt].setText(paramString);
      if (paramInt > 0)
        if (this.labels[(paramInt - 1)].getVisibility() != 0)
          break label120;
    }
    label120: for (int i = 1; ; i = 0)
    {
      updateLabelVisibility(paramInt - 1);
      if ((this.labels[(paramInt - 1)].getVisibility() == 0) && (i == 0))
        this.labels[(paramInt - 1)].setText(this.labelText[(paramInt - 1)]);
      return;
    }
  }

  private void updateLabelForItemView(View paramView)
  {
    int i = Math.round(this.scrollView.getScrollPosition());
    int j = ((Integer)paramView.getTag(R.id.tag_horizontal_scroll_item_position)).intValue();
    if (Math.abs(j - i) > 2)
      return;
    String str = getLabelForItem(paramView, j);
    setLabelText(j - (i - 2), str, true);
    updateLabelPositions();
  }

  private void updateLabelPositions()
  {
    Assert.assertUiThread();
    if (this.lastZoomFactor == 0.0F);
    while (true)
    {
      return;
      float f1 = this.scrollView.getScrollPosition();
      int i = Math.round(f1);
      int j = i - 2;
      float f2 = 221.20001F * (f1 - i);
      for (int k = 0; k < 3; k++)
      {
        float f7 = 221.20001F * (k - 3);
        this.labelX[k] = (10.0F + f7 - f2);
      }
      for (int m = 3; m < 5; m++)
      {
        float f4 = 221.20001F * (m - 3);
        float f5 = 10.0F + f4 - f2;
        float f6 = 60.0F + f4 - 221.20001F - f2 + getLabelTextWidth(m);
        if (f6 < -40.0F)
          f6 = Math.min(-40.0F, f5);
        for (int i2 = m; (i2 >= 2) && (j + i2 > 1) && (this.labels[(i2 - 1)].getVisibility() == 4); i2--);
        if (i2 < m)
          f6 = Math.max(Math.min(-40.0F, f5), f6 - 221.20001F * (m - i2));
        this.labelX[m] = f6;
      }
      float f3 = this.scrollView.getZoomScale();
      if (f3 > 0.33F)
        for (int i1 = 0; i1 < 5; i1++)
          this.labelX[i1] = (-320.0F + f3 / 0.33F * (320.0F + this.labelX[i1]));
      invalidate();
      for (int n = 0; n < 5; n++)
        if (this.labels[n].getVisibility() == 0)
          this.labels[n].setTranslationX(Math.round(this.labelX[n]));
    }
  }

  private void updateLabelVisibility(int paramInt)
  {
    String str = this.labelText[paramInt];
    if ((str.length() == 0) || ((paramInt < 4) && (str.equals(this.labelText[(paramInt + 1)]))));
    for (int i = 1; ; i = 0)
    {
      TypophileTextView localTypophileTextView = this.labels[paramInt];
      int j = 0;
      if (i != 0)
        j = 4;
      localTypophileTextView.setVisibility(j);
      return;
    }
  }

  private void updateLabels()
  {
    Assert.assertUiThread();
    int i = this.scrollView.getAdapter().getCount();
    int j = this.scrollView.getHomePosition();
    int k = Math.round(this.scrollView.getScrollPosition());
    int m = k - 2;
    boolean[] arrayOfBoolean = new boolean[5];
    int n = 0;
    while (n < this.scrollView.getChildCount())
    {
      final View localView = this.scrollView.getItemViewForChildAt(n);
      int i2 = ((Integer)localView.getTag(R.id.tag_horizontal_scroll_item_position)).intValue();
      if (Math.abs(i2 - k) > 2)
      {
        n++;
      }
      else
      {
        String str = "";
        if (i2 == j)
          str = getHomePositionLabel();
        while (true)
        {
          setLabelText(i2 - m, str, false);
          arrayOfBoolean[(i2 - m)] = true;
          adjustFadeOutViewsAlphaForItemView(localView);
          break;
          if ((i2 >= 1) && (i2 < i))
            if (isLabelReady(localView))
            {
              str = getLabelForItem(localView, i2);
            }
            else if (i2 > 1)
            {
              if (i2 > m)
                str = this.labelText[(-1 + (i2 - m))];
              setRunnableForWhenLabelReady(localView, new Runnable()
              {
                public void run()
                {
                  Assert.assertUiThread();
                  FastScrollOverlay.this.updateLabelForItemView(localView);
                  FastScrollOverlay.this.adjustFadeOutViewsAlphaForItemView(localView);
                }
              });
            }
        }
      }
    }
    for (int i1 = 0; i1 < 5; i1++)
      if (arrayOfBoolean[i1] == 0)
        setLabelText(i1, "", false);
    updateTextViews();
    updateLabelPositions();
  }

  private void updateTextViews()
  {
    for (int i = 0; i < 5; i++)
    {
      updateLabelVisibility(i);
      if (this.labels[i].getVisibility() == 0)
        this.labels[i].setText(this.labelText[i]);
    }
  }

  protected String getHomePositionLabel()
  {
    int i = this.scrollView.getHomePosition();
    return getLabelForItem(this.scrollView.getItemViewForChildAt(i), i);
  }

  protected abstract String getLabelForItem(View paramView, int paramInt);

  protected BaseHorizontalScrollView<?, ?> getScrollView()
  {
    return this.scrollView;
  }

  protected boolean isLabelReady(View paramView)
  {
    return true;
  }

  public void onScaleChanged(float paramFloat)
  {
    float f = this.scrollView.getZoomOutFactor();
    if (f == this.lastZoomFactor)
      return;
    if (this.lastZoomFactor == 0.0F)
    {
      updateLabels();
      this.lastZoomFactor = f;
      if (f != 0.0F)
        break label87;
      this.overlay.setVisibility(8);
    }
    while (true)
    {
      updateLabelPositions();
      return;
      for (int i = 0; i < this.scrollView.getChildCount(); i++)
        adjustFadeOutViewsAlphaForItemView(this.scrollView.getItemViewForChildAt(i));
      break;
      label87: this.overlay.setVisibility(0);
      this.overlay.setTranslationY(Math.round((1.0F - f) * this.overlay.getHeight()));
      this.overlay.setAlpha(f);
    }
  }

  public void onScrollPositionChanged(float paramFloat)
  {
    int i = Math.round(paramFloat);
    if (i != this.lastCenterPosition)
    {
      this.lastCenterPosition = i;
      updateLabels();
      return;
    }
    updateLabelPositions();
  }

  protected void setRunnableForWhenLabelReady(View paramView, Runnable paramRunnable)
  {
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.horizontalscroll.FastScrollOverlay
 * JD-Core Version:    0.6.2
 */