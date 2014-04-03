package com.google.glass.voice;

import android.content.Context;
import android.content.Intent;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.SafeBroadcastReceiver;

public class BootCompletedReceiver extends SafeBroadcastReceiver
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  public FormattingLogger getLogger()
  {
    return logger;
  }

  public void onReceiveInternal(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ("android.intent.action.BOOT_COMPLETED".equals(str))
    {
      logger.i("Boot completed, starting Voice service.", new Object[0]);
      paramContext.startService(new Intent(paramContext, VoiceService.class));
      return;
    }
    logger.w("Unknown action received: %s", new Object[] { str });
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.BootCompletedReceiver
 * JD-Core Version:    0.6.2
 */