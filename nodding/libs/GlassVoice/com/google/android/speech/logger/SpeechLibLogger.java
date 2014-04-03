package com.google.android.speech.logger;

public abstract interface SpeechLibLogger
{
  public abstract void logAudioPathEstablished(LogData paramLogData);

  public abstract void logEndOfSpeech();

  public abstract void logNoSpeechDetected();

  public abstract void logS3ConnectionDone();

  public abstract void logS3ConnectionError();

  public abstract void logS3ConnectionOpen();

  public abstract void logS3ConnectionOpenLatency();

  public abstract void logS3MajelResultReceived();

  public abstract void logS3RecognitionCompleted();

  public abstract void logS3SendEndOfData();

  public abstract void logS3SoundSearchResultReceived();

  public abstract void logS3TtsReceived();

  public abstract void recordSpeechEvent(int paramInt);

  public abstract void recordSpeechEvent(int paramInt, Object paramObject);

  public static class LogData
  {
    public final int audioPath;
    public final int networkType;
    public final boolean scoOutputDisabled;

    public LogData(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      this.audioPath = paramInt1;
      this.networkType = paramInt2;
      this.scoOutputDisabled = paramBoolean;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.logger.SpeechLibLogger
 * JD-Core Version:    0.6.2
 */