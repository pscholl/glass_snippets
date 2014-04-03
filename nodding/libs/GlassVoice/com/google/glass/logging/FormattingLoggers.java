package com.google.glass.logging;

import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.glass.build.BuildHelper;
import com.google.glass.build.BuildHelper.Type;
import java.util.IllegalFormatException;

public final class FormattingLoggers
{
  private static final BuildHelper.Type BUILD_TYPE = BuildHelper.getType();

  @VisibleForTesting
  static final int PROPERTY_KEY_MAX_LENGTH = 23;
  private static final String TAG = "FormattingLoggers";
  private static Listener logListener = new Listener()
  {
    public void onLog(int paramAnonymousInt, String paramAnonymousString1, String paramAnonymousString2, Throwable paramAnonymousThrowable)
    {
    }
  };

  private static void actuallyLogFormat(int paramInt, String paramString1, String paramString2, Throwable paramThrowable, String paramString3, Object[] paramArrayOfObject)
  {
    if (((BUILD_TYPE == BuildHelper.Type.USER) || (paramInt < 3)) && (!Log.isLoggable(paramString1, paramInt)))
      return;
    if (paramArrayOfObject != null);
    Object localObject;
    try
    {
      int i = paramArrayOfObject.length;
      if (i == 0);
      String str;
      for (localObject = paramString3; ; localObject = str)
      {
        logListener.onLog(paramInt, paramString2, (String)localObject, paramThrowable);
        switch (paramInt)
        {
        default:
          return;
        case 2:
          if (paramThrowable == null)
            break label215;
          Log.v(paramString2, (String)localObject, paramThrowable);
          return;
          str = String.format(paramString3, paramArrayOfObject);
        case 3:
        case 6:
        case 4:
        case 5:
        }
      }
    }
    catch (IllegalFormatException localIllegalFormatException)
    {
      Log.e("FormattingLoggers", String.format("Error formatting message. format: [%s], args: [%s]", new Object[] { paramString3, paramArrayOfObject }));
      throw localIllegalFormatException;
    }
    if (paramThrowable != null)
    {
      Log.d(paramString2, (String)localObject, paramThrowable);
      return;
    }
    Log.d(paramString2, (String)localObject);
    return;
    if (paramThrowable != null)
    {
      Log.e(paramString2, (String)localObject, paramThrowable);
      return;
    }
    Log.e(paramString2, (String)localObject);
    return;
    if (paramThrowable != null)
    {
      Log.i(paramString2, (String)localObject, paramThrowable);
      return;
    }
    Log.i(paramString2, (String)localObject);
    return;
    label215: Log.v(paramString2, (String)localObject);
    return;
    if (paramThrowable != null)
    {
      Log.w(paramString2, (String)localObject, paramThrowable);
      return;
    }
    Log.w(paramString2, (String)localObject);
  }

  private static String cropPropertyKey(String paramString)
  {
    if (paramString.length() > 23)
      paramString = paramString.substring(0, 23);
    return paramString;
  }

  private static String getCallerClassSimpleName()
  {
    return StackTraceUtils.getSimpleClassName(StackTraceUtils.getCallerClassName(new Throwable(), 2));
  }

  public static FormattingLogger getContextLogger()
  {
    return getLogger(getCallerClassSimpleName());
  }

  public static FormattingLogger getContextLogger(String paramString)
  {
    return getLogger(getCallerClassSimpleName(), paramString);
  }

  public static FormattingLogger getLogger(FormattingLogger paramFormattingLogger, String paramString)
  {
    Preconditions.checkNotNull(paramFormattingLogger, "null parent");
    Preconditions.checkNotNull(paramString, "null childTag");
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramFormattingLogger.getTag();
    arrayOfObject[1] = paramString;
    String str1 = String.format("%s/%s", arrayOfObject);
    if ((paramFormattingLogger instanceof SimpleFormattingLogger));
    for (String str2 = ((SimpleFormattingLogger)paramFormattingLogger).tagProperty; ; str2 = cropPropertyKey(paramFormattingLogger.getTag()))
      return new SimpleFormattingLogger(str1, str2, null);
  }

