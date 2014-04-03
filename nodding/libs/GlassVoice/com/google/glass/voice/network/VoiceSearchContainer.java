package com.google.glass.voice.network;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.location.LocationManager;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.SSLCertificateSocketFactory;
import android.net.SSLSessionCache;
import android.telephony.TelephonyManager;
import com.google.android.searchcommon.util.ConcurrentUtils;
import com.google.android.speech.GrecoRecognizer;
import com.google.android.speech.Recognizer;
import com.google.android.speech.SpeechLevelSource;
import com.google.android.speech.SpeechLibFactory;
import com.google.android.speech.SpeechSettings;
import com.google.android.speech.audio.AudioController;
import com.google.android.speech.audio.SpeechSoundManager;
import com.google.android.speech.embedded.Greco3DataManager;
import com.google.android.speech.embedded.Greco3DataManager.PathDeleter;
import com.google.android.speech.embedded.Greco3EngineManager;
import com.google.android.speech.embedded.Greco3Grammar;
import com.google.android.speech.embedded.Greco3Mode;
import com.google.android.speech.embedded.Greco3ModeSelector;
import com.google.android.speech.network.ConnectionFactory;
import com.google.android.speech.network.IoUtils;
import com.google.android.speech.network.PairHttpConnectionFactory;
import com.google.android.speech.params.NetworkRequestProducerParams;
import com.google.android.speech.params.RecognitionEngineParams;
import com.google.android.speech.params.RecognitionEngineParams.EmbeddedParams;
import com.google.android.speech.params.RecognitionEngineParams.HybridParams;
import com.google.android.speech.params.RecognitionEngineParams.MusicDetectorParams;
import com.google.android.speech.params.RecognitionEngineParams.NetworkParams;
import com.google.android.speech.utils.NetworkInformation;
import com.google.android.voicesearch.AudioRouter;
import com.google.android.voicesearch.LogExtras;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableList;
import com.google.common.io.ByteStreams;
import com.google.glass.location.LocationManagerHelper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.ClockProvider;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.voice.R.raw;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.Configuration;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.EndpointerParams;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.HttpServerInfo;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.NetworkRecognizer;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.PairHttpServerInfo;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.ServerInfo;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.ServiceApi;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.URL;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocketFactory;

public class VoiceSearchContainer
{
  private static final int BACKGROUND_SCHEDULED_EXECUTOR_THREADS = 5;
  private static final String ENDPOINTER_MODELS_PATH = "/system/usr/srec";

  @VisibleForTesting
  public static final int ENDPOINTER_TIMEOUT_DICTATION_MILLIS = 750;
  public static final int[] LANGUAGE_PACK_FORMAT_VERSION = { 2 };
  private static final String LOCAL_ENGINE_THREAD = "LocalEngine";
  private static final String MUSIC_DETECTOR_ENGINE_THREAD = "MusicDetectorEngine";
  private static final String NETWORK_ENGINE_THREAD = "NetworkEngine";
  private static final String SEARCH_PREFS = "search_prefs";
  public static final String SPOKEN_LOCALE_BCP_47 = "en-US";
  private static final int TCP_PORT_DEV = 14254;
  private static final int TCP_PORT_PROD = 14259;
  private static final int TCP_PORT_STAGE = 14257;
  private static final int TCP_PORT_TEST = 14255;

  @VisibleForTesting
  static VoiceSearchContainer container;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private AudioController audioController;
  private final AudioInputStreamFactoryImpl audioInputStreamFactory;

  @VisibleForTesting
  public CallbackFactory callbackFactory;
  private final GstaticConfiguration.Configuration config;
  private final Context context;
  private Cookies cookies;
  private Greco3EngineManager greco3EngineManager;
  private final LocationManagerHelper locationManagerHelper;
  private NetworkInformation networkInfo;
  private NetworkRequestProducerParams networkRequestProducerParams;
  private RecognizerController recognizerController;
  private final ScheduledExecutorService scheduledExecutorService;
  private final SpeechLevelSource speechLevelSource;
  private SpeechLibFactory speechLibFactory;
  private final SpeechSettings speechSettings;

