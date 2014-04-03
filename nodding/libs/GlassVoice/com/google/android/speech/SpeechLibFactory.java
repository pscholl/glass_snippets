package com.google.android.speech;

import com.google.android.speech.callback.RecognitionEngineCallback;
import com.google.android.speech.dispatcher.RecognitionDispatcher;
import com.google.android.speech.dispatcher.RecognitionDispatcher.ResultsMerger;
import com.google.android.speech.logger.SpeechLibLogger;
import com.google.android.speech.params.RecognitionEngineParams;
import com.google.android.speech.params.SessionParams;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

public abstract interface SpeechLibFactory
{
  public abstract EngineSelector buildEngineSelector(RecognitionEngineParams paramRecognitionEngineParams, SessionParams paramSessionParams);

  public abstract RecognitionEngineStore buildRecognitionEngineStore(RecognitionEngineParams paramRecognitionEngineParams);

  public abstract RecognitionDispatcher.ResultsMerger buildResultsMerger(SessionParams paramSessionParams, RecognitionDispatcher paramRecognitionDispatcher, EngineSelector paramEngineSelector, RecognitionEngineCallback paramRecognitionEngineCallback, ExecutorService paramExecutorService, ScheduledExecutorService paramScheduledExecutorService);

  public abstract SpeechLibLogger buildSpeechLibLogger();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.SpeechLibFactory
 * JD-Core Version:    0.6.2
 */