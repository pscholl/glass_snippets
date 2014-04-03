package com.google.android.speech.network.request;

import com.google.android.speech.SpeechSettings;
import com.google.speech.recognizer.api.RecognizerSessionParamsProto.RecognizerSessionParams;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.Configuration;

public class RecognizerSessionParamsBuilderTask extends BaseRequestBuilderTask<RecognizerSessionParamsProto.RecognizerSessionParams>
{
  private final boolean mEnableAlternates;
  private final boolean mEnablePartials;
  private final SpeechSettings mSpeechSettings;

  public RecognizerSessionParamsBuilderTask(SpeechSettings paramSpeechSettings, boolean paramBoolean1, boolean paramBoolean2)
  {
    super("RecognizerSessionParamsBuilderTask");
    this.mSpeechSettings = paramSpeechSettings;
    this.mEnablePartials = paramBoolean1;
    this.mEnableAlternates = paramBoolean2;
  }

  protected RecognizerSessionParamsProto.RecognizerSessionParams build()
  {
    RecognizerSessionParamsProto.RecognizerSessionParams localRecognizerSessionParams = new RecognizerSessionParamsProto.RecognizerSessionParams();
    localRecognizerSessionParams.setType(0);
    localRecognizerSessionParams.setMaskOffensiveWords(this.mSpeechSettings.isProfanityFilterEnabled());
    if (this.mEnablePartials)
      localRecognizerSessionParams.setEnablePartialResults(true);
    if (this.mEnableAlternates)
    {
      GstaticConfiguration.Configuration localConfiguration = this.mSpeechSettings.getConfiguration();
      localRecognizerSessionParams.setEnableAlternates(true);
      localRecognizerSessionParams.setAlternateParams(S3RecognizerInfoBuilderTask.getAlternateParams(localConfiguration));
    }
    return localRecognizerSessionParams;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.request.RecognizerSessionParamsBuilderTask
 * JD-Core Version:    0.6.2
 */