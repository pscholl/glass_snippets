package com.google.glass.voice.network;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import com.google.android.speech.Recognizer;
import com.google.android.speech.SpeechSettings;
import com.google.android.speech.alternates.CorrectableString;
import com.google.android.speech.embedded.Greco3Grammar;
import com.google.android.speech.embedded.Greco3Mode;
import com.google.android.speech.exception.AudioRecognizeException;
import com.google.android.speech.exception.NetworkRecognizeException;
import com.google.android.speech.exception.NoMatchRecognizeException;
import com.google.android.speech.exception.RecognizeException;
import com.google.android.speech.listeners.RecognitionEventListenerAdapter;
import com.google.android.speech.params.AudioInputParams;
import com.google.android.speech.params.AudioInputParams.Builder;
import com.google.android.speech.params.SessionParams;
import com.google.android.speech.params.SessionParams.Builder;
import com.google.android.speech.params.SessionParams.Mode;
import com.google.android.speech.utils.RecognizedText;
import com.google.audio.ears.proto.EarsService.EarsResultsResponse;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.SettableFuture;
import com.google.glass.app.GlassApplication;
import com.google.glass.location.LocationManagerHelper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.logging.Log;
import com.google.glass.net.NetworkUtil;
import com.google.glass.predicates.Assert;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import com.google.glass.util.BytePipe;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.MainThreadExecutorManager;
import com.google.glass.voice.AudioByteUtils;
import com.google.glass.voice.ResampleInputStream;
import com.google.glass.voice.ResampleInputStream.ResampleInputStreamListener;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.voice.VoiceConfig.Type;
import com.google.speech.recognizer.api.RecognizerProtos.Hypothesis;
import com.google.speech.recognizer.api.RecognizerProtos.PartialPart;
import com.google.speech.recognizer.api.RecognizerProtos.PartialResult;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionEvent;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionResult;
import com.google.speech.s3.PinholeStream.PinholeOutput;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.StatusLine;
import org.apache.http.message.BasicLineParser;

public class RecognizerController
{
  private static final String FAILED_DIRECT_GWS_REQUEST_DESCRIPTION = "Failed direct gws request";
  private static final long FORCED_TIMEOUT_MS = 20000L;
  private static final int MSG_FORCED_END = 0;
  private static final int PIPE_SIZE_BYTES = 0;
  private static final boolean SAVE_RESPONSE = false;
  private static final double STABILITY_THRESHOLD = 0.8D;
  private static final String TAG = RecognizerController.class.getSimpleName();

  @VisibleForTesting
  static final String TIMEOUT_EXCEPTION_DESCRIPTION = "Manually timed out";
  private static final boolean VERBOSE_LOGGING;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final BytePipe audioPipe = new BytePipe(PIPE_SIZE_BYTES);
  private final CallbackFactory callbackFactory;
  private final Context context;
  private final Cookies cookies;
  private DirectGwsRequest directGwsRequest;
  private Handler handler;
  private HandlerThread handlerThread;

  @VisibleForTesting
  QueueingGrecoListener queueingGrecoListener;
  private final Recognizer recognizer;
  private final com.google.android.speech.SpeechLevelSource speechLevelSource;
  private final SpeechSettings speechSettings;
  private UserEventHelper userEventHelper;
  private VoiceConfig voiceConfig;

  public RecognizerController(Recognizer paramRecognizer, com.google.android.speech.SpeechLevelSource paramSpeechLevelSource, SpeechSettings paramSpeechSettings, Cookies paramCookies, final Context paramContext, CallbackFactory paramCallbackFactory, LocationManagerHelper paramLocationManagerHelper)
  {
    this.recognizer = paramRecognizer;
    this.speechLevelSource = paramSpeechLevelSource;
    this.speechSettings = paramSpeechSettings;
    this.cookies = paramCookies;
    this.directGwsRequest = new DirectGwsRequest(paramContext, paramLocationManagerHelper);
    this.callbackFactory = paramCallbackFactory;
    this.userEventHelper = GlassApplication.from(paramContext).getUserEventHelper();
    this.context = paramContext;
    this.handlerThread = new HandlerThread("RecognizerController");
    this.handlerThread.start();
    this.handler = new Handler(this.handlerThread.getLooper())
    {
      public void handleMessage(Message paramAnonymousMessage)
      {
        switch (paramAnonymousMessage.what)
        {
        default:
          return;
        case 0:
        }
        RecognizerController.logger.e("Manually timed out request after 20000ms.", new Object[0]);
        if (RecognizerController.this.queueingGrecoListener != null)
          RecognizerController.this.queueingGrecoListener.onError(new NetworkRecognizeException("Manually timed out", new RuntimeException()));
        RecognizerController.this.recognizer.cancel();
        boolean bool = NetworkUtil.pingGoogle(paramContext);
        FormattingLogger localFormattingLogger = RecognizerController.logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Boolean.valueOf(bool);
        localFormattingLogger.e("Connected to google after failing? %s", arrayOfObject);
      }
    };
  }

