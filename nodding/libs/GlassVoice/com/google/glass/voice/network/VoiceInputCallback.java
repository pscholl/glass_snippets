package com.google.glass.voice.network;

import com.google.audio.ears.proto.EarsService.EarsResultsResponse;

public abstract interface VoiceInputCallback
{
  public abstract void onActionResponse(byte[] paramArrayOfByte);

  public abstract void onError(SpeechException paramSpeechException);

  public abstract void onHtmlAnswerCardResult(String paramString);

  public abstract void onRecognitionResult(CharSequence paramCharSequence, float paramFloat);

  public abstract void onSoundSearchResult(EarsService.EarsResultsResponse paramEarsResultsResponse);

  public abstract void setSpeechLevelSource(SpeechLevelSource paramSpeechLevelSource);

  public abstract void showDone();

  public abstract void showListening();

  public abstract void showMusicDetected();

  public abstract void showNoSpeechDetected();

  public abstract void showRecognizing();

  public abstract void showRecording();

  public abstract void updateRecognizedText(CharSequence paramCharSequence1, CharSequence paramCharSequence2);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.VoiceInputCallback
 * JD-Core Version:    0.6.2
 */