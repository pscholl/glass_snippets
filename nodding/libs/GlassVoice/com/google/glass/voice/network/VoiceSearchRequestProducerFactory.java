package com.google.glass.voice.network;

import com.google.android.speech.logger.SpeechLibLogger;
import com.google.android.speech.network.producers.AmrStreamProducer;
import com.google.android.speech.network.producers.Producers.CompositeProducer;
import com.google.android.speech.network.producers.RequestProducerFactory;
import com.google.android.speech.network.producers.S3RequestProducer;
import com.google.android.speech.network.producers.TimeoutEnforcer;
import com.google.android.speech.network.request.MobileUserInfoBuilderTask;
import com.google.android.speech.network.request.S3ClientInfoBuilderTask;
import com.google.android.speech.network.request.S3RecognizerInfoBuilderTask;
import com.google.android.speech.network.request.S3UserInfoBuilderTask;
import com.google.android.speech.params.AudioInputParams;
import com.google.android.speech.params.NetworkRequestProducerParams;
import com.google.android.speech.params.SessionParams;
import com.google.android.speech.params.SessionParams.Mode;
import com.google.android.voicesearch.speechservice.s3.PinholeParamsBuilder;
import com.google.audio.ears.proto.EarsService.EarsLookupRequest;
import com.google.audio.ears.proto.EarsService.EarsStreamRequest;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.voice.VorbisStreamProducer;
import com.google.speech.s3.Audio.S3AudioInfo;
import com.google.speech.s3.MobileUser.MobileUserInfo;
import com.google.speech.s3.PinholeStream.PinholeParams;
import com.google.speech.s3.S3.S3ClientInfo;
import com.google.speech.s3.S3.S3UserInfo;
import com.google.speech.speech.s3.Recognizer.S3RecognizerInfo;
import com.google.speech.speech.s3.SoundSearch.SoundSearchInfo;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

