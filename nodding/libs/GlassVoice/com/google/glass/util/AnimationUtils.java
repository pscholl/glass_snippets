package com.google.glass.util;

import android.view.View;
import android.view.animation.Animation;

public class AnimationUtils extends android.view.animation.AnimationUtils
{
  public static boolean isAnimating(Animation paramAnimation)
  {
    return (paramAnimation != null) && (paramAnimation.hasStarted()) && (!paramAnimation.hasEnded());
  }

  public static void startAnimation(View paramView, Animation paramAnimation)
  {
    Animation localAnimation = paramView.getAnimation();
    if (localAnimation != null)
      localAnimation.cancel();
    paramView.startAnimation(paramAnimation);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.AnimationUtils
 * JD-Core Version:    0.6.2
 */