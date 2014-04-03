package com.google.glass.build;

import android.os.Build;
import android.os.Build.VERSION;
import com.google.common.annotations.VisibleForTesting;

public class BuildHelper
{
  private static Type type;

  public static Type getType()
  {
    if (type == null)
      type = Type.getType(Build.TYPE);
    return type;
  }

  public static boolean isEng()
  {
    return Type.ENG.equals(getType());
  }

  public static boolean isJellyBean()
  {
    return Build.VERSION.SDK_INT >= 17;
  }

  public static boolean isUser()
  {
    return Type.USER.equals(getType());
  }

  public static boolean isUserdebug()
  {
    return Type.USERDEBUG.equals(getType());
  }

  public static enum Type
  {
    private String rawBuildType;

    static
    {
      ENG = new Type("ENG", 2, "eng");
      UNKNOWN = new Type("UNKNOWN", 3, "");
      Type[] arrayOfType = new Type[4];
      arrayOfType[0] = USER;
      arrayOfType[1] = USERDEBUG;
      arrayOfType[2] = ENG;
      arrayOfType[3] = UNKNOWN;
    }

    private Type(String paramString)
    {
      this.rawBuildType = paramString;
    }

    @VisibleForTesting
    static Type getType(String paramString)
    {
      for (Type localType : values())
        if (localType.rawBuildType.equals(paramString))
          return localType;
      return UNKNOWN;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.build.BuildHelper
 * JD-Core Version:    0.6.2
 */