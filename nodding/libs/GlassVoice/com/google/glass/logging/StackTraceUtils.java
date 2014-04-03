package com.google.glass.logging;

import com.google.common.base.Preconditions;
import com.google.common.base.Strings;

final class StackTraceUtils
{
  public static String getCallerClassName(Throwable paramThrowable, int paramInt)
  {
    Preconditions.checkNotNull(paramThrowable, "null throwable");
    boolean bool1;
    StackTraceElement[] arrayOfStackTraceElement;
    if (paramInt >= 0)
    {
      bool1 = true;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(paramInt);
      Preconditions.checkArgument(bool1, "skipFrameCount must be >= 0, was: [%s]", arrayOfObject1);
      arrayOfStackTraceElement = paramThrowable.getStackTrace();
      if (arrayOfStackTraceElement.length < paramInt + 1)
        break label101;
    }
    label101: for (boolean bool2 = true; ; bool2 = false)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(paramInt + 1);
      arrayOfObject2[1] = Integer.valueOf(arrayOfStackTraceElement.length);
      Preconditions.checkState(bool2, "Unexpected stack trace length (should be >= %s): [%s]", arrayOfObject2);
      return arrayOfStackTraceElement[paramInt].getClassName();
      bool1 = false;
      break;
    }
  }

  public static String getSimpleClassName(String paramString)
  {
    boolean bool1;
    String str;
    if (!Strings.isNullOrEmpty(paramString))
    {
      bool1 = true;
      Preconditions.checkArgument(bool1, "null or empty fullClassName");
      if (!paramString.contains("."))
        break label67;
      str = paramString.substring(1 + paramString.lastIndexOf('.'));
      label37: if (str.length() <= 0)
        break label72;
    }
    label67: label72: for (boolean bool2 = true; ; bool2 = false)
    {
      Preconditions.checkArgument(bool2, "empty simple class name for : [%s]", new Object[] { paramString });
      return str;
      bool1 = false;
      break;
      str = paramString;
      break label37;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.StackTraceUtils
 * JD-Core Version:    0.6.2
 */