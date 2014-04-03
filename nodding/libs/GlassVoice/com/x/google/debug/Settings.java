package com.x.google.debug;

public class Settings
{
  private static final SettingsProvider provider = (SettingsProvider)DebugUtil.newInstance(settingsProvider());

  private static String error(String paramString1, String paramString2)
  {
    return "Attribute method '" + paramString1 + "()' must not be called " + "when capability '" + paramString2 + "' is not present.";
  }

  private static boolean getBoolean(String paramString, boolean paramBoolean)
  {
    return provider.getAttributeBoolean(paramString, paramBoolean);
  }

  private static int getInt(String paramString, int paramInt)
  {
    return provider.getAttributeInt(paramString, paramInt);
  }

  private static long getLong(String paramString, long paramLong)
  {
    return provider.getAttributeLong(paramString, paramLong);
  }

  public static int getScreenHeight()
  {
    return getInt("screenHeight", 0);
  }

  public static int getScreenWidth()
  {
    return getInt("screenWidth", 0);
  }

  private static String getString(String paramString1, String paramString2)
  {
    return provider.getAttributeString(paramString1, paramString2);
  }

  public static boolean hasBolide()
  {
    return false;
  }

  private static boolean hasCapability(String paramString)
  {
    return provider.hasCapability(paramString);
  }

  public static boolean hasCldc10()
  {
    return false;
  }

  public static boolean hasCldc11()
  {
    return true;
  }

  public static boolean hasDoja()
  {
    return false;
  }

  public static boolean hasJsr211()
  {
    return false;
  }

  public static boolean hasJsr234()
  {
    return false;
  }

  public static boolean hasJsr256()
  {
    return false;
  }

  public static boolean hasJsr75()
  {
    return false;
  }

  public static boolean hasJsr82()
  {
    return false;
  }

  public static boolean hasMidp10()
  {
    return false;
  }

  public static boolean hasMidp20()
  {
    return false;
  }

  public static boolean hasMidpJP8()
  {
    return false;
  }

  public static boolean hasMmapi()
  {
    return false;
  }

  public static boolean hasMultiLocale()
  {
    return false;
  }

  public static boolean hasNokiaui()
  {
    return false;
  }

  public static boolean hasRim40()
  {
    return false;
  }

  public static boolean hasRim41()
  {
    return false;
  }

  public static boolean hasRim42()
  {
    return false;
  }

  public static boolean hasRim43()
  {
    return false;
  }

  public static boolean hasRim46()
  {
    return false;
  }

  public static boolean hasRim47()
  {
    return false;
  }

  public static boolean hasRtsp()
  {
    return false;
  }

  public static boolean hasStar()
  {
    return false;
  }

  public static boolean hasTouchScreen()
  {
    return false;
  }

  public static boolean isAssertEnabled()
  {
    return false;
  }

  public static boolean isDebugEnabled()
  {
    return false;
  }

  private static boolean isEnabled(String paramString)
  {
    return provider.isEnabled(paramString);
  }

  public static boolean isLogEnabled()
  {
    return false;
  }

  public static boolean isProductionEnabled()
  {
    return false;
  }

  public static boolean isProfileEnabled()
  {
    return false;
  }

  public static boolean isTestEnabled()
  {
    return false;
  }

  private static Class settingsProvider()
  {
    return new NullSettingsProvider().getClass();
  }

  public static class Mmapi
  {
    public static boolean hasVideoSeek()
    {
      if (Settings.hasMmapi())
        return Settings.getBoolean("mmapi.videoSeek", true);
      throw new RuntimeException(Settings.error("hasVideoSeek", "mmapi"));
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.debug.Settings
 * JD-Core Version:    0.6.2
 */