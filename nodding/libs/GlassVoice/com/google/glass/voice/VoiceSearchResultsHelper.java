package com.google.glass.voice;

import android.content.Intent;
import com.google.common.annotations.VisibleForTesting;

public final class VoiceSearchResultsHelper
  implements VoiceInputActivityHelper
{

  @VisibleForTesting
  static final String ACTION_VOICE_SEARCH_RESULT = "com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT";

  @VisibleForTesting
  static final String ACTION_VOICE_SEARCH_RESULT_CHILD = "com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT_CHILD";
  public static final String EXTRA_CARD_RESULT = "cardResult";
  public static final String EXTRA_END_OF_SPEECH_TIME = "endofSpeech";
  public static final String EXTRA_FOLLOW_ON_CARDS = "followOnCards";
  public static final String EXTRA_RECOGNITION_RESULT = "recognitionResult";
  public static final String EXTRA_START_TIME = "startTime";
  public static final String EXTRA_TIMELINE_ITEM_ID = "timelineItemId";
  public static final long START_TIME_NOT_SET = -1L;

  public static Intent newResultsIntent(String paramString, boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = "com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT"; ; str = "com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT_CHILD")
    {
      Intent localIntent = new Intent(str);
      localIntent.addFlags(268435456);
      if (paramBoolean)
      {
        localIntent.addFlags(524288);
        localIntent.addFlags(2097152);
      }
      localIntent.putExtra("cardResult", paramString);
      return localIntent;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.VoiceSearchResultsHelper
 * JD-Core Version:    0.6.2
 */