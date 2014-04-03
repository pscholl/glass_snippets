package com.google.glass.input;

import com.google.glass.logging.FormattingLogger;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;

public abstract interface VoiceListener
{
  public abstract FormattingLogger getLogger();

  public abstract boolean isRunning();

  public abstract boolean onResampledAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  public abstract boolean onVoiceAmplitudeChanged(double paramDouble);

  public abstract VoiceConfig onVoiceCommand(VoiceCommand paramVoiceCommand);

  public abstract void onVoiceConfigChanged(VoiceConfig paramVoiceConfig, boolean paramBoolean);

  public abstract void onVoiceServiceConnected();

  public abstract void onVoiceServiceDisconnected();

  public static abstract class SimpleVoiceListener
    implements VoiceListener
  {
    public boolean onResampledAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      return false;
    }

    public boolean onVoiceAmplitudeChanged(double paramDouble)
    {
      return false;
    }

    public VoiceConfig onVoiceCommand(VoiceCommand paramVoiceCommand)
    {
      return null;
    }

    public void onVoiceConfigChanged(VoiceConfig paramVoiceConfig, boolean paramBoolean)
    {
    }

    public void onVoiceServiceConnected()
    {
    }

    public void onVoiceServiceDisconnected()
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.input.VoiceListener
 * JD-Core Version:    0.6.2
 */