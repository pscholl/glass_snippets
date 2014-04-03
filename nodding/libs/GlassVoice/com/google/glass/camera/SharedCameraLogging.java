package com.google.glass.camera;

import android.os.RemoteException;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;

public class SharedCameraLogging
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  private static String createLogMessage(String paramString, ISharedCameraClient paramISharedCameraClient)
  {
    if (paramISharedCameraClient != null);
    try
    {
      String str2 = paramISharedCameraClient.getTag();
      str1 = str2;
      paramString = str1 + ": " + paramString;
      return paramString;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        String str1 = paramISharedCameraClient.toString();
    }
  }

  public static void logDebug(ISharedCameraClient paramISharedCameraClient, String paramString)
  {
    logger.d(createLogMessage(paramString, paramISharedCameraClient), new Object[0]);
  }

  public static void logError(ISharedCameraClient paramISharedCameraClient, String paramString)
  {
    logger.e(createLogMessage(paramString, paramISharedCameraClient), new Object[0]);
  }

  public static void logError(ISharedCameraClient paramISharedCameraClient, String paramString, Exception paramException)
  {
    logger.e(paramException, createLogMessage(paramString, paramISharedCameraClient), new Object[0]);
  }

  public static void logVerbose(ISharedCameraClient paramISharedCameraClient, String paramString)
  {
    logger.v(createLogMessage(paramString, paramISharedCameraClient), new Object[0]);
  }

  public static void logWarning(ISharedCameraClient paramISharedCameraClient, String paramString)
  {
    logger.w(createLogMessage(paramString, paramISharedCameraClient), new Object[0]);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.camera.SharedCameraLogging
 * JD-Core Version:    0.6.2
 */