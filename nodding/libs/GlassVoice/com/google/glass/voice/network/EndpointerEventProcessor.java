package com.google.glass.voice.network;

import android.content.Context;
import android.util.Log;
import com.google.android.searchcommon.util.StateMachine;
import com.google.android.searchcommon.util.StateMachine.Builder;
import com.google.android.speech.audio.EndpointerListener;
import com.google.common.base.Preconditions;
import com.google.glass.app.GlassApplication;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import com.google.speech.recognizer.api.RecognizerProtos.EndpointerEvent;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.EndpointerParams;
import java.util.Iterator;
import java.util.List;

public class EndpointerEventProcessor
{
  private static final boolean DEBUG = false;
  private static final long EXTRA_TIME_ALLOWED_FOR_NO_SPEECH_DETECTED_MS = 200L;
  private static final String TAG = EndpointerEventProcessor.class.getSimpleName();
  private long currentProgressMs;
  private long endOfSpeechTriggerMs;
  private final EndpointerListener endpointerListener;
  private GstaticConfiguration.EndpointerParams endpointerParams;
  private final List<EventPreprocessor> eventPreprocessors;
  private long extraTimeForNoSpeechDetectedMs;
  private final StateMachine<State> stateMachine = StateMachine.newBuilder(TAG, State.NO_SPEECH_DETECTED).addTransition(State.NO_SPEECH_DETECTED, State.SPEECH_DETECTED).addTransition(State.NO_SPEECH_DETECTED, State.END_OF_SPEECH).addTransition(State.SPEECH_DETECTED, State.DELAY_END_OF_SPEECH).addTransition(State.SPEECH_DETECTED, State.END_OF_SPEECH).addTransition(State.DELAY_END_OF_SPEECH, State.SPEECH_DETECTED).addTransition(State.DELAY_END_OF_SPEECH, State.END_OF_SPEECH).build();
  private boolean treatNoSpeechDetectedAsEndOfSpeech;
  private UserEventHelper userEventHelper;

  EndpointerEventProcessor(EndpointerListener paramEndpointerListener, GstaticConfiguration.EndpointerParams paramEndpointerParams, List<EventPreprocessor> paramList, Context paramContext)
  {
    this.eventPreprocessors = paramList;
    this.endpointerListener = ((EndpointerListener)Preconditions.checkNotNull(paramEndpointerListener));
    this.endpointerParams = paramEndpointerParams;
    this.userEventHelper = GlassApplication.from(paramContext).getUserEventHelper();
  }

  private boolean abortProcessing(RecognizerProtos.EndpointerEvent paramEndpointerEvent)
  {
    Iterator localIterator = this.eventPreprocessors.iterator();
    while (localIterator.hasNext())
      if (((EventPreprocessor)localIterator.next()).process(paramEndpointerEvent))
        return true;
    return false;
  }

  private boolean abortProgressUpdate(long paramLong)
  {
    Iterator localIterator = this.eventPreprocessors.iterator();
    while (localIterator.hasNext())
      if (((EventPreprocessor)localIterator.next()).updateProgress(paramLong))
        return true;
    return false;
  }

  private Long getPreprocessorEndOfSpeechDelay(long paramLong)
  {
    Iterator localIterator = this.eventPreprocessors.iterator();
    while (localIterator.hasNext())
    {
      Long localLong = ((EventPreprocessor)localIterator.next()).getEndOfSpeechTriggerPoint(paramLong);
      if (localLong != null)
        return localLong;
    }
    return null;
  }

