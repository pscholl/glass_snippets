package com.google.glass.companion;

import android.content.Context;
import android.content.Intent;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.util.BroadcastUnderWakeLock;
import com.google.glass.util.SetupHelper;
import com.google.glass.util.WifiHelper.Encryption;

public class WifiSettingsInputBoxResponseHandler extends CompanionInputBoxResponseHandler
{
  private static final String TAG = WifiSettingsInputBoxResponseHandler.class.getSimpleName();

  @VisibleForTesting
  final WifiHelper.Encryption encryption;

  @VisibleForTesting
  final String ssid;

  public WifiSettingsInputBoxResponseHandler(String paramString, WifiHelper.Encryption paramEncryption)
  {
    this.ssid = paramString;
    this.encryption = paramEncryption;
  }

  protected void handleCancelled(Context paramContext)
  {
  }

  protected void handleTextTyped(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent("com.google.glass.companion.SETUP_WIFI");
    localIntent.putExtra("wifi_setup_string", SetupHelper.generateWifiSetupInfo(this.ssid, this.encryption, paramString));
    BroadcastUnderWakeLock.sendBroadcastUnderWakeLock(paramContext, localIntent, TAG + "_BroadcastWakeLock");
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.companion.WifiSettingsInputBoxResponseHandler
 * JD-Core Version:    0.6.2
 */