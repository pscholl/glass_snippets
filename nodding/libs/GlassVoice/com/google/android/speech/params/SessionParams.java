package com.google.android.speech.params;

import android.location.Location;
import com.google.android.speech.SpeechSettings;
import com.google.android.speech.embedded.Greco3Grammar;
import com.google.android.speech.embedded.Greco3Mode;
import com.google.android.voicesearch.greco3.ResultsMergerStrategy;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.speech.common.proto.RecognitionContextProto.RecognitionContext;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.Configuration;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.Dictation;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.EndpointerParams;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.IntentApi;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.ServiceApi;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.VoiceSearch;
import javax.annotation.Nullable;

public class SessionParams
{
  private static final int EMBEDDED_FALLBACK_TIMEOUT_DISABLED = -1;
  private static final int TIMEOUT_NO_SPEECH_DETECTED_MSEC = 20000;
  private final boolean mAlternatesEnabled;
  private final AudioInputParams mAudioInputParams;
  private final Greco3Grammar mGreco3Grammar;
  private final Greco3Mode mGreco3Mode;

  @Nullable
  private final Location mLocationOverride;
  private final int mMaxNbest;
  private final Mode mMode;
  private final boolean mNoSpeechDetectedEnabled;
  private final boolean mPartialResultsEnabled;
  private final boolean mProfanityFilterEnabled;

  @Nullable
  private final RecognitionContextProto.RecognitionContext mRecognitionContext;
  private final boolean mRecordedAudio;
  private final Supplier<String> mRequestIdSupplier;
  private final String mService;
  private final boolean mSoundSearchTtsEnabled;
  private final String mSpokenBcp47Locale;
  private final boolean mSuggestionsEnabled;

  @Nullable
  private final String mTriggerApplication;

  private SessionParams(Mode paramMode, AudioInputParams paramAudioInputParams, boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2, Greco3Grammar paramGreco3Grammar, Greco3Mode paramGreco3Mode, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, int paramInt, Location paramLocation, RecognitionContextProto.RecognitionContext paramRecognitionContext, Supplier<String> paramSupplier, String paramString3, boolean paramBoolean7)
  {
    this.mMode = paramMode;
    this.mAudioInputParams = paramAudioInputParams;
    this.mAlternatesEnabled = paramBoolean1;
    this.mRecordedAudio = paramBoolean2;
    this.mSpokenBcp47Locale = paramString1;
    this.mTriggerApplication = paramString2;
    this.mGreco3Grammar = paramGreco3Grammar;
    this.mGreco3Mode = paramGreco3Mode;
    this.mNoSpeechDetectedEnabled = paramBoolean3;
    this.mPartialResultsEnabled = paramBoolean4;
    this.mProfanityFilterEnabled = paramBoolean5;
    this.mSuggestionsEnabled = paramBoolean6;
    this.mMaxNbest = paramInt;
    this.mLocationOverride = paramLocation;
    this.mRecognitionContext = paramRecognitionContext;
    this.mRequestIdSupplier = paramSupplier;
    this.mService = paramString3;
    this.mSoundSearchTtsEnabled = paramBoolean7;
  }

  public String getApplicationId()
  {
    switch (1.$SwitchMap$com$google$android$speech$params$SessionParams$Mode[this.mMode.ordinal()])
    {
    default:
      throw new IllegalStateException("Unknown mode " + this.mMode);
    case 2:
      return "intent-api";
    case 3:
      return "service-api";
    case 4:
    case 5:
    case 6:
      return "voice-search";
    case 1:
      return "voice-ime";
    case 7:
    case 8:
    }
    return "hands-free";
  }

  public AudioInputParams getAudioInputParams()
  {
    return this.mAudioInputParams;
  }

  public int getEmbeddedFallbackTimeout(SpeechSettings paramSpeechSettings)
  {
    if (this.mGreco3Mode == Greco3Mode.DICTATION)
      return paramSpeechSettings.getConfiguration().getDictation().getEmbeddedRecognizerFallbackTimeout();
    if (this.mGreco3Mode == Greco3Mode.GRAMMAR)
      return paramSpeechSettings.getConfiguration().getVoiceSearch().getEmbeddedRecognizerFallbackTimeout();
    return -1;
  }

  @Nullable
  public GstaticConfiguration.EndpointerParams getEndpointerParams(SpeechSettings paramSpeechSettings)
  {
    GstaticConfiguration.EndpointerParams localEndpointerParams;
    switch (1.$SwitchMap$com$google$android$speech$params$SessionParams$Mode[this.mMode.ordinal()])
    {
    default:
      localEndpointerParams = paramSpeechSettings.getConfiguration().getVoiceSearch().getEndpointerParams();
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      if (!this.mNoSpeechDetectedEnabled)
        localEndpointerParams.setNoSpeechDetectedTimeoutMsec(20000);
      return localEndpointerParams;
      localEndpointerParams = paramSpeechSettings.getConfiguration().getDictation().getEndpointerParams();
      continue;
      localEndpointerParams = paramSpeechSettings.getConfiguration().getIntentApi().getEndpointerParams();
      continue;
      localEndpointerParams = paramSpeechSettings.getConfiguration().getServiceApi().getEndpointerParams();
      continue;
      localEndpointerParams = paramSpeechSettings.getConfiguration().getVoiceSearch().getEndpointerParams();
    }
  }

