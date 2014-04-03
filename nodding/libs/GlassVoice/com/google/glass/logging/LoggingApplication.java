package com.google.glass.logging;

import android.content.Context;
import android.os.Bundle;
import android.os.Environment;
import com.google.glass.app.GlassApplication;
import com.google.glass.companion.CompanionStateChangeListener;
import com.google.glass.companion.RemoteCompanionProxy;
import com.google.glass.predicates.Assert;
import com.google.glass.util.CachedFilesManager;
import java.io.File;

public class LoggingApplication extends GlassApplication
  implements CompanionStateChangeListener
{
  private static final String CACHED_FILES_DIRECTORY = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "glass_bugreports";
  private static final int MAX_NUM_SDCARD_ATTACHMENTS = 10000;
  private static final long MAX_SIZE_SDCARD_FILES = 1073741824L;
  private static final String TAG = LoggingApplication.class.getSimpleName();
  private Bundle pendingBundle;
  private RemoteCompanionProxy proxy;

  public static LoggingApplication from(Context paramContext)
  {
    Context localContext = paramContext.getApplicationContext();
    if ((localContext instanceof LoggingApplication))
      return (LoggingApplication)localContext;
    throw new IllegalArgumentException("The context must be a child of the LoggingApplication context.");
  }

  public void onCreate()
  {
    super.onCreate();
    this.proxy = new RemoteCompanionProxy(this);
    this.proxy.addListener(this);
  }

  public void onStateChange(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    if (paramBoolean)
      sendBundleToCompanion(this.pendingBundle);
  }

  public void sendBundleToCompanion(Bundle paramBundle)
  {
    Assert.assertUiThread();
    if (paramBundle == null)
      return;
    if (this.proxy.isConnected())
    {
      this.proxy.sendCompanionMessage(paramBundle);
      return;
    }
    this.pendingBundle = paramBundle;
  }

  protected void setupCachedFilesManager()
  {
    CachedFilesManager.setSharedInstance(new CachedFilesManager(CACHED_FILES_DIRECTORY, 1073741824L, 10000));
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.LoggingApplication
 * JD-Core Version:    0.6.2
 */