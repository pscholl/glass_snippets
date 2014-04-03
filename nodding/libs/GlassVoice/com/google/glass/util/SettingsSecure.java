package com.google.glass.util;

import android.content.ContentResolver;
import android.provider.Settings.Secure;

public class SettingsSecure
{
  private ContentResolver resolver;

  public SettingsSecure(ContentResolver paramContentResolver)
  {
    this.resolver = paramContentResolver;
  }

  public String getString(String paramString)
  {
    return Settings.Secure.getString(this.resolver, paramString);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.SettingsSecure
 * JD-Core Version:    0.6.2
 */