package com.google.glass.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.FrameLayout;
import com.google.glass.input.OrientationHelper.OrientationListener;

public class HeadScrollView extends FrameLayout
  implements OrientationHelper.OrientationListener, View.OnLayoutChangeListener
{
  private static final float PIXELS_PER_DEGREES = 25.0F;
  private boolean allowScrolling = true;
  private int maxScrollX = 0;
  private int maxScrollY = 0;
  private int startScrollX = 0;
  private int startScrollY = 0;

  public HeadScrollView(Context paramContext)
  {
    this(paramContext, null);
  }

  public HeadScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private void clampAndScroll(float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 < 0.0F)
    {
      this.startScrollX = ((int)(this.startScrollX - paramFloat1));
      paramFloat1 = 0.0F;
      if (paramFloat2 >= 0.0F)
        break label86;
      this.startScrollY = ((int)(this.startScrollY - paramFloat2));
      paramFloat2 = 0.0F;
    }
    while (true)
    {
      scrollTo((int)paramFloat1, (int)paramFloat2);
      return;
      if (paramFloat1 <= this.maxScrollX)
        break;
      this.startScrollX = ((int)(this.startScrollX + (this.maxScrollX - paramFloat1)));
      paramFloat1 = this.maxScrollX;
      break;
      label86: if (paramFloat2 > this.maxScrollY)
      {
        this.startScrollY = ((int)(this.startScrollY + (this.maxScrollY - paramFloat2)));
        paramFloat2 = this.maxScrollY;
      }
    }
  }

  private void tare(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this.startScrollX = paramInt1;
    this.startScrollY = paramInt2;
    if (paramBoolean)
      scrollTo(paramInt1, paramInt2);
  }

  private void updateFocusedChild()
  {
    if (getChildCount() == 0)
      return;
    float f1 = getScrollX() + getWidth() / 2;
    float f2 = getScrollY() + getHeight() / 2;
    PointFocusableHelper.getInstance().dispatchRequestPointFocus(getChildAt(0), f1, f2);
  }

  public void addView(View paramView)
  {
    if (getChildCount() > 0)
      throw new IllegalStateException("HeadScrollView can host only one direct child");
    super.addView(paramView);
  }

  public void addView(View paramView, int paramInt)
  {
    if (getChildCount() > 0)
      throw new IllegalStateException("HeadScrollView can host only one direct child");
    super.addView(paramView, paramInt);
  }

  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (getChildCount() > 0)
      throw new IllegalStateException("HeadScrollView can host only one direct child");
    super.addView(paramView, paramInt, paramLayoutParams);
  }

  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (getChildCount() > 0)
      throw new IllegalStateException("HeadScrollView can host only one direct child");
    super.addView(paramView, paramLayoutParams);
    paramView.addOnLayoutChangeListener(this);
  }

  protected void measureChild(View paramView, int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.makeMeasureSpec(0, 0);
    paramView.measure(i, i);
  }

  protected void measureChildWithMargins(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i = View.MeasureSpec.makeMeasureSpec(localMarginLayoutParams.topMargin + localMarginLayoutParams.bottomMargin, 0);
    paramView.measure(i, i);
  }

  public void onLayoutChange(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    if ((getChildCount() != 0) && (paramView == getChildAt(0)))
    {
      this.maxScrollX = Math.max(paramView.getWidth() - getWidth(), 0);
      this.maxScrollY = Math.max(paramView.getHeight() - getHeight(), 0);
      int i = paramInt7 - paramInt5;
      int j = paramInt8 - paramInt6;
      int k = paramInt3 - paramInt1;
      int m = paramInt4 - paramInt2;
      if ((k > i) || (m > j))
        tare(this.maxScrollX / 2, this.maxScrollY / 2, true);
    }
  }

  public void onOrientationChanged(float paramFloat1, float paramFloat2, float paramFloat3, long paramLong)
  {
    if (!this.allowScrolling)
      return;
    clampAndScroll(paramFloat1 * 25.0F + this.startScrollX, paramFloat2 * 25.0F + this.startScrollY);
  }

  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    updateFocusedChild();
  }

  public void setAllowScrolling(boolean paramBoolean)
  {
    this.allowScrolling = paramBoolean;
    tare(getScrollX(), getScrollY(), false);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.HeadScrollView
 * JD-Core Version:    0.6.2
 */