  private VoiceSearchContainer(Context paramContext)
  {
    this.context = paramContext;
    this.locationManagerHelper = new LocationManagerHelper((LocationManager)paramContext.getSystemService("location"), ClockProvider.get());
    this.config = getConfiguration(paramContext);
    this.scheduledExecutorService = ConcurrentUtils.createSafeScheduledExecutorService(5, "BackgroundExecutor");
    if (Labs.isEnabled(Labs.Feature.IGY_RCRD));
    for (this.audioInputStreamFactory = new AudioSavingInputStreamFactoryImpl(); ; this.audioInputStreamFactory = new AudioInputStreamFactoryImpl())
    {
      this.speechLevelSource = new SpeechLevelSource();
      this.speechSettings = new SpeechSettingsImpl(paramContext, this.config);
      this.cookies = Cookies.create(paramContext);
      return;
    }
  }

  public static void createContainer(Context paramContext)
  {
    try
    {
      container = new VoiceSearchContainer(paramContext);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private RecognitionEngineParams.EmbeddedParams createEmbeddedParams(List<EndpointerEventProcessor.EventPreprocessor> paramList)
  {
    Greco3ModeSelector local4 = new Greco3ModeSelector()
    {
      public Greco3Mode getFallbackMode(Greco3Mode paramAnonymousGreco3Mode, Greco3Grammar paramAnonymousGreco3Grammar)
      {
        return paramAnonymousGreco3Mode;
      }

      public Greco3Mode getMode(Greco3Mode paramAnonymousGreco3Mode, Greco3Grammar paramAnonymousGreco3Grammar)
      {
        return paramAnonymousGreco3Mode;
      }
    };
    this.callbackFactory = new CallbackFactory(paramList, this.context);
    return new RecognitionEngineParams.EmbeddedParams(this.callbackFactory, getGreco3EngineManager(), local4, getSpeechLevelSource(), this.speechSettings, 2, 8000);
  }

  private RecognitionEngineParams.HybridParams createHybridParams(ExecutorService paramExecutorService1, ExecutorService paramExecutorService2, ExecutorService paramExecutorService3)
  {
    return new RecognitionEngineParams.HybridParams(getNetworkInfo(), this.speechSettings, this.scheduledExecutorService, paramExecutorService1, paramExecutorService2, paramExecutorService3);
  }

  private RecognitionEngineParams.NetworkParams createNetworkParams(ExecutorService paramExecutorService)
  {
    PairHttpConnectionFactory localPairHttpConnectionFactory = new PairHttpConnectionFactory(new Supplier()
    {
      public GstaticConfiguration.PairHttpServerInfo get()
      {
        return VoiceSearchContainer.this.config.getPairHttpServerInfo();
      }
    }
    , new ConnectionFactoryImpl(this.context));
    return new RecognitionEngineParams.NetworkParams(localPairHttpConnectionFactory, localPairHttpConnectionFactory, new RetryPolicyImpl(new Supplier()
    {
      public GstaticConfiguration.NetworkRecognizer get()
      {
        return VoiceSearchContainer.this.speechSettings.getConfiguration().getNetworkRecognizer();
      }
    }
    , ClockProvider.get()), paramExecutorService, getNetworkRequestProducerParams());
  }

  private Recognizer createRecognizer(List<EndpointerEventProcessor.EventPreprocessor> paramList)
  {
    logger.i("Creating Recognizer", new Object[0]);
    try
    {
      ScheduledExecutorService localScheduledExecutorService1 = ConcurrentUtils.createSafeScheduledExecutorService(1, "LocalEngine");
      ScheduledExecutorService localScheduledExecutorService2 = ConcurrentUtils.createSafeScheduledExecutorService(1, "NetworkEngine");
      ScheduledExecutorService localScheduledExecutorService3 = ConcurrentUtils.createSafeScheduledExecutorService(1, "MusicDetectorEngine");
      RecognitionEngineParams.EmbeddedParams localEmbeddedParams = createEmbeddedParams(paramList);
      RecognitionEngineParams.NetworkParams localNetworkParams = createNetworkParams(localScheduledExecutorService2);
      RecognitionEngineParams.HybridParams localHybridParams = createHybridParams(localScheduledExecutorService1, localScheduledExecutorService2, localScheduledExecutorService3);
      RecognitionEngineParams.MusicDetectorParams localMusicDetectorParams = new RecognitionEngineParams.MusicDetectorParams(this.speechSettings);
      Recognizer localRecognizer = GrecoRecognizer.create(ConcurrentUtils.newSingleThreadExecutor("GrecoExecutor"), new RecognitionEngineParams(localEmbeddedParams, localNetworkParams, localMusicDetectorParams, localHybridParams), getAudioController(), getSpeechLibFactory());
      return localRecognizer;
    }
    catch (RuntimeException localRuntimeException)
    {
      logger.e(localRuntimeException, "Error creating greco recognizer", new Object[0]);
    }
    return null;
  }

  public static void destroyContainer()
  {
    try
    {
      if (container != null)
      {
        container.destroy();
        container = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static GstaticConfiguration.Configuration getConfiguration(Context paramContext)
  {
    try
    {
      GstaticConfiguration.Configuration localConfiguration = GstaticConfiguration.Configuration.parseFrom(ByteStreams.toByteArray(paramContext.getResources().openRawResource(R.raw.greco_config)));
      GstaticConfiguration.ServiceApi localServiceApi = localConfiguration.getServiceApi();
      GstaticConfiguration.EndpointerParams localEndpointerParams = localServiceApi.getEndpointerParams();
      localEndpointerParams.setExtraSilenceAfterEndOfSpeechMsec(750);
      localServiceApi.setEndpointerParams(localEndpointerParams);
      localConfiguration.setServiceApi(localServiceApi);
      if (Labs.isEnabled(Labs.Feature.SEARCH_DEV_SERVER))
      {
        localConfiguration.getTcpServerInfo().setHost("vs.google.com");
        localConfiguration.getTcpServerInfo().setPort(14254);
        localConfiguration.getPairHttpServerInfo().getUp().setUrl("https://voice-search-dev.sandbox.google.com/m/voice-search/up?sky=rad_853f_1e8f_7309_4687&pair=");
        localConfiguration.getPairHttpServerInfo().getDown().setUrl("https://voice-search-dev.sandbox.google.com/m/voice-search/down?sky=rad_853f_1e8f_7309_4687&pair=");
      }
      while (true)
      {
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = String.valueOf(localConfiguration.getTcpServerInfo().getPort());
        localFormattingLogger.d("S3 Port: %s", arrayOfObject);
        return localConfiguration;
        if (Labs.isEnabled(Labs.Feature.SEARCH_TEST_SERVER))
        {
          localConfiguration.getTcpServerInfo().setHost("vs.google.com");
          localConfiguration.getTcpServerInfo().setPort(14255);
          localConfiguration.getPairHttpServerInfo().getUp().setUrl("https://voice-search-testing.sandbox.google.com/m/voice-search/up?sky=rad_853f_1e8f_7309_4687&pair=");
          localConfiguration.getPairHttpServerInfo().getDown().setUrl("https://voice-search-testing.sandbox.google.com/m/voice-search/down?sky=rad_853f_1e8f_7309_4687&pair=");
        }
      }
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Unable to load configuration", localIOException);
    }
  }

  public static VoiceSearchContainer getContainer()
  {
    try
    {
      if (container != null)
      {
        VoiceSearchContainer localVoiceSearchContainer = container;
        return localVoiceSearchContainer;
      }
      throw new NullPointerException("Voice Search Container not set.");
    }
    finally
    {
    }
  }

  private NetworkRequestProducerParams getNetworkRequestProducerParams()
  {
    if (this.networkRequestProducerParams == null)
      this.networkRequestProducerParams = NetworkRequestProducerParamsBuilder.create(this.context, this.speechSettings, getNetworkInfo(), new SearchQueryBuilder.LocationHelperImpl(this.locationManagerHelper), this.cookies);
    return this.networkRequestProducerParams;
  }

  private SpeechLibFactory getSpeechLibFactory()
  {
    if (this.speechLibFactory == null)
      this.speechLibFactory = new SpeechLibFactoryImpl();
    return this.speechLibFactory;
  }

  public void destroy()
  {
    this.scheduledExecutorService.shutdownNow();
  }

  public AudioController getAudioController()
  {
    if (this.audioController == null)
    {
      SpeechSoundManager local1 = new SpeechSoundManager()
      {
        public int playSpeakNowSound()
        {
          return 0;
        }
      };
      AudioRouter local2 = new AudioRouter()
      {
        public int getAudioStream()
        {
          return 0;
        }

        public void setHandsFreeMode(boolean paramAnonymousBoolean)
        {
        }

        public void setHeadsetEnabled(boolean paramAnonymousBoolean)
        {
        }

        public boolean shouldUseScoForAllAudio()
        {
          return false;
        }

        public boolean start()
        {
          return true;
        }

        public boolean startListening()
        {
          return false;
        }

        public void stop()
        {
        }

        public void stopListening()
        {
        }
      };
      Supplier local3 = new Supplier()
      {
        public Integer get()
        {
          return Integer.valueOf(1);
        }
      };
      this.audioController = new AudioController(this.context, this.speechSettings, getSpeechLevelSource(), local1, local3, local2, (AudioManager)this.context.getSystemService("audio"), getSpeechLibFactory().buildSpeechLibLogger(), new LogExtras(getNetworkInfo()));
      this.audioController.setRawInputStreamFactory(this.audioInputStreamFactory);
    }
    return this.audioController;
  }

  public AudioInputStreamFactoryImpl getAudioInputStreamFactory()
  {
    return this.audioInputStreamFactory;
  }

  public GstaticConfiguration.Configuration getConfig()
  {
    return this.config;
  }

  public Greco3EngineManager getGreco3EngineManager()
  {
    if (this.greco3EngineManager == null)
    {
      ImmutableList localImmutableList = ImmutableList.of(new File("/system/usr/srec"));
      Greco3DataManager localGreco3DataManager = new Greco3DataManager(this.context, null, LANGUAGE_PACK_FORMAT_VERSION, localImmutableList, null, this.scheduledExecutorService);
      localGreco3DataManager.setPathDeleter(new Greco3DataManager.PathDeleter()
      {
        public void delete(File paramAnonymousFile, boolean paramAnonymousBoolean)
        {
        }
      });
      this.greco3EngineManager = new Greco3EngineManager(localGreco3DataManager, null, null);
    }
    return this.greco3EngineManager;
  }

  public NetworkInformation getNetworkInfo()
  {
    try
    {
      if (this.networkInfo == null)
        this.networkInfo = new NetworkInformation((TelephonyManager)this.context.getSystemService("phone"), (ConnectivityManager)this.context.getSystemService("connectivity"));
      NetworkInformation localNetworkInformation = this.networkInfo;
      return localNetworkInformation;
    }
    finally
    {
    }
  }

  public RecognizerController getRecognizerController(List<EndpointerEventProcessor.EventPreprocessor> paramList)
  {
    try
    {
      if (this.recognizerController == null)
        this.recognizerController = new RecognizerController(createRecognizer(paramList), this.speechLevelSource, this.speechSettings, this.cookies, this.context, this.callbackFactory, this.locationManagerHelper);
      return this.recognizerController;
    }
    finally
    {
    }
  }

  public ScheduledExecutorService getScheduledExecutorService()
  {
    return this.scheduledExecutorService;
  }

  public SpeechLevelSource getSpeechLevelSource()
  {
    return this.speechLevelSource;
  }

  public SpeechSettings getSpeechSettings()
  {
    return this.speechSettings;
  }

  private static class ConnectionFactoryImpl
    implements ConnectionFactory
  {
    private final Context context;
    private SocketFactory plainSocketFactory;
    private SSLSocketFactory sslSocketFactory;

    public ConnectionFactoryImpl(Context paramContext)
    {
      this.context = paramContext;
    }

    private void maybeInitSocketConnection(GstaticConfiguration.ServerInfo paramServerInfo)
    {
      try
      {
        int i;
        if (this.plainSocketFactory == null)
        {
          this.plainSocketFactory = SocketFactory.getDefault();
          i = paramServerInfo.getConnectionTimeoutMsec();
          if (this.context != null)
            break label44;
        }
        label44: for (SSLSessionCache localSSLSessionCache = null; ; localSSLSessionCache = new SSLSessionCache(this.context))
        {
          this.sslSocketFactory = SSLCertificateSocketFactory.getDefault(i, localSSLSessionCache);
          return;
        }
      }
      finally
      {
      }
    }

    public HttpURLConnection openHttpConnection(GstaticConfiguration.HttpServerInfo paramHttpServerInfo)
      throws IOException
    {
      return openHttpConnection(paramHttpServerInfo, new URL(paramHttpServerInfo.getUrl()));
    }

    public HttpURLConnection openHttpConnection(GstaticConfiguration.HttpServerInfo paramHttpServerInfo, URL paramURL)
      throws IOException
    {
      VoiceSearchContainer.logger.i("Opening HTTP connection to: %s", new Object[] { paramURL });
      HttpURLConnection localHttpURLConnection = (HttpURLConnection)paramURL.openConnection();
      localHttpURLConnection.setReadTimeout(paramHttpServerInfo.getReadTimeoutMsec());
      localHttpURLConnection.setConnectTimeout(paramHttpServerInfo.getConnectionTimeoutMsec());
      if (paramHttpServerInfo.hasChunkSize())
        localHttpURLConnection.setChunkedStreamingMode(paramHttpServerInfo.getChunkSize());
      return localHttpURLConnection;
    }

    public Socket openSocket(GstaticConfiguration.ServerInfo paramServerInfo)
      throws IOException
    {
      maybeInitSocketConnection(paramServerInfo);
      String str = paramServerInfo.getHost();
      int i = paramServerInfo.getPort();
      if (paramServerInfo.getUseSsl())
      {
        FormattingLogger localFormattingLogger2 = VoiceSearchContainer.logger;
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = str;
        arrayOfObject2[1] = String.valueOf(i);
        localFormattingLogger2.i("Opening SSL connection: %s: %s", arrayOfObject2);
      }
      for (Socket localSocket = this.sslSocketFactory.createSocket(str, i); ; localSocket = this.plainSocketFactory.createSocket(str, i))
      {
        IoUtils.tagSocket(localSocket);
        localSocket.setSendBufferSize(paramServerInfo.getOutBufferSize());
        localSocket.setReceiveBufferSize(paramServerInfo.getInBufferSize());
        localSocket.setSoTimeout(paramServerInfo.getConnectionTimeoutMsec());
        return localSocket;
        FormattingLogger localFormattingLogger1 = VoiceSearchContainer.logger;
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = str;
        arrayOfObject1[1] = String.valueOf(i);
        localFormattingLogger1.i("Opening TCP connection: %s: %s", arrayOfObject1);
      }
    }
  }

  @VisibleForTesting
  public static class SpeechSettingsImpl
    implements SpeechSettings
  {
    private static final String INSTALL_ID_PREF = "install-id";
    private final GstaticConfiguration.Configuration config;
    private final Context context;

    public SpeechSettingsImpl(Context paramContext, GstaticConfiguration.Configuration paramConfiguration)
    {
      this.context = paramContext;
      this.config = paramConfiguration;
    }

    private String createInstallId()
    {
      try
      {
        String str = UUID.randomUUID().toString();
        getSharedPreferences().edit().putString("install-id", str).apply();
        return str;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public GstaticConfiguration.Configuration getConfiguration()
    {
      return this.config;
    }

    public String getInstallId()
    {
      String str = getSharedPreferences().getString("install-id", null);
      if (str == null)
        str = createInstallId();
      return str;
    }

    public SharedPreferences getSharedPreferences()
    {
      return this.context.getSharedPreferences("search_prefs", 0);
    }

    public String getSpokenLocaleBcp47()
    {
      return "en-US";
    }

    public boolean isDebugAudioLoggingEnabled()
    {
      return false;
    }

    public boolean isPersonalizationEnabled()
    {
      return false;
    }

    public boolean isProfanityFilterEnabled()
    {
      return false;
    }

    public boolean isSoundSearchEnabled()
    {
      return true;
    }

    public void setSpokenLanguageBcp47(String paramString, boolean paramBoolean)
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.VoiceSearchContainer
 * JD-Core Version:    0.6.2
 */