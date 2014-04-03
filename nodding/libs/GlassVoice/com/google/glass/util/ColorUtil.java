package com.google.glass.util;

import android.graphics.Color;

public class ColorUtil
{
  private static int colorDiff(int paramInt1, int paramInt2)
  {
    return colorDiff(Color.red(paramInt1), Color.green(paramInt1), Color.blue(paramInt1), Color.red(paramInt2), Color.green(paramInt2), Color.blue(paramInt2));
  }

  private static int colorDiff(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    return Math.abs(paramInt1 - paramInt4) + Math.abs(paramInt2 - paramInt5) + Math.abs(paramInt3 - paramInt6);
  }

  public static boolean isContrasting(int paramInt1, int paramInt2)
  {
    return (luminanceDiff(paramInt1, paramInt2) > 125) && (colorDiff(paramInt1, paramInt2) > 500);
  }

  private static int luminance(int paramInt)
  {
    return luminance(Color.red(paramInt), Color.green(paramInt), Color.blue(paramInt));
  }

  private static int luminance(int paramInt1, int paramInt2, int paramInt3)
  {
    return (paramInt1 * 299 + paramInt2 * 587 + paramInt3 * 114) / 1000;
  }

  private static int luminanceDiff(int paramInt1, int paramInt2)
  {
    return Math.abs(luminance(paramInt1) - luminance(paramInt2));
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.ColorUtil
 * JD-Core Version:    0.6.2
 */