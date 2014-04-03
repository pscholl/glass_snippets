package com.google.glass.voice.network;

import com.google.android.searchcommon.util.ExtraPreconditions;
import com.google.android.searchcommon.util.ExtraPreconditions.ThreadCheck;
import com.google.android.speech.RecognitionResponse;
import com.google.android.speech.callback.RecognitionEngineCallback;
import com.google.android.speech.dispatcher.RecognitionDispatcher;
import com.google.android.speech.dispatcher.RecognitionDispatcher.ResultsMerger;
import com.google.android.speech.exception.RecognizeException;

public class ResultsMergerImpl
  implements RecognitionDispatcher.ResultsMerger
{
  private static final boolean DEBUG;
  private static final String TAG = ResultsMergerImpl.class.getSimpleName();
  private boolean invalid = false;
  private final RecognitionDispatcher recognitionDispatcher;
  private final RecognitionEngineCallback recognitionEngineCallback;
  private final ExtraPreconditions.ThreadCheck threadCheck = ExtraPreconditions.createSameThreadCheck();

  public ResultsMergerImpl(RecognitionDispatcher paramRecognitionDispatcher, RecognitionEngineCallback paramRecognitionEngineCallback)
  {
    this.recognitionDispatcher = paramRecognitionDispatcher;
    this.recognitionEngineCallback = paramRecognitionEngineCallback;
  }

  public void invalidate()
  {
    this.threadCheck.check();
    this.invalid = true;
  }

  public void onEndOfSpeech()
  {
    if (this.invalid)
      return;
    this.threadCheck.check();
    this.recognitionEngineCallback.onEndOfSpeech();
  }

  public void onError(RecognizeException paramRecognizeException)
  {
    this.threadCheck.check();
    if (this.invalid)
      return;
    this.recognitionDispatcher.cancel();
    this.recognitionEngineCallback.onError(paramRecognizeException);
  }

  public void onMusicDetected()
  {
    if (this.invalid)
      return;
    this.recognitionEngineCallback.onMusicDetected();
  }

  public void onNoSpeechDetected()
  {
    this.threadCheck.check();
    if (this.invalid)
      return;
    this.recognitionEngineCallback.onNoSpeechDetected();
  }

  public void onResult(RecognitionResponse paramRecognitionResponse)
  {
    this.threadCheck.check();
    if (this.invalid)
      return;
    this.recognitionEngineCallback.onResult(paramRecognitionResponse);
  }

  public void onStartOfSpeech(long paramLong)
  {
    this.threadCheck.check();
    if (this.invalid)
      return;
    this.recognitionEngineCallback.onStartOfSpeech(paramLong);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.ResultsMergerImpl
 * JD-Core Version:    0.6.2
 */