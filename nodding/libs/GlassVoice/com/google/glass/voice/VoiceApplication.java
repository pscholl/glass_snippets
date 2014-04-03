package com.google.glass.voice;

import android.accounts.Account;
import com.google.glass.app.GlassApplication;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.auth.AuthUtils;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.sync.SyncHelper;
import java.util.concurrent.Executor;

public class VoiceApplication extends GlassApplication
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  private void enableSync(final Account paramAccount)
  {
    Assert.assertNotNull(paramAccount);
    AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
    {
      public void run()
      {
        VoiceApplication.logger.v("Enabling sync.", new Object[0]);
        SyncHelper.enableSync(paramAccount, "com.google.glass.savedaudio");
      }
    });
  }

  public void onCreate()
  {
    super.onCreate();
    Account localAccount = new AuthUtils(this).getGoogleAccount();
    if (localAccount == null)
    {
      logger.w("No Google account available! Cannot configure saved audio sync.", new Object[0]);
      return;
    }
    enableSync(localAccount);
  }

  protected boolean shouldLoadEntityCache()
  {
    return true;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.VoiceApplication
 * JD-Core Version:    0.6.2
 */