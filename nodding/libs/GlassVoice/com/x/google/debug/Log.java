package com.x.google.debug;

import java.io.PrintStream;
import java.util.Hashtable;

public class Log
{
  private static final String DEFAULT_LOGGER = "com.x.google.debug.StdoutLogger";
  public static final int LEVEL_ALL = 0;
  public static final int LEVEL_CONFIG = 4;
  public static final int LEVEL_FINE = 3;
  public static final int LEVEL_FINER = 2;
  public static final int LEVEL_FINEST = 1;
  public static final int LEVEL_INFO = 5;
  private static final String[] LEVEL_NAMES = { "ALL", "FINEST", "FINER", "FINE", "CONFIG", "INFO", "WARNING", "SEVERE", "NONE" };
  public static final int LEVEL_NONE = 8;
  public static final int LEVEL_SEVERE = 7;
  public static final int LEVEL_WARNING = 6;
  private static final Logger logger = (Logger)DebugUtil.newInstance(logger());
  private static final Hashtable timers = new Hashtable();

  public static void config(Object paramObject)
  {
    xlog(paramObject, 4, null, null, -1);
  }

  public static void endTimer(String paramString)
  {
    xendTimer(paramString, null, null, -1);
  }

  public static void endTimer(String paramString, long paramLong)
  {
    xendTimer(paramString, paramLong, null, null, -1);
  }

  public static void fine(Object paramObject)
  {
    xlog(paramObject, 3, null, null, -1);
  }

  public static void finer(Object paramObject)
  {
    xlog(paramObject, 2, null, null, -1);
  }

  public static void finest(Object paramObject)
  {
    xlog(paramObject, 1, null, null, -1);
  }

  public static String getLevelName(int paramInt)
  {
    return LEVEL_NAMES[paramInt];
  }

  public static Logger getLogger()
  {
    return logger;
  }

  public static void info(Object paramObject)
  {
    xlog(paramObject, 5, null, null, -1);
  }

  public static boolean isLoggable(int paramInt)
  {
    return xisLoggable(paramInt, null, null);
  }

  private static String logLevel()
  {
    String str = DebugUtil.getAntProperty("INFO", System.getProperty("LOG_LEVEL"));
    if (str == null)
    {
      System.err.println("WARNING: Missing log level - using logger specific default");
      System.err.println("         For Ant: Specify the log level using the LOG_LEVEL property");
      System.err.println("         For Bolide: Specify the log level using constant injection");
      System.err.println("         For J2SE:  Define LOG_LEVEL system property");
      System.err.println("         See JavaDoc or source of com.google.debug.Log.");
    }
    return str;
  }

  public static boolean logThreads()
  {
    return DebugUtil.getAntPropertyAsBoolean("false", false);
  }

  public static void logThrowable(Object paramObject, Throwable paramThrowable)
  {
    xlogThrowable(paramObject, paramThrowable, null, null, -1);
  }

  public static void logThrowable(Object paramObject, Throwable paramThrowable, int paramInt)
  {
    xlogThrowable(paramObject, paramThrowable, paramInt, null, null, -1);
  }

  public static boolean logTime()
  {
    return DebugUtil.getAntPropertyAsBoolean("true", false);
  }

  private static Class logger()
  {
    try
    {
      if (DebugUtil.isAntPropertyExpanded("com.x.google.debug.StdoutLogger"))
        return Class.forName("com.x.google.debug.StdoutLogger");
      String str = System.getProperty("LOGGER");
      if (str != null)
        return Class.forName(str);
      System.err.println("WARNING: Missing logger class - using default logger com.google.debug.StdoutLogger");
      System.err.println("         For Ant: Specify the logger class using the LOGGER property");
      System.err.println("         For Bolide: Specify the logger class using constant injection");
      System.err.println("         For J2SE:  Specify the logger class via the LOGGER system property");
      System.err.println("         See JavaDoc or source of com.google.debug.Log.");
      Class localClass = Class.forName("com.x.google.debug.StdoutLogger");
      return localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
    }
    throw new Error("Missing logger class com.google.debug.StdoutLogger");
  }

  public static int parseLogLevel(int paramInt)
  {
    String str = logLevel();
    if (str != null)
      paramInt = parseLogLevel(str);
    return paramInt;
  }

  public static int parseLogLevel(String paramString)
  {
    String str = paramString.toUpperCase();
    for (int i = 0; i <= 8; i++)
      if (str.equals(LEVEL_NAMES[i]))
        return i;
    throw new IllegalArgumentException("Invalid log level " + str);
  }

  public static void severe(Object paramObject)
  {
    xlog(paramObject, 7, null, null, -1);
  }

  public static void startTimer(String paramString)
  {
    xstartTimer(paramString, null, null, -1);
  }

  public static void startTimer(String paramString, int paramInt)
  {
    xstartTimer(paramString, paramInt, null, null, -1);
  }

  public static void warning(Object paramObject)
  {
    xlog(paramObject, 6, null, null, -1);
  }

  public static void xendTimer(String paramString1, long paramLong, String paramString2, String paramString3, int paramInt)
  {
    TimerInfo localTimerInfo = (TimerInfo)timers.remove(paramString1);
    if (localTimerInfo == null)
      logger.log("Missing timer " + paramString1, 6, paramString2, paramString3, paramInt);
    long l;
    do
    {
      return;
      l = System.currentTimeMillis() - localTimerInfo.getStartTime();
    }
    while (l < paramLong);
    logger.logTimer(paramString1, l, localTimerInfo.getLogLevel(), paramString2, paramString3, paramInt);
  }

  public static void xendTimer(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    xendTimer(paramString1, 0L, paramString2, paramString3, paramInt);
  }

  public static boolean xisLoggable(int paramInt, String paramString1, String paramString2)
  {
    return logger.isLoggable(paramInt, null, null);
  }

  public static void xlog(Object paramObject, int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    logger.log(paramObject, paramInt1, paramString1, paramString2, paramInt2);
  }

  public static void xlogThrowable(Object paramObject, Throwable paramThrowable, int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    logger.logThrowable(paramObject, paramThrowable, paramInt1, paramString1, paramString2, paramInt2);
  }

  public static void xlogThrowable(Object paramObject, Throwable paramThrowable, String paramString1, String paramString2, int paramInt)
  {
    xlogThrowable(paramObject, paramThrowable, 5, paramString1, paramString2, paramInt);
  }

  public static void xstartTimer(String paramString1, int paramInt1, String paramString2, String paramString3, int paramInt2)
  {
    timers.put(paramString1, new TimerInfo(System.currentTimeMillis(), paramInt1));
    logger.logTimer(paramString1, -1L, paramInt1, paramString2, paramString3, paramInt2);
  }

  public static void xstartTimer(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    xstartTimer(paramString1, 5, paramString2, paramString3, paramInt);
  }

  private static class TimerInfo
  {
    private final int logLevel;
    private final long startTime;

    public TimerInfo(long paramLong, int paramInt)
    {
      this.startTime = paramLong;
      this.logLevel = paramInt;
    }

    public int getLogLevel()
    {
      return this.logLevel;
    }

    public long getStartTime()
    {
      return this.startTime;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.debug.Log
 * JD-Core Version:    0.6.2
 */