  public Greco3Grammar getGreco3Grammar()
  {
    return this.mGreco3Grammar;
  }

  public Greco3Mode getGreco3Mode()
  {
    return this.mGreco3Mode;
  }

  public Location getLocationOverride()
  {
    return this.mLocationOverride;
  }

  public int getMaxNbest()
  {
    return this.mMaxNbest;
  }

  public ResultsMergerStrategy getMergerStrategy()
  {
    switch (1.$SwitchMap$com$google$android$speech$params$SessionParams$Mode[this.mMode.ordinal()])
    {
    case 6:
    default:
      return ResultsMergerStrategy.PREFER_NETWORK;
    case 5:
      return ResultsMergerStrategy.EMBEDDED_ONLY;
    case 7:
      return ResultsMergerStrategy.EMBEDDED_IGNORE_NETWORK;
    case 8:
    }
    return ResultsMergerStrategy.EMBEDDED_MERGE_NETWORK;
  }

  public Mode getMode()
  {
    return this.mMode;
  }

  public RecognitionContextProto.RecognitionContext getRecognitionContext()
  {
    return this.mRecognitionContext;
  }

  public String getRequestId()
  {
    return (String)this.mRequestIdSupplier.get();
  }

  public Supplier<String> getRequestIdSupplier()
  {
    return this.mRequestIdSupplier;
  }

  public String getService()
  {
    return this.mService;
  }

  public String getSpokenBcp47Locale()
  {
    return this.mSpokenBcp47Locale;
  }

  public String getTriggerApplication()
  {
    return this.mTriggerApplication;
  }

  public boolean isAlternatesEnabled()
  {
    return this.mAlternatesEnabled;
  }

  public boolean isCombinedNbestEnabled()
  {
    return (this.mMode == Mode.VOICE_ACTIONS) || (this.mMode == Mode.SERVICE_API) || (this.mMode == Mode.INTENT_API);
  }

  public boolean isNoSpeechDetectedEnabled()
  {
    return this.mNoSpeechDetectedEnabled;
  }

  public boolean isPartialResultsEnabled()
  {
    return this.mPartialResultsEnabled;
  }

  public boolean isProfanityFilterEnabled()
  {
    return this.mProfanityFilterEnabled;
  }

  public boolean isRecordedAudio()
  {
    return this.mRecordedAudio;
  }

  public boolean isSoundSearchTtsEnabled()
  {
    return this.mSoundSearchTtsEnabled;
  }

  public boolean isSuggestionsEnabled()
  {
    return this.mSuggestionsEnabled;
  }

  public static class Builder
  {
    private static final int DEFAULT_MAX_NBEST = 5;
    private static final String SERVICE_HANDS_FREE_CONTACTS = "voicesearch";
    private static final String SERVICE_RECOGNIZER = "recognizer";
    private static final String SERVICE_SOUND_SEARCH = "sound-search";
    private static final String SERVICE_VOICE_ACTIONS = "voicesearch-web";
    private boolean mAlternatesEnabled = true;
    private AudioInputParams mAudioInputParams;
    private Greco3Grammar mGreco3Grammar = Greco3Grammar.CONTACT_DIALING;
    private Greco3Mode mGreco3Mode = Greco3Mode.ENDPOINTER_VOICESEARCH;
    private Location mLocationOverride;
    private int mMaxNbest = 5;
    private SessionParams.Mode mMode = SessionParams.Mode.VOICE_ACTIONS;
    private boolean mNoSpeechDetectedEnabled = true;
    private boolean mPartialResultsEnabled = true;
    private boolean mProfanityFilterEnabled = true;
    private RecognitionContextProto.RecognitionContext mRecognitionContext;
    private boolean mRecordedAudio = false;
    private String mService;
    private boolean mSoundSearchTtsEnabled = false;
    private String mSpokenBcp47Locale = "en-US";
    private boolean mSuggestionsEnabled = true;
    private String mTriggerApplication;

    private Supplier<String> createNewRequestId()
    {
      return Suppliers.memoize(new Supplier()
      {
        public String get()
        {
          return RequestIdGenerator.INSTANCE.newRequestId();
        }
      });
    }

