package com.google.android.speech.engine;

import com.google.android.speech.logger.SpeechLibLogger;
import com.google.android.speech.network.NetworkEventListener;
import com.google.common.base.Preconditions;

public final class LoggingEventListener
  implements NetworkEventListener
{
  private static LoggingEventListener mInstance = null;
  private final SpeechLibLogger mSpeechLibLogger;

  private LoggingEventListener(SpeechLibLogger paramSpeechLibLogger)
  {
    this.mSpeechLibLogger = ((SpeechLibLogger)Preconditions.checkNotNull(paramSpeechLibLogger));
  }

  public static LoggingEventListener getInstance(SpeechLibLogger paramSpeechLibLogger)
  {
    if (mInstance == null)
      mInstance = new LoggingEventListener(paramSpeechLibLogger);
    return mInstance;
  }

  public void onConnectionFinished()
  {
    this.mSpeechLibLogger.logS3ConnectionOpenLatency();
  }

  public void onConnectionStarted()
  {
    this.mSpeechLibLogger.logS3ConnectionOpen();
  }

  public void onDataComplete()
  {
    this.mSpeechLibLogger.logS3SendEndOfData();
  }

  public void onDataReceived()
  {
  }

  public void onDataSent()
  {
    this.mSpeechLibLogger.recordSpeechEvent(4);
  }

  public void onError()
  {
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.engine.LoggingEventListener
 * JD-Core Version:    0.6.2
 */