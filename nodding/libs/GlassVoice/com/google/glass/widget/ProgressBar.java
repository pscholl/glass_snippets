package com.google.glass.widget;

import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewPropertyAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import com.google.glass.common.R.dimen;
import com.google.glass.common.R.drawable;
import com.google.glass.common.R.integer;
import junit.framework.Assert;

public class ProgressBar extends ImageView
{
  private static final int DRAWABLE_MAX_LEVEL = 10000;
  private boolean indeterminate;
  private boolean isShowing = true;
  private int maxProgress = 10000;
  private int progress = 0;
  private ObjectAnimator progressAnimator;

  public ProgressBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setIndeterminate(false);
  }

  private int calculateDrawableLevel()
  {
    return 10000 * this.progress / this.maxProgress;
  }

  public void hide(boolean paramBoolean)
  {
    if (!this.isShowing)
      return;
    int i = getResources().getDimensionPixelSize(R.dimen.slider_bar_height);
    if (paramBoolean)
      animate().translationY(i).setDuration(getResources().getInteger(R.integer.slider_in_out_animation_duration_ms));
    while (true)
    {
      this.isShowing = false;
      return;
      setTranslationY(i);
    }
  }

  public void setIndeterminate(boolean paramBoolean)
  {
    this.indeterminate = paramBoolean;
    Resources localResources = getResources();
    if (paramBoolean)
    {
      setImageDrawable(localResources.getDrawable(R.drawable.slider_indeterminate));
      return;
    }
    setImageDrawable(getResources().getDrawable(R.drawable.progress_bar_determinate));
  }

  public void setMax(int paramInt)
  {
    this.maxProgress = paramInt;
  }

  public void setProgress(int paramInt)
  {
    Assert.assertFalse(this.indeterminate);
    this.progress = Math.max(Math.min(paramInt, this.maxProgress), 0);
    getDrawable().setLevel(calculateDrawableLevel());
  }

  public void show(boolean paramBoolean)
  {
    if (this.isShowing)
      return;
    if (paramBoolean)
      animate().translationY(0.0F).setDuration(getResources().getInteger(R.integer.slider_in_out_animation_duration_ms));
    while (true)
    {
      this.isShowing = true;
      return;
      setTranslationY(0.0F);
    }
  }

  public void startIndeterminate()
  {
    Assert.assertTrue(this.indeterminate);
    ((AnimationDrawable)getDrawable()).start();
  }

  public void startProgress(long paramLong)
  {
    startProgress(paramLong, new AccelerateDecelerateInterpolator());
  }

  public void startProgress(long paramLong, Animator.AnimatorListener paramAnimatorListener)
  {
    startProgress(paramLong, new AccelerateDecelerateInterpolator(), paramAnimatorListener);
  }

  public void startProgress(long paramLong, TimeInterpolator paramTimeInterpolator)
  {
    startProgress(paramLong, paramTimeInterpolator, null);
  }

  public void startProgress(long paramLong, TimeInterpolator paramTimeInterpolator, Animator.AnimatorListener paramAnimatorListener)
  {
    setIndeterminate(false);
    show(false);
    this.progressAnimator = ObjectAnimator.ofInt(this, "progress", new int[] { 0, 10000 });
    this.progressAnimator.setDuration(paramLong);
    this.progressAnimator.setInterpolator(paramTimeInterpolator);
    if (paramAnimatorListener != null)
      this.progressAnimator.addListener(paramAnimatorListener);
    this.progressAnimator.start();
  }

  public void stopIndeterminate()
  {
    Assert.assertTrue(this.indeterminate);
    ((AnimationDrawable)getDrawable()).stop();
  }

  public void stopProgress()
  {
    if (this.progressAnimator != null)
      this.progressAnimator.cancel();
    hide(true);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.ProgressBar
 * JD-Core Version:    0.6.2
 */