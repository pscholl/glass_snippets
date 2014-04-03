package com.google.glass.util;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.glass.entity.EntityHelper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.logging.Log;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import com.google.protobuf.nano.MessageNano;

public class HangoutHelper
{
  public static final String ACTION_HANGOUTS = "com.google.glass.action.HANGOUTS";
  public static final String ACTION_HANGOUT_STATUS = "com.google.glass.action.HANGOUT_STATUS";
  public static final String EXTRA_CAMERA_CONSUMED = "camera_consumed";
  public static final String EXTRA_CONVERSATION_ID = "conversation_id";
  public static final String EXTRA_FOREGROUND = "foreground";
  public static final String EXTRA_FROM_ACTIVE_CARD = "activeCard";
  public static final String EXTRA_HANGOUT_COUNT = "hangoutCount";
  public static final String EXTRA_HANGOUT_DISPLAY_IMAGES = "displayImages";
  public static final String EXTRA_HANGOUT_DISPLAY_MEMBER = "displayMember";
  public static final String EXTRA_HANGOUT_INVITEE = "_invitee";
  public static final String EXTRA_HANGOUT_INVITER = "inviter";
  public static final String EXTRA_HANGOUT_STATE = "hangoutState";
  public static final String EXTRA_INCOMING_ACTION = "hangoutAction";
  public static final String EXTRA_INCOMING_SOURCE = "hangoutSource";
  public static final String EXTRA_INCOMING_TYPE = "hangoutType";
  public static final String EXTRA_INVITED = "invited";
  public static final String EXTRA_PARTICIPATING = "participating";
  public static final String EXTRA_ROOM_ID = "room_id";
  public static final String EXTRA_TIMELINE_ID = "timelineItemId";
  private static final String HANGOUT_BASE_URL = "https://plus.google.com/hangouts/_/";
  private static final String TAG = HangoutHelper.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  protected final Context context;

  public HangoutHelper(Context paramContext)
  {
    this.context = paramContext;
  }

  public static String buildHangoutUrl(String paramString)
  {
    return "https://plus.google.com/hangouts/_/" + paramString;
  }

  private Intent generateIntent(TimelineNano.Entity paramEntity, boolean paramBoolean)
  {
    Intent localIntent = new Intent("com.google.glass.action.HANGOUTS");
    localIntent.putExtra("_invitee", MessageNano.toByteArray(paramEntity));
    localIntent.putExtra("should_finish_turn_screen_off", paramBoolean);
    localIntent.addFlags(335544320);
    return localIntent;
  }

  public void bringHangoutToForeground()
  {
    bringHangoutToForeground(true);
  }

  public void bringHangoutToForeground(boolean paramBoolean)
  {
    logger.d("Bringing hangout to foreground", new Object[0]);
    Intent localIntent = new Intent("com.google.glass.action.HANGOUTS");
    localIntent.putExtra("foreground", true);
    localIntent.putExtra("activeCard", paramBoolean);
    localIntent.addFlags(335544320);
    this.context.startActivity(localIntent);
  }

  public void broadcastHangoutExited()
  {
    logger.d("Setting participating status to false.", new Object[0]);
    this.context.sendStickyBroadcast(new Intent("com.google.glass.action.HANGOUT_STATUS").putExtra("participating", false).putExtra("camera_consumed", false));
  }

  public void broadcastHangoutJoined()
  {
    logger.d("Setting participating status to true.", new Object[0]);
    this.context.sendStickyBroadcast(new Intent("com.google.glass.action.HANGOUT_STATUS").putExtra("participating", true).putExtra("camera_consumed", true));
  }

  public boolean isHangoutsUsingCamera()
  {
    Intent localIntent = this.context.getApplicationContext().registerReceiver(null, new IntentFilter("com.google.glass.action.HANGOUT_STATUS"));
    boolean bool1 = false;
    if (localIntent != null)
    {
      boolean bool2 = localIntent.getBooleanExtra("camera_consumed", false);
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public boolean isInHangout()
  {
    Intent localIntent = this.context.getApplicationContext().registerReceiver(null, new IntentFilter("com.google.glass.action.HANGOUT_STATUS"));
    boolean bool1 = false;
    if (localIntent != null)
    {
      boolean bool2 = localIntent.getBooleanExtra("participating", false);
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public void joinHangout(String paramString, TimelineNano.Entity paramEntity, boolean paramBoolean)
  {
    joinHangout(paramString, paramEntity, paramBoolean, false, null);
  }

  public void joinHangout(String paramString1, TimelineNano.Entity paramEntity, boolean paramBoolean1, boolean paramBoolean2, String paramString2)
  {
    String str = "Joining Hangout roomId=" + paramString1;
    if (paramEntity != null)
      str = str + " with " + paramEntity.displayName + ", id=" + paramEntity.id;
    Log.logPii(3, TAG, str);
    Intent localIntent = generateIntent(paramEntity, paramBoolean1);
    localIntent.putExtra("room_id", paramString1);
    localIntent.putExtra("invited", paramBoolean2);
    localIntent.putExtra("timelineItemId", paramString2);
    this.context.startActivity(localIntent);
  }

  public void setIsHangoutsUsingCamera(boolean paramBoolean)
  {
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[1];
    if (paramBoolean);
    for (String str = "consumed"; ; str = "not consumed")
    {
      arrayOfObject[0] = str;
      localFormattingLogger.d("Setting camera as %s.", arrayOfObject);
      this.context.sendStickyBroadcast(new Intent("com.google.glass.action.HANGOUT_STATUS").putExtra("participating", isInHangout()).putExtra("camera_consumed", paramBoolean));
      return;
    }
  }

  public void startHangout(TimelineNano.Entity paramEntity, boolean paramBoolean)
  {
    Log.logPii(3, TAG, "Hanging out with " + EntityHelper.getDisplayName(paramEntity) + ", id=" + paramEntity.id);
    this.context.startActivity(generateIntent(paramEntity, paramBoolean));
  }

  public static enum ActiveCardState
  {
    static
    {
      HANGING_OUT = new ActiveCardState("HANGING_OUT", 2);
      ERROR = new ActiveCardState("ERROR", 3);
      ActiveCardState[] arrayOfActiveCardState = new ActiveCardState[4];
      arrayOfActiveCardState[0] = CONNECTING;
      arrayOfActiveCardState[1] = WAITING;
      arrayOfActiveCardState[2] = HANGING_OUT;
      arrayOfActiveCardState[3] = ERROR;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.HangoutHelper
 * JD-Core Version:    0.6.2
 */