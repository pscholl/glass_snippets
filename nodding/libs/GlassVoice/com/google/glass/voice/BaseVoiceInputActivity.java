package com.google.glass.voice;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Intent;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.DecelerateInterpolator;
import com.google.audio.ears.proto.EarsService.EarsResultsResponse;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.app.GlassError;
import com.google.glass.app.GlassError.OnConfirmAction;
import com.google.glass.app.GlassVoiceActivity;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import com.google.glass.util.PowerHelper;
import com.google.glass.util.SettingsHelper;
import com.google.glass.voice.network.ISpeechLevelSource;
import com.google.glass.voice.network.IVoiceInputCallback;
import com.google.glass.voice.network.IVoiceInputCallback.Stub;
import com.google.glass.voice.network.SpeechException;
import com.google.glass.voice.network.SpeechException.Type;
import com.google.glass.voice.network.SpeechLevelSource;
import com.google.glass.voiceclient.R.drawable;
import com.google.glass.voiceclient.R.id;
import com.google.glass.voiceclient.R.layout;
import com.google.glass.voiceclient.R.string;
import com.google.glass.widget.MessageDialog;
import com.google.glass.widget.SliderView;
import com.google.glass.widget.TypophileTextView;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;

public abstract class BaseVoiceInputActivity extends GlassVoiceActivity
{
  private static final long ANIMATE_IN_DURATION_MILLIS = 100L;
  private static final long ANIMATE_OUT_DURATION_MILLIS = 200L;
  private static final int ENDPOINT_CONFIRM_THRESHOLD_MILLIS = 1000;
  public static final String EXTRA_SHOULD_PLAY_INITIAL_SOUND = "should_play_initial_sound";
  private static final long MIN_PLAY_VOICE_RESULT_SOUND_THRESHOLD_MILLIS = 0L;
  protected static final int MSG_ON_ACTION_RESPONSE = 13;
  private static final int MSG_ON_ERROR = 9;
  protected static final int MSG_ON_HTML_ANSWER_CARD_RESULT = 11;

  @VisibleForTesting
  protected static final int MSG_ON_RECOGNITION_RESULT = 7;
  protected static final int MSG_ON_SOUND_SEARCH_RESULT = 8;
  private static final int MSG_SET_SPEECH_LEVEL_SOURCE = 5;
  private static final int MSG_SHOW_DONE = 4;
  private static final int MSG_SHOW_LISTENING = 0;
  private static final int MSG_SHOW_MUSIC_DETECTED = 12;
  private static final int MSG_SHOW_NO_SPEECH_DETECTED = 3;
  private static final int MSG_SHOW_PROGRESS_BAR = 10;
  private static final int MSG_SHOW_RECOGNIZING = 2;
  private static final int MSG_SHOW_RECORDING = 1;
  private static final int MSG_UPDATE_RECOGNIZED_TEXT = 6;
  private static final int NO_RESOURCE_ID = 0;
  private static final long SHOW_PROGRESS_BAR_DELAY_MILLIS = 250L;
  private static final long SHOW_RESULT_DURATION_MAX_ADDITIONAL = 3000L;
  private static final long SHOW_RESULT_DURATION_MINIMUM = 2000L;
  public static final int TYPE_ANNOTATION = 5;
  public static final int TYPE_GLASSWARE = 3;
  public static final int TYPE_MESSAGING = 2;
  public static final int TYPE_MUSIC = 6;
  public static final int TYPE_NAVIGATION = 1;
  public static final int TYPE_SEARCH = 0;
  public static final int TYPE_SOUND_SEARCH = 4;
  private AudioInputRelativeLayout audioView;
  private long endOfSpeechTime;

