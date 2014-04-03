package com.google.android.speech;

import android.util.Log;
import com.google.android.searchcommon.util.StateMachine;
import com.google.android.searchcommon.util.StateMachine.Builder;
import com.google.android.searchcommon.util.ThreadChanger;
import com.google.android.speech.audio.AudioController;
import com.google.android.speech.audio.AudioInputStreamFactory;
import com.google.android.speech.audio.AudioRecorder;
import com.google.android.speech.dispatcher.RecognitionDispatcher;
import com.google.android.speech.exception.AudioRecognizeException;
import com.google.android.speech.listeners.RecognitionEventListener;
import com.google.android.speech.logger.SpeechLibLogger;
import com.google.android.speech.params.AudioInputParams;
import com.google.android.speech.params.RecognitionEngineParams;
import com.google.android.speech.params.RecognitionEngineParams.HybridParams;
import com.google.android.speech.params.SessionParams;
import com.google.android.speech.params.SessionParams.Mode;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.util.concurrent.SettableFuture;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;

@NotThreadSafe
public class GrecoRecognizer
  implements Recognizer
{
  private static final boolean DBG = false;
  private static final String TAG = "GrecoRecognizer";
  private ResponseProcessor.AudioCallback mAudioCallback = new ResponseProcessor.AudioCallback()
  {
    public void recordingStarted(long paramAnonymousLong)
    {
      if (GrecoRecognizer.this.mAudioRecorder.isRecording())
        GrecoRecognizer.this.mAudioRecorder.setRecordingStartTime(paramAnonymousLong);
    }

    public void shutdownAudio()
    {
      if (GrecoRecognizer.this.mListeningState.notIn(GrecoRecognizer.State.IDLE))
        GrecoRecognizer.this.internalShutdownAudio();
    }

    public void stopAudio()
    {
      if (GrecoRecognizer.this.mListeningState.isIn(GrecoRecognizer.State.LISTENING))
        GrecoRecognizer.this.internalStopAudio();
    }
  };
  private final AudioController mAudioController;
  private final AudioRecorder mAudioRecorder;
  private final RecognitionEngineParams mEngineParams;
  private final RecognitionEngineStore mEngineStore;
  private final StateMachine<State> mListeningState = StateMachine.newBuilder("GrecoRecognizer", State.IDLE).addTransition(State.IDLE, State.LISTENING).addTransition(State.LISTENING, State.IDLE).addTransition(State.LISTENING, State.LISTENING).addTransition(State.LISTENING, State.STOPPED).addTransition(State.STOPPED, State.IDLE).setSingleThreadOnly(true).setStrictMode(true).build();
  private final RecognitionDispatcher mRecognitionDispatcher;
  private ResponseProcessor mResponseProcessor;
  private final SpeechLibFactory mSpeechLibFactory;
  private final SpeechLibLogger mSpeechLibLogger;

  @VisibleForTesting
  public GrecoRecognizer(AudioController paramAudioController, AudioRecorder paramAudioRecorder, RecognitionDispatcher paramRecognitionDispatcher, RecognitionEngineStore paramRecognitionEngineStore, RecognitionEngineParams paramRecognitionEngineParams, SpeechLibFactory paramSpeechLibFactory)
  {
    this.mAudioController = paramAudioController;
    this.mAudioRecorder = paramAudioRecorder;
    this.mRecognitionDispatcher = paramRecognitionDispatcher;
    this.mEngineStore = paramRecognitionEngineStore;
    this.mEngineParams = paramRecognitionEngineParams;
    this.mSpeechLibFactory = paramSpeechLibFactory;
    this.mSpeechLibLogger = paramSpeechLibFactory.buildSpeechLibLogger();
  }

  public static Recognizer create(ExecutorService paramExecutorService, RecognitionEngineParams paramRecognitionEngineParams, AudioController paramAudioController, SpeechLibFactory paramSpeechLibFactory)
  {
    return (Recognizer)threadChange(paramExecutorService, new GrecoRecognizer(paramAudioController, new AudioRecorder(), new RecognitionDispatcher(paramExecutorService, paramRecognitionEngineParams.getHybridParams().getScheduledExecutorService(), paramSpeechLibFactory), paramSpeechLibFactory.buildRecognitionEngineStore(paramRecognitionEngineParams), paramRecognitionEngineParams, paramSpeechLibFactory));
  }

  private void internalShutdownAudio()
  {
    this.mListeningState.moveTo(State.IDLE);
    this.mResponseProcessor.invalidate();
    this.mResponseProcessor = null;
    this.mAudioController.shutdown();
    this.mAudioRecorder.waitForRecording();
    this.mRecognitionDispatcher.cancel();
  }

  private void internalStopAudio()
  {
    if (this.mListeningState.isIn(State.LISTENING))
    {
      this.mListeningState.moveTo(State.STOPPED);
      this.mAudioController.stopListening();
      this.mAudioRecorder.waitForRecording();
    }
  }

  private void recordStartRecognitionEvent(SessionParams paramSessionParams)
  {
    if (paramSessionParams.getMode() != SessionParams.Mode.HOTWORD)
      this.mSpeechLibLogger.recordSpeechEvent(3, paramSessionParams.getRequestId());
    switch (3.$SwitchMap$com$google$android$speech$params$SessionParams$Mode[paramSessionParams.getMode().ordinal()])
    {
    default:
      this.mSpeechLibLogger.recordSpeechEvent(8);
      return;
    case 1:
      this.mSpeechLibLogger.recordSpeechEvent(10);
      return;
    case 2:
      this.mSpeechLibLogger.recordSpeechEvent(12);
      return;
    case 3:
    }
    this.mSpeechLibLogger.recordSpeechEvent(11);
  }

  private static final <T> T threadChange(Executor paramExecutor, Class<T> paramClass, T paramT)
  {
    return ThreadChanger.createNonBlockingThreadChangeProxy(paramExecutor, paramClass, paramT);
  }

  private static final <T> T threadChange(Executor paramExecutor, T paramT)
  {
    return ThreadChanger.createNonBlockingThreadChangeProxy(paramExecutor, paramT);
  }

  public void cancel()
  {
    if (this.mListeningState.notIn(State.IDLE))
    {
      this.mResponseProcessor.onRecognitionCancelled();
      internalShutdownAudio();
    }
  }

  @VisibleForTesting
  ResponseProcessor.AudioCallback getAudioCallback()
  {
    return this.mAudioCallback;
  }

  @VisibleForTesting
  void setResponseProcessor(ResponseProcessor paramResponseProcessor)
  {
    this.mResponseProcessor = paramResponseProcessor;
  }

  public void startListening(SessionParams paramSessionParams, RecognitionEventListener paramRecognitionEventListener, Executor paramExecutor, @Nullable SettableFuture<byte[]> paramSettableFuture)
  {
    AudioInputParams localAudioInputParams = paramSessionParams.getAudioInputParams();
    boolean bool = this.mListeningState.notIn(State.IDLE);
    int i = 0;
    if (bool)
    {
      if (!localAudioInputParams.hasStreamRewindTime())
        break label223;
      i = 1;
      this.mRecognitionDispatcher.cancel();
      this.mResponseProcessor.invalidate();
      this.mResponseProcessor = null;
    }
    while (true)
    {
      RecognitionEventListener localRecognitionEventListener = (RecognitionEventListener)threadChange(paramExecutor, RecognitionEventListener.class, paramRecognitionEventListener);
      recordStartRecognitionEvent(paramSessionParams);
      AudioInputStreamFactory localAudioInputStreamFactory;
      if (i != 0)
      {
        localAudioInputStreamFactory = this.mAudioController.rewindInputStreamFactory(localAudioInputParams.getStreamRewindTime());
        if (paramSettableFuture == null);
      }
      try
      {
        this.mAudioRecorder.startRecording(localAudioInputStreamFactory.createInputStream(), 320, paramSettableFuture);
        this.mListeningState.moveTo(State.LISTENING);
        this.mAudioController.setHeadsetEnabled(localAudioInputParams.isHeadsetEnabled());
        this.mAudioController.startListening(localRecognitionEventListener);
        EngineSelector localEngineSelector = this.mSpeechLibFactory.buildEngineSelector(this.mEngineParams, paramSessionParams);
        this.mResponseProcessor = new ResponseProcessor(this.mAudioCallback, localRecognitionEventListener, paramSessionParams, this.mSpeechLibFactory.buildSpeechLibLogger());
        this.mRecognitionDispatcher.startRecognition(this.mEngineStore.getEngines(localEngineSelector.getEngineList()), localAudioInputStreamFactory, paramSessionParams, localEngineSelector, this.mResponseProcessor);
        return;
        label223: Log.w("GrecoRecognizer", "Multiple recognitions in progress, the first will be cancelled.");
        internalShutdownAudio();
        this.mListeningState.checkIn(State.IDLE);
        i = 0;
        continue;
        localAudioInputStreamFactory = this.mAudioController.createInputStreamFactory(localAudioInputParams);
      }
      catch (IOException localIOException)
      {
        localRecognitionEventListener.onError(new AudioRecognizeException("Unable to start the audio recording", localIOException));
      }
    }
  }

  public void startRecordedAudioRecognition(SessionParams paramSessionParams, final byte[] paramArrayOfByte, RecognitionEventListener paramRecognitionEventListener, Executor paramExecutor)
  {
    if (this.mListeningState.notIn(State.IDLE))
    {
      Log.w("GrecoRecognizer", "Multiple recognitions in progress, the first will be cancelled.");
      internalShutdownAudio();
    }
    RecognitionEventListener localRecognitionEventListener = (RecognitionEventListener)threadChange(paramExecutor, RecognitionEventListener.class, paramRecognitionEventListener);
    this.mListeningState.checkIn(State.IDLE);
    recordStartRecognitionEvent(paramSessionParams);
    AudioInputStreamFactory local2 = new AudioInputStreamFactory()
    {
      public InputStream createInputStream()
      {
        return new ByteArrayInputStream(paramArrayOfByte);
      }
    };
    this.mListeningState.moveTo(State.LISTENING);
    EngineSelector localEngineSelector = this.mSpeechLibFactory.buildEngineSelector(this.mEngineParams, paramSessionParams);
    this.mResponseProcessor = new ResponseProcessor(this.mAudioCallback, localRecognitionEventListener, paramSessionParams, this.mSpeechLibFactory.buildSpeechLibLogger());
    this.mRecognitionDispatcher.startRecognition(this.mEngineStore.getEngines(localEngineSelector.getEngineList()), local2, paramSessionParams, localEngineSelector, this.mResponseProcessor);
  }

  public void stopListening()
  {
    if (this.mListeningState.isIn(State.LISTENING))
      internalStopAudio();
  }

  private static enum State
  {
    static
    {
      State[] arrayOfState = new State[3];
      arrayOfState[0] = IDLE;
      arrayOfState[1] = LISTENING;
      arrayOfState[2] = STOPPED;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.GrecoRecognizer
 * JD-Core Version:    0.6.2
 */