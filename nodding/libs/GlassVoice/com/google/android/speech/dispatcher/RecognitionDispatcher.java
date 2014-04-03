package com.google.android.speech.dispatcher;

import android.util.Log;
import android.util.Pair;
import com.google.android.searchcommon.util.StateMachine;
import com.google.android.searchcommon.util.StateMachine.Builder;
import com.google.android.searchcommon.util.ThreadChanger;
import com.google.android.speech.EngineSelector;
import com.google.android.speech.SpeechLibFactory;
import com.google.android.speech.audio.AudioInputStreamFactory;
import com.google.android.speech.callback.RecognitionEngineCallback;
import com.google.android.speech.engine.RecognitionEngine;
import com.google.android.speech.params.SessionParams;
import com.google.common.annotations.VisibleForTesting;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.Nullable;

public class RecognitionDispatcher
{
  private static final boolean DBG = false;
  private static final String TAG = "RecognitionDispatcher";
  private final ExecutorService mExecutor;
  private Collection<Pair<Integer, RecognitionEngine>> mRecognitionEngines;
  private ResultsMerger mResultsMerger;
  private final SpeechLibFactory mSpeechLibFactory;
  private final StateMachine<State> mState = StateMachine.newBuilder("RecognitionDispatcher", State.IDLE).addTransition(State.IDLE, State.RUNNING).addTransition(State.RUNNING, State.IDLE).setSingleThreadOnly(true).setStrictMode(true).build();
  private final ScheduledExecutorService mTimeoutExecutor;

  public RecognitionDispatcher(ExecutorService paramExecutorService, ScheduledExecutorService paramScheduledExecutorService, SpeechLibFactory paramSpeechLibFactory)
  {
    this.mExecutor = paramExecutorService;
    this.mTimeoutExecutor = paramScheduledExecutorService;
    this.mSpeechLibFactory = paramSpeechLibFactory;
  }

  private void stop()
  {
    this.mState.checkIn(State.RUNNING);
    this.mState.moveTo(State.IDLE);
    this.mResultsMerger.invalidate();
    this.mResultsMerger = null;
    Iterator localIterator = this.mRecognitionEngines.iterator();
    while (localIterator.hasNext())
      ((RecognitionEngine)((Pair)localIterator.next()).second).close();
    this.mRecognitionEngines = null;
  }

  private static final <T> T threadChange(Executor paramExecutor, T paramT)
  {
    return ThreadChanger.createNonBlockingThreadChangeProxy(paramExecutor, paramT);
  }

  public void cancel()
  {
    if (this.mState.isIn(State.RUNNING))
      stop();
  }

  @Nullable
  @VisibleForTesting
  ResultsMerger getResultsMerger()
  {
    return this.mResultsMerger;
  }

  @VisibleForTesting
  boolean isRunning()
  {
    return this.mState.isIn(State.RUNNING);
  }

  public void startRecognition(Collection<Pair<Integer, RecognitionEngine>> paramCollection, AudioInputStreamFactory paramAudioInputStreamFactory, SessionParams paramSessionParams, EngineSelector paramEngineSelector, RecognitionEngineCallback paramRecognitionEngineCallback)
  {
    if (this.mState.isIn(State.RUNNING))
    {
      Log.w("RecognitionDispatcher", "Multiple recognitions in progress, the first will be cancelled.");
      stop();
    }
    this.mState.moveTo(State.RUNNING);
    this.mRecognitionEngines = paramCollection;
    this.mResultsMerger = this.mSpeechLibFactory.buildResultsMerger(paramSessionParams, this, paramEngineSelector, paramRecognitionEngineCallback, this.mExecutor, this.mTimeoutExecutor);
    RecognitionEngineCallback localRecognitionEngineCallback = (RecognitionEngineCallback)threadChange(this.mExecutor, this.mResultsMerger);
    Iterator localIterator = this.mRecognitionEngines.iterator();
    while (localIterator.hasNext())
      ((RecognitionEngine)((Pair)localIterator.next()).second).startRecognition(paramAudioInputStreamFactory, localRecognitionEngineCallback, paramSessionParams, localRecognitionEngineCallback);
  }

  public void stopEngine(int paramInt)
  {
    if (this.mState.isIn(State.RUNNING))
    {
      int i = 0;
      Iterator localIterator = this.mRecognitionEngines.iterator();
      while (localIterator.hasNext())
      {
        Pair localPair = (Pair)localIterator.next();
        if (paramInt == ((Integer)localPair.first).intValue())
        {
          ((RecognitionEngine)localPair.second).close();
          localIterator.remove();
          i = 1;
        }
      }
      if (i == 0)
        Log.w("RecognitionDispatcher", "Could not stop engine " + paramInt);
      if (this.mRecognitionEngines.isEmpty())
        stop();
    }
  }

  public static abstract interface ResultsMerger extends RecognitionEngineCallback
  {
    public abstract void invalidate();
  }

  private static enum State
  {
    static
    {
      State[] arrayOfState = new State[2];
      arrayOfState[0] = IDLE;
      arrayOfState[1] = RUNNING;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.dispatcher.RecognitionDispatcher
 * JD-Core Version:    0.6.2
 */