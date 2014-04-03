package com.google.glass.util;

import android.content.Context;
import android.text.TextUtils;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import java.io.PrintWriter;

public final class Checkin
{
  public static final String ACTION_CHECKIN = "android.server.checkin.CHECKIN";
  public static final String ACTION_CHECKIN_SUCCESSFUL = "com.google.glass.action.CHECKIN_SUCCESSFUL";
  private static final String KEY_CHECKIN_TIME = "checkin_time";
  public static final long LAST_CHECKIN_UNKNOWN = -1L;
  private static final String TAG = Checkin.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private final Context context;

  public Checkin(Context paramContext)
  {
    this.context = paramContext;
  }

  private long getLastCheckin()
  {
    String str = SettingsContract.getValue(this.context, "checkin_time");
    if (TextUtils.isEmpty(str))
      return -1L;
    return Long.parseLong(str);
  }

  public void dump(PrintWriter paramPrintWriter)
  {
    paramPrintWriter.println("Last checkin: " + getLastCheckin());
  }

  public long getLastCheckinTime()
  {
    Assert.assertNotUiThread();
    return getLastCheckin();
  }

  public void storeLastCheckinTime(long paramLong)
  {
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Long.valueOf(paramLong);
    localFormattingLogger.d("Checkin @ %s", arrayOfObject);
    SettingsContract.updateOrInsert(this.context, "checkin_time", String.valueOf(paramLong));
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.Checkin
 * JD-Core Version:    0.6.2
 */