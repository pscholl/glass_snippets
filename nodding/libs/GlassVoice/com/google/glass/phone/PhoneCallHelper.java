package com.google.glass.phone;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassError;
import com.google.glass.app.GlassError.OnConfirmAction;
import com.google.glass.bluetooth.BluetoothHeadset;
import com.google.glass.common.R.drawable;
import com.google.glass.common.R.string;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;

public class PhoneCallHelper
{
  public static final String ACTION_PHONE_CALL_STATE_CHANGED = "com.google.glass.action.PHONE_CALL_STATE_CHANGED";

  @VisibleForTesting
  public static final String EXTRA_CALL_STATE = "call_state";
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final Context context;

  public PhoneCallHelper(Context paramContext)
  {
    this.context = paramContext;
  }

  public boolean attemptDial(GlassActivity paramGlassActivity, String paramString)
  {
    GlassError localGlassError;
    if (Labs.isEnabled(Labs.Feature.BLUETOOTH_HEADSET))
    {
      localGlassError = new GlassError();
      if (!TextUtils.isEmpty(paramString))
        break label45;
      localGlassError.setPrimaryMessageId(R.string.error_no_phone_number).setSecondaryMessageId(R.string.error_edit_contacts);
    }
    while (true)
    {
      localGlassError.show(paramGlassActivity);
      return false;
      label45: if (BluetoothHeadset.getHeadsetState(paramGlassActivity) != 1)
      {
        localGlassError.setPrimaryMessageId(R.string.error_bluetooth_headset_not_active).setSecondaryMessageId(R.string.error_tap_connection_settings).setOnConfirmAction(GlassError.OnConfirmAction.GO_TO_SETTINGS).setIconId(R.drawable.ic_cloud_sad_big);
      }
      else
      {
        if (!new PhoneCallHelper(paramGlassActivity).isInCall())
          break;
        localGlassError.setPrimaryMessageId(R.string.error_phone_in_use).setAutoHide(true);
      }
    }
    BluetoothHeadset.broadcastDial(paramGlassActivity, paramString);
    return true;
  }

  public boolean isInCall()
  {
    return isInCall(this.context.registerReceiver(null, new IntentFilter("com.google.glass.action.PHONE_CALL_STATE_CHANGED")));
  }

  public boolean isInCall(Intent paramIntent)
  {
    if (paramIntent == null)
      return false;
    return paramIntent.getBooleanExtra("call_state", false);
  }

  public void setInCall(boolean paramBoolean)
  {
    Intent localIntent = new Intent("com.google.glass.action.PHONE_CALL_STATE_CHANGED");
    localIntent.putExtra("call_state", paramBoolean);
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.toString(paramBoolean);
    localFormattingLogger.i("Broadcasting \"is in phone call\": %s", arrayOfObject);
    this.context.sendStickyBroadcast(localIntent);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.phone.PhoneCallHelper
 * JD-Core Version:    0.6.2
 */