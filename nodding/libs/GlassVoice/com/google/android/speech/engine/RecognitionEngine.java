package com.google.android.speech.engine;

import com.google.android.speech.RecognitionResponse;
import com.google.android.speech.audio.AudioInputStreamFactory;
import com.google.android.speech.audio.EndpointerListener;
import com.google.android.speech.callback.Callback;
import com.google.android.speech.exception.RecognizeException;
import com.google.android.speech.params.SessionParams;

public abstract interface RecognitionEngine
{
  public abstract void close();

  public abstract void startRecognition(AudioInputStreamFactory paramAudioInputStreamFactory, Callback<RecognitionResponse, RecognizeException> paramCallback, SessionParams paramSessionParams, EndpointerListener paramEndpointerListener);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.engine.RecognitionEngine
 * JD-Core Version:    0.6.2
 */