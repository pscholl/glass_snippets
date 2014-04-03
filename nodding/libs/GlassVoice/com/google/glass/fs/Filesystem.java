package com.google.glass.fs;

import android.os.Environment;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.io.File;
import java.io.IOException;

public class Filesystem
{
  public static final String EXTERNAL_STORAGE_PATH = Environment.getExternalStorageDirectory().getAbsolutePath();
  public static final String NON_FUSE_EXTERNAL_STORAGE_PATH = Environment.getDataDirectory() + File.separator + "media";
  private static final FormattingLogger logger;

  static
  {
    System.loadLibrary("glassfs");
    logger = FormattingLoggers.getContextLogger();
  }

  public static native void changeMode(String paramString, int paramInt)
    throws IOException;

  public static native void createLink(String paramString1, String paramString2)
    throws IOException, IllegalArgumentException;

  public static String maybeTranslatePath(String paramString)
  {
    String str = paramString;
    if (paramString.startsWith(EXTERNAL_STORAGE_PATH))
    {
      str = paramString.replaceFirst(EXTERNAL_STORAGE_PATH, NON_FUSE_EXTERNAL_STORAGE_PATH);
      logger.d("Path '%s' required translation -- xlated to '%s'", new Object[] { paramString, str });
    }
    return str;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.fs.Filesystem
 * JD-Core Version:    0.6.2
 */