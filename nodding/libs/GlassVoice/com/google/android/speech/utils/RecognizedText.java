package com.google.android.speech.utils;

import android.util.Pair;
import com.google.android.speech.alternates.CorrectableString;
import com.google.speech.common.Alternates.RecognitionClientAlternates;
import com.google.speech.recognizer.api.RecognizerProtos.Hypothesis;
import com.google.speech.recognizer.api.RecognizerProtos.PartialPart;
import com.google.speech.recognizer.api.RecognizerProtos.PartialResult;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionEvent;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionResult;
import java.util.List;
import javax.annotation.Nullable;

public class RecognizedText
{
  private static final boolean DBG = false;
  private static final double HIGH_CONFIDENCE_PARTIAL_THRESHOLD = 0.9D;
  private static final String TAG = "VS.RecognizedText";

  @Nullable
  private CorrectableString mCombinedResult;
  private final StringBuilder mStable = new StringBuilder();

  private static CorrectableString extractCombinedCorrectable(RecognizerProtos.RecognitionEvent paramRecognitionEvent)
  {
    if (paramRecognitionEvent.hasCombinedResult())
    {
      RecognizerProtos.RecognitionResult localRecognitionResult = paramRecognitionEvent.getCombinedResult();
      if (localRecognitionResult.getHypothesisCount() > 0)
      {
        localCorrectableString = extractCorrectable(localRecognitionResult.getHypothesis(0));
        for (int i = 1; i < localRecognitionResult.getHypothesisCount(); i++)
          localCorrectableString.addFullLengthSpan(extractCorrectable(localRecognitionResult.getHypothesis(i)));
      }
    }
    CorrectableString localCorrectableString = new CorrectableString("");
    return localCorrectableString;
  }

  private static CorrectableString extractCorrectable(RecognizerProtos.Hypothesis paramHypothesis)
  {
    String str;
    if (paramHypothesis.hasText())
    {
      str = paramHypothesis.getText();
      if (!paramHypothesis.hasAlternates())
        break label43;
    }
    label43: for (List localList = paramHypothesis.getAlternates().getSpanList(); ; localList = null)
    {
      return new CorrectableString(str, localList);
      str = "";
      break;
    }
  }

  private void updateStableResults(RecognizerProtos.RecognitionEvent paramRecognitionEvent)
  {
    if (paramRecognitionEvent.hasResult())
    {
      RecognizerProtos.RecognitionResult localRecognitionResult = paramRecognitionEvent.getResult();
      if (localRecognitionResult.getHypothesisCount() > 0)
      {
        RecognizerProtos.Hypothesis localHypothesis = localRecognitionResult.getHypothesis(0);
        if (localHypothesis.hasText())
          this.mStable.append(localHypothesis.getText());
      }
    }
  }

  public String getStableForErrorReporting()
  {
    return this.mStable.toString();
  }

  public boolean hasCompletedRecognition()
  {
    return this.mCombinedResult != null;
  }

  public CorrectableString updateFinal(RecognizerProtos.RecognitionEvent paramRecognitionEvent)
  {
    this.mCombinedResult = extractCombinedCorrectable(paramRecognitionEvent);
    this.mStable.delete(0, this.mStable.length());
    this.mStable.append(this.mCombinedResult);
    return this.mCombinedResult;
  }

  public Pair<String, String> updateInProgress(RecognizerProtos.RecognitionEvent paramRecognitionEvent)
  {
    updateStableResults(paramRecognitionEvent);
    boolean bool = paramRecognitionEvent.hasPartialResult();
    StringBuilder localStringBuilder1 = null;
    StringBuilder localStringBuilder2 = null;
    if (bool)
    {
      int i = 0;
      RecognizerProtos.PartialResult localPartialResult = paramRecognitionEvent.getPartialResult();
      int j = localPartialResult.getPartCount();
      int k = 0;
      if (k < j)
      {
        RecognizerProtos.PartialPart localPartialPart = localPartialResult.getPart(k);
        if (localPartialPart.hasText())
        {
          if ((i != 0) || (!localPartialPart.hasStability()) || (localPartialPart.getStability() < 0.9D))
            break label119;
          if (localStringBuilder1 == null)
            localStringBuilder1 = new StringBuilder(this.mStable);
          localStringBuilder1.append(localPartialPart.getText());
        }
        while (true)
        {
          k++;
          break;
          label119: if (localStringBuilder2 == null)
            localStringBuilder2 = new StringBuilder();
          localStringBuilder2.append(localPartialPart.getText());
          i = 1;
        }
      }
    }
    String str1;
    if (localStringBuilder1 == null)
    {
      str1 = this.mStable.toString();
      if (localStringBuilder2 != null)
        break label189;
    }
    label189: for (String str2 = ""; ; str2 = localStringBuilder2.toString())
    {
      return Pair.create(str1, str2);
      str1 = localStringBuilder1.toString();
      break;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.utils.RecognizedText
 * JD-Core Version:    0.6.2
 */