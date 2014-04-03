package com.google.android.speech.params;

import com.google.common.annotations.VisibleForTesting;

public class AudioInputParams
{
  private final int mEncoding;
  private final boolean mHeadsetEnabled;
  private final boolean mNoiseSuppressionEnabled;
  private final boolean mPlayBeepEnabled;
  private final int mSamplingRateHz;
  private final boolean mStoreCompleteAudio;
  private final long mStreamRewindTimeUsec;

  private AudioInputParams(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, int paramInt1, int paramInt2, long paramLong)
  {
    this.mHeadsetEnabled = paramBoolean1;
    this.mNoiseSuppressionEnabled = paramBoolean2;
    this.mPlayBeepEnabled = paramBoolean3;
    this.mStoreCompleteAudio = paramBoolean4;
    this.mEncoding = paramInt1;
    this.mSamplingRateHz = paramInt2;
    this.mStreamRewindTimeUsec = paramLong;
  }

  public int getEncoding()
  {
    return this.mEncoding;
  }

  public int getSamplingRate()
  {
    return this.mSamplingRateHz;
  }

  public long getStreamRewindTime()
  {
    return this.mStreamRewindTimeUsec;
  }

  public boolean hasStreamRewindTime()
  {
    return this.mStreamRewindTimeUsec >= 0L;
  }

  public boolean isHeadsetEnabled()
  {
    return this.mHeadsetEnabled;
  }

  public boolean isNoiseSuppressionEnabled()
  {
    return this.mNoiseSuppressionEnabled;
  }

  public boolean isPlayBeepEnabled()
  {
    return this.mPlayBeepEnabled;
  }

  public boolean shouldStoreCompleteAudio()
  {
    return this.mStoreCompleteAudio;
  }

  public static class Builder
  {
    private int mEncoding = 3;
    private boolean mHeadsetEnabled = false;
    private boolean mNoiseSuppressionEnabled = true;
    private boolean mPlayBeepEnabled = true;
    private int mSamplingRateHz = 8000;
    private boolean mStoreCompleteAudio = true;
    private long mStreamRewindTimeUsec = -1L;

    public AudioInputParams build()
    {
      return new AudioInputParams(this.mHeadsetEnabled, this.mNoiseSuppressionEnabled, this.mPlayBeepEnabled, this.mStoreCompleteAudio, this.mEncoding, this.mSamplingRateHz, this.mStreamRewindTimeUsec, null);
    }

    public Builder setEncoding(int paramInt)
    {
      this.mEncoding = paramInt;
      return this;
    }

    public Builder setHeadsetEnabled(boolean paramBoolean)
    {
      this.mHeadsetEnabled = paramBoolean;
      return this;
    }

    public Builder setNoiseSuppressionEnabled(boolean paramBoolean)
    {
      this.mNoiseSuppressionEnabled = paramBoolean;
      return this;
    }

    public Builder setPlayBeepEnabled(boolean paramBoolean)
    {
      this.mPlayBeepEnabled = paramBoolean;
      return this;
    }

    public Builder setSamplingRate(int paramInt)
    {
      this.mSamplingRateHz = paramInt;
      return this;
    }

    public Builder setStoreCompleteAudio(boolean paramBoolean)
    {
      this.mStoreCompleteAudio = paramBoolean;
      return this;
    }

    @VisibleForTesting
    public Builder setStreamRewindTimeUsec(long paramLong)
    {
      this.mStreamRewindTimeUsec = paramLong;
      return this;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.params.AudioInputParams
 * JD-Core Version:    0.6.2
 */