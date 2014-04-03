package com.x.google.debug;

public abstract interface SettingsProvider
{
  public abstract boolean getAttributeBoolean(String paramString, boolean paramBoolean);

  public abstract int getAttributeInt(String paramString, int paramInt);

  public abstract long getAttributeLong(String paramString, long paramLong);

  public abstract String getAttributeString(String paramString1, String paramString2);

  public abstract boolean hasCapability(String paramString);

  public abstract boolean isEnabled(String paramString);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.debug.SettingsProvider
 * JD-Core Version:    0.6.2
 */