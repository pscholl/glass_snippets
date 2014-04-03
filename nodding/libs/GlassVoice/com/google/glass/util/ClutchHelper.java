package com.google.glass.util;

import android.content.IntentFilter;

public class ClutchHelper
{
  public static final String ACTION_CLUTCH = "com.google.android.glass.action.CLUTCH";
  public static final String ACTION_PEOPLE_GRID = "com.google.glass.people.PEOPLE_UI";
  public static final int DECLUTCH_PRIORITY = 2147483647;
  public static final String EXTRA_ENGAGED = "engaged";

  public static IntentFilter createBroadcastIntentFilter(int paramInt)
  {
    IntentFilter localIntentFilter = new IntentFilter("com.google.android.glass.action.CLUTCH");
    localIntentFilter.setPriority(paramInt);
    return localIntentFilter;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.ClutchHelper
 * JD-Core Version:    0.6.2
 */