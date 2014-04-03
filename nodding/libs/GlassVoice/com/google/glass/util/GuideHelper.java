package com.google.glass.util;

import android.content.Context;
import android.content.Intent;

public class GuideHelper
{
  public static final String ACTION_GUIDE_GREET = "com.google.glass.action.GUIDE_GREET";
  public static final String EXTRA_BARCODE_KEY = "barcode_value";
  private static final String TAG = GuideHelper.class.getSimpleName();
  protected final Context context;

  public GuideHelper(Context paramContext)
  {
    this.context = paramContext;
  }

  public void showAppointment(String paramString)
  {
    this.context.sendBroadcast(new Intent("com.google.glass.action.GUIDE_GREET").putExtra("barcode_value", paramString));
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.GuideHelper
 * JD-Core Version:    0.6.2
 */