package com.google.android.speech.listeners;

import com.google.android.speech.exception.RecognizeException;
import com.google.audio.ears.proto.EarsService.EarsResultsResponse;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionEvent;
import com.google.speech.s3.PinholeStream.PinholeOutput;

public abstract interface RecognitionEventListener
{
  public abstract void onBeginningOfSpeech();

  public abstract void onDone();

  public abstract void onEndOfSpeech();

  public abstract void onError(RecognizeException paramRecognizeException);

  public abstract void onMediaDataResult(byte[] paramArrayOfByte);

  public abstract void onMusicDetected();

  public abstract void onNoSpeechDetected();

  public abstract void onPinholeResult(PinholeStream.PinholeOutput paramPinholeOutput);

  public abstract void onReadyForSpeech(float paramFloat1, float paramFloat2);

  public abstract void onRecognitionCancelled();

  public abstract void onRecognitionResult(RecognizerProtos.RecognitionEvent paramRecognitionEvent);

  public abstract void onSoundSearchResult(EarsService.EarsResultsResponse paramEarsResultsResponse);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.listeners.RecognitionEventListener
 * JD-Core Version:    0.6.2
 */