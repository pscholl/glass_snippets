package com.google.glass.util;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.glass.timeline.TimelineActivityHelper;
import com.google.glass.timeline.TimelineItemId;
import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;

public class SettingsHelper
{
  public static final String ACTION_GO_TO_SETTINGS = "com.google.glass.action.ACTION_GO_TO_SETTINGS";
  public static final String ACTION_GUEST_MODE = "com.google.glass.ACTION_GUEST_MODE";
  public static final int BLUETOOTH_ID = 1;
  public static final int DEFAULT_ID = 0;
  public static final int DEVICE_INFO_ID = 2;
  public static final String EXTRA_GUEST_MODE_ENABLED = "com.google.glass.EXTRA_GUEST_MODE_ENABLED";
  public static final String EXTRA_GUEST_MODE_TOGGLE_TIME = "com.google.glass.EXTRA_GUEST_MODE_TOGGLE_TIME";
  public static final String EXTRA_SETTINGS_ID = "settings_id";
  public static final int GPS_DEBUG_ID = 6;
  public static final int GUEST_MODE_ID = 7;
  public static final int HEAD_WAKE_ID = 3;
  public static final int LOCKSCREEN_ID = 9;
  public static final int ON_HEAD_DETECTION_ID = 5;
  public static final int VOLUME_ID = 8;
  public static final int WIFI_ID = 0;
  public static final int WINK_TO_PHOTO_ID = 4;
  private Context context;
  private final CustomItemIdGenerator idGenerator = new CustomItemIdGenerator("settings");

  public SettingsHelper(Context paramContext)
  {
    this.context = paramContext;
  }

  public static final Runnable getGoToSettingsRunnable(Context paramContext)
  {
    return new Runnable()
    {
      public void run()
      {
        new SettingsHelper(this.val$context).goToSettingsCover();
      }
    };
  }

  public String createSettingsItemId(int paramInt)
  {
    return this.idGenerator.createId(paramInt);
  }

  public long getGuestModeToggleTime()
  {
    long l = 0L;
    Intent localIntent = this.context.registerReceiver(null, new IntentFilter("com.google.glass.ACTION_GUEST_MODE"));
    if (localIntent != null)
      l = localIntent.getLongExtra("com.google.glass.EXTRA_GUEST_MODE_TOGGLE_TIME", l);
    return l;
  }

  public int getSettingsItemPosition(String paramString)
  {
    return this.idGenerator.getPosition(paramString);
  }

  public void goToSettings()
  {
    goToSettings(0);
  }

  public void goToSettings(int paramInt)
  {
    Intent localIntent = new Intent("com.google.glass.action.ACTION_GO_TO_SETTINGS");
    localIntent.addFlags(268435456);
    localIntent.putExtra("settings_id", paramInt);
    this.context.startActivity(localIntent);
  }

  public void goToSettingsCover()
  {
    TimelineNano.TimelineItem localTimelineItem = new TimelineNano.TimelineItem();
    localTimelineItem.id = createSettingsItemId(0);
    TimelineItemId localTimelineItemId = new TimelineItemId(localTimelineItem);
    TimelineActivityHelper.goToTimeline(this.context, localTimelineItemId, false);
  }

  public int indexFromIntent(Intent paramIntent)
  {
    if (paramIntent == null)
      return 0;
    return paramIntent.getIntExtra("settings_id", 0);
  }

  public boolean isGuestModeEnabled()
  {
    Intent localIntent = this.context.registerReceiver(null, new IntentFilter("com.google.glass.ACTION_GUEST_MODE"));
    boolean bool = false;
    if (localIntent != null)
      bool = localIntent.getBooleanExtra("com.google.glass.EXTRA_GUEST_MODE_ENABLED", false);
    return bool;
  }

  public boolean isSettingsItemId(String paramString)
  {
    return this.idGenerator.isId(paramString);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.SettingsHelper
 * JD-Core Version:    0.6.2
 */