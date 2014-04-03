package com.google.android.speech.audio;

import com.google.android.speech.SpeechLevelSource;

public class SpeechLevelGenerator
{
  private static final float AUDIO_METER_MAX_DB = 10.0F;
  private static final float AUDIO_METER_MIN_DB = -2.0F;
  private float mNoiseLevel;
  private final SpeechLevelSource mSpeechLevelSource;

  public SpeechLevelGenerator(SpeechLevelSource paramSpeechLevelSource)
  {
    this.mSpeechLevelSource = paramSpeechLevelSource;
    this.mNoiseLevel = 75.0F;
  }

  private static float calculateRms(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    long l1 = 0L;
    long l2 = 0L;
    int i = paramInt2 / 2;
    for (int j = paramInt1 + paramInt2; j >= paramInt1 + 2; j -= 2)
    {
      int k = (short)((paramArrayOfByte[(j - 1)] << 8) + (0xFF & paramArrayOfByte[(j - 2)]));
      l1 += k;
      l2 += k * k;
    }
    return (float)Math.sqrt((l2 * i - l1 * l1) / (i * i));
  }

  public static int convertRmsDbToVolume(float paramFloat)
  {
    int i = (int)(100.0F * (Math.min(Math.max(paramFloat, -2.0F), 10.0F) + 2.0F) / 12.0F);
    if (i < 30)
      return 0;
    return 10 * (i / 10);
  }

  public static float convertVolumeToRmsDb(int paramInt)
  {
    return -2.0F + 12.0F * (paramInt / 100.0F);
  }

  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    float f1 = calculateRms(paramArrayOfByte, paramInt1, paramInt2);
    if (this.mNoiseLevel < f1);
    for (this.mNoiseLevel = (0.999F * this.mNoiseLevel + 0.001F * f1); ; this.mNoiseLevel = (0.95F * this.mNoiseLevel + 0.05F * f1))
    {
      float f2 = -120.0F;
      if ((this.mNoiseLevel > 0.0D) && (f1 / this.mNoiseLevel > 1.0E-06D))
        f2 = 10.0F * (float)Math.log10(f1 / this.mNoiseLevel);
      this.mSpeechLevelSource.setSpeechLevel(convertRmsDbToVolume(f2));
      return;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.audio.SpeechLevelGenerator
 * JD-Core Version:    0.6.2
 */