.class public Lcom/google/glass/voice/network/VoiceSearchContainer;
.super Ljava/lang/Object;
.source "VoiceSearchContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/VoiceSearchContainer$SpeechSettingsImpl;,
        Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;
    }
.end annotation


# static fields
.field private static final BACKGROUND_SCHEDULED_EXECUTOR_THREADS:I = 0x5

.field private static final ENDPOINTER_MODELS_PATH:Ljava/lang/String; = "/system/usr/srec"

.field public static final ENDPOINTER_TIMEOUT_DICTATION_MILLIS:I = 0x2ee
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LANGUAGE_PACK_FORMAT_VERSION:[I = null

.field private static final LOCAL_ENGINE_THREAD:Ljava/lang/String; = "LocalEngine"

.field private static final MUSIC_DETECTOR_ENGINE_THREAD:Ljava/lang/String; = "MusicDetectorEngine"

.field private static final NETWORK_ENGINE_THREAD:Ljava/lang/String; = "NetworkEngine"

.field private static final SEARCH_PREFS:Ljava/lang/String; = "search_prefs"

.field public static final SPOKEN_LOCALE_BCP_47:Ljava/lang/String; = "en-US"

.field private static final TCP_PORT_DEV:I = 0x37ae

.field private static final TCP_PORT_PROD:I = 0x37b3

.field private static final TCP_PORT_STAGE:I = 0x37b1

.field private static final TCP_PORT_TEST:I = 0x37af

.field static container:Lcom/google/glass/voice/network/VoiceSearchContainer;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private audioController:Lcom/google/android/speech/audio/AudioController;

.field private final audioInputStreamFactory:Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;

.field public callbackFactory:Lcom/google/glass/voice/network/CallbackFactory;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

.field private final context:Landroid/content/Context;

.field private cookies:Lcom/google/glass/voice/network/Cookies;

.field private greco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

.field private final locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

.field private networkInfo:Lcom/google/android/speech/utils/NetworkInformation;

.field private networkRequestProducerParams:Lcom/google/android/speech/params/NetworkRequestProducerParams;

.field private recognizerController:Lcom/google/glass/voice/network/RecognizerController;

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final speechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

.field private speechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

.field private final speechSettings:Lcom/google/android/speech/SpeechSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->LANGUAGE_PACK_FORMAT_VERSION:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    .line 164
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 166
    .local v0, locationManager:Landroid/location/LocationManager;
    new-instance v1, Lcom/google/glass/location/LocationManagerHelper;

    invoke-static {}, Lcom/google/glass/util/ClockProvider;->get()Lcom/google/glass/util/Clock;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/glass/location/LocationManagerHelper;-><init>(Landroid/location/LocationManager;Lcom/google/glass/util/Clock;)V

    iput-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    .line 168
    invoke-static {p1}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getConfiguration(Landroid/content/Context;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 170
    const/4 v1, 0x5

    const-string v2, "BackgroundExecutor"

    invoke-static {v1, v2}, Lcom/google/android/searchcommon/util/ConcurrentUtils;->createSafeScheduledExecutorService(ILjava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 173
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->IGY_RCRD:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    new-instance v1, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl;

    invoke-direct {v1}, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl;-><init>()V

    iput-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioInputStreamFactory:Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;

    .line 178
    :goto_0
    new-instance v1, Lcom/google/android/speech/SpeechLevelSource;

    invoke-direct {v1}, Lcom/google/android/speech/SpeechLevelSource;-><init>()V

    iput-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

    .line 179
    new-instance v1, Lcom/google/glass/voice/network/VoiceSearchContainer$SpeechSettingsImpl;

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    invoke-direct {v1, p1, v2}, Lcom/google/glass/voice/network/VoiceSearchContainer$SpeechSettingsImpl;-><init>(Landroid/content/Context;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)V

    iput-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 180
    invoke-static {p1}, Lcom/google/glass/voice/network/Cookies;->create(Landroid/content/Context;)Lcom/google/glass/voice/network/Cookies;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->cookies:Lcom/google/glass/voice/network/Cookies;

    .line 181
    return-void

    .line 176
    :cond_0
    new-instance v1, Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;

    invoke-direct {v1}, Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;-><init>()V

    iput-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioInputStreamFactory:Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/glass/voice/network/VoiceSearchContainer;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/network/VoiceSearchContainer;)Lcom/google/android/speech/SpeechSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public static declared-synchronized createContainer(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 143
    const-class v1, Lcom/google/glass/voice/network/VoiceSearchContainer;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/glass/voice/network/VoiceSearchContainer;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->container:Lcom/google/glass/voice/network/VoiceSearchContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit v1

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private createEmbeddedParams(Ljava/util/List;)Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;",
            ">;)",
            "Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, endpointerEventPreprocessors:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;>;"
    new-instance v3, Lcom/google/glass/voice/network/VoiceSearchContainer$4;

    invoke-direct {v3, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$4;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    .line 347
    .local v3, greco3SelectorMode:Lcom/google/android/speech/embedded/Greco3ModeSelector;
    new-instance v0, Lcom/google/glass/voice/network/CallbackFactory;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/google/glass/voice/network/CallbackFactory;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->callbackFactory:Lcom/google/glass/voice/network/CallbackFactory;

    .line 348
    new-instance v0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->callbackFactory:Lcom/google/glass/voice/network/CallbackFactory;

    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getGreco3EngineManager()Lcom/google/android/speech/embedded/Greco3EngineManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getSpeechLevelSource()Lcom/google/android/speech/SpeechLevelSource;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    const/4 v6, 0x2

    const/16 v7, 0x1f40

    invoke-direct/range {v0 .. v7}, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;-><init>(Lcom/google/android/speech/embedded/Greco3CallbackFactory;Lcom/google/android/speech/embedded/Greco3EngineManager;Lcom/google/android/speech/embedded/Greco3ModeSelector;Lcom/google/android/speech/SpeechLevelSource;Lcom/google/android/speech/SpeechSettings;II)V

    return-object v0
.end method

.method private createHybridParams(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;
    .locals 7
    .parameter "localExecutorService"
    .parameter "networkExecutorService"
    .parameter "musicDetectorExecutorService"

    .prologue
    .line 412
    new-instance v0, Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;

    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getNetworkInfo()Lcom/google/android/speech/utils/NetworkInformation;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;-><init>(Lcom/google/android/speech/utils/NetworkInformation;Lcom/google/android/speech/SpeechSettings;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method private createNetworkParams(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;
    .locals 8
    .parameter "networkExecutorService"

    .prologue
    .line 375
    new-instance v7, Lcom/google/glass/voice/network/VoiceSearchContainer$6;

    invoke-direct {v7, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$6;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    .line 383
    .local v7, pairHttpServerInfoSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;>;"
    new-instance v1, Lcom/google/android/speech/network/PairHttpConnectionFactory;

    new-instance v0, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v7, v0}, Lcom/google/android/speech/network/PairHttpConnectionFactory;-><init>(Lcom/google/common/base/Supplier;Lcom/google/android/speech/network/ConnectionFactory;)V

    .line 387
    .local v1, http:Lcom/google/android/speech/network/S3ConnectionFactory;
    new-instance v6, Lcom/google/glass/voice/network/VoiceSearchContainer$7;

    invoke-direct {v6, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$7;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    .line 395
    .local v6, networkRecognizerInfoSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;>;"
    new-instance v0, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;

    new-instance v3, Lcom/google/glass/voice/network/RetryPolicyImpl;

    invoke-static {}, Lcom/google/glass/util/ClockProvider;->get()Lcom/google/glass/util/Clock;

    move-result-object v2

    invoke-direct {v3, v6, v2}, Lcom/google/glass/voice/network/RetryPolicyImpl;-><init>(Lcom/google/common/base/Supplier;Lcom/google/glass/util/Clock;)V

    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getNetworkRequestProducerParams()Lcom/google/android/speech/params/NetworkRequestProducerParams;

    move-result-object v5

    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;-><init>(Lcom/google/android/speech/network/S3ConnectionFactory;Lcom/google/android/speech/network/S3ConnectionFactory;Lcom/google/android/speech/engine/RetryPolicy;Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/params/NetworkRequestProducerParams;)V

    return-object v0
.end method

.method private createRecognizer(Ljava/util/List;)Lcom/google/android/speech/Recognizer;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;",
            ">;)",
            "Lcom/google/android/speech/Recognizer;"
        }
    .end annotation

    .prologue
    .local p1, endpointerEventPreprocessors:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;>;"
    const/4 v12, 0x0

    .line 229
    sget-object v8, Lcom/google/glass/voice/network/VoiceSearchContainer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Creating Recognizer"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    const/4 v8, 0x1

    :try_start_0
    const-string v9, "LocalEngine"

    invoke-static {v8, v9}, Lcom/google/android/searchcommon/util/ConcurrentUtils;->createSafeScheduledExecutorService(ILjava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 234
    .local v2, localExecutorService:Ljava/util/concurrent/ExecutorService;
    const/4 v8, 0x1

    const-string v9, "NetworkEngine"

    invoke-static {v8, v9}, Lcom/google/android/searchcommon/util/ConcurrentUtils;->createSafeScheduledExecutorService(ILjava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    .line 236
    .local v5, networkExecutorService:Ljava/util/concurrent/ExecutorService;
    const/4 v8, 0x1

    const-string v9, "MusicDetectorEngine"

    invoke-static {v8, v9}, Lcom/google/android/searchcommon/util/ConcurrentUtils;->createSafeScheduledExecutorService(ILjava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    .line 239
    .local v3, musicDetectorExecutorService:Ljava/util/concurrent/ExecutorService;
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/VoiceSearchContainer;->createEmbeddedParams(Ljava/util/List;)Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;

    move-result-object v0

    .line 241
    .local v0, embeddedParams:Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;
    invoke-direct {p0, v5}, Lcom/google/glass/voice/network/VoiceSearchContainer;->createNetworkParams(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;

    move-result-object v6

    .line 243
    .local v6, networkParams:Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;
    invoke-direct {p0, v2, v5, v3}, Lcom/google/glass/voice/network/VoiceSearchContainer;->createHybridParams(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;

    move-result-object v1

    .line 245
    .local v1, hybridParams:Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;
    new-instance v4, Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;

    iget-object v8, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-direct {v4, v8}, Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;-><init>(Lcom/google/android/speech/SpeechSettings;)V

    .line 250
    .local v4, musicParams:Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;
    const-string v8, "GrecoExecutor"

    invoke-static {v8}, Lcom/google/android/searchcommon/util/ConcurrentUtils;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v9, Lcom/google/android/speech/params/RecognitionEngineParams;

    invoke-direct {v9, v0, v6, v4, v1}, Lcom/google/android/speech/params/RecognitionEngineParams;-><init>(Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;)V

    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getAudioController()Lcom/google/android/speech/audio/AudioController;

    move-result-object v10

    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getSpeechLibFactory()Lcom/google/android/speech/SpeechLibFactory;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/google/android/speech/GrecoRecognizer;->create(Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/params/RecognitionEngineParams;Lcom/google/android/speech/audio/AudioController;Lcom/google/android/speech/SpeechLibFactory;)Lcom/google/android/speech/Recognizer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 256
    .end local v0           #embeddedParams:Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;
    .end local v1           #hybridParams:Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;
    .end local v2           #localExecutorService:Ljava/util/concurrent/ExecutorService;
    .end local v3           #musicDetectorExecutorService:Ljava/util/concurrent/ExecutorService;
    .end local v4           #musicParams:Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;
    .end local v5           #networkExecutorService:Ljava/util/concurrent/ExecutorService;
    .end local v6           #networkParams:Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;
    :goto_0
    return-object v8

    .line 254
    :catch_0
    move-exception v7

    .line 255
    .local v7, re:Ljava/lang/RuntimeException;
    sget-object v8, Lcom/google/glass/voice/network/VoiceSearchContainer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Error creating greco recognizer"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-interface {v8, v7, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized destroyContainer()V
    .locals 2

    .prologue
    .line 147
    const-class v1, Lcom/google/glass/voice/network/VoiceSearchContainer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->container:Lcom/google/glass/voice/network/VoiceSearchContainer;

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->container:Lcom/google/glass/voice/network/VoiceSearchContainer;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->destroy()V

    .line 149
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->container:Lcom/google/glass/voice/network/VoiceSearchContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    monitor-exit v1

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getConfiguration(Landroid/content/Context;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 11
    .parameter "context"

    .prologue
    .line 187
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/glass/voice/R$raw;->greco_config:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 188
    .local v4, is:Ljava/io/InputStream;
    invoke-static {v4}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 189
    .local v0, bytes:[B
    invoke-static {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    .line 192
    .local v1, config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getServiceApi()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    move-result-object v5

    .line 193
    .local v5, serviceApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;
    invoke-virtual {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v3

    .line 194
    .local v3, endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    const/16 v6, 0x2ee

    invoke-virtual {v3, v6}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->setExtraSilenceAfterEndOfSpeechMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 195
    invoke-virtual {v5, v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->setEndpointerParams(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    .line 196
    invoke-virtual {v1, v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->setServiceApi(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 200
    sget-object v6, Lcom/google/glass/util/Labs$Feature;->SEARCH_DEV_SERVER:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v6}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 201
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getTcpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    move-result-object v6

    const-string v7, "vs.google.com"

    invoke-virtual {v6, v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->setHost(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 202
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getTcpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    move-result-object v6

    const/16 v7, 0x37ae

    invoke-virtual {v6, v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->setPort(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 203
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getPairHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->getUp()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v6

    const-string v7, "https://voice-search-dev.sandbox.google.com/m/voice-search/up?sky=rad_853f_1e8f_7309_4687&pair="

    invoke-virtual {v6, v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 206
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getPairHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->getDown()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v6

    const-string v7, "https://voice-search-dev.sandbox.google.com/m/voice-search/down?sky=rad_853f_1e8f_7309_4687&pair="

    invoke-virtual {v6, v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 220
    :cond_0
    :goto_0
    sget-object v6, Lcom/google/glass/voice/network/VoiceSearchContainer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "S3 Port: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getTcpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getPort()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    return-object v1

    .line 209
    :cond_1
    sget-object v6, Lcom/google/glass/util/Labs$Feature;->SEARCH_TEST_SERVER:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v6}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 210
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getTcpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    move-result-object v6

    const-string v7, "vs.google.com"

    invoke-virtual {v6, v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->setHost(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 211
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getTcpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    move-result-object v6

    const/16 v7, 0x37af

    invoke-virtual {v6, v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->setPort(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 212
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getPairHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->getUp()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v6

    const-string v7, "https://voice-search-testing.sandbox.google.com/m/voice-search/up?sky=rad_853f_1e8f_7309_4687&pair="

    invoke-virtual {v6, v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 215
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getPairHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->getDown()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v6

    const-string v7, "https://voice-search-testing.sandbox.google.com/m/voice-search/down?sky=rad_853f_1e8f_7309_4687&pair="

    invoke-virtual {v6, v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    .end local v0           #bytes:[B
    .end local v1           #config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .end local v3           #endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #serviceApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;
    :catch_0
    move-exception v2

    .line 223
    .local v2, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unable to load configuration"

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static declared-synchronized getContainer()Lcom/google/glass/voice/network/VoiceSearchContainer;
    .locals 3

    .prologue
    .line 154
    const-class v1, Lcom/google/glass/voice/network/VoiceSearchContainer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->container:Lcom/google/glass/voice/network/VoiceSearchContainer;

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->container:Lcom/google/glass/voice/network/VoiceSearchContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 157
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Voice Search Container not set."

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNetworkRequestProducerParams()Lcom/google/android/speech/params/NetworkRequestProducerParams;
    .locals 5

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->networkRequestProducerParams:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getNetworkInfo()Lcom/google/android/speech/utils/NetworkInformation;

    move-result-object v2

    new-instance v3, Lcom/google/glass/voice/network/SearchQueryBuilder$LocationHelperImpl;

    iget-object v4, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    invoke-direct {v3, v4}, Lcom/google/glass/voice/network/SearchQueryBuilder$LocationHelperImpl;-><init>(Lcom/google/glass/location/LocationManagerHelper;)V

    iget-object v4, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->cookies:Lcom/google/glass/voice/network/Cookies;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->create(Landroid/content/Context;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/utils/NetworkInformation;Lcom/google/android/speech/helper/SpeechLocationHelper;Lcom/google/glass/voice/network/Cookies;)Lcom/google/android/speech/params/NetworkRequestProducerParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->networkRequestProducerParams:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->networkRequestProducerParams:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    return-object v0
.end method

.method private getSpeechLibFactory()Lcom/google/android/speech/SpeechLibFactory;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    invoke-direct {v0}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 429
    return-void
.end method

.method public getAudioController()Lcom/google/android/speech/audio/AudioController;
    .locals 11

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioController:Lcom/google/android/speech/audio/AudioController;

    if-nez v0, :cond_0

    .line 264
    new-instance v4, Lcom/google/glass/voice/network/VoiceSearchContainer$1;

    invoke-direct {v4, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$1;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    .line 271
    .local v4, dummySpeechSoundManager:Lcom/google/android/speech/audio/SpeechSoundManager;
    new-instance v6, Lcom/google/glass/voice/network/VoiceSearchContainer$2;

    invoke-direct {v6, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$2;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    .line 309
    .local v6, dummyAudioRouter:Lcom/google/android/voicesearch/AudioRouter;
    new-instance v5, Lcom/google/glass/voice/network/VoiceSearchContainer$3;

    invoke-direct {v5, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$3;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    .line 317
    .local v5, dummyAudioRoutingSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/google/android/speech/audio/AudioController;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getSpeechLevelSource()Lcom/google/android/speech/SpeechLevelSource;

    move-result-object v3

    iget-object v7, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getSpeechLibFactory()Lcom/google/android/speech/SpeechLibFactory;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/speech/SpeechLibFactory;->buildSpeechLibLogger()Lcom/google/android/speech/logger/SpeechLibLogger;

    move-result-object v8

    new-instance v9, Lcom/google/android/voicesearch/LogExtras;

    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getNetworkInfo()Lcom/google/android/speech/utils/NetworkInformation;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/android/voicesearch/LogExtras;-><init>(Lcom/google/android/speech/utils/NetworkInformation;)V

    invoke-direct/range {v0 .. v9}, Lcom/google/android/speech/audio/AudioController;-><init>(Landroid/content/Context;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/SpeechLevelSource;Lcom/google/android/speech/audio/SpeechSoundManager;Lcom/google/common/base/Supplier;Lcom/google/android/voicesearch/AudioRouter;Landroid/media/AudioManager;Lcom/google/android/speech/logger/SpeechLibLogger;Lcom/google/android/voicesearch/LogExtras;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioController:Lcom/google/android/speech/audio/AudioController;

    .line 321
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioController:Lcom/google/android/speech/audio/AudioController;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioInputStreamFactory:Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;

    invoke-virtual {v0, v1}, Lcom/google/android/speech/audio/AudioController;->setRawInputStreamFactory(Lcom/google/android/speech/audio/AudioInputStreamFactory;)V

    .line 324
    .end local v4           #dummySpeechSoundManager:Lcom/google/android/speech/audio/SpeechSoundManager;
    .end local v5           #dummyAudioRoutingSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Ljava/lang/Integer;>;"
    .end local v6           #dummyAudioRouter:Lcom/google/android/voicesearch/AudioRouter;
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioController:Lcom/google/android/speech/audio/AudioController;

    return-object v0
.end method

.method public getAudioInputStreamFactory()Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioInputStreamFactory:Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;

    return-object v0
.end method

.method public getConfig()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    return-object v0
.end method

.method public getGreco3EngineManager()Lcom/google/android/speech/embedded/Greco3EngineManager;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 357
    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->greco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    if-nez v1, :cond_0

    .line 358
    new-instance v1, Ljava/io/File;

    const-string v3, "/system/usr/srec"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 359
    .local v4, endpointerModels:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Ljava/io/File;>;"
    new-instance v0, Lcom/google/android/speech/embedded/Greco3DataManager;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    sget-object v3, Lcom/google/glass/voice/network/VoiceSearchContainer;->LANGUAGE_PACK_FORMAT_VERSION:[I

    iget-object v6, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/speech/embedded/Greco3DataManager;-><init>(Landroid/content/Context;Lcom/google/android/speech/embedded/Greco3Preferences;[ILcom/google/common/collect/ImmutableList;Ljava/io/File;Ljava/util/concurrent/Executor;)V

    .line 362
    .local v0, dataManager:Lcom/google/android/speech/embedded/Greco3DataManager;
    new-instance v1, Lcom/google/glass/voice/network/VoiceSearchContainer$5;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$5;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/speech/embedded/Greco3DataManager;->setPathDeleter(Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;)V

    .line 368
    new-instance v1, Lcom/google/android/speech/embedded/Greco3EngineManager;

    invoke-direct {v1, v0, v2, v2}, Lcom/google/android/speech/embedded/Greco3EngineManager;-><init>(Lcom/google/android/speech/embedded/Greco3DataManager;Lcom/google/android/speech/embedded/Greco3Preferences;Lcom/google/android/speech/embedded/EndpointerModelCopier;)V

    iput-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->greco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    .line 370
    .end local v0           #dataManager:Lcom/google/android/speech/embedded/Greco3DataManager;
    .end local v4           #endpointerModels:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Ljava/io/File;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->greco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    return-object v1
.end method

.method public declared-synchronized getNetworkInfo()Lcom/google/android/speech/utils/NetworkInformation;
    .locals 4

    .prologue
    .line 418
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->networkInfo:Lcom/google/android/speech/utils/NetworkInformation;

    if-nez v0, :cond_0

    .line 419
    new-instance v2, Lcom/google/android/speech/utils/NetworkInformation;

    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-direct {v2, v0, v1}, Lcom/google/android/speech/utils/NetworkInformation;-><init>(Landroid/telephony/TelephonyManager;Landroid/net/ConnectivityManager;)V

    iput-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->networkInfo:Lcom/google/android/speech/utils/NetworkInformation;

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->networkInfo:Lcom/google/android/speech/utils/NetworkInformation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRecognizerController(Ljava/util/List;)Lcom/google/glass/voice/network/RecognizerController;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;",
            ">;)",
            "Lcom/google/glass/voice/network/RecognizerController;"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, endpointerEventPreprocessors:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;>;"
    monitor-enter p0

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Lcom/google/glass/voice/network/RecognizerController;

    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/VoiceSearchContainer;->createRecognizer(Ljava/util/List;)Lcom/google/android/speech/Recognizer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    iget-object v4, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->cookies:Lcom/google/glass/voice/network/Cookies;

    iget-object v5, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->callbackFactory:Lcom/google/glass/voice/network/CallbackFactory;

    iget-object v7, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/voice/network/RecognizerController;-><init>(Lcom/google/android/speech/Recognizer;Lcom/google/android/speech/SpeechLevelSource;Lcom/google/android/speech/SpeechSettings;Lcom/google/glass/voice/network/Cookies;Landroid/content/Context;Lcom/google/glass/voice/network/CallbackFactory;Lcom/google/glass/location/LocationManagerHelper;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    .line 461
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    return-object v0

    .line 461
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public getSpeechLevelSource()Lcom/google/android/speech/SpeechLevelSource;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

    return-object v0
.end method

.method public getSpeechSettings()Lcom/google/android/speech/SpeechSettings;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    return-object v0
.end method
