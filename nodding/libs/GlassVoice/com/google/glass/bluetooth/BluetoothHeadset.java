package com.google.glass.bluetooth;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

public abstract class BluetoothHeadset
{
  public static final String ACTION_ACCEPT_CALL = "com.google.glass.action.ACCEPT_CALL";
  public static final String ACTION_CALL_DIAL = "com.google.glass.action.CALL_DIAL";
  public static final String ACTION_CALL_REDIAL = "com.google.glass.action.CALL_REDIAL";
  public static final String ACTION_CONNECT = "com.google.glass.action.CONNECT_HEADSET";
  public static final String ACTION_CONNECT_SCO = "com.google.glass.action.CONNECT_HEADSET_SCO";
  public static final String ACTION_HEADSET_STATE = "com.google.glass.action.HEADSET_STATE";
  public static final String ACTION_REJECT_CALL = "com.google.glass.action.REJECT_CALL";
  public static final String ACTION_VOICE_RECOGNITION = "com.google.glass.action.BLUETOOTH_VOICE_RECOGNITION";
  public static final String ACTION_VOLUME = "com.google.glass.action.BLUETOOTH_VOLUME";
  public static final int CALL_ERROR_AG_FAILURE = 0;
  public static final int CALL_ERROR_DIAL_STRING_TOO_LONG = 26;
  public static final int CALL_ERROR_INCORRECT_PASSWORD = 16;
  public static final int CALL_ERROR_INVALID_CHARACTERS_IN_DIAL_STRING = 27;
  public static final int CALL_ERROR_INVALID_CHARACTERS_IN_TEXT_STRING = 25;
  public static final int CALL_ERROR_INVALID_INDEX = 21;
  public static final int CALL_ERROR_MEMORY_FAILURE = 23;
  public static final int CALL_ERROR_MEMORY_FULL = 20;
  public static final int CALL_ERROR_NETWORK_NOT_ALLOWED_EMERGENCY_CALLS_ONLY = 32;
  public static final int CALL_ERROR_NONE = -1;
  public static final int CALL_ERROR_NO_CONNECTION_TO_PHONE = 1;
  public static final int CALL_ERROR_NO_NETWORK_SERVICE = 30;
  public static final int CALL_ERROR_OPERATION_NOT_ALLOWED = 3;
  public static final int CALL_ERROR_OPERATION_NOT_SUPPORT = 4;
  public static final int CALL_ERROR_PH_SIM_PIN_REQUIRED = 5;
  public static final int CALL_ERROR_SIM_BUSY = 14;
  public static final int CALL_ERROR_SIM_FAILURE = 13;
  public static final int CALL_ERROR_SIM_NOT_INSERTED = 10;
  public static final int CALL_ERROR_SIM_PIN2_REQUIRED = 17;
  public static final int CALL_ERROR_SIM_PIN_REQUIRED = 11;
  public static final int CALL_ERROR_SIM_PUK2_REQUIRED = 18;
  public static final int CALL_ERROR_SIM_PUK_REQUIRED = 12;
  public static final int CALL_ERROR_TEXT_STRING_TOO_LONG = 24;
  public static final int CALL_SETUP_STATE_INCOMING = 1;
  public static final int CALL_SETUP_STATE_NONE = 0;
  public static final int CALL_SETUP_STATE_OUTGOING = 2;
  public static final int CALL_SETUP_STATE_REMOTE_PARTY_ALERTED = 3;
  public static final int CALL_STATE_IN_CALL = 1;
  public static final int CALL_STATE_NONE = 0;
  public static final String EXTRA_ENABLE_VOICE_RECOGNITION = "com.google.glass.extra.ENABLE_VOICE_RECOGNITION";
  public static final String EXTRA_LOCAL_RINGTONE = "com.google.glass.extra.LOCAL_RINGTONE";
  public static final String EXTRA_PHONE_NUMBER = "com.google.glass.extra.PHONE_NUMBER";
  public static final String EXTRA_STATE = "com.google.glass.extra.STATE";
  public static final String EXTRA_VOLUME = "com.google.glass.extra.VOLUME";
  public static final int HEADSET_STATE_CONNECTED = 1;
  public static final int HEADSET_STATE_DISCONNECTED;
  private static final String TAG = BluetoothHeadset.class.getSimpleName();

  public static void broadcastAcceptCall(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.google.glass.action.ACCEPT_CALL");
    paramContext.sendBroadcast(localIntent);
  }

  public static void broadcastDial(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("com.google.glass.extra.PHONE_NUMBER", paramString);
    localIntent.setAction("com.google.glass.action.CALL_DIAL");
    paramContext.sendBroadcast(localIntent);
  }

  public static void broadcastHeadsetState(Context paramContext, int paramInt, BluetoothDeviceWrapper paramBluetoothDeviceWrapper)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("com.google.glass.extra.STATE", paramInt);
    localIntent.putExtra("android.bluetooth.device.extra.DEVICE", paramBluetoothDeviceWrapper.getDevice());
    localIntent.setAction("com.google.glass.action.HEADSET_STATE");
    paramContext.sendStickyBroadcast(localIntent);
  }

  public static void broadcastRedial(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.google.glass.action.CALL_REDIAL");
    paramContext.sendBroadcast(localIntent);
  }

  public static void broadcastRejectCall(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.google.glass.action.REJECT_CALL");
    paramContext.sendBroadcast(localIntent);
  }

  public static int getHeadsetState(Context paramContext)
  {
    return getHeadsetState(getIntentFromStickyBroadcast(paramContext, "com.google.glass.action.HEADSET_STATE"));
  }

  public static int getHeadsetState(Intent paramIntent)
  {
    if (paramIntent == null)
      return 0;
    return paramIntent.getIntExtra("com.google.glass.extra.STATE", 0);
  }

  private static Intent getIntentFromStickyBroadcast(Context paramContext, String paramString)
  {
    return paramContext.getApplicationContext().registerReceiver(null, new IntentFilter(paramString));
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.bluetooth.BluetoothHeadset
 * JD-Core Version:    0.6.2
 */