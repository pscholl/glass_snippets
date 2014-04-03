package com.google.glass.util;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.common.R.drawable;

public class FullScreenMessagingDialogHelper
{

  @VisibleForTesting
  public static final String ACTION_SHOW_MESSAGE = "com.google.glass.action.MESSAGE";
  public static final int DEFAULT_ICON = 0;
  private static final String EXTRA_ICON = "ICON";

  @VisibleForTesting
  public static final String EXTRA_MESSAGE = "MESSAGE";

  @VisibleForTesting
  public static final String EXTRA_SUB_MESSAGE = "SUB_MESSAGE";
  private static final String EXTRA_TURN_SCREEN_ON = "TURN_SCREEN_ON";
  private final Context context;

  public FullScreenMessagingDialogHelper(Context paramContext)
  {
    this.context = paramContext.getApplicationContext();
  }

  private Bitmap getDefaultIcon()
  {
    return ((BitmapDrawable)this.context.getResources().getDrawable(R.drawable.ic_exclamation_big)).getBitmap();
  }

  @VisibleForTesting
  public Bitmap getBitmap(int paramInt)
  {
    if (DEFAULT_ICON == paramInt)
      paramInt = R.drawable.ic_exclamation_big;
    return ((BitmapDrawable)this.context.getResources().getDrawable(paramInt)).getBitmap();
  }

  public Bitmap getIconFromIntent(Intent paramIntent)
  {
    Bitmap localBitmap;
    if (paramIntent == null)
      localBitmap = getDefaultIcon();
    do
    {
      return localBitmap;
      localBitmap = (Bitmap)paramIntent.getParcelableExtra("ICON");
    }
    while (localBitmap != null);
    return getDefaultIcon();
  }

  public String getMessageFromIntent(Intent paramIntent)
  {
    if (paramIntent == null)
      return null;
    return paramIntent.getStringExtra("MESSAGE");
  }

  public String getSubMessageFromIntent(Intent paramIntent)
  {
    if (paramIntent == null)
      return null;
    return paramIntent.getStringExtra("SUB_MESSAGE");
  }

  public boolean getTurnScreenOnFromIntent(Intent paramIntent)
  {
    if (paramIntent == null)
      return false;
    return paramIntent.getBooleanExtra("TURN_SCREEN_ON", false);
  }

  public void showFullScreenMessage(String paramString)
  {
    showFullScreenMessage(paramString, DEFAULT_ICON, false);
  }

  public void showFullScreenMessage(String paramString, int paramInt)
  {
    showFullScreenMessage(paramString, paramInt, false);
  }

  public void showFullScreenMessage(String paramString, int paramInt, boolean paramBoolean)
  {
    showFullScreenMessage(paramString, null, paramInt, paramBoolean);
  }

  public void showFullScreenMessage(String paramString1, String paramString2)
  {
    showFullScreenMessage(paramString1, paramString2, DEFAULT_ICON, false);
  }

  public void showFullScreenMessage(String paramString1, String paramString2, int paramInt, boolean paramBoolean)
  {
    Intent localIntent = new Intent("com.google.glass.action.MESSAGE");
    localIntent.setFlags(268435456);
    localIntent.putExtra("MESSAGE", paramString1);
    if (!TextUtils.isEmpty(paramString2))
      localIntent.putExtra("SUB_MESSAGE", paramString2);
    localIntent.putExtra("ICON", getBitmap(paramInt));
    localIntent.putExtra("TURN_SCREEN_ON", paramBoolean);
    this.context.startActivity(localIntent);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.FullScreenMessagingDialogHelper
 * JD-Core Version:    0.6.2
 */