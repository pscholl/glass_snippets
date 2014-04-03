package com.google.android.speech;

import com.google.common.base.Preconditions;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
public class SpeechLevelSource
{
  public static final boolean USE_GRECO3_SPEECH_LEVELS;
  private volatile int mSpeechLevel;

  public int getSpeechLevel()
  {
    return this.mSpeechLevel;
  }

  public boolean isValid()
  {
    return this.mSpeechLevel > 0;
  }

  public void reset()
  {
    this.mSpeechLevel = -1;
  }

  public void setSpeechLevel(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt <= 100));
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      this.mSpeechLevel = paramInt;
      return;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.SpeechLevelSource
 * JD-Core Version:    0.6.2
 */