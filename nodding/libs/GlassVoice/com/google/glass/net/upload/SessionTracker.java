package com.google.glass.net.upload;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;

public class SessionTracker
{
  private static final String TRACKING_PREFS_FILENAME = "resumable_upload_tracking_prefs";
  private static final FormattingLogger logger;
  private SharedPreferences prefs;

  static
  {
    if (!SessionTracker.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      logger = FormattingLoggers.getContextLogger();
      return;
    }
  }

  public SessionTracker(Context paramContext)
  {
    this.prefs = paramContext.getSharedPreferences("resumable_upload_tracking_prefs", 0);
  }

  public boolean clearSessionUri(File paramFile)
  {
    return this.prefs.edit().remove(paramFile.getAbsolutePath()).commit();
  }

  public URI getSessionUri(File paramFile)
  {
    String str1 = paramFile.getAbsolutePath();
    String str2;
    try
    {
      str2 = this.prefs.getString(str1, null);
      if (str2 == null)
      {
        logger.v("No URI was previously stored for %s -- returning null.", new Object[] { str1 });
        return null;
      }
    }
    catch (ClassCastException localClassCastException)
    {
      logger.w("Ran into a non-string pref for %s -- removing and returning null.", new Object[] { str1 });
      this.prefs.edit().remove(str1).commit();
      return null;
    }
    try
    {
      URI localURI = new URI(str2);
      return localURI;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      logger.w("URI stored in tracking prefs wasn't valid -- returning null!", new Object[0]);
    }
    return null;
  }

  public boolean setSessionUri(File paramFile, URI paramURI)
  {
    assert (paramURI != null);
    return this.prefs.edit().putString(paramFile.getAbsolutePath(), paramURI.toString()).commit();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.net.upload.SessionTracker
 * JD-Core Version:    0.6.2
 */