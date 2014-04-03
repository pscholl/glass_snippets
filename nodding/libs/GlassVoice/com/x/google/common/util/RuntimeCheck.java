package com.x.google.common.util;

import com.x.google.common.ConfigSettings;

public class RuntimeCheck
{
  private static boolean isStartupComplete = false;
  private static boolean isTrackingStartup = false;

  public static void checkDebug()
  {
    if (!ConfigSettings.isDebugBuild())
      throw new IllegalStateException("not in a debug build");
  }

  public static void checkStartupComplete()
  {
    if ((isTrackingStartup) && (!isStartupComplete))
      throw new IllegalStateException("startup sequence is not yet complete");
  }

  public static void checkTest()
  {
    if (!ConfigSettings.isTestBuild())
      throw new IllegalStateException("not in a unit or feature test");
  }

  public static void startupBegun()
  {
    if (isTrackingStartup)
      throw new IllegalStateException("startupBegun called multiple times");
    isTrackingStartup = true;
  }

  public static void startupComplete()
  {
    if (!isTrackingStartup)
      throw new IllegalStateException("must call startupBegun before startupComplete");
    isStartupComplete = true;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.util.RuntimeCheck
 * JD-Core Version:    0.6.2
 */