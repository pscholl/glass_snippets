package com.google.glass.util;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import com.google.glass.input.SwipeDirection;

public class HopHelper
{
  private static final long HOP_ANIMATION_DURATION_MS = 150L;
  private static final long PRE_HOP_ANIMATION_TRANSLATION_PX = -60L;

  public static void performHopAnimation(View paramView, SwipeDirection paramSwipeDirection)
  {
    long l1 = 0L;
    long l2 = 0L;
    switch (2.$SwitchMap$com$google$glass$input$SwipeDirection[paramSwipeDirection.ordinal()])
    {
    default:
      return;
    case 1:
      l2 = -60L;
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      paramView.animate().setInterpolator(new DecelerateInterpolator()).setDuration(100L).translationX((float)l1).translationY((float)l2).setListener(new AnimatorListenerAdapter()
      {
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          this.val$view.animate().setInterpolator(new AccelerateInterpolator()).setDuration(50L).translationX(0.0F).translationY(0.0F).setListener(null);
        }
      });
      return;
      l2 = 60L;
      continue;
      l1 = 60L;
      continue;
      l1 = -60L;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.HopHelper
 * JD-Core Version:    0.6.2
 */