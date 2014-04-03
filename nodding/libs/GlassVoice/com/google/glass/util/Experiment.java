package com.google.glass.util;

import android.content.Context;

public class Experiment
{
  public static int getExperimentGroup(int paramInt, Context paramContext)
  {
    return Math.abs(new SettingsSecure(paramContext.getContentResolver()).getString("android_id").hashCode() % paramInt);
  }

  public static boolean isInExperimentGroup(int paramInt1, int paramInt2, Context paramContext)
  {
    if (paramInt1 >= paramInt2)
      throw new IllegalArgumentException("group must be in the range 0 to numberOfGroups - 1");
    return getExperimentGroup(paramInt2, paramContext) == paramInt1;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.Experiment
 * JD-Core Version:    0.6.2
 */