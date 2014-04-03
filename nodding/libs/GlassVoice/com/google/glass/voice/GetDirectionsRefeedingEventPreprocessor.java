package com.google.glass.voice;

import android.util.Log;
import com.google.glass.voice.network.EndpointerEventProcessor.EventPreprocessor;

class GetDirectionsRefeedingEventPreprocessor extends EndpointerEventProcessor.EventPreprocessor
{
  private static final long POST_GET_DIRECTIONS_END_SPEECH_FUZZ_FACTOR_MS = 1300L;
  private static final long POST_GET_DIRECTIONS_START_SPEECH_WAIT_MS = 5000L;
  private static final String TAG = GetDirectionsRefeedingEventPreprocessor.class.getSimpleName();
  private VoiceEngine voiceEngine;

  public GetDirectionsRefeedingEventPreprocessor(VoiceEngine paramVoiceEngine)
  {
    this.voiceEngine = paramVoiceEngine;
  }

  private boolean isDirections(HotwordResult paramHotwordResult)
  {
    return (paramHotwordResult != null) && (paramHotwordResult.getRecognizedCommand().equals(VoiceCommand.NAVIGATION));
  }

  private boolean isWithinEndSpeechFuzzFactor(long paramLong, HotwordResult paramHotwordResult)
  {
    try
    {
      Log.d(TAG, "Testing end of speech fuzz factor. End of speech event time is " + paramLong / 1000L + ", phrase duration was " + paramHotwordResult.getPhraseDurationMillis() + ", and fuzz factor is " + 1300L);
      long l1 = paramLong / 1000L;
      long l2 = paramHotwordResult.getPhraseDurationMillis();
      if (l1 < l2 + 1300L)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public Long getEndOfSpeechTriggerPoint(long paramLong)
  {
    HotwordResult localHotwordResult = this.voiceEngine.getLastHotwordResult();
    if ((isDirections(localHotwordResult)) && (isWithinEndSpeechFuzzFactor(paramLong, localHotwordResult)))
    {
      Log.d(TAG, "Got end of speech for directions within fuzz factor, delaying end of speech");
      return Long.valueOf(5000L);
    }
    return null;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.GetDirectionsRefeedingEventPreprocessor
 * JD-Core Version:    0.6.2
 */