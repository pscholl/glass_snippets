package com.x.google.debug;

public class NullSettingsProvider
  implements SettingsProvider
{
  public boolean getAttributeBoolean(String paramString, boolean paramBoolean)
  {
    return paramBoolean;
  }

  public int getAttributeInt(String paramString, int paramInt)
  {
    return paramInt;
  }

  public long getAttributeLong(String paramString, long paramLong)
  {
    return paramLong;
  }

  public String getAttributeString(String paramString1, String paramString2)
  {
    return paramString2;
  }

  public boolean hasCapability(String paramString)
  {
    return false;
  }

  public boolean isEnabled(String paramString)
  {
    return false;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.debug.NullSettingsProvider
 * JD-Core Version:    0.6.2
 */