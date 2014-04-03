package com.google.glass.logging;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.glass.app.GlassApplication;
import com.google.glass.userevent.UserEventHelper;

public class ShutdownReceiver extends BroadcastReceiver
{
  private static final String TAG = ShutdownReceiver.class.getSimpleName();

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Log.d(TAG, "Received intent: " + paramIntent);
    GlassApplication.from(paramContext).getUserEventHelper().saveToDisk();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.ShutdownReceiver
 * JD-Core Version:    0.6.2
 */