  @VisibleForTesting
  protected final Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      if (BaseVoiceInputActivity.this.isFinishing())
        return;
      BaseVoiceInputActivity.this.updatePowerHelper(paramAnonymousMessage.what);
      BaseVoiceInputActivity.this.updateKeepScreenOn(paramAnonymousMessage.what);
      switch (paramAnonymousMessage.what)
      {
      default:
        return;
      case 0:
        BaseVoiceInputActivity.this.dispatchShowListening();
        return;
      case 1:
        BaseVoiceInputActivity.this.dispatchShowRecording();
        return;
      case 2:
        BaseVoiceInputActivity.this.dispatchShowRecognizing();
        return;
      case 3:
        BaseVoiceInputActivity.this.dispatchShowNoSpeechDetected();
        return;
      case 12:
        BaseVoiceInputActivity.this.dispatchShowMusicDetected();
        return;
      case 4:
        BaseVoiceInputActivity.this.dispatchShowDone();
        return;
      case 5:
        BaseVoiceInputActivity.this.dispatchSetSpeechLevelSource((ISpeechLevelSource)paramAnonymousMessage.obj);
        return;
      case 6:
        Object[] arrayOfObject2 = (Object[])paramAnonymousMessage.obj;
        BaseVoiceInputActivity.this.dispatchUpdateRecognizedText((CharSequence)arrayOfObject2[0], (CharSequence)arrayOfObject2[1]);
        return;
      case 7:
        Object[] arrayOfObject1 = (Object[])paramAnonymousMessage.obj;
        BaseVoiceInputActivity.this.dispatchOnRecognitionResult((CharSequence)arrayOfObject1[0], ((Float)arrayOfObject1[1]).floatValue());
        return;
      case 11:
        BaseVoiceInputActivity.this.dispatchOnHtmlAnswerCardResult((String)paramAnonymousMessage.obj);
        return;
      case 8:
        BaseVoiceInputActivity.this.dispatchOnSoundSearchResult((EarsService.EarsResultsResponse)paramAnonymousMessage.obj);
        return;
      case 13:
        BaseVoiceInputActivity.this.dispatchOnActionResponse((byte[])paramAnonymousMessage.obj);
        return;
      case 9:
        BaseVoiceInputActivity.this.dispatchOnError((SpeechException)paramAnonymousMessage.obj);
        return;
      case 10:
      }
      BaseVoiceInputActivity.this.progressSlider.startIndeterminate();
    }
  };
  private boolean hasRecognitionResults = false;
  private boolean hasSearchResponse = false;
  private boolean isRetry = false;
  private boolean logFirstRecognizedText = true;
  private PowerHelper powerHelper;
  private SliderView progressSlider;
  protected TypophileTextView prompt;
  protected CharSequence recognitionResult = null;
  private int recognitionResultsCount;
  private int recognitionUpdatesCount;
  private final Runnable speakAgainRunnable = new Runnable()
  {
    public void run()
    {
      BaseVoiceInputActivity.this.getSoundManager().playSound(BaseVoiceInputActivity.this.getStartSound());
      BaseVoiceInputActivity.this.logSearchStarted(7);
      BaseVoiceInputActivity.this.reset();
      BaseVoiceInputActivity.access$1802(BaseVoiceInputActivity.this, true);
      BaseVoiceInputActivity.this.setVoiceConfig(BaseVoiceInputActivity.this.getRetryVoiceConfig());
      BaseVoiceInputActivity.this.attachVoiceInputCallback(BaseVoiceInputActivity.this.voiceInputCallback);
    }
  };
  private long startTime;
  private StreamingTextView streamingTextView;
  protected int triggerMethod;
  protected long triggerTimeMillis;

  @VisibleForTesting
  protected final IVoiceInputCallback voiceInputCallback = new IVoiceInputCallback.Stub()
  {
    public String getTag()
    {
      return BaseVoiceInputActivity.this.voiceInputCallbackLogger.getTag();
    }

    public void onActionResponse(byte[] paramAnonymousArrayOfByte)
    {
      BaseVoiceInputActivity.this.voiceInputCallbackLogger.d("onActionResponse", new Object[0]);
      Message.obtain(BaseVoiceInputActivity.this.handler, 13, paramAnonymousArrayOfByte).sendToTarget();
    }

    public void onError(SpeechException paramAnonymousSpeechException)
    {
      BaseVoiceInputActivity.this.voiceInputCallbackLogger.d("onError", new Object[0]);
      Message.obtain(BaseVoiceInputActivity.this.handler, 9, paramAnonymousSpeechException).sendToTarget();
    }

    public void onHtmlAnswerCardResult(String paramAnonymousString)
    {
      BaseVoiceInputActivity.this.voiceInputCallbackLogger.d("onHtmlAnswerCardResult", new Object[0]);
      Message.obtain(BaseVoiceInputActivity.this.handler, 11, paramAnonymousString).sendToTarget();
    }

    public void onRecognitionResult(CharSequence paramAnonymousCharSequence, float paramAnonymousFloat)
    {
      BaseVoiceInputActivity.this.voiceInputCallbackLogger.d("onRecognitionResult", new Object[0]);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramAnonymousCharSequence;
      arrayOfObject[1] = Float.valueOf(paramAnonymousFloat);
      Message.obtain(BaseVoiceInputActivity.this.handler, 7, arrayOfObject).sendToTarget();
    }

    public void onSoundSearchResult(byte[] paramAnonymousArrayOfByte)
    {
      BaseVoiceInputActivity.this.voiceInputCallbackLogger.d("onSoundSearchResult", new Object[0]);
      try
      {
        Message.obtain(BaseVoiceInputActivity.this.handler, 8, EarsService.EarsResultsResponse.parseFrom(paramAnonymousArrayOfByte)).sendToTarget();
        return;
      }
      catch (InvalidProtocolBufferMicroException localInvalidProtocolBufferMicroException)
      {
        throw new RuntimeException(localInvalidProtocolBufferMicroException);
      }
    }

    public void setSpeechLevelSource(ISpeechLevelSource paramAnonymousISpeechLevelSource)
    {
      BaseVoiceInputActivity.this.voiceInputCallbackLogger.d("setSpeechLevelSource", new Object[0]);
      Message.obtain(BaseVoiceInputActivity.this.handler, 5, paramAnonymousISpeechLevelSource).sendToTarget();
    }

    public void showDone()
    {
      BaseVoiceInputActivity.this.voiceInputCallbackLogger.d("showDone", new Object[0]);
      Message.obtain(BaseVoiceInputActivity.this.handler, 4).sendToTarget();
    }

    public void showListening()
    {
      BaseVoiceInputActivity.this.voiceInputCallbackLogger.d("showListening", new Object[0]);
      Message.obtain(BaseVoiceInputActivity.this.handler, 0).sendToTarget();
    }

    public void showMusicDetected()
    {
      BaseVoiceInputActivity.this.voiceInputCallbackLogger.d("showMusicDetected", new Object[0]);
      Message.obtain(BaseVoiceInputActivity.this.handler, 12).sendToTarget();
    }

    public void showNoSpeechDetected()
    {
      BaseVoiceInputActivity.this.voiceInputCallbackLogger.d("showNoSpeechDetected", new Object[0]);
      Message.obtain(BaseVoiceInputActivity.this.handler, 3).sendToTarget();
    }

    public void showRecognizing()
    {
      BaseVoiceInputActivity.this.voiceInputCallbackLogger.d("showRecognizing", new Object[0]);
      Message.obtain(BaseVoiceInputActivity.this.handler, 2).sendToTarget();
    }

    public void showRecording()
    {
      BaseVoiceInputActivity.this.voiceInputCallbackLogger.d("showRecording", new Object[0]);
      Message.obtain(BaseVoiceInputActivity.this.handler, 1).sendToTarget();
    }

    public void updateRecognizedText(CharSequence paramAnonymousCharSequence1, CharSequence paramAnonymousCharSequence2)
    {
      BaseVoiceInputActivity.this.voiceInputCallbackLogger.d("updateRecognizedText", new Object[0]);
      Object[] arrayOfObject = { paramAnonymousCharSequence1, paramAnonymousCharSequence2 };
      Message.obtain(BaseVoiceInputActivity.this.handler, 6, arrayOfObject).sendToTarget();
    }
  };
  private final FormattingLogger voiceInputCallbackLogger = FormattingLoggers.getLogger(getLogger(), "voiceInputCallback");

  private void animateIn(View paramView, final Runnable paramRunnable)
  {
    paramView.setTranslationY(getResources().getDisplayMetrics().heightPixels);
    paramView.setVisibility(0);
    paramView.animate().translationY(0.0F).setInterpolator(new DecelerateInterpolator()).setDuration(100L).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        if (paramRunnable != null)
          paramRunnable.run();
      }
    });
  }

  private void animateOut(final View paramView)
  {
    paramView.animate().translationY(getResources().getDisplayMetrics().heightPixels).setInterpolator(new DecelerateInterpolator()).setDuration(200L).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        paramView.setVisibility(8);
      }
    });
  }

  private void dispatchOnActionResponse(byte[] paramArrayOfByte)
  {
    onActionResponse(paramArrayOfByte);
  }

  private void dispatchOnError(SpeechException paramSpeechException)
  {
    onError(paramSpeechException);
  }

  private void dispatchOnHtmlAnswerCardResult(String paramString)
  {
    this.hasSearchResponse = true;
    if (this.recognitionResult == null);
    for (String str = ""; ; str = this.recognitionResult.toString())
    {
      onHtmlAnswerCardResult(paramString, str, this.startTime, this.endOfSpeechTime);
      return;
    }
  }

  private void dispatchOnRecognitionResult(CharSequence paramCharSequence, float paramFloat)
  {
    this.recognitionResult = paramCharSequence;
    this.prompt.setVisibility(8);
    if (this.streamingTextView != null)
    {
      this.streamingTextView.setVisibility(0);
      this.streamingTextView.setFinalRecognizedText(cleanRecognitionResults(paramCharSequence));
    }
    if (showProgressOnRecognitionResult())
      this.progressSlider.startIndeterminate();
    while (true)
    {
      long l1 = System.currentTimeMillis() - this.startTime;
      long l2 = System.currentTimeMillis() - this.endOfSpeechTime;
      if ((shouldPlayVoiceResultSound()) && (l2 > MIN_PLAY_VOICE_RESULT_SOUND_THRESHOLD_MILLIS))
        getSoundManager().playSound(SoundManager.SoundId.VOICE_RESULT);
      Long localLong = Long.valueOf(this.startTime);
      Object[] arrayOfObject = new Object[12];
      arrayOfObject[0] = "confidence";
      arrayOfObject[1] = Float.valueOf(paramFloat);
      arrayOfObject[2] = "network";
      arrayOfObject[3] = Integer.valueOf(getNetworkTypeForLogging());
      arrayOfObject[4] = "time_total";
      arrayOfObject[5] = Long.valueOf(l1);
      arrayOfObject[6] = "time_from_eos";
      arrayOfObject[7] = Long.valueOf(l2);
      arrayOfObject[8] = "type";
      arrayOfObject[9] = Integer.valueOf(getType());
      arrayOfObject[10] = "trigger";
      arrayOfObject[11] = Integer.valueOf(this.triggerMethod);
      String str = UserEventHelper.createEventTuple("id", localLong, arrayOfObject);
      logUserEvent(UserEventAction.VOICE_INPUT_RECOGNITION, str);
      try
      {
        this.recognitionResultsCount = (1 + this.recognitionResultsCount);
        onRecognitionResult(paramCharSequence.toString());
        return;
        this.handler.removeMessages(10);
        this.progressSlider.stopIndeterminate();
      }
      finally
      {
      }
    }
  }

  private void dispatchOnSoundSearchResult(EarsService.EarsResultsResponse paramEarsResultsResponse)
  {
    onSoundSearchResult(paramEarsResultsResponse);
  }

  private void dispatchSetSpeechLevelSource(final ISpeechLevelSource paramISpeechLevelSource)
  {
    this.audioView.setSpeechLevelSource(new SpeechLevelSource()
    {
      public int getSpeechLevel()
      {
        try
        {
          int i = paramISpeechLevelSource.getSpeechLevel();
          return i;
        }
        catch (RemoteException localRemoteException)
        {
          BaseVoiceInputActivity.this.audioView.setSpeechLevelSource(null);
          BaseVoiceInputActivity.this.getLogger().e(localRemoteException, "Failed to determine speech level", new Object[0]);
        }
        return 0;
      }
    });
  }

  private void dispatchShowDone()
  {
    this.audioView.showNotListening();
    if ((!this.hasSearchResponse) && (isSearchResponseExpected()))
    {
      if (isMessageShowing())
      {
        getLogger().d("Error to display, but error already on screen", new Object[0]);
        return;
      }
      this.progressSlider.stopIndeterminate();
      this.handler.removeMessages(10);
      long l = System.currentTimeMillis() - this.startTime;
      Long localLong = Long.valueOf(this.startTime);
      Object[] arrayOfObject = new Object[8];
      arrayOfObject[0] = "query";
      arrayOfObject[1] = this.recognitionResult;
      arrayOfObject[2] = "time";
      arrayOfObject[3] = Long.valueOf(l);
      arrayOfObject[4] = "type";
      arrayOfObject[5] = Integer.valueOf(getType());
      arrayOfObject[6] = "trigger";
      arrayOfObject[7] = Integer.valueOf(this.triggerMethod);
      String str = UserEventHelper.createEventTuple("id", localLong, arrayOfObject);
      logUserEvent(UserEventAction.VOICE_SEARCH_NO_ANSWER, str);
      new GlassError().setPrimaryMessageId(R.string.voice_search_no_answer).setIconId(R.drawable.ic_cloud_sad_big).setFinishWhenDone(true).setAutoHide(true).show(this);
      return;
    }
    showDone();
  }

  private void dispatchShowListening()
  {
    long l = SystemClock.uptimeMillis();
    this.handler.removeMessages(10);
    this.progressSlider.stopIndeterminate();
    if (this.streamingTextView != null)
      this.streamingTextView.setVisibility(8);
    this.prompt.setText(getPromptText());
    if (this.audioView.getVisibility() == 8)
    {
      animateIn(this.prompt, null);
      animateIn(this.audioView, new Runnable()
      {
        public void run()
        {
          BaseVoiceInputActivity.this.audioView.showListening();
        }
      });
      if (this.triggerTimeMillis == -1L)
        break label206;
      Long localLong = Long.valueOf(l - this.triggerTimeMillis);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = "m";
      arrayOfObject[1] = Integer.valueOf(this.triggerMethod);
      String str = UserEventHelper.createEventTuple("l", localLong, arrayOfObject);
      logUserEvent(UserEventAction.START_LISTENING_DELAY, str);
      this.triggerMethod = 0;
      this.triggerTimeMillis = -1L;
    }
    while (true)
    {
      if (this.streamingTextView != null)
        this.streamingTextView.reset();
      return;
      if (this.prompt.getVisibility() == 8)
        this.prompt.setVisibility(0);
      this.audioView.showListening();
      break;
      label206: getLogger().d("We have no idea when the trigger method " + this.triggerMethod + " was initiated.", new Object[0]);
    }
  }

  private void dispatchShowMusicDetected()
  {
    onMusicDetected();
  }

  private void dispatchShowNoSpeechDetected()
  {
    onNoSpeechDetected();
  }

  private void dispatchShowRecognizing()
  {
    onRecognizing();
  }

  private void dispatchShowRecording()
  {
    this.audioView.showRecording();
    if (this.streamingTextView != null)
      this.streamingTextView.reset();
  }

  private void dispatchUpdateRecognizedText(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    this.hasRecognitionResults = true;
    if ((paramCharSequence1 != null) || (paramCharSequence2 != null))
    {
      CharSequence localCharSequence1 = cleanRecognitionResults(paramCharSequence1);
      CharSequence localCharSequence2 = cleanRecognitionResults(paramCharSequence2);
      if ((this.prompt.getVisibility() == 0) && (TextUtils.isEmpty(localCharSequence1)) && (TextUtils.isEmpty(localCharSequence2)))
        return;
      this.prompt.setVisibility(8);
      if (this.streamingTextView != null)
      {
        this.streamingTextView.setVisibility(0);
        this.streamingTextView.updateRecognizedText(localCharSequence1, localCharSequence2);
      }
    }
    if (this.logFirstRecognizedText)
    {
      this.logFirstRecognizedText = false;
      long l = System.currentTimeMillis() - this.startTime;
      Long localLong = Long.valueOf(this.startTime);
      Object[] arrayOfObject = new Object[6];
      arrayOfObject[0] = "time";
      arrayOfObject[1] = Long.valueOf(l);
      arrayOfObject[2] = "type";
      arrayOfObject[3] = Integer.valueOf(getType());
      arrayOfObject[4] = "trigger";
      arrayOfObject[5] = Integer.valueOf(this.triggerMethod);
      String str = UserEventHelper.createEventTuple("id", localLong, arrayOfObject);
      logUserEvent(UserEventAction.VOICE_INPUT_FIRST_RECOGNITION, str);
    }
    try
    {
      this.recognitionUpdatesCount = (1 + this.recognitionUpdatesCount);
      onUpdateRecognizedText();
      return;
    }
    finally
    {
    }
  }

  private Runnable getErrorOnConfirmRunnable(SpeechException paramSpeechException)
  {
    if ((paramSpeechException.getType().equals(SpeechException.Type.NO_MATCH)) || (paramSpeechException.getType().equals(SpeechException.Type.AUDIO_RECOGNIZE)))
      return this.speakAgainRunnable;
    return SettingsHelper.getGoToSettingsRunnable(this);
  }

  private int getNetworkTypeForLogging()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)getSystemService("connectivity")).getActiveNetworkInfo();
    if (localNetworkInfo != null)
      return localNetworkInfo.getType();
    return -1;
  }

  public static final long getResultDuration(String paramString)
  {
    return 2000L + ()(3000.0D * Math.min(1.0D, paramString.length() / 140.0D));
  }

  private void logError(SpeechException paramSpeechException)
  {
    long l = System.currentTimeMillis() - this.startTime;
    Long localLong = Long.valueOf(this.startTime);
    Object[] arrayOfObject = new Object[12];
    arrayOfObject[0] = "error";
    arrayOfObject[1] = paramSpeechException.getSimpleName();
    arrayOfObject[2] = "detail";
    arrayOfObject[3] = paramSpeechException.getDetail();
    arrayOfObject[4] = "network";
    arrayOfObject[5] = Integer.valueOf(getNetworkTypeForLogging());
    arrayOfObject[6] = "time";
    arrayOfObject[7] = Long.valueOf(l);
    arrayOfObject[8] = "type";
    arrayOfObject[9] = Integer.valueOf(getType());
    arrayOfObject[10] = "trigger";
    arrayOfObject[11] = Integer.valueOf(this.triggerMethod);
    String str = UserEventHelper.createEventTuple("id", localLong, arrayOfObject);
    logUserEvent(UserEventAction.VOICE_INPUT_ERROR, str);
  }

  private void reset()
  {
    this.audioView.showNotListening();
    this.handler.removeMessages(10);
    this.progressSlider.stopIndeterminate();
    this.isRetry = false;
    this.hasSearchResponse = false;
    this.recognitionResult = null;
    this.logFirstRecognizedText = true;
  }

  private void updateKeepScreenOn(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
      getContentView().setKeepScreenOn(true);
      return;
    case 3:
    case 9:
    }
    getContentView().setKeepScreenOn(false);
  }

  private void updatePowerHelper(int paramInt)
  {
    switch (paramInt)
    {
    case 3:
    case 4:
    case 5:
    default:
    case 0:
    case 1:
    case 2:
    case 6:
    }
    do
      return;
    while (this.powerHelper == null);
    this.powerHelper.userActivity();
  }

  protected CharSequence cleanRecognitionResults(CharSequence paramCharSequence)
  {
    if (shouldNormalizeHashtags())
      paramCharSequence = VoiceUtils.normalizeHashtags(paramCharSequence);
    return paramCharSequence;
  }

  protected int getAudioInputViewResId()
  {
    return R.id.microphone_container;
  }

  protected View getCurrentView()
  {
    return getContentView();
  }

  protected int getErrorIconId(SpeechException paramSpeechException)
  {
    if (paramSpeechException.getType().equals(SpeechException.Type.AUDIO_RECOGNIZE))
      return R.drawable.ic_exclamation_big;
    return R.drawable.ic_cloud_sad_big;
  }

  protected int getErrorMessageId(SpeechException paramSpeechException)
  {
    if (paramSpeechException.getType().equals(SpeechException.Type.NETWORK_RECOGNIZE))
      return R.string.voice_input_network_error;
    if (paramSpeechException.getType().equals(SpeechException.Type.NO_MATCH))
      return R.string.voice_input_no_match;
    if (paramSpeechException.getType().equals(SpeechException.Type.AUDIO_RECOGNIZE))
      return R.string.voice_input_audio_error;
    return R.string.voice_input_server_error;
  }

  protected CharSequence getFinalSelectedCommandText()
  {
    int i = getFinalSelectedCommandTextResId();
    if (i == 0)
      return null;
    return getResources().getText(i);
  }

  protected int getFinalSelectedCommandTextResId()
  {
    return 0;
  }

  @VisibleForTesting
  public Handler getHandler()
  {
    return this.handler;
  }

  public abstract VoiceConfig getInitialVoiceConfig();

  protected CharSequence getPromptText()
  {
    int i = getSpeakNowPromptResId();
    if (i == 0)
      throw new AssertionError("Must provide prompt text or ID.");
    return getResources().getText(i);
  }

  @VisibleForTesting
  public int getRecognitionResultsCount()
  {
    try
    {
      int i = this.recognitionResultsCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  @VisibleForTesting
  public int getRecognitionUpdatesCount()
  {
    try
    {
      int i = this.recognitionUpdatesCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected int getRecognizedTextLineCount()
  {
    if (this.streamingTextView != null)
      return this.streamingTextView.getLineCount();
    return 0;
  }

  protected abstract VoiceConfig getRetryVoiceConfig();

  protected int getSecondaryErrorMessageId(SpeechException paramSpeechException)
  {
    if ((paramSpeechException.getType().equals(SpeechException.Type.NO_MATCH)) || (paramSpeechException.getType().equals(SpeechException.Type.AUDIO_RECOGNIZE)))
      return R.string.error_tap_speak_again;
    return R.string.error_tap_connection_settings;
  }

  protected CharSequence getSelectedCommandText()
  {
    int i = getSelectedCommandTextResId();
    if (i == 0)
      throw new AssertionError("Must provide input type text or ID.");
    return getResources().getText(i);
  }

  protected int getSelectedCommandTextResId()
  {
    return 0;
  }

  protected int getSpeakNowPromptResId()
  {
    return 0;
  }

  protected SoundManager.SoundId getStartSound()
  {
    return SoundManager.SoundId.VOICE_PENDING;
  }

  protected abstract int getType();

  @VisibleForTesting
  public IVoiceInputCallback getVoiceInputCallback()
  {
    return this.voiceInputCallback;
  }

  protected boolean isRetry()
  {
    return this.isRetry;
  }

  protected boolean isSearchResponseExpected()
  {
    return false;
  }

  protected void logSearchStarted(int paramInt)
  {
    this.startTime = System.currentTimeMillis();
    Long localLong = Long.valueOf(this.startTime);
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = "type";
    arrayOfObject[1] = Integer.valueOf(getType());
    arrayOfObject[2] = "trigger";
    arrayOfObject[3] = Integer.valueOf(paramInt);
    String str = UserEventHelper.createEventTuple("id", localLong, arrayOfObject);
    logUserEvent(UserEventAction.VOICE_INPUT_STARTED, str);
  }

  protected void onActionResponse(byte[] paramArrayOfByte)
  {
  }

  public boolean onConfirm()
  {
    if (this.audioView.getState() == AudioInputRelativeLayout.State.NOT_LISTENING)
      getSoundManager().playSound(SoundManager.SoundId.DISALLOWED_ACTION);
    long l;
    do
    {
      return false;
      l = System.currentTimeMillis() - this.startTime;
    }
    while (l <= 1000L);
    FormattingLogger localFormattingLogger = getLogger();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Long.valueOf(l);
    localFormattingLogger.d("Manually endpointed after %d ms", arrayOfObject);
    endpointNetworkRecognizer();
    return true;
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    Long localLong = Long.valueOf(this.startTime);
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = "type";
    arrayOfObject[1] = Integer.valueOf(getType());
    arrayOfObject[2] = "trigger";
    arrayOfObject[3] = Integer.valueOf(this.triggerMethod);
    String str = UserEventHelper.createEventTuple("id", localLong, arrayOfObject);
    logUserEvent(UserEventAction.VOICE_INPUT_DISMISS, str);
    return super.onDismiss(paramDismissAction);
  }

  protected void onError(SpeechException paramSpeechException)
  {
    if (isMessageShowing())
    {
      FormattingLogger localFormattingLogger = getLogger();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = paramSpeechException.getSimpleName();
      localFormattingLogger.d("Received error while already showing error on screen: %s", arrayOfObject);
      return;
    }
    logError(paramSpeechException);
    this.audioView.showNotListening();
    animateOut(this.audioView);
    this.prompt.setVisibility(8);
    this.handler.removeMessages(10);
    this.progressSlider.stopIndeterminate();
    new GlassError().setPrimaryMessageId(getErrorMessageId(paramSpeechException)).setSecondaryMessageId(getSecondaryErrorMessageId(paramSpeechException)).setIconId(getErrorIconId(paramSpeechException)).setFinishWhenDone(true).setOnConfirmRunnable(getErrorOnConfirmRunnable(paramSpeechException)).show(this);
  }

  protected void onHtmlAnswerCardResult(String paramString1, String paramString2, long paramLong1, long paramLong2)
  {
  }

  protected void onMusicDetected()
  {
  }

  protected void onNoSpeechDetected()
  {
    if (isMessageShowing())
    {
      getLogger().d("No-speech error to display, but error already on screen", new Object[0]);
      return;
    }
    this.audioView.showNotListening();
    this.progressSlider.stopIndeterminate();
    this.handler.removeMessages(10);
    Long localLong = Long.valueOf(this.startTime);
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = "recognition";
    arrayOfObject[1] = Boolean.valueOf(this.hasRecognitionResults);
    arrayOfObject[2] = "type";
    arrayOfObject[3] = Integer.valueOf(getType());
    arrayOfObject[4] = "trigger";
    arrayOfObject[5] = Integer.valueOf(this.triggerMethod);
    String str = UserEventHelper.createEventTuple("id", localLong, arrayOfObject);
    logUserEvent(UserEventAction.VOICE_INPUT_NO_SPEECH_DETECTED, str);
    new GlassError().setPrimaryMessageId(R.string.error_no_speech_detected).setSecondaryMessageId(R.string.error_tap_speak_again).setIconId(R.drawable.ic_exclamation_big).setFinishWhenDone(true).setOnConfirmRunnable(this.speakAgainRunnable).show(this);
  }

  public void onPause()
  {
    detachVoiceInputCallback();
    super.onPause();
  }

  protected void onRecognitionResult(String paramString)
  {
  }

  protected void onRecognizing()
  {
    this.endOfSpeechTime = System.currentTimeMillis();
    this.audioView.showNotListening();
    animateOut(this.audioView);
    this.prompt.setVisibility(8);
    getSoundManager().playSound(SoundManager.SoundId.VOICE_COMPLETED);
    this.handler.sendEmptyMessageDelayed(10, 250L);
    long l = System.currentTimeMillis() - this.startTime;
    Long localLong = Long.valueOf(this.startTime);
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = "time";
    arrayOfObject[1] = Long.valueOf(l);
    arrayOfObject[2] = "type";
    arrayOfObject[3] = Integer.valueOf(getType());
    arrayOfObject[4] = "trigger";
    arrayOfObject[5] = Integer.valueOf(this.triggerMethod);
    String str = UserEventHelper.createEventTuple("id", localLong, arrayOfObject);
    logUserEvent(UserEventAction.VOICE_INPUT_END_OF_SPEECH, str);
  }

  protected void onResume()
  {
    super.onResume();
    onResumeActions();
  }

  protected void onResumeActions()
  {
    View localView = getCurrentView();
    final TypophileTextView localTypophileTextView1 = (TypophileTextView)findViewById(R.id.initial_selected_voice_command_text);
    TypophileTextView localTypophileTextView2 = (TypophileTextView)findViewById(R.id.final_selected_voice_command_text);
    this.audioView = ((AudioInputRelativeLayout)localView.findViewById(getAudioInputViewResId()));
    this.prompt = ((TypophileTextView)localView.findViewById(R.id.voice_input_prompt));
    this.streamingTextView = ((StreamingTextView)localView.findViewById(R.id.streaming_text));
    this.progressSlider = ((SliderView)localView.findViewById(R.id.progress_slider));
    reset();
    NetworkInfo localNetworkInfo = ((ConnectivityManager)getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnectedOrConnecting()))
    {
      this.audioView.showNotListening();
      logError(new SpeechException(null, "AbortNoConnectivity", ""));
      new GlassError().setPrimaryMessageId(R.string.voice_network_connectivity).setSecondaryMessageId(R.string.error_tap_connection_settings).setIconId(R.drawable.ic_cloud_sad_big).setFinishWhenDone(true).setOnConfirmAction(GlassError.OnConfirmAction.GO_TO_SETTINGS).show(this);
      return;
    }
    if (localTypophileTextView1 != null)
    {
      CharSequence localCharSequence = getFinalSelectedCommandText();
      if (TextUtils.isEmpty(localCharSequence))
        break label255;
      localTypophileTextView2.setText(localCharSequence);
      localTypophileTextView2.setAlpha(1.0F);
      localTypophileTextView2.setVisibility(0);
      localTypophileTextView1.animate().alpha(0.0F).setDuration(200L).setListener(new AnimatorListenerAdapter()
      {
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          localTypophileTextView1.setVisibility(8);
          localTypophileTextView1.animate().setListener(null);
        }
      });
    }
    while (true)
    {
      this.powerHelper = new PowerHelper(this);
      return;
      label255: localTypophileTextView1.setText(getSelectedCommandText());
    }
  }

  protected void onSoundSearchResult(EarsService.EarsResultsResponse paramEarsResultsResponse)
  {
  }

  protected void onStart()
  {
    super.onStart();
    Intent localIntent = getIntent();
    if ((localIntent != null) && (localIntent.getBooleanExtra("should_play_initial_sound", false)))
      getSoundManager().playSound(getStartSound());
    if (localIntent != null)
      this.triggerMethod = localIntent.getIntExtra("trigger_method", 0);
    for (this.triggerTimeMillis = localIntent.getLongExtra("trigger_time", -1L); ; this.triggerTimeMillis = -1L)
    {
      logSearchStarted(this.triggerMethod);
      return;
      this.triggerMethod = 0;
    }
  }

  protected void onStop()
  {
    finish();
    super.onStop();
  }

  protected void onUpdateRecognizedText()
  {
  }

  public void onVoiceServiceConnected()
  {
    super.onVoiceServiceConnected();
    attachVoiceInputCallback(this.voiceInputCallback);
  }

  protected int provideContentView()
  {
    return R.layout.voice_input_view;
  }

  protected boolean shouldNormalizeHashtags()
  {
    return true;
  }

  protected boolean shouldPlayVoiceResultSound()
  {
    return false;
  }

  protected void showDone()
  {
  }

  public void showError(MessageDialog paramMessageDialog)
  {
    detachVoiceInputCallback();
    super.showError(paramMessageDialog);
  }

  protected void showNoSpeechDetected()
  {
    Message.obtain(this.handler, 3).sendToTarget();
  }

  protected boolean showProgressOnRecognitionResult()
  {
    return true;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.BaseVoiceInputActivity
 * JD-Core Version:    0.6.2
 */