  public static FormattingLogger getLogger(Object paramObject)
  {
    Preconditions.checkNotNull(paramObject, "null instance");
    String str = paramObject.getClass().getSimpleName();
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = str;
    arrayOfObject[1] = Integer.valueOf(System.identityHashCode(paramObject));
    return new SimpleFormattingLogger(String.format("%s[%x]", arrayOfObject), cropPropertyKey(str), null);
  }

  public static FormattingLogger getLogger(Object paramObject, String paramString)
  {
    Preconditions.checkNotNull(paramObject, "null instance");
    Preconditions.checkNotNull(paramString, "null loggingGroup");
    String str = paramObject.getClass().getSimpleName();
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = str;
    arrayOfObject[2] = Integer.valueOf(System.identityHashCode(paramObject));
    return new SimpleFormattingLogger(String.format("%s.%s[%x]", arrayOfObject), paramString, null);
  }

  public static FormattingLogger getLogger(String paramString)
  {
    Preconditions.checkNotNull(paramString, "null tag");
    return new SimpleFormattingLogger(paramString, cropPropertyKey(paramString), null);
  }

  public static FormattingLogger getLogger(String paramString1, String paramString2)
  {
    Preconditions.checkNotNull(paramString1, "null tag");
    Preconditions.checkNotNull(paramString2, "null loggingGroup");
    return new SimpleFormattingLogger(String.format("%s.%s", new Object[] { paramString2, paramString1 }), paramString2, null);
  }

  public static void setListener(Listener paramListener)
  {
    logListener = paramListener;
  }

  public static abstract interface Listener
  {
    public abstract void onLog(int paramInt, String paramString1, String paramString2, Throwable paramThrowable);
  }

  @VisibleForTesting
  static final class SimpleFormattingLogger
    implements FormattingLogger
  {
    private final String tag;

    @VisibleForTesting
    final String tagProperty;

    private SimpleFormattingLogger(String paramString1, String paramString2)
    {
      this.tag = ((String)Preconditions.checkNotNull(paramString1, "null tag"));
      if (paramString2.length() <= 23);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool, "tagProperty is too long: [%s]", new Object[] { paramString2 });
        this.tagProperty = paramString2;
        FormattingLoggers.actuallyLogFormat(2, "FormattingLoggers", "FormattingLoggers", null, "System property for logging tag [%s]: [log.tag.%s]", new Object[] { paramString1, paramString2 });
        return;
      }
    }

    public void d(String paramString, Object[] paramArrayOfObject)
    {
      FormattingLoggers.actuallyLogFormat(3, this.tagProperty, this.tag, null, paramString, paramArrayOfObject);
    }

    public void d(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
    {
      FormattingLoggers.actuallyLogFormat(3, this.tagProperty, this.tag, paramThrowable, paramString, paramArrayOfObject);
    }

    public void e(String paramString, Object[] paramArrayOfObject)
    {
      FormattingLoggers.actuallyLogFormat(6, this.tagProperty, this.tag, null, paramString, paramArrayOfObject);
    }

    public void e(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
    {
      FormattingLoggers.actuallyLogFormat(6, this.tagProperty, this.tag, paramThrowable, paramString, paramArrayOfObject);
    }

    public String getTag()
    {
      return this.tag;
    }

    public void i(String paramString, Object[] paramArrayOfObject)
    {
      FormattingLoggers.actuallyLogFormat(4, this.tagProperty, this.tag, null, paramString, paramArrayOfObject);
    }

    public void i(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
    {
      FormattingLoggers.actuallyLogFormat(4, this.tagProperty, this.tag, paramThrowable, paramString, paramArrayOfObject);
    }

    public void v(String paramString, Object[] paramArrayOfObject)
    {
      FormattingLoggers.actuallyLogFormat(2, this.tagProperty, this.tag, null, paramString, paramArrayOfObject);
    }

    public void v(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
    {
      FormattingLoggers.actuallyLogFormat(2, this.tagProperty, this.tag, paramThrowable, paramString, paramArrayOfObject);
    }

    public void w(String paramString, Object[] paramArrayOfObject)
    {
      FormattingLoggers.actuallyLogFormat(5, this.tagProperty, this.tag, null, paramString, paramArrayOfObject);
    }

    public void w(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
    {
      FormattingLoggers.actuallyLogFormat(5, this.tagProperty, this.tag, paramThrowable, paramString, paramArrayOfObject);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.FormattingLoggers
 * JD-Core Version:    0.6.2
 */