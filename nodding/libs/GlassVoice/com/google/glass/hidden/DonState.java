package com.google.glass.hidden;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

public final class DonState
{
  public static final String ACTION_DON_STATE = "com.google.glass.action.DON_STATE";
  public static final String EXTRA_IS_DONNED = "is_donned";
  public static final String EXTRA_IS_FIRST_DON_STATE = "is_first_don_state";
  public static final String EXTRA_TIME_SINCE_LAST_DON_STATE_MS = "time_since_last_don_state_ms";

  public static long getMillisSinceLastDonStateEvent(Intent paramIntent)
  {
    return paramIntent.getLongExtra("time_since_last_don_state_ms", 0L);
  }

  public static boolean isDonned(Context paramContext)
  {
    return isDonned(paramContext.getApplicationContext().registerReceiver(null, new IntentFilter("com.google.glass.action.DON_STATE")));
  }

  public static boolean isDonned(Intent paramIntent)
  {
    return (paramIntent == null) || (paramIntent.getBooleanExtra("is_donned", true));
  }

  public static boolean isFirstEvent(Intent paramIntent)
  {
    return paramIntent.getBooleanExtra("is_first_don_state", false);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.hidden.DonState
 * JD-Core Version:    0.6.2
 */