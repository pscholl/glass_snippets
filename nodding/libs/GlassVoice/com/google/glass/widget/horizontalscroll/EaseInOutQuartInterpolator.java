package com.google.glass.widget.horizontalscroll;

import android.view.animation.Interpolator;

public class EaseInOutQuartInterpolator
  implements Interpolator
{
  public static EaseInOutQuartInterpolator instance = new EaseInOutQuartInterpolator();

  public float getInterpolation(float paramFloat)
  {
    float f1 = paramFloat * 2.0F;
    if (f1 < 1.0F)
      return 0.5F * (float)Math.pow(f1, 4.0D);
    float f2 = f1 - 2.0F;
    return -0.5F * (f2 * (float)Math.pow(f2, 3.0D) - 2.0F);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.horizontalscroll.EaseInOutQuartInterpolator
 * JD-Core Version:    0.6.2
 */