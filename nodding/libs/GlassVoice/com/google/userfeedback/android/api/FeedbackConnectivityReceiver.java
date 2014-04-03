package com.google.userfeedback.android.api;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;

public class FeedbackConnectivityReceiver extends BroadcastReceiver
{
  static void setEnabled(Context paramContext, boolean paramBoolean)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    ComponentName localComponentName = new ComponentName(paramContext.getPackageName(), FeedbackConnectivityReceiver.class.getCanonicalName());
    if (paramBoolean);
    for (int i = 1; ; i = 2)
    {
      if (i != localPackageManager.getComponentEnabledSetting(localComponentName))
        localPackageManager.setComponentEnabledSetting(localComponentName, i, 1);
      return;
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    NetworkInfo localNetworkInfo = (NetworkInfo)paramIntent.getParcelableExtra("networkInfo");
    if (localNetworkInfo == null)
      localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()));
    while ((!localConnectivityManager.getBackgroundDataSetting()) || (UserFeedback.userFeedback() == null) || (UserFeedback.userFeedback().getReport() == null) || (!UserFeedback.userFeedback().getReport().shouldSubmitReport()))
      return;
    Log.d("GFEEDBACK", "A submission ready report present. Start submission");
    paramContext.startService(new Intent(paramContext, SendUserFeedbackService.class));
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.userfeedback.android.api.FeedbackConnectivityReceiver
 * JD-Core Version:    0.6.2
 */