  private boolean processEndOfAudioAsEndOfSpeech()
  {
    try
    {
      if (this.stateMachine.isIn(State.SPEECH_DETECTED))
      {
        this.stateMachine.moveTo(State.END_OF_SPEECH);
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  private boolean processEndOfAudioAsNoSpeechDetected()
  {
    try
    {
      if (this.stateMachine.isIn(State.NO_SPEECH_DETECTED))
      {
        this.stateMachine.moveTo(State.END_OF_SPEECH);
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  private boolean processEndOfSpeech(long paramLong)
  {
    boolean bool = false;
    while (true)
    {
      try
      {
        Long localLong = getPreprocessorEndOfSpeechDelay(paramLong);
        if (localLong != null)
        {
          Log.d(TAG, "Preprocessor requests delay of end of speech by " + localLong + " at " + paramLong);
          this.stateMachine.moveTo(State.DELAY_END_OF_SPEECH);
          setEndOfSpeechTriggerPoint(paramLong / 1000L + localLong.longValue());
          return bool;
        }
        if (this.endpointerParams.getExtraSilenceAfterEndOfSpeechMsec() > 0)
        {
          this.stateMachine.moveTo(State.DELAY_END_OF_SPEECH);
          setEndOfSpeechTriggerPoint(paramLong / 1000L + this.endpointerParams.getExtraSilenceAfterEndOfSpeechMsec());
          bool = false;
          continue;
        }
      }
      finally
      {
      }
      this.stateMachine.moveTo(State.END_OF_SPEECH);
      bool = true;
    }
  }

  private boolean processStartOfSpeech()
  {
    try
    {
      boolean bool2;
      if (this.stateMachine.isIn(State.NO_SPEECH_DETECTED))
      {
        this.stateMachine.moveTo(State.SPEECH_DETECTED);
        bool2 = true;
      }
      while (true)
      {
        return bool2;
        boolean bool1 = this.stateMachine.isIn(State.DELAY_END_OF_SPEECH);
        bool2 = false;
        if (bool1)
        {
          this.stateMachine.moveTo(State.SPEECH_DETECTED);
          bool2 = false;
        }
      }
    }
    finally
    {
    }
  }

  private void setEndOfSpeechTriggerPoint(long paramLong)
  {
    try
    {
      this.endOfSpeechTriggerMs = paramLong;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private boolean shouldTriggerEndOfSpeech()
  {
    try
    {
      if ((this.currentProgressMs > this.endOfSpeechTriggerMs) && (this.stateMachine.isIn(State.DELAY_END_OF_SPEECH)))
      {
        this.stateMachine.moveTo(State.END_OF_SPEECH);
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  private boolean shouldTriggerNoSpeechDetected()
  {
    try
    {
      if ((this.stateMachine.isIn(State.NO_SPEECH_DETECTED)) && (this.currentProgressMs - this.extraTimeForNoSpeechDetectedMs > this.endpointerParams.getNoSpeechDetectedTimeoutMsec()))
      {
        this.stateMachine.moveTo(State.END_OF_SPEECH);
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  void process(RecognizerProtos.EndpointerEvent paramEndpointerEvent)
  {
    if (abortProcessing(paramEndpointerEvent));
    do
    {
      int i;
      do
      {
        do
        {
          do
          {
            do
            {
              return;
              if ((paramEndpointerEvent == null) || (!paramEndpointerEvent.hasEventType()))
              {
                Log.w(TAG, "Received EP event without type.");
                return;
              }
            }
            while (this.stateMachine.isIn(State.END_OF_SPEECH));
            i = paramEndpointerEvent.getEventType();
            if (i != 0)
              break;
          }
          while (!processStartOfSpeech());
          this.endpointerListener.onStartOfSpeech(paramEndpointerEvent.getTimeUsec());
          return;
          if (i != 1)
            break;
        }
        while (!processEndOfSpeech(paramEndpointerEvent.getTimeUsec()));
        this.endpointerListener.onEndOfSpeech();
        return;
      }
      while (i != 2);
      if (processEndOfAudioAsEndOfSpeech())
        this.endpointerListener.onEndOfSpeech();
    }
    while (!processEndOfAudioAsNoSpeechDetected());
    this.endpointerListener.onNoSpeechDetected();
  }

  public void resetNoSpeechDetectedTimer()
  {
    this.treatNoSpeechDetectedAsEndOfSpeech = true;
    this.extraTimeForNoSpeechDetectedMs = (200L + this.extraTimeForNoSpeechDetectedMs);
  }

  void updateProgress(long paramLong)
  {
    while (true)
    {
      try
      {
        this.currentProgressMs = paramLong;
        boolean bool = abortProgressUpdate(paramLong);
        if (bool)
          return;
        if (shouldTriggerEndOfSpeech())
          this.endpointerListener.onEndOfSpeech();
        if (!shouldTriggerNoSpeechDetected())
          continue;
        if (this.treatNoSpeechDetectedAsEndOfSpeech)
        {
          Log.d(TAG, "Treating NoSpeechDetected as EndOfSpeech");
          this.endpointerListener.onEndOfSpeech();
          String str = UserEventHelper.createEventTuple("delta", Long.valueOf(this.currentProgressMs), new Object[0]);
          this.userEventHelper.log(UserEventAction.VOICE_INPUT_NO_SPEECH_DETECTED_TREATED_AS_END_OF_SPEECH, str);
          continue;
        }
      }
      finally
      {
      }
      this.endpointerListener.onNoSpeechDetected();
    }
  }

  public static abstract class EventPreprocessor
  {
    public Long getEndOfSpeechTriggerPoint(long paramLong)
    {
      return null;
    }

    public boolean process(RecognizerProtos.EndpointerEvent paramEndpointerEvent)
    {
      return false;
    }

    public boolean updateProgress(long paramLong)
    {
      return false;
    }
  }

  private static enum State
  {
    static
    {
      DELAY_END_OF_SPEECH = new State("DELAY_END_OF_SPEECH", 2);
      END_OF_SPEECH = new State("END_OF_SPEECH", 3);
      State[] arrayOfState = new State[4];
      arrayOfState[0] = NO_SPEECH_DETECTED;
      arrayOfState[1] = SPEECH_DETECTED;
      arrayOfState[2] = DELAY_END_OF_SPEECH;
      arrayOfState[3] = END_OF_SPEECH;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.EndpointerEventProcessor
 * JD-Core Version:    0.6.2
 */