public class VoiceSearchRequestProducerFactory
  implements RequestProducerFactory
{
  public static final String SERVICE_RECOGNIZER = "recognizer";
  public static final String SERVICE_SOUND_SEARCH = "sound-search";
  public static final String SERVICE_VOICE_ACTIONS_GWS = "glass-search-web";
  private static final int SOUND_SEARCH_BYTES_PER_SAMPLE = 2;
  private static final int SOUND_SEARCH_INPUT_READ_SIZE = 2048;
  private static final int SOUND_SEARCH_MAX_CAPTURE_SECONDS = 15;
  private static final int SOUND_SEARCH_NUM_CHANNELS = 1;
  private static final int SOUND_SEARCH_SAMPLE_RATE_HZ = 16000;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final ExecutorService executor;
  private Future<MobileUser.MobileUserInfo> mobileUserInfoFuture;
  private final NetworkRequestProducerParams nrpp;
  private Future<PinholeStream.PinholeParams> pinholeParamsFuture;
  private Supplier<String> requestIdSupplier;
  private Audio.S3AudioInfo s3AudioInfo;
  private Future<S3.S3ClientInfo> s3ClientInfoFuture;
  private Recognizer.S3RecognizerInfo s3RecognizerInfo;
  private Future<S3.S3UserInfo> s3UserInfoFuture;
  private SessionParams sessionParams;
  private SoundSearch.SoundSearchInfo soundSearchInfo;
  private final SpeechLibLogger speechLibLogger;
  private final TimeoutEnforcer timeoutEnforcer;

  public VoiceSearchRequestProducerFactory(ExecutorService paramExecutorService, NetworkRequestProducerParams paramNetworkRequestProducerParams, SpeechLibLogger paramSpeechLibLogger)
  {
    this.executor = paramExecutorService;
    this.nrpp = paramNetworkRequestProducerParams;
    this.speechLibLogger = paramSpeechLibLogger;
    this.timeoutEnforcer = new TimeoutEnforcer(1000L);
  }

  private Future<MobileUser.MobileUserInfo> createMobileUserInfoFuture()
  {
    return this.executor.submit(new MobileUserInfoBuilderTask(this.nrpp.getNetworkInformation()));
  }

  private Future<PinholeStream.PinholeParams> createPinholeParamsFuture()
  {
    if (this.sessionParams.getMode() == SessionParams.Mode.VOICE_ACTIONS)
    {
      Callable localCallable = this.nrpp.getPinholeParamsBuilder().getPinholeParamsCallable(this.requestIdSupplier);
      if (localCallable != null)
        return this.executor.submit(localCallable);
    }
    return null;
  }

  private Audio.S3AudioInfo createS3AudioInfo()
  {
    AudioInputParams localAudioInputParams = this.sessionParams.getAudioInputParams();
    return new Audio.S3AudioInfo().setEncoding(localAudioInputParams.getEncoding()).setSampleRateHz(localAudioInputParams.getSamplingRate());
  }

  private Future<S3.S3ClientInfo> createS3ClientInfoFuture()
  {
    return this.executor.submit(new S3ClientInfoBuilderTask(this.nrpp.getSpeechSettings(), this.sessionParams.getApplicationId(), this.nrpp.getDeviceParams(), this.sessionParams.getTriggerApplication(), this.nrpp.getWindowManager()));
  }

  private Recognizer.S3RecognizerInfo createS3RecognizerInfo()
  {
    return (Recognizer.S3RecognizerInfo)new S3RecognizerInfoBuilderTask(this.sessionParams.getRecognitionContext(), this.nrpp.getSpeechSettings(), this.sessionParams.isPartialResultsEnabled(), this.sessionParams.isCombinedNbestEnabled(), this.sessionParams.isSuggestionsEnabled(), this.sessionParams.getMaxNbest()).call();
  }

  private Future<S3.S3UserInfo> createS3UserInfoFuture()
  {
    return this.executor.submit(S3UserInfoBuilderTask.getBuilder(this.nrpp.getAuthTokenHelper(), this.nrpp.getSpeechSettings(), this.nrpp.getLocationHelper(), this.sessionParams.getSpokenBcp47Locale(), this.sessionParams.getLocationOverride()));
  }

  private SoundSearch.SoundSearchInfo createSoundSearchInfo()
  {
    EarsService.EarsLookupRequest localEarsLookupRequest = new EarsService.EarsLookupRequest();
    localEarsLookupRequest.setClientCountryCode("US");
    localEarsLookupRequest.addDesiredResultType(0);
    if (Labs.isEnabled(Labs.Feature.SSTELE))
      localEarsLookupRequest.addDesiredResultType(1);
    EarsService.EarsStreamRequest localEarsStreamRequest = new EarsService.EarsStreamRequest();
    localEarsStreamRequest.setAudioEncoding(1);
    localEarsStreamRequest.setAudioContainer(1);
    SoundSearch.SoundSearchInfo localSoundSearchInfo = new SoundSearch.SoundSearchInfo();
    localSoundSearchInfo.setLookupRequest(localEarsLookupRequest);
    localSoundSearchInfo.setStreamRequest(localEarsStreamRequest);
    localSoundSearchInfo.setTtsOutputEnabled(true);
    return localSoundSearchInfo;
  }

  public void init(SessionParams paramSessionParams)
  {
    this.sessionParams = paramSessionParams;
    this.requestIdSupplier = paramSessionParams.getRequestIdSupplier();
    this.pinholeParamsFuture = createPinholeParamsFuture();
    this.mobileUserInfoFuture = createMobileUserInfoFuture();
    this.s3AudioInfo = createS3AudioInfo();
    this.s3ClientInfoFuture = createS3ClientInfoFuture();
    this.s3UserInfoFuture = createS3UserInfoFuture();
    this.s3RecognizerInfo = createS3RecognizerInfo();
    this.soundSearchInfo = createSoundSearchInfo();
  }

  public S3RequestProducer newRequestProducer(InputStream paramInputStream)
  {
    int i = 1;
    Preconditions.checkNotNull(this.sessionParams);
    if (this.sessionParams.getMode() == SessionParams.Mode.SOUND_SEARCH)
      return new Producers.CompositeProducer(new SoundSearchHeaderProducer(this.mobileUserInfoFuture, this.s3ClientInfoFuture, this.s3UserInfoFuture, this.soundSearchInfo, this.s3AudioInfo, this.requestIdSupplier, "sound-search"), new VorbisStreamProducer(paramInputStream, 16000, i, 2048, 15, 2));
    String str = "glass-search-web";
    if (this.sessionParams.getMode() == SessionParams.Mode.SERVICE_API)
      str = "recognizer";
    Future localFuture1 = this.pinholeParamsFuture;
    Future localFuture2 = this.mobileUserInfoFuture;
    Future localFuture3 = this.s3ClientInfoFuture;
    Future localFuture4 = this.s3UserInfoFuture;
    Audio.S3AudioInfo localS3AudioInfo = this.s3AudioInfo;
    Recognizer.S3RecognizerInfo localS3RecognizerInfo = this.s3RecognizerInfo;
    Supplier localSupplier = this.requestIdSupplier;
    SpeechLibLogger localSpeechLibLogger = this.speechLibLogger;
    if (this.sessionParams.getMode() == SessionParams.Mode.VOICE_ACTIONS);
    while (true)
    {
      VoiceSearchHeaderProducer localVoiceSearchHeaderProducer = new VoiceSearchHeaderProducer(localFuture1, localFuture2, localFuture3, localFuture4, localS3AudioInfo, localS3RecognizerInfo, localSupplier, str, localSpeechLibLogger, i);
      return new Producers.CompositeProducer(localVoiceSearchHeaderProducer, new AmrStreamProducer(paramInputStream, 384));
      int j = 0;
    }
  }

  public void refresh()
  {
    if (this.sessionParams == null)
    {
      logger.w("Trying to refresh before init.", new Object[0]);
      return;
    }
    try
    {
      localS3UserInfo = (S3.S3UserInfo)this.timeoutEnforcer.waitForFuture(this.s3UserInfoFuture);
      if (localS3UserInfo == null)
      {
        this.s3UserInfoFuture = createS3UserInfoFuture();
        return;
      }
    }
    catch (IOException localIOException)
    {
      S3.S3UserInfo localS3UserInfo;
      while (true)
      {
        logger.w("Could not get S3UserInfo for refresh.", new Object[0]);
        localS3UserInfo = null;
      }
      this.s3UserInfoFuture = this.executor.submit(S3UserInfoBuilderTask.getAuthTokenRefreshingBuilder(this.nrpp.getAuthTokenHelper(), localS3UserInfo));
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.VoiceSearchRequestProducerFactory
 * JD-Core Version:    0.6.2
 */