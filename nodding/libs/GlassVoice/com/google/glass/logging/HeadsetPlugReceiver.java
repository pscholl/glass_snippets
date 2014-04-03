package com.google.glass.logging;

import android.content.Context;
import android.content.Intent;
import com.google.glass.util.SafeBroadcastReceiver;

public class HeadsetPlugReceiver extends SafeBroadcastReceiver
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  public FormattingLogger getLogger()
  {
    return logger;
  }

  public void onReceiveInternal(Context paramContext, Intent paramIntent)
  {
    if ("android.intent.action.BOOT_COMPLETED".equals(paramIntent.getAction()))
    {
      logger.d("Starting HeadsetPlugService.", new Object[0]);
      paramContext.startService(new Intent(paramContext, HeadsetPlugService.class));
      return;
    }
    logger.w("Unknown action received: %s", new Object[] { paramIntent });
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.HeadsetPlugReceiver
 * JD-Core Version:    0.6.2
 */