  private InputStream createDispatchingWrapper(ResampleInputStream.ResampleInputStreamListener paramResampleInputStreamListener, InputStream paramInputStream)
  {
    return new ListenerStreamWrapper(paramInputStream, paramResampleInputStreamListener);
  }

  private String getDetail(Exception paramException)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = paramException;
    while (localObject != null)
    {
      localStringBuilder.append(((Throwable)localObject).getMessage());
      localObject = ((Throwable)localObject).getCause();
      localStringBuilder.append("; ");
    }
    return localStringBuilder.toString();
  }

  private Greco3Grammar getGrammarType(SessionParams.Mode paramMode)
  {
    return null;
  }

  private Greco3Mode getGreco3Mode(SessionParams.Mode paramMode)
  {
    return Greco3Mode.ENDPOINTER_VOICESEARCH;
  }

  @VisibleForTesting
  public static SessionParams.Mode getModeForVoiceConfig(VoiceConfig paramVoiceConfig)
  {
    if (paramVoiceConfig.type == VoiceConfig.Type.DICTATION)
      return SessionParams.Mode.SERVICE_API;
    if (paramVoiceConfig == VoiceConfig.SOUND_SEARCH)
      return SessionParams.Mode.SOUND_SEARCH;
    return SessionParams.Mode.VOICE_ACTIONS;
  }

  private SpeechException getSpeechException(SpeechException.Type paramType, Exception paramException)
  {
    return new SpeechException(paramType, paramException.getClass().getSimpleName(), getDetail(paramException));
  }

  private SpeechException.Type getSpeechExceptionType(RecognizeException paramRecognizeException)
  {
    if ((paramRecognizeException instanceof NetworkRecognizeException))
      return SpeechException.Type.NETWORK_RECOGNIZE;
    if ((paramRecognizeException instanceof NoMatchRecognizeException))
      return SpeechException.Type.NO_MATCH;
    if ((paramRecognizeException instanceof AudioRecognizeException))
      return SpeechException.Type.AUDIO_RECOGNIZE;
    return SpeechException.Type.SERVER;
  }

  private void maybeStopSavingAudio()
  {
    AudioInputStreamFactoryImpl localAudioInputStreamFactoryImpl = VoiceSearchContainer.getContainer().getAudioInputStreamFactory();
    if ((localAudioInputStreamFactoryImpl instanceof AudioSavingInputStreamFactoryImpl))
      ((AudioSavingInputStreamFactoryImpl)localAudioInputStreamFactoryImpl).finishRecording();
  }

  public boolean attachVoiceInputCallback(VoiceInputCallback paramVoiceInputCallback)
  {
    logger.i("attachVoiceInputCallback", new Object[0]);
    if (this.queueingGrecoListener != null)
    {
      this.queueingGrecoListener.setListener(new InternalGrecoListener(paramVoiceInputCallback));
      paramVoiceInputCallback.setSpeechLevelSource(new SpeechLevelSource()
      {
        public int getSpeechLevel()
        {
          return RecognizerController.this.speechLevelSource.getSpeechLevel();
        }
      });
      return true;
    }
    logger.w("queueingGrecoListener was null in attachVoiceInputCallback", new Object[0]);
    return false;
  }

  public void cancel()
  {
    logger.i("cancel", new Object[0]);
    this.recognizer.cancel();
    this.audioPipe.clear();
    maybeStopSavingAudio();
    if (this.queueingGrecoListener != null)
      this.queueingGrecoListener.setCanceled();
    this.queueingGrecoListener = null;
  }

  public void detachVoiceInputCallback()
  {
    logger.i("detachVoiceInputCallback", new Object[0]);
    if (this.queueingGrecoListener != null)
      this.queueingGrecoListener.setCanceled();
  }

  @VisibleForTesting
  public SessionParams.Builder getSessionParamsBuilder(SessionParams.Mode paramMode)
  {
    AudioInputParams.Builder localBuilder = new AudioInputParams.Builder();
    localBuilder.setPlayBeepEnabled(false);
    SessionParams.Builder localBuilder1 = new SessionParams.Builder();
    localBuilder1.setSpokenBcp47Locale("en-US").setGreco3Grammar(getGrammarType(paramMode)).setGreco3Mode(getGreco3Mode(paramMode)).setProfanityFilterEnabled(this.speechSettings.isProfanityFilterEnabled()).setPartialResultsEnabled(true).setRecordedAudio(false).setMode(paramMode).setAudioInputParams(localBuilder.build());
    localBuilder1.setNoSpeechDetectedEnabled(true);
    return localBuilder1;
  }

  @VisibleForTesting
  void setDirectGwsRequestForTest(DirectGwsRequest paramDirectGwsRequest)
  {
    Assert.assertIsTest();
    this.directGwsRequest = paramDirectGwsRequest;
  }

  @VisibleForTesting
  void setUserEventHelperForTest(UserEventHelper paramUserEventHelper)
  {
    Assert.assertIsTest();
    this.userEventHelper = paramUserEventHelper;
  }

  public void startListening(VoiceConfig paramVoiceConfig, ResampleInputStream.ResampleInputStreamListener paramResampleInputStreamListener)
  {
    this.voiceConfig = paramVoiceConfig;
    VoiceSearchContainer localVoiceSearchContainer = VoiceSearchContainer.getContainer();
    SessionParams localSessionParams;
    if (paramVoiceConfig == VoiceConfig.SOUND_SEARCH)
    {
      localVoiceSearchContainer.getAudioInputStreamFactory().setInputStream(new ListenerStreamWrapper(this.audioPipe, paramResampleInputStreamListener));
      logger.i("startListening", new Object[0]);
      this.queueingGrecoListener = new QueueingGrecoListener();
      localSessionParams = getSessionParamsBuilder(getModeForVoiceConfig(paramVoiceConfig)).build();
      if (!localSessionParams.getAudioInputParams().shouldStoreCompleteAudio())
        break label159;
    }
    label159: for (SettableFuture localSettableFuture = SettableFuture.create(); ; localSettableFuture = null)
    {
      this.recognizer.startListening(localSessionParams, this.queueingGrecoListener, MainThreadExecutorManager.getMainThreadExecutor(), localSettableFuture);
      this.handler.removeMessages(0);
      this.handler.sendEmptyMessageDelayed(0, 20000L);
      return;
      localVoiceSearchContainer.getAudioInputStreamFactory().setInputStream(new ResampleInputStream(paramResampleInputStreamListener, this.audioPipe, 16000, 8000));
      break;
    }
  }

  public void stopListening()
  {
    logger.i("stopListening", new Object[0]);
    this.recognizer.stopListening();
  }

  public void writeAudio(ByteBuffer paramByteBuffer)
    throws IOException
  {
    try
    {
      this.audioPipe.write(paramByteBuffer);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private class InternalGrecoListener extends RecognitionEventListenerAdapter
  {
    private CharSequence combinedRecognitionResult;
    private StringBuilder gwsHeader = null;
    private PinholePage pinholePage;
    private boolean recognitionCompleteReceived;
    private final RecognizedText recognizedText = new RecognizedText();

    @VisibleForTesting
    volatile boolean sendingThroughGws = false;
    private final VoiceInputCallback voiceInputCallback;

    public InternalGrecoListener(VoiceInputCallback arg2)
    {
      Object localObject;
      this.voiceInputCallback = localObject;
    }

    private void addGwsHeader(String paramString, boolean paramBoolean)
    {
      if ((TextUtils.isEmpty(paramString)) || (this.gwsHeader == null));
      StatusLine localStatusLine;
      do
      {
        do
        {
          return;
          this.gwsHeader.append(paramString);
        }
        while (!paramBoolean);
        String[] arrayOfString = this.gwsHeader.toString().split("\r\n");
        localStatusLine = null;
        ArrayList localArrayList = new ArrayList();
        int i = 0;
        if (i < arrayOfString.length)
        {
          String str3 = arrayOfString[i];
          if (i == 0)
            localStatusLine = BasicLineParser.parseStatusLine(str3, new BasicLineParser());
          while (true)
          {
            i++;
            break;
            if (str3.startsWith("Set-Cookie:"))
              localArrayList.add(str3.substring(11));
          }
        }
        if ((localStatusLine != null) && (localStatusLine.getStatusCode() == 200))
        {
          RecognizerController.this.cookies.setCookiesFromSetCookieHeaders(new SearchQueryBuilder().toString(), localArrayList);
          return;
        }
        RecognizerController.logger.w("status is not 200 OK: %s", new Object[] { localStatusLine });
      }
      while ((useGwsServer()) && (this.sendingThroughGws));
      String str1 = UserEventHelper.createEventTuple("c", Integer.valueOf(localStatusLine.getStatusCode()), new Object[0]);
      RecognizerController.this.userEventHelper.log(UserEventAction.VOICE_SEARCH_NOT_OK_HTTP_STATUS_RETRYING, str1);
      String str2 = this.combinedRecognitionResult.toString();
      boolean bool;
      if (localStatusLine != null)
      {
        int j = localStatusLine.getStatusCode();
        bool = false;
        if (j == 401);
      }
      else
      {
        bool = true;
      }
      sendGwsRequest(str2, bool);
    }

    private void handleActionResults(String paramString)
    {
      if (TextUtils.isEmpty(paramString));
      while (true)
      {
        return;
        try
        {
          byte[] arrayOfByte2 = Base64.decode(paramString, 8);
          arrayOfByte1 = arrayOfByte2;
          if ((arrayOfByte1 == null) || (arrayOfByte1.length == 0))
            continue;
          this.voiceInputCallback.onActionResponse(arrayOfByte1);
          return;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          while (true)
          {
            RecognizerController.logger.e(localIllegalArgumentException, "unable to base64 decode action string", new Object[0]);
            byte[] arrayOfByte1 = null;
          }
        }
      }
    }

    private void sendGwsRequest(String paramString, boolean paramBoolean)
    {
      this.sendingThroughGws = true;
      RecognizerController.this.directGwsRequest.sendGwsRequest(paramString, paramBoolean, new GwsResponseHandler()
      {
        public void onActionResult(String paramAnonymousString)
        {
          RecognizerController.InternalGrecoListener.this.handleActionResults(paramAnonymousString);
        }

        public void onError(Exception paramAnonymousException)
        {
          RecognizerController.InternalGrecoListener.this.voiceInputCallback.onError(RecognizerController.this.getSpeechException(SpeechException.Type.NETWORK_RECOGNIZE, new NetworkRecognizeException("Failed direct gws request", paramAnonymousException)));
          RecognizerController.InternalGrecoListener.this.sendingThroughGws = false;
        }

        public void onHtmlAnswerCardResult(String paramAnonymousString)
        {
          RecognizerController.InternalGrecoListener.this.voiceInputCallback.onHtmlAnswerCardResult(paramAnonymousString);
          RecognizerController.InternalGrecoListener.this.sendingThroughGws = false;
        }

        public void onNoResults()
        {
          RecognizerController.InternalGrecoListener.this.voiceInputCallback.showDone();
          RecognizerController.InternalGrecoListener.this.sendingThroughGws = false;
        }
      });
      NetworkInfo localNetworkInfo = ((ConnectivityManager)RecognizerController.this.context.getSystemService("connectivity")).getActiveNetworkInfo();
      Boolean localBoolean = Boolean.valueOf(paramBoolean);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = "network";
      if (localNetworkInfo != null);
      for (int i = localNetworkInfo.getType(); ; i = -1)
      {
        arrayOfObject[1] = Integer.valueOf(i);
        String str = UserEventHelper.createEventTuple("si", localBoolean, arrayOfObject);
        RecognizerController.this.userEventHelper.log(UserEventAction.VOICE_SEARCH_SEND_DIRECT_GWS_REQUEST, str);
        return;
      }
    }

    private boolean useGwsServer()
    {
      return Labs.isEnabled(Labs.Feature.SPECIAL_GWS_SERVER);
    }

    public String getRecognitionResult(RecognizerProtos.RecognitionEvent paramRecognitionEvent)
    {
      if (paramRecognitionEvent.hasResult())
      {
        RecognizerProtos.RecognitionResult localRecognitionResult = paramRecognitionEvent.getResult();
        if (localRecognitionResult.getHypothesisCount() > 0)
        {
          RecognizerProtos.Hypothesis localHypothesis = localRecognitionResult.getHypothesis(0);
          if (localHypothesis.hasText())
            return localHypothesis.getText();
        }
      }
      return null;
    }

    public void onBeginningOfSpeech()
    {
      RecognizerController.logger.d("onBeginningOfSpeech", new Object[0]);
      this.voiceInputCallback.showRecording();
    }

    public void onDone()
    {
      RecognizerController.this.handler.removeMessages(0);
      RecognizerController.logger.d("onDone", new Object[0]);
      if (!this.sendingThroughGws)
        this.voiceInputCallback.showDone();
      if (!this.recognitionCompleteReceived)
        this.voiceInputCallback.onError(RecognizerController.this.getSpeechException(SpeechException.Type.NO_MATCH, new NoMatchRecognizeException()));
    }

    public void onEndOfSpeech()
    {
      RecognizerController.logger.d("onEndOfSpeech", new Object[0]);
      this.voiceInputCallback.showRecognizing();
    }

    public void onError(RecognizeException paramRecognizeException)
    {
      RecognizerController.this.handler.removeMessages(0);
      SpeechException.Type localType = RecognizerController.this.getSpeechExceptionType(paramRecognizeException);
      if ((!TextUtils.isEmpty(this.combinedRecognitionResult)) && (RecognizerController.this.voiceConfig != null) && (VoiceConfig.Type.SEARCH.equals(RecognizerController.this.voiceConfig.type)) && (localType != SpeechException.Type.NO_MATCH) && ((TextUtils.isEmpty(paramRecognizeException.getMessage())) || ((!paramRecognizeException.getMessage().contains("Manually timed out")) && (!paramRecognizeException.getMessage().contains("Failed direct gws request")))))
      {
        FormattingLogger localFormattingLogger = RecognizerController.logger;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = localType;
        arrayOfObject[1] = this.combinedRecognitionResult;
        localFormattingLogger.e(paramRecognizeException, "Received onError %s with a final result %s, sending gws request", arrayOfObject);
        sendGwsRequest(this.combinedRecognitionResult.toString(), true);
        return;
      }
      String str = this.recognizedText.getStableForErrorReporting();
      RecognizerController.logger.e(paramRecognizeException, "onError [%s]", new Object[] { str });
      this.voiceInputCallback.onError(RecognizerController.this.getSpeechException(localType, paramRecognizeException));
    }

    public void onMediaDataResult(byte[] paramArrayOfByte)
    {
      FormattingLogger localFormattingLogger = RecognizerController.logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramArrayOfByte.length);
      localFormattingLogger.d("onMediaDataResult (ignored) - audio length: %s", arrayOfObject);
    }

    public void onMusicDetected()
    {
      RecognizerController.logger.d("Music detected", new Object[0]);
      this.voiceInputCallback.showMusicDetected();
    }

    public void onNoSpeechDetected()
    {
      RecognizerController.this.handler.removeMessages(0);
      RecognizerController.logger.d("onNoSpeechDetected", new Object[0]);
      this.voiceInputCallback.showNoSpeechDetected();
    }

    public void onPinholeResult(PinholeStream.PinholeOutput paramPinholeOutput)
    {
      RecognizerController.this.handler.removeMessages(0);
      if ((useGwsServer()) || (this.sendingThroughGws))
        return;
      RecognizerController.logger.d("onPinholeResult", new Object[0]);
      if (this.recognitionCompleteReceived)
      {
        if (!TextUtils.isEmpty(this.combinedRecognitionResult));
        for (boolean bool = true; ; bool = false)
        {
          Preconditions.checkState(bool);
          if (this.pinholePage == null)
            this.pinholePage = new PinholePage();
          this.pinholePage.update(paramPinholeOutput);
          PinholePage.PinholeDocument localPinholeDocument1 = this.pinholePage.getPinholeDocumentByType("act0");
          if (localPinholeDocument1 != null)
            handleActionResults(localPinholeDocument1.getText().toString());
          PinholePage.PinholeDocument localPinholeDocument2 = this.pinholePage.getPinholeDocumentByType("ans0");
          if (localPinholeDocument2 != null)
          {
            RecognizerController.logger.d("Got a doc from the pinhole results.", new Object[0]);
            this.voiceInputCallback.onHtmlAnswerCardResult(localPinholeDocument2.getText().toString());
            this.pinholePage = null;
          }
          if (!paramPinholeOutput.hasGwsHeaderFragment())
            break;
          addGwsHeader(paramPinholeOutput.getGwsHeaderFragment(), paramPinholeOutput.getGwsHeaderComplete());
          return;
        }
      }
      RecognizerController.logger.e("No recognition result from server.", new Object[0]);
      this.voiceInputCallback.onError(RecognizerController.this.getSpeechException(SpeechException.Type.NO_MATCH, new NoMatchRecognizeException()));
    }

    public void onReadyForSpeech(float paramFloat1, float paramFloat2)
    {
      RecognizerController.logger.d("onReadyForSpeech", new Object[0]);
      this.voiceInputCallback.showListening();
    }

    public void onRecognitionResult(RecognizerProtos.RecognitionEvent paramRecognitionEvent)
    {
      if (this.recognizedText.hasCompletedRecognition())
        RecognizerController.logger.e("Result after completed recognition.", new Object[0]);
      do
      {
        int j;
        do
        {
          return;
          if (paramRecognitionEvent.getEventType() != 0)
            break;
          RecognizerController.this.handler.removeMessages(0);
          RecognizerController.this.handler.sendEmptyMessageDelayed(0, 20000L);
          String str1 = "";
          String str2 = "";
          RecognizerProtos.PartialResult localPartialResult = paramRecognitionEvent.getPartialResult();
          int i = 0;
          if ((localPartialResult != null) && (i < localPartialResult.getPartCount()))
          {
            RecognizerProtos.PartialPart localPartialPart = localPartialResult.getPart(i);
            if (localPartialPart.getStability() >= 0.8D)
              str1 = str1 + localPartialPart.getText();
            while (true)
            {
              i++;
              break;
              str2 = str2 + localPartialPart.getText();
            }
          }
          RecognizerController.logger.d("onRecognitionResult", new Object[0]);
          Log.logPii(3, RecognizerController.TAG, "onRecognitionResult(" + str1 + "," + str2 + ")");
          if (str1.length() + str2.length() == 0)
            str1 = getRecognitionResult(paramRecognitionEvent);
          if ((str1 != null) && (str1.length() + str2.length() > 0))
            this.voiceInputCallback.updateRecognizedText(str1, str2);
          if (TextUtils.isEmpty(str1))
          {
            boolean bool = TextUtils.isEmpty(str2);
            j = 0;
            if (bool);
          }
          else
          {
            j = 1;
          }
        }
        while ((j == 0) || (RecognizerController.this.callbackFactory == null) || (RecognizerController.this.callbackFactory.getLastEndpointerEventProcessor() == null));
        RecognizerController.this.callbackFactory.getLastEndpointerEventProcessor().resetNoSpeechDetectedTimer();
        return;
      }
      while (paramRecognitionEvent.getEventType() != 1);
      RecognizerController.this.handler.removeMessages(0);
      CorrectableString localCorrectableString = this.recognizedText.updateFinal(paramRecognitionEvent);
      RecognizerController.logger.d("onRecognitionResult(combined)", new Object[0]);
      Log.logPii(3, RecognizerController.TAG, "onRecognitionResult(combined=" + localCorrectableString + ")");
      this.recognitionCompleteReceived = true;
      this.combinedRecognitionResult = localCorrectableString;
      this.gwsHeader = new StringBuilder();
      this.pinholePage = null;
      if (useGwsServer())
        sendGwsRequest(localCorrectableString.toString(), true);
      if (TextUtils.isEmpty(localCorrectableString))
      {
        this.voiceInputCallback.onError(RecognizerController.this.getSpeechException(SpeechException.Type.NO_MATCH, new NoMatchRecognizeException()));
        return;
      }
      if ((paramRecognitionEvent.hasCombinedResult()) && (paramRecognitionEvent.getCombinedResult().getHypothesisCount() > 0));
      for (float f = paramRecognitionEvent.getCombinedResult().getHypothesis(0).getConfidence(); ; f = 0.0F)
      {
        this.voiceInputCallback.onRecognitionResult(localCorrectableString, f);
        return;
      }
    }

    public void onSoundSearchResult(EarsService.EarsResultsResponse paramEarsResultsResponse)
    {
      RecognizerController.logger.d("Sound search result", new Object[0]);
      this.voiceInputCallback.onSoundSearchResult(paramEarsResultsResponse);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.RecognizerController
 * JD-Core Version:    0.6.2
 */