package com.google.glass.net;

import com.google.android.glass.hidden.HiddenSystemProperties;

public final class UserAgent
{
  private static final String GLASS_USER_AGENT = String.format("Mozilla/5.0 (Linux; U; Android 4.0.4; en-us; Glass 1 Build/IMM76L; %s) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30", arrayOfObject);

  static
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = HiddenSystemProperties.get("ro.build.version.glass", "");
  }

  public static String get()
  {
    return GLASS_USER_AGENT;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.net.UserAgent
 * JD-Core Version:    0.6.2
 */