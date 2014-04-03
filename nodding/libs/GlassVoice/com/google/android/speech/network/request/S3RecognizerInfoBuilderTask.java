package com.google.android.speech.network.request;

import com.google.android.speech.SpeechSettings;
import com.google.common.annotations.VisibleForTesting;
import com.google.speech.common.Alternates.AlternateParams;
import com.google.speech.common.proto.RecognitionContextProto.RecognitionContext;
import com.google.speech.speech.s3.Recognizer.S3RecognizerInfo;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.Configuration;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.Dictation;

public class S3RecognizerInfoBuilderTask extends BaseRequestBuilderTask<Recognizer.S3RecognizerInfo>
{

  @VisibleForTesting
  static final int PROFANITY_FILTER_DISABLED = 0;

  @VisibleForTesting
  static final int PROFANITY_FILTER_ENABLED = 2;
  private final int mMaxNbest;
  private final boolean mNeedsAlternates;
  private final boolean mNeedsCombinedNbest;
  private final boolean mNeedsPartialResults;
  private final RecognitionContextProto.RecognitionContext mRecognitionContext;
  private final SpeechSettings mSpeechSettings;

  public S3RecognizerInfoBuilderTask(RecognitionContextProto.RecognitionContext paramRecognitionContext, SpeechSettings paramSpeechSettings, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, int paramInt)
  {
    super("S3RecognizerInfoBuilderTask");
    this.mRecognitionContext = paramRecognitionContext;
    this.mSpeechSettings = paramSpeechSettings;
    this.mNeedsPartialResults = paramBoolean1;
    this.mNeedsCombinedNbest = paramBoolean2;
    this.mNeedsAlternates = paramBoolean3;
    this.mMaxNbest = paramInt;
  }

  static Alternates.AlternateParams getAlternateParams(GstaticConfiguration.Configuration paramConfiguration)
  {
    return new Alternates.AlternateParams().setMaxSpanLength(paramConfiguration.getDictation().getMaxSpanLength()).setMaxTotalSpanLength(paramConfiguration.getDictation().getMaxTotalSpanLength()).setUnit(1);
  }

  protected Recognizer.S3RecognizerInfo build()
  {
    Recognizer.S3RecognizerInfo localS3RecognizerInfo = new Recognizer.S3RecognizerInfo();
    if (this.mRecognitionContext != null)
      localS3RecognizerInfo.setRecognitionContext(this.mRecognitionContext);
    localS3RecognizerInfo.setEnablePartialResults(this.mNeedsPartialResults);
    localS3RecognizerInfo.setEnableCombinedNbest(this.mNeedsCombinedNbest);
    if (this.mNeedsCombinedNbest)
      localS3RecognizerInfo.setMaxNbest(this.mMaxNbest);
    localS3RecognizerInfo.setEnableAlternates(this.mNeedsAlternates);
    if (this.mNeedsAlternates)
      localS3RecognizerInfo.setAlternateParams(getAlternateParams(this.mSpeechSettings.getConfiguration()));
    if (this.mSpeechSettings.isProfanityFilterEnabled())
      localS3RecognizerInfo.setProfanityFilter(2);
    while (true)
    {
      localS3RecognizerInfo.setEnablePersonalization(this.mSpeechSettings.isPersonalizationEnabled());
      return localS3RecognizerInfo;
      localS3RecognizerInfo.setProfanityFilter(0);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.request.S3RecognizerInfoBuilderTask
 * JD-Core Version:    0.6.2
 */