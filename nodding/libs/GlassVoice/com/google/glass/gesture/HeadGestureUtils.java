package com.google.glass.gesture;

import android.content.Context;
import com.google.android.glass.hidden.HiddenGestureManager;
import com.google.glass.predicates.Assert;

public class HeadGestureUtils
{
  private static HiddenGestureManager managerForTest;

  private static HiddenGestureManager getHiddenGestureManager(Context paramContext)
  {
    if ((Assert.isTest()) && (managerForTest != null))
      return managerForTest;
    return new HiddenGestureManager(paramContext);
  }

  public static boolean isGlobalLookUpGestureEnabled(Context paramContext)
  {
    return getHiddenGestureManager(paramContext).isGlobalLookUpGestureEnabled();
  }

  public static boolean setGlobalLookUpGestureEnabled(Context paramContext, boolean paramBoolean)
  {
    return getHiddenGestureManager(paramContext).setGlobalLookUpGestureEnabled(paramBoolean);
  }

  public static boolean setGlobalLookUpGestureParameters(Context paramContext, float paramFloat1, float paramFloat2)
  {
    return getHiddenGestureManager(paramContext).setGlobalLookUpGestureParameters(paramFloat1, paramFloat2);
  }

  public static void setManagerForTest(HiddenGestureManager paramHiddenGestureManager)
  {
    Assert.assertIsTest();
    managerForTest = paramHiddenGestureManager;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.gesture.HeadGestureUtils
 * JD-Core Version:    0.6.2
 */