    private static String getService(SessionParams.Mode paramMode)
    {
      switch (SessionParams.1.$SwitchMap$com$google$android$speech$params$SessionParams$Mode[paramMode.ordinal()])
      {
      default:
        throw new IllegalStateException("Unknown mode " + paramMode);
      case 2:
      case 3:
        return "recognizer";
      case 8:
        return "voicesearch";
      case 4:
        return "voicesearch-web";
      case 1:
      case 5:
      case 7:
        return "recognizer";
      case 6:
      }
      return "sound-search";
    }

    public SessionParams build()
    {
      if (this.mAudioInputParams == null)
        this.mAudioInputParams = new AudioInputParams.Builder().build();
      if (this.mService == null)
        this.mService = getService(this.mMode);
      return new SessionParams(this.mMode, this.mAudioInputParams, this.mAlternatesEnabled, this.mRecordedAudio, this.mSpokenBcp47Locale, this.mTriggerApplication, this.mGreco3Grammar, this.mGreco3Mode, this.mNoSpeechDetectedEnabled, this.mPartialResultsEnabled, this.mProfanityFilterEnabled, this.mSuggestionsEnabled, this.mMaxNbest, this.mLocationOverride, this.mRecognitionContext, createNewRequestId(), this.mService, this.mSoundSearchTtsEnabled, null);
    }

    public Builder setAlternatesEnabled(boolean paramBoolean)
    {
      this.mAlternatesEnabled = paramBoolean;
      return this;
    }

    public Builder setAudioInputParams(AudioInputParams paramAudioInputParams)
    {
      this.mAudioInputParams = paramAudioInputParams;
      return this;
    }

    public Builder setGreco3Grammar(Greco3Grammar paramGreco3Grammar)
    {
      this.mGreco3Grammar = paramGreco3Grammar;
      return this;
    }

    public Builder setGreco3Mode(Greco3Mode paramGreco3Mode)
    {
      this.mGreco3Mode = paramGreco3Mode;
      return this;
    }

    public Builder setLocationOverride(Location paramLocation)
    {
      this.mLocationOverride = paramLocation;
      return this;
    }

    public Builder setMaxNbest(int paramInt)
    {
      this.mMaxNbest = paramInt;
      return this;
    }

    public Builder setMode(SessionParams.Mode paramMode)
    {
      this.mMode = paramMode;
      return this;
    }

    public Builder setNoSpeechDetectedEnabled(boolean paramBoolean)
    {
      this.mNoSpeechDetectedEnabled = paramBoolean;
      return this;
    }

    public Builder setPartialResultsEnabled(boolean paramBoolean)
    {
      this.mPartialResultsEnabled = paramBoolean;
      return this;
    }

    public Builder setProfanityFilterEnabled(boolean paramBoolean)
    {
      this.mProfanityFilterEnabled = paramBoolean;
      return this;
    }

    public Builder setRecognitionContext(RecognitionContextProto.RecognitionContext paramRecognitionContext)
    {
      this.mRecognitionContext = paramRecognitionContext;
      return this;
    }

    public Builder setRecordedAudio(boolean paramBoolean)
    {
      this.mRecordedAudio = paramBoolean;
      return this;
    }

    public Builder setServiceOverride(String paramString)
    {
      this.mService = paramString;
      return this;
    }

    public Builder setSoundSearchTtsEnabled(boolean paramBoolean)
    {
      this.mSoundSearchTtsEnabled = paramBoolean;
      return this;
    }

    public Builder setSpokenBcp47Locale(String paramString)
    {
      this.mSpokenBcp47Locale = paramString;
      return this;
    }

    public Builder setSuggestionsEnabled(boolean paramBoolean)
    {
      this.mSuggestionsEnabled = paramBoolean;
      return this;
    }

    public Builder setTriggerApplication(String paramString)
    {
      this.mTriggerApplication = paramString;
      return this;
    }
  }

  public static enum Mode
  {
    static
    {
      DICTATION = new Mode("DICTATION", 3);
      HANDS_FREE_CONTACTS = new Mode("HANDS_FREE_CONTACTS", 4);
      HANDS_FREE_COMMANDS = new Mode("HANDS_FREE_COMMANDS", 5);
      HOTWORD = new Mode("HOTWORD", 6);
      SOUND_SEARCH = new Mode("SOUND_SEARCH", 7);
      Mode[] arrayOfMode = new Mode[8];
      arrayOfMode[0] = INTENT_API;
      arrayOfMode[1] = SERVICE_API;
      arrayOfMode[2] = VOICE_ACTIONS;
      arrayOfMode[3] = DICTATION;
      arrayOfMode[4] = HANDS_FREE_CONTACTS;
      arrayOfMode[5] = HANDS_FREE_COMMANDS;
      arrayOfMode[6] = HOTWORD;
      arrayOfMode[7] = SOUND_SEARCH;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.params.SessionParams
 * JD-Core Version:    0.6.2
 */