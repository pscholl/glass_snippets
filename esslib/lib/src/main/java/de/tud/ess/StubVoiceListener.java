package de.tud.ess;

import com.google.glass.input.VoiceListener;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;

public abstract class StubVoiceListener extends VoiceListener.SimpleVoiceListener {

  @Override
  public FormattingLogger getLogger() {
    return FormattingLoggers.getContextLogger();
  }
}
