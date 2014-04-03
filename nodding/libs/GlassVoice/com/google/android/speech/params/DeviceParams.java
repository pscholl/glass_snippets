package com.google.android.speech.params;

public abstract interface DeviceParams
{
  public abstract String getApplicationVersion();

  public abstract String getDeviceCountry();

  public abstract String getSearchDomainCountryCode();

  public abstract String getUserAgent();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.params.DeviceParams
 * JD-Core Version:    0.6.2
 */