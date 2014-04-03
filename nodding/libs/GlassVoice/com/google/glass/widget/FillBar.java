package com.google.glass.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.common.R.color;
import java.util.ArrayList;
import java.util.List;
import junit.framework.Assert;

public class FillBar extends FrameLayout
{
  private View fill;
  private List<Listener> listeners = new ArrayList();
  private float offset;
  private float value;

  public FillBar(Context paramContext)
  {
    this(paramContext, null, 0);
  }

  public FillBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public FillBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setBackgroundColor(paramContext.getResources().getColor(R.color.background_dark_gray));
    this.fill = new View(paramContext);
    this.fill.setBackgroundColor(-1);
    this.fill.setLayoutParams(new FrameLayout.LayoutParams(1, -1));
    this.fill.setPivotX(0.0F);
    addView(this.fill);
  }

  private void onValueChanged()
  {
    float f = clamp(this.value, this.offset);
    updateScale(f);
    int i = 0;
    int j = this.listeners.size();
    while (i < j)
    {
      ((Listener)this.listeners.get(i)).onFillValueChanged(f);
      i++;
    }
  }

  private void updateScale(float paramFloat)
  {
    this.fill.setScaleX(paramFloat * getWidth());
  }

  public void addListener(Listener paramListener)
  {
    Assert.assertNotNull(paramListener);
    this.listeners.add(paramListener);
  }

  @VisibleForTesting
  float clamp(float paramFloat1, float paramFloat2)
  {
    return Math.max(0.0F, Math.min(1.0F, paramFloat1 + paramFloat2));
  }

  public void commitFillOffset()
  {
    if (this.offset != 0.0F)
    {
      this.value = clamp(this.value, this.offset);
      this.offset = 0.0F;
      onValueChanged();
    }
  }

  public float getFillOffset()
  {
    return this.offset;
  }

  public int getOverScrollPixels()
  {
    int i;
    if ((isAtMin()) && (this.offset < 0.0F))
    {
      i = 1;
      if ((!isAtMax()) || (this.offset <= 0.0F))
        break label83;
    }
    label83: for (int j = 1; ; j = 0)
    {
      int k;
      if (i == 0)
      {
        k = 0;
        if (j == 0);
      }
      else
      {
        k = (int)((clamp(this.value, this.offset) - (this.value + this.offset)) * getWidth());
      }
      return k;
      i = 0;
      break;
    }
  }

  public boolean isAtMax()
  {
    return clamp(this.value, this.offset) == 1.0F;
  }

  public boolean isAtMin()
  {
    return clamp(this.value, this.offset) == 0.0F;
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    updateScale(clamp(this.value, this.offset));
  }

  public void removeListener(Listener paramListener)
  {
    Assert.assertNotNull(paramListener);
    this.listeners.remove(paramListener);
  }

  public void setFillOffset(float paramFloat)
  {
    this.offset = paramFloat;
    onValueChanged();
  }

  public void setFillValue(float paramFloat)
  {
    boolean bool1 = true;
    boolean bool2;
    if (paramFloat >= 0.0F)
    {
      bool2 = bool1;
      Assert.assertTrue(bool2);
      if (paramFloat > 1.0F)
        break label44;
    }
    while (true)
    {
      Assert.assertTrue(bool1);
      this.value = paramFloat;
      this.offset = 0.0F;
      onValueChanged();
      return;
      bool2 = false;
      break;
      label44: bool1 = false;
    }
  }

  public void setToMax()
  {
    this.value = 1.0F;
    this.offset = 0.0F;
    onValueChanged();
  }

  public void setToMin()
  {
    this.value = 0.0F;
    this.offset = 0.0F;
    onValueChanged();
  }

  public static abstract interface Listener
  {
    public abstract void onFillValueChanged(float paramFloat);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.FillBar
 * JD-Core Version:    0.6.2
 */