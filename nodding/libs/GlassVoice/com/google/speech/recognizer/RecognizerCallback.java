package com.google.speech.recognizer;

import com.google.speech.recognizer.api.RecognizerProtos.AudioLevelEvent;
import com.google.speech.recognizer.api.RecognizerProtos.EndpointerEvent;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionEvent;

public abstract interface RecognizerCallback
{
  public abstract void handleAudioLevelEvent(RecognizerProtos.AudioLevelEvent paramAudioLevelEvent);

  public abstract void handleEndpointerEvent(RecognizerProtos.EndpointerEvent paramEndpointerEvent);

  public abstract void handleRecognitionEvent(RecognizerProtos.RecognitionEvent paramRecognitionEvent);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.recognizer.RecognizerCallback
 * JD-Core Version:    0.6.2
 */