package com.x.google.debug;

import com.x.google.common.util.Observable;
import com.x.google.common.util.Observer;
import java.io.PrintStream;
import java.lang.ref.WeakReference;
import java.util.Vector;

public final class LogSource
{
  private static final char CONFIG_LEVEL_SEPARATOR = '=';
  private static final String CONFIG_SOURCE_SEPARATOR = ",";
  private static final int DEFAULT_LOG_LEVEL = 0;
  private static final String LOG_LEVEL_VARZ = "/logs/level";
  private static final String LOG_SOURCE_SEPARATOR = ": ";
  private static LogSource defaultLogSource;
  static boolean forceProductionForTesting;
  private static Object[][] logSourceLevels;
  private static LogSourceObserver logSourceObserver;
  private static Vector logSources;
  private final StringBuffer buffer;
  private final Object dynamicSourceObject;
  private int logLevel;
  private final int logPrefixLength;

  static
  {
    staticInit();
  }

  private LogSource(Class paramClass, Object paramObject)
  {
    this.dynamicSourceObject = paramObject;
    this.logLevel = DEFAULT_LOG_LEVEL;
    this.buffer = new StringBuffer();
    if (paramClass != null)
    {
      this.buffer.append(DebugUtil.getLogSource(paramClass));
      this.buffer.append(": ");
    }
    this.logPrefixLength = this.buffer.length();
  }

  private String formatMessage(Object paramObject1, Object paramObject2)
  {
    synchronized (this.buffer)
    {
      this.buffer.setLength(this.logPrefixLength);
      if (this.dynamicSourceObject != null)
      {
        this.buffer.append(safeToString(this.dynamicSourceObject));
        this.buffer.append(": ");
      }
      this.buffer.append(safeToString(paramObject1));
      if (paramObject2 != null)
      {
        if ((paramObject2 instanceof Throwable))
        {
          Throwable localThrowable = (Throwable)paramObject2;
          this.buffer.append(": ");
          this.buffer.append(localThrowable.getMessage());
          this.buffer.append(": ");
          this.buffer.append(localThrowable.getClass().getName());
        }
      }
      else
      {
        String str = this.buffer.toString();
        return str;
      }
      this.buffer.append(": ");
      this.buffer.append(safeToString(paramObject2));
    }
  }

