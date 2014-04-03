package com.google.glass.app;

import com.google.glass.input.VoiceListener;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;

class DelegatingVoiceListener
  implements VoiceListener
{
  private final VoiceListener delegate;

  DelegatingVoiceListener(VoiceListener paramVoiceListener)
  {
    this.delegate = paramVoiceListener;
  }

  public FormattingLogger getLogger()
  {
    return this.delegate.getLogger();
  }

  public boolean isRunning()
  {
    return this.delegate.isRunning();
  }

  public boolean onResampledAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return this.delegate.onResampledAudioData(paramArrayOfByte, paramInt1, paramInt2);
  }

  public boolean onVoiceAmplitudeChanged(double paramDouble)
  {
    return this.delegate.onVoiceAmplitudeChanged(paramDouble);
  }

  public VoiceConfig onVoiceCommand(VoiceCommand paramVoiceCommand)
  {
    return this.delegate.onVoiceCommand(paramVoiceCommand);
  }

  public void onVoiceConfigChanged(VoiceConfig paramVoiceConfig, boolean paramBoolean)
  {
    this.delegate.onVoiceConfigChanged(paramVoiceConfig, paramBoolean);
  }

  public void onVoiceServiceConnected()
  {
    this.delegate.onVoiceServiceConnected();
  }

  public void onVoiceServiceDisconnected()
  {
    this.delegate.onVoiceServiceDisconnected();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.app.DelegatingVoiceListener
 * JD-Core Version:    0.6.2
 */