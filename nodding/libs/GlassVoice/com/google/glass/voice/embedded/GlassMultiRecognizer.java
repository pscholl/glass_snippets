package com.google.glass.voice.embedded;

import com.google.android.speech.embedded.Greco3Recognizer;
import com.google.speech.recognizer.MultiRecognizer;

public class GlassMultiRecognizer extends MultiRecognizer
{
  static
  {
    Greco3Recognizer.maybeLoadSharedLibrary();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.embedded.GlassMultiRecognizer
 * JD-Core Version:    0.6.2
 */