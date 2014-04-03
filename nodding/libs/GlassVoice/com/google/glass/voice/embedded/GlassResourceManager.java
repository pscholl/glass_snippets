package com.google.glass.voice.embedded;

import com.google.android.speech.embedded.Greco3Recognizer;
import com.google.speech.recognizer.ResourceManager;

public class GlassResourceManager extends ResourceManager
{
  static
  {
    Greco3Recognizer.maybeLoadSharedLibrary();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.embedded.GlassResourceManager
 * JD-Core Version:    0.6.2
 */