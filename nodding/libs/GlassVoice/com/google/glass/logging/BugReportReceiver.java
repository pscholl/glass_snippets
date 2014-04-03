package com.google.glass.logging;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.glass.build.BuildHelper;
import com.google.glass.util.Feedback;
import com.google.glass.util.Feedback.RecoveryAction;

public final class BugReportReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!BuildHelper.isUser())
    {
      Feedback.show(paramContext, paramContext.getString(R.string.bugreport_title_manual), Feedback.RecoveryAction.SHOULD_CONTINUE, true, true, true, null);
      abortBroadcast();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.BugReportReceiver
 * JD-Core Version:    0.6.2
 */