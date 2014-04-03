package com.google.glass.logging;

import com.google.glass.build.BuildHelper;
import java.util.IllegalFormatException;

public class Log
{
  public static final int ASSERT = 7;
  public static final int DEBUG = 3;
  public static final int ERROR = 6;
  public static final int INFO = 4;
  private static final boolean LOG_PII = false;
  private static final int MAX_TAG_LENGTH = 23;
  public static final int VERBOSE = 2;
  public static final int WARN = 5;

  static
  {
    if (!BuildHelper.isUser());
    for (boolean bool = true; ; bool = false)
    {
      LOG_PII = bool;
      return;
    }
  }

  private static void actuallyLogFormat(int paramInt, String paramString1, String paramString2, Throwable paramThrowable, Object[] paramArrayOfObject)
  {
    if (!isLoggable(paramString1, paramInt))
      return;
    if (paramArrayOfObject != null);
    Object localObject;
    try
    {
      int i = paramArrayOfObject.length;
      if (i == 0);
      String str;
      for (localObject = paramString2; ; localObject = str)
        switch (paramInt)
        {
        default:
          return;
        case 2:
          if (paramThrowable == null)
            break label185;
          android.util.Log.v(paramString1, (String)localObject, paramThrowable);
          return;
          str = String.format(paramString2, paramArrayOfObject);
        case 3:
        case 6:
        case 4:
        case 5:
        }
    }
    catch (IllegalFormatException localIllegalFormatException)
    {
      android.util.Log.e("Log", String.format("Error formatting message. format: [%s], args: [%s]", new Object[] { paramString2, paramArrayOfObject }));
      throw localIllegalFormatException;
    }
    if (paramThrowable != null)
    {
      android.util.Log.d(paramString1, (String)localObject, paramThrowable);
      return;
    }
    android.util.Log.d(paramString1, (String)localObject);
    return;
    if (paramThrowable != null)
    {
      android.util.Log.e(paramString1, (String)localObject, paramThrowable);
      return;
    }
    android.util.Log.e(paramString1, (String)localObject);
    return;
    if (paramThrowable != null)
    {
      android.util.Log.i(paramString1, (String)localObject, paramThrowable);
      return;
    }
    android.util.Log.i(paramString1, (String)localObject);
    return;
    label185: android.util.Log.v(paramString1, (String)localObject);
    return;
    if (paramThrowable != null)
    {
      android.util.Log.w(paramString1, (String)localObject, paramThrowable);
      return;
    }
    android.util.Log.w(paramString1, (String)localObject);
  }

  public static void d(String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    actuallyLogFormat(3, paramString1, paramString2, null, paramArrayOfObject);
  }

  public static void d(String paramString1, Throwable paramThrowable, String paramString2, Object[] paramArrayOfObject)
  {
    actuallyLogFormat(3, paramString1, paramString2, paramThrowable, paramArrayOfObject);
  }

  public static void e(String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    actuallyLogFormat(6, paramString1, paramString2, null, paramArrayOfObject);
  }

  public static void e(String paramString1, Throwable paramThrowable, String paramString2, Object[] paramArrayOfObject)
  {
    actuallyLogFormat(6, paramString1, paramString2, paramThrowable, paramArrayOfObject);
  }

  public static void i(String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    actuallyLogFormat(4, paramString1, paramString2, null, paramArrayOfObject);
  }

  public static void i(String paramString1, Throwable paramThrowable, String paramString2, Object[] paramArrayOfObject)
  {
    actuallyLogFormat(4, paramString1, paramString2, paramThrowable, paramArrayOfObject);
  }

  public static boolean isLoggable(String paramString, int paramInt)
  {
    String str = paramString;
    if ((paramString != null) && (paramString.length() > 23))
      str = paramString.substring(0, 23);
    if (paramInt < 3);
    for (int i = 1; ; i = 0)
    {
      boolean bool = android.util.Log.isLoggable(str, paramInt);
      if (((BuildHelper.isUser()) || (i != 0)) && (!bool))
        break;
      return true;
    }
    return false;
  }

  public static void logPii(int paramInt, String paramString1, String paramString2)
  {
    logPii(paramInt, paramString1, paramString2, null);
  }

  public static void logPii(int paramInt, String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (LOG_PII)
      actuallyLogFormat(paramInt, paramString1, paramString2, paramThrowable, new Object[0]);
  }

  public static void v(String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    actuallyLogFormat(2, paramString1, paramString2, null, paramArrayOfObject);
  }

  public static void v(String paramString1, Throwable paramThrowable, String paramString2, Object[] paramArrayOfObject)
  {
    actuallyLogFormat(2, paramString1, paramString2, paramThrowable, paramArrayOfObject);
  }

  public static void w(String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    actuallyLogFormat(5, paramString1, paramString2, null, paramArrayOfObject);
  }

  public static void w(String paramString1, Throwable paramThrowable, String paramString2, Object[] paramArrayOfObject)
  {
    actuallyLogFormat(5, paramString1, paramString2, paramThrowable, paramArrayOfObject);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.Log
 * JD-Core Version:    0.6.2
 */