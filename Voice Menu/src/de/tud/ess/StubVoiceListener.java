package de.tud.ess;

import com.google.glass.input.VoiceListener;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;

public abstract class StubVoiceListener implements VoiceListener {

  @Override
  public FormattingLogger getLogger() {
    return FormattingLoggers.getContextLogger();
  }

  @Override
  public boolean isRunning() {
     return true;
  }
  
  @Override
  public void onVoiceServiceConnected() {
  }

  @Override
  public boolean onResampledAudioData(byte[] arg0, int arg1, int arg2) {
    return false;
  }

  @Override
  public boolean onVoiceAmplitudeChanged(double arg0) {
    return false;
  }

  @Override
  public VoiceConfig onVoiceCommand(VoiceCommand arg0) {
    return null;
  }

  @Override
  public void onVoiceConfigChanged(VoiceConfig arg0, boolean arg1) {
  }
  
  @Override
  public void onVoiceServiceDisconnected() {
  }

}
