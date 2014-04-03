package com.google.speech.recognizer;

import com.google.speech.recognizer.api.NativeRecognizer.NativeRecognitionResult;
import com.google.speech.recognizer.api.RecognizerSessionParamsProto.RecognizerSessionParams;
import java.io.InputStream;

public abstract interface Recognizer
{
  public abstract int addCallback(RecognizerCallback paramRecognizerCallback);

  public abstract int cancel();

  public abstract NativeRecognizer.NativeRecognitionResult run(RecognizerSessionParamsProto.RecognizerSessionParams paramRecognizerSessionParams);

  public abstract int setAudioReader(InputStream paramInputStream);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.recognizer.Recognizer
 * JD-Core Version:    0.6.2
 */