  private static int getDefaultLogLevel()
  {
    try
    {
      int i = Log.parseLogLevel(7);
      return i;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    return 7;
  }

  public static LogSource getDynamicLogSource(Object paramObject)
  {
    try
    {
      LogSource localLogSource = new LogSource(null, paramObject);
      return localLogSource;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static LogSource getLogSource(Class paramClass)
  {
    try
    {
      LogSource localLogSource = defaultLogSource;
      return localLogSource;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static Object[][] parseLogSourceLevelsConfig(String paramString)
  {
    return (Object[][])null;
  }

  private static void registerLogSource(LogSource paramLogSource)
  {
    int i = 0;
    if (i < logSources.size())
    {
      if (((WeakReference)logSources.elementAt(i)).get() == null)
        logSources.removeElementAt(i);
      for (int j = i; ; j = i + 1)
      {
        i = j;
        break;
      }
    }
    logSources.addElement(new WeakReference(paramLogSource));
  }

  private String safeToString(Object paramObject)
  {
    try
    {
      String str = paramObject.toString();
      return str;
    }
    catch (Throwable localThrowable)
    {
      return "EXCEPTION[" + localThrowable + "]";
    }
  }

  private void setLogLevelFromLogSourceLevels()
  {
  }

  public static void setLogSourceLevelsConfig(String paramString)
  {
  }

  private static void staticInit()
  {
    logSources = new Vector();
    String str = DebugUtil.getAntProperty("${LOG_SOURCE_LEVELS}", "");
    logSourceLevels = parseLogSourceLevelsConfig(str);
    if (!RuntimeVarz.getInstance().isRegistered("/logs/level"))
      RuntimeVarz.getInstance().register("/logs/level", new String[] { str, "*=FINE", "*=INFO", "*=SEVERE" });
    logSourceObserver = new LogSourceObserver();
    RuntimeVarz.getInstance().addObserver(logSourceObserver);
    defaultLogSource = new LogSource(LogSource.class, null);
  }

  private static void updateLogLevelFromLogSourceLevels()
  {
    int j;
    for (int i = 0; ; i = j)
      try
      {
        if (i < logSources.size())
        {
          LogSource localLogSource = (LogSource)((WeakReference)logSources.elementAt(i)).get();
          if (localLogSource == null)
          {
            logSources.removeElementAt(i);
            j = i;
          }
          else
          {
            localLogSource.setLogLevelFromLogSourceLevels();
            System.out.println(localLogSource.logLevel + " " + localLogSource.buffer.toString());
            j = i + 1;
          }
        }
        else
        {
          return;
        }
      }
      finally
      {
      }
  }

  public void config(Object paramObject)
  {
    config(paramObject, null);
  }

  public void config(Object paramObject1, Object paramObject2)
  {
    xlog(4, null, null, 0, paramObject1, paramObject2);
  }

  public void fine(Object paramObject)
  {
    fine(paramObject, null);
  }

  public void fine(Object paramObject1, Object paramObject2)
  {
    xlog(3, null, null, 0, paramObject1, paramObject2);
  }

  public void finer(Object paramObject)
  {
    finer(paramObject, null);
  }

  public void finer(Object paramObject1, Object paramObject2)
  {
    xlog(2, null, null, 0, paramObject1, paramObject2);
  }

  public void finest(Object paramObject)
  {
    finest(paramObject, null);
  }

  public void finest(Object paramObject1, Object paramObject2)
  {
    xlog(1, null, null, 0, paramObject1, paramObject2);
  }

  public int getLogLevel()
  {
    return this.logLevel;
  }

  public void info(Object paramObject)
  {
    info(paramObject, null);
  }

  public void info(Object paramObject1, Object paramObject2)
  {
    xlog(5, null, null, 0, paramObject1, paramObject2);
  }

  public boolean isEnabled(int paramInt)
  {
    return this.logLevel <= paramInt;
  }

  public void profilingMark(String paramString)
  {
    Profiling.mark(formatMessage(paramString, null));
  }

  public void setLogLevel(int paramInt)
  {
    this.logLevel = paramInt;
  }

  public void severe(Object paramObject)
  {
    severe(paramObject, null);
  }

  public void severe(Object paramObject1, Object paramObject2)
  {
    xlog(7, null, null, 0, paramObject1, paramObject2);
  }

  String testFormatMessage(Object paramObject)
  {
    return formatMessage(paramObject, null);
  }

  public void warning(Object paramObject)
  {
    warning(paramObject, null);
  }

  public void warning(Object paramObject1, Object paramObject2)
  {
    xlog(6, null, null, 0, paramObject1, paramObject2);
  }

  public void xlog(int paramInt1, String paramString1, String paramString2, int paramInt2, Object paramObject)
  {
    xlog(paramInt1, paramString1, paramString2, paramInt2, paramObject, null);
  }

  public void xlog(int paramInt1, String paramString1, String paramString2, int paramInt2, Object paramObject1, Object paramObject2)
  {
    if (isEnabled(paramInt1))
      Log.xlog(formatMessage(paramObject1, paramObject2), paramInt1, paramString1, paramString2, paramInt2);
  }

  private static class LogSourceObserver
    implements Observer
  {
    private String logLevelSources = RuntimeVarz.getInstance().getValue("/logs/level");

    public void update(Observable paramObservable, Object paramObject)
    {
      if ("/logs/level".equals(paramObject))
        try
        {
          String str = RuntimeVarz.getInstance().getValue("/logs/level");
          if (!str.equals(this.logLevelSources))
          {
            System.out.println("New log source level:" + str);
            this.logLevelSources = str;
            LogSource.access$002(LogSource.parseLogSourceLevelsConfig(str));
            LogSource.access$200();
          }
          return;
        }
        finally
        {
        }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.debug.LogSource
 * JD-Core Version:    0.6.2
 */