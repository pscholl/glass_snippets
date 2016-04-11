package de.tud.ess;

import com.google.glass.voice.VoiceListener;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.voice.VoiceListener.SimpleVoiceListener;

public abstract class StubVoiceListener extends VoiceListener.SimpleVoiceListener {

  @Override
  public FormattingLogger getLogger() {
    return FormattingLoggers.getContextLogger();
  }
}
