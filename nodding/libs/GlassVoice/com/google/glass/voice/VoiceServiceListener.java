package com.google.glass.voice;

public abstract interface VoiceServiceListener
{
  public abstract void onResampledAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  public abstract void onVoiceAmplitudeChanged(double paramDouble);

  public abstract VoiceConfig onVoiceCommand(VoiceCommand paramVoiceCommand);

  public abstract void onVoiceConfigChanged(VoiceConfig paramVoiceConfig);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.VoiceServiceListener
 * JD-Core Version:    0.6.2
 */