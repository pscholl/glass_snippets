package com.google.glass.hidden;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.BatteryHelper;
import com.google.glass.util.BatteryHelper.BatteryState;

public class AndroidUpdate
{
  public static final String ACTION_CANCEL_UPDATE = "com.google.glass.update.CANCEL_UPDATE";
  public static final String ACTION_INSTALL_UPDATE = "com.google.glass.update.INSTALL_UPDATE";
  public static final String ACTION_UPDATE_AVAILABLE = "com.google.glass.update.UPDATE_AVAILABLE";
  public static final String ACTION_UPDATE_COMPLETED = "com.google.glass.update.UPDATE_COMPLETED";
  public static final String EXTRA_IS_SUCCESS = "is_success";
  public static final String KEY_DIALOG_MESSAGE = "update_dialog_message";
  public static final int MINIMUM_PERCENT_TO_INSTALL = 50;
  private static final String PERMISSION_TRIGGER_OTA = "com.google.glass.permission.TRIGGER_OTA";
  private static final String TAG = AndroidUpdate.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private final BatteryHelper battery;
  private final Context context;

  public AndroidUpdate(Context paramContext)
  {
    this.context = paramContext;
    this.battery = new BatteryHelper(paramContext);
  }

  private Intent getUpdateAvailableIntent()
  {
    return this.context.registerReceiver(null, new IntentFilter("com.google.glass.update.UPDATE_AVAILABLE"));
  }

  public void forceInstall()
  {
    this.context.sendBroadcast(new Intent("com.google.glass.update.INSTALL_UPDATE"), "com.google.glass.permission.TRIGGER_OTA");
  }

  public String getName()
  {
    Intent localIntent = getUpdateAvailableIntent();
    if (localIntent == null)
      return null;
    return localIntent.getStringExtra("update_dialog_message");
  }

  public boolean install()
  {
    if (isReadyForInstall())
    {
      logger.d("Ready for install, requesting platform start install.", new Object[0]);
      forceInstall();
      return true;
    }
    logger.w("Preqs not met, not requesting install.", new Object[0]);
    return false;
  }

  public boolean isAvailable()
  {
    return getUpdateAvailableIntent() != null;
  }

  public boolean isReadyForInstall()
  {
    BatteryHelper.BatteryState localBatteryState = this.battery.getCurrentState();
    return (localBatteryState.isPowered) && (localBatteryState.percent >= 50.0F);
  }

  public String toString()
  {
    return "AndroidUpdate [isAvailable()=" + isAvailable() + ", getName()=" + getName() + ", isReadyForInstall()=" + isReadyForInstall() + "]";
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.hidden.AndroidUpdate
 * JD-Core Version:    0.6.2
 */