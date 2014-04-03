package com.google.android.speech;

import com.google.wireless.voicesearch.proto.GstaticConfiguration.Configuration;

public abstract interface SpeechSettings
{
  public abstract GstaticConfiguration.Configuration getConfiguration();

  public abstract String getInstallId();

  public abstract String getSpokenLocaleBcp47();

  public abstract boolean isDebugAudioLoggingEnabled();

  public abstract boolean isPersonalizationEnabled();

  public abstract boolean isProfanityFilterEnabled();

  public abstract boolean isSoundSearchEnabled();

  public abstract void setSpokenLanguageBcp47(String paramString, boolean paramBoolean);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.SpeechSettings
 * JD-Core Version:    0.6.2
 */