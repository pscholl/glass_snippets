package com.google.android.speech;

import com.google.android.searchcommon.util.ExtraPreconditions;
import com.google.android.searchcommon.util.ExtraPreconditions.ThreadCheck;
import com.google.android.speech.callback.RecognitionEngineCallback;
import com.google.android.speech.exception.NetworkRecognizeException;
import com.google.android.speech.exception.RecognizeException;
import com.google.android.speech.listeners.RecognitionEventListener;
import com.google.android.speech.logger.SpeechLibLogger;
import com.google.android.speech.message.S3ResponseProcessor;
import com.google.android.speech.params.SessionParams;
import com.google.android.speech.params.SessionParams.Mode;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionEvent;
import com.google.speech.s3.S3.S3Response;
import com.google.speech.speech.s3.Recognizer.RecognizerEvent;

public class ResponseProcessor
  implements RecognitionEngineCallback
{
  private static final boolean DBG = false;
  private static final String TAG = "ResponseProcessor";
  private final AudioCallback mAudioCallback;
  private final RecognitionEventListener mEventListener;
  private boolean mInvalid = false;
  private final SpeechLibLogger mLogger;
  private final S3ResponseProcessor mS3ResponseProcessor;
  private final SessionParams mSessionParams;
  private final ExtraPreconditions.ThreadCheck mThreadCheck = ExtraPreconditions.createSameThreadCheck();

  public ResponseProcessor(AudioCallback paramAudioCallback, RecognitionEventListener paramRecognitionEventListener, SessionParams paramSessionParams, SpeechLibLogger paramSpeechLibLogger)
  {
    this.mAudioCallback = paramAudioCallback;
    this.mEventListener = paramRecognitionEventListener;
    this.mS3ResponseProcessor = new S3ResponseProcessor(paramSpeechLibLogger);
    this.mSessionParams = paramSessionParams;
    this.mLogger = paramSpeechLibLogger;
  }

  private void handleS3Response(S3.S3Response paramS3Response)
  {
    if (paramS3Response.getStatus() == 1)
    {
      this.mLogger.logS3ConnectionDone();
      this.mAudioCallback.shutdownAudio();
    }
    while (true)
    {
      this.mS3ResponseProcessor.process(paramS3Response, this.mEventListener);
      return;
      if (paramS3Response.getStatus() == 2)
      {
        this.mLogger.logS3ConnectionError();
        this.mAudioCallback.shutdownAudio();
      }
      else if ((paramS3Response.getStatus() == 0) && (paramS3Response.hasRecognizerEventExtension()) && (paramS3Response.getRecognizerEventExtension().getRecognitionEvent().getEventType() == 1))
      {
        this.mAudioCallback.stopAudio();
      }
    }
  }

  public void invalidate()
  {
    this.mThreadCheck.check();
    this.mInvalid = true;
  }

  public void onEndOfSpeech()
  {
    this.mThreadCheck.check();
    if (this.mInvalid)
      return;
    if (this.mSessionParams.getMode() != SessionParams.Mode.DICTATION)
      this.mAudioCallback.stopAudio();
    this.mLogger.logEndOfSpeech();
    this.mEventListener.onEndOfSpeech();
  }

  public void onError(RecognizeException paramRecognizeException)
  {
    this.mThreadCheck.check();
    if (this.mInvalid)
      return;
    if ((paramRecognizeException instanceof NetworkRecognizeException))
      this.mLogger.logS3ConnectionError();
    this.mAudioCallback.shutdownAudio();
    this.mEventListener.onError(paramRecognizeException);
  }

  public void onMusicDetected()
  {
    this.mThreadCheck.check();
    if (this.mInvalid)
      return;
    this.mEventListener.onMusicDetected();
  }

  public void onNoSpeechDetected()
  {
    this.mThreadCheck.check();
    if (this.mInvalid)
      return;
    this.mLogger.logNoSpeechDetected();
    this.mEventListener.onNoSpeechDetected();
  }

  public void onRecognitionCancelled()
  {
    this.mThreadCheck.check();
    if (this.mInvalid)
      return;
    this.mEventListener.onRecognitionCancelled();
  }

  public void onResult(RecognitionResponse paramRecognitionResponse)
  {
    this.mThreadCheck.check();
    if (this.mInvalid)
      return;
    handleS3Response(paramRecognitionResponse.getS3Response());
  }

  public void onStartOfSpeech(long paramLong)
  {
    this.mThreadCheck.check();
    if (this.mInvalid)
      return;
    this.mAudioCallback.recordingStarted(paramLong);
    this.mEventListener.onBeginningOfSpeech();
  }

  public static abstract interface AudioCallback
  {
    public abstract void recordingStarted(long paramLong);

    public abstract void shutdownAudio();

    public abstract void stopAudio();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.ResponseProcessor
 * JD-Core Version:    0.6.2
 */