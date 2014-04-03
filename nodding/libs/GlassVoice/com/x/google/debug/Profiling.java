package com.x.google.debug;

import java.util.Vector;

public final class Profiling
{
  private static boolean enabled;
  private static final LogSource logger = LogSource.getLogSource(Profiling.class);
  private static final Vector profileMarks = new Vector();

  public static void disable()
  {
    logger.info("disable");
    enabled = false;
    profileMarks.removeAllElements();
  }

  public static void enable()
  {
    logger.info("enable");
    enabled = true;
  }

  public static int getNumProfileMarks()
  {
    return profileMarks.size();
  }

  public static ProfileMark[] getProfileMarks(boolean paramBoolean)
  {
    synchronized (profileMarks)
    {
      ProfileMark[] arrayOfProfileMark = new ProfileMark[profileMarks.size()];
      profileMarks.copyInto(arrayOfProfileMark);
      if (paramBoolean)
        profileMarks.removeAllElements();
      return arrayOfProfileMark;
    }
  }

  public static ProfileMark[] getProfileMarksAndReset()
  {
    return getProfileMarks(true);
  }

  public static boolean isEnabled()
  {
    return enabled;
  }

  public static void mark(String paramString)
  {
    if (enabled)
    {
      logger.info("marking ", paramString);
      profileMarks.addElement(new ProfileMark(paramString));
    }
  }

  public static class ProfileMark
  {
    public final String name;
    public final long time;

    ProfileMark(String paramString)
    {
      this.name = paramString;
      this.time = System.currentTimeMillis();
    }

    public String toString()
    {
      return this.name + ":" + this.time;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.debug.Profiling
 * JD-Core Version:    0.6.2
 */