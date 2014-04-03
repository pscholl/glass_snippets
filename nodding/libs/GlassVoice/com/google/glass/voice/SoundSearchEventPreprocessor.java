package com.google.glass.voice;

import com.google.glass.voice.network.EndpointerEventProcessor.EventPreprocessor;
import com.google.speech.recognizer.api.RecognizerProtos.EndpointerEvent;

class SoundSearchEventPreprocessor extends EndpointerEventProcessor.EventPreprocessor
{
  private final VoiceEngine voiceEngine;

  public SoundSearchEventPreprocessor(VoiceEngine paramVoiceEngine)
  {
    this.voiceEngine = paramVoiceEngine;
  }

  public boolean process(RecognizerProtos.EndpointerEvent paramEndpointerEvent)
  {
    return this.voiceEngine.getConfig() == VoiceConfig.SOUND_SEARCH;
  }

  public boolean updateProgress(long paramLong)
  {
    return this.voiceEngine.getConfig() == VoiceConfig.SOUND_SEARCH;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.SoundSearchEventPreprocessor
 * JD-Core Version:    0.6.2
 */