package com.google.glass.util;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.userevent.UserEventHelper;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

public class BatteryHelper
{
  private static final String PARTIAL_DATA_FLASH_FILE_PATH = "/sys/class/i2c-dev/i2c-1/device/1-0055/dump_partial_data_flash";
  private static final int UNKNOWN_LEVEL = -1;
  private static final int UNKNOWN_SCALE = -1;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final Context context;

  public BatteryHelper(Context paramContext)
  {
    this.context = paramContext.getApplicationContext();
  }

  private static final String readPartialDataFlash()
    throws IOException
  {
    FileInputStream localFileInputStream = new FileInputStream(new File("/sys/class/i2c-dev/i2c-1/device/1-0055/dump_partial_data_flash"));
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(localFileInputStream));
    StringBuilder localStringBuilder = new StringBuilder();
    while (true)
    {
      String str = localBufferedReader.readLine();
      if (str == null)
        break;
      localStringBuilder.append(str.trim()).append(":");
    }
    localFileInputStream.close();
    return localStringBuilder.toString();
  }

  public float getChargePercent()
  {
    return getChargePercent(null);
  }

  public int getChargePercent(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      paramIntent = retrieveCurrentIntent();
      if (paramIntent == null)
        logger.w("Unknown battery state.", new Object[0]);
    }
    int i;
    int j;
    do
    {
      return -1;
      i = paramIntent.getIntExtra("level", -1);
      j = paramIntent.getIntExtra("scale", -1);
    }
    while ((i == -1) || (j == -1));
    float f = 100.0F * (i / j);
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Float.valueOf(f);
    localFormattingLogger.v("Current battery percent: %s", arrayOfObject);
    return Math.max(Math.round(f), 1);
  }

  public BatteryState getCurrentState()
  {
    return getCurrentState(null);
  }

  public BatteryState getCurrentState(Intent paramIntent)
  {
    BatteryState localBatteryState = new BatteryState();
    if (paramIntent == null)
    {
      paramIntent = retrieveCurrentIntent();
      if (paramIntent == null)
      {
        logger.w("Unknown battery state.", new Object[0]);
        return localBatteryState;
      }
    }
    localBatteryState.percent = getChargePercent(paramIntent);
    localBatteryState.isCharged = isCharged(paramIntent);
    localBatteryState.isCharging = isCharging(paramIntent);
    localBatteryState.isPowered = isPowered(paramIntent);
    localBatteryState.timeToDischarge = getTimeToDischarge(paramIntent);
    return localBatteryState;
  }

  public long getTimeToDischarge()
  {
    return getTimeToDischarge(null);
  }

  public long getTimeToDischarge(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      paramIntent = retrieveCurrentIntent();
      if (paramIntent == null)
      {
        logger.w("Unknown battery state.", new Object[0]);
        return -1L;
      }
    }
    return paramIntent.getIntExtra("time_to_empty", -1);
  }

  public boolean isCharged()
  {
    return isCharged(null);
  }

  public boolean isCharged(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      paramIntent = retrieveCurrentIntent();
      if (paramIntent == null)
      {
        logger.w("Unknown battery state.", new Object[0]);
        return false;
      }
    }
    if (paramIntent.getIntExtra("status", 1) == 5)
    {
      bool = true;
      if (!bool)
      {
        logger.i("Driver is not reporting charged, checking percent.", new Object[0]);
        if (getChargePercent(paramIntent) < 95)
          break label107;
      }
    }
    label107: for (boolean bool = true; ; bool = false)
    {
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Boolean.valueOf(bool);
      localFormattingLogger.v("Battery is charged? %s", arrayOfObject);
      return bool;
      bool = false;
      break;
    }
  }

  public boolean isCharging()
  {
    return isCharging(null);
  }

  public boolean isCharging(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      paramIntent = retrieveCurrentIntent();
      if (paramIntent == null)
      {
        logger.w("Unknown battery state.", new Object[0]);
        return false;
      }
    }
    if (paramIntent.getIntExtra("status", 1) == 2);
    for (boolean bool = true; ; bool = false)
    {
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Boolean.valueOf(bool);
      localFormattingLogger.i("Battery currently charging? %s", arrayOfObject);
      return bool;
    }
  }

  public boolean isPowered()
  {
    return isPowered(null);
  }

  public boolean isPowered(Intent paramIntent)
  {
    boolean bool1 = true;
    if (paramIntent == null)
    {
      paramIntent = retrieveCurrentIntent();
      if (paramIntent == null)
      {
        logger.w("Unknown battery state.", new Object[0]);
        return false;
      }
    }
    boolean bool2;
    if (paramIntent.getIntExtra("plugged", 0) != 0)
    {
      bool2 = bool1;
      boolean bool3 = isCharging(paramIntent);
      boolean bool4 = isCharged(paramIntent);
      if ((!bool2) || ((!bool3) && (!bool4)))
        break label78;
    }
    while (true)
    {
      return bool1;
      bool2 = false;
      break;
      label78: bool1 = false;
    }
  }

  @VisibleForTesting
  Intent retrieveCurrentIntent()
  {
    return this.context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
  }

  public static class BatteryState
  {
    public static final int PERCENT_CHARGED = 95;
    public static final int PERCENT_LOW = 10;
    public static final int PERCENT_MEDIUM = 30;
    public static final int PERCENT_MINIMUM = 1;
    public static final int PERCENT_UNKNOWN = -1;
    public static final int TIME_TO_EMPTY_UNKNOWN = -1;
    public boolean isCharged;
    public boolean isCharging;
    public boolean isPowered;
    public float percent;
    public long timeToDischarge;

    public String getUserEventActionData(String paramString)
    {
      Object localObject = "";
      try
      {
        String str = BatteryHelper.access$000();
        localObject = str;
        Object[] arrayOfObject = new Object[12];
        arrayOfObject[0] = "p";
        arrayOfObject[1] = Float.valueOf(this.percent);
        arrayOfObject[2] = "t";
        arrayOfObject[3] = Long.valueOf(this.timeToDischarge);
        arrayOfObject[4] = "cg";
        arrayOfObject[5] = Boolean.valueOf(this.isCharging);
        arrayOfObject[6] = "cd";
        arrayOfObject[7] = Boolean.valueOf(this.isCharged);
        arrayOfObject[8] = "ip";
        arrayOfObject[9] = Boolean.valueOf(this.isPowered);
        arrayOfObject[10] = "gg";
        arrayOfObject[11] = localObject;
        return UserEventHelper.createEventTuple("a", paramString, arrayOfObject);
      }
      catch (IOException localIOException)
      {
        while (true)
          BatteryHelper.logger.e(localIOException, "Error reading gas gauge data", new Object[0]);
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.BatteryHelper
 * JD-Core Version:    0.6.2
 */