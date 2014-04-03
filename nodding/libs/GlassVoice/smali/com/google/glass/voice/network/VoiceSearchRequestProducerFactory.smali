.class public Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;
.super Ljava/lang/Object;
.source "VoiceSearchRequestProducerFactory.java"

# interfaces
.implements Lcom/google/android/speech/network/producers/RequestProducerFactory;


# static fields
.field public static final SERVICE_RECOGNIZER:Ljava/lang/String; = "recognizer"

.field public static final SERVICE_SOUND_SEARCH:Ljava/lang/String; = "sound-search"

.field public static final SERVICE_VOICE_ACTIONS_GWS:Ljava/lang/String; = "glass-search-web"

.field private static final SOUND_SEARCH_BYTES_PER_SAMPLE:I = 0x2

.field private static final SOUND_SEARCH_INPUT_READ_SIZE:I = 0x800

.field private static final SOUND_SEARCH_MAX_CAPTURE_SECONDS:I = 0xf

.field private static final SOUND_SEARCH_NUM_CHANNELS:I = 0x1

.field private static final SOUND_SEARCH_SAMPLE_RATE_HZ:I = 0x3e80

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private mobileUserInfoFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/MobileUser$MobileUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

.field private pinholeParamsFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;"
        }
    .end annotation
.end field

.field private requestIdSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;

.field private s3ClientInfoFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private s3RecognizerInfo:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

.field private s3UserInfoFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sessionParams:Lcom/google/android/speech/params/SessionParams;

.field private soundSearchInfo:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

.field private final speechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

.field private final timeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/params/NetworkRequestProducerParams;Lcom/google/android/speech/logger/SpeechLibLogger;)V
    .locals 3
    .parameter "executor"
    .parameter "nrpp"
    .parameter "speechLibLogger"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->executor:Ljava/util/concurrent/ExecutorService;

    .line 87
    iput-object p2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    .line 88
    iput-object p3, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->speechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    .line 89
    new-instance v0, Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/google/android/speech/network/producers/TimeoutEnforcer;-><init>(J)V

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->timeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    .line 90
    return-void
.end method

.method private createMobileUserInfoFuture()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/MobileUser$MobileUserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/speech/network/request/MobileUserInfoBuilderTask;

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v2}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getNetworkInformation()Lcom/google/android/speech/utils/NetworkInformation;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/speech/network/request/MobileUserInfoBuilderTask;-><init>(Lcom/google/android/speech/utils/NetworkInformation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private createPinholeParamsFuture()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v1}, Lcom/google/android/speech/params/SessionParams;->getMode()Lcom/google/android/speech/params/SessionParams$Mode;

    move-result-object v1

    sget-object v2, Lcom/google/android/speech/params/SessionParams$Mode;->VOICE_ACTIONS:Lcom/google/android/speech/params/SessionParams$Mode;

    if-ne v1, v2, :cond_0

    .line 184
    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v1}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getPinholeParamsBuilder()Lcom/google/android/voicesearch/speechservice/s3/PinholeParamsBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->requestIdSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v1, v2}, Lcom/google/android/voicesearch/speechservice/s3/PinholeParamsBuilder;->getPinholeParamsCallable(Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Callable;

    move-result-object v0

    .line 186
    .local v0, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Lcom/google/speech/s3/PinholeStream$PinholeParams;>;"
    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 191
    .end local v0           #callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Lcom/google/speech/s3/PinholeStream$PinholeParams;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createS3AudioInfo()Lcom/google/speech/s3/Audio$S3AudioInfo;
    .locals 3

    .prologue
    .line 195
    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v1}, Lcom/google/android/speech/params/SessionParams;->getAudioInputParams()Lcom/google/android/speech/params/AudioInputParams;

    move-result-object v0

    .line 196
    .local v0, audioInputParams:Lcom/google/android/speech/params/AudioInputParams;
    new-instance v1, Lcom/google/speech/s3/Audio$S3AudioInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/Audio$S3AudioInfo;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/speech/params/AudioInputParams;->getEncoding()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/speech/s3/Audio$S3AudioInfo;->setEncoding(I)Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/speech/params/AudioInputParams;->getSamplingRate()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/speech/s3/Audio$S3AudioInfo;->setSampleRateHz(F)Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v1

    return-object v1
.end method

.method private createS3ClientInfoFuture()Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3ClientInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v6, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v1}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getSpeechSettings()Lcom/google/android/speech/SpeechSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v2}, Lcom/google/android/speech/params/SessionParams;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v3}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getDeviceParams()Lcom/google/android/speech/params/DeviceParams;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v4}, Lcom/google/android/speech/params/SessionParams;->getTriggerApplication()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v5}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;-><init>(Lcom/google/android/speech/SpeechSettings;Ljava/lang/String;Lcom/google/android/speech/params/DeviceParams;Ljava/lang/String;Landroid/view/WindowManager;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private createS3RecognizerInfo()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 7

    .prologue
    .line 219
    new-instance v0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v1}, Lcom/google/android/speech/params/SessionParams;->getRecognitionContext()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v2}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getSpeechSettings()Lcom/google/android/speech/SpeechSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v3}, Lcom/google/android/speech/params/SessionParams;->isPartialResultsEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v4}, Lcom/google/android/speech/params/SessionParams;->isCombinedNbestEnabled()Z

    move-result v4

    iget-object v5, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v5}, Lcom/google/android/speech/params/SessionParams;->isSuggestionsEnabled()Z

    move-result v5

    iget-object v6, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v6}, Lcom/google/android/speech/params/SessionParams;->getMaxNbest()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;-><init>(Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;Lcom/google/android/speech/SpeechSettings;ZZZI)V

    invoke-virtual {v0}, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    return-object v0
.end method

.method private createS3UserInfoFuture()Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->executor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v1}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getAuthTokenHelper()Lcom/google/android/speech/helper/AuthTokenHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v2}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getSpeechSettings()Lcom/google/android/speech/SpeechSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v3}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getLocationHelper()Lcom/google/android/speech/helper/SpeechLocationHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v4}, Lcom/google/android/speech/params/SessionParams;->getSpokenBcp47Locale()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v5}, Lcom/google/android/speech/params/SessionParams;->getLocationOverride()Landroid/location/Location;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->getBuilder(Lcom/google/android/speech/helper/AuthTokenHelper;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/helper/SpeechLocationHelper;Ljava/lang/String;Landroid/location/Location;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private createSoundSearchInfo()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 230
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;-><init>()V

    .line 232
    .local v0, lookup:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    const-string v3, "US"

    invoke-virtual {v0, v3}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->setClientCountryCode(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 235
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->addDesiredResultType(I)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 236
    sget-object v3, Lcom/google/glass/util/Labs$Feature;->SSTELE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    invoke-virtual {v0, v4}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->addDesiredResultType(I)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 240
    :cond_0
    new-instance v2, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    invoke-direct {v2}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;-><init>()V

    .line 241
    .local v2, stream:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    invoke-virtual {v2, v4}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->setAudioEncoding(I)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    .line 242
    invoke-virtual {v2, v4}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->setAudioContainer(I)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    .line 244
    new-instance v1, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;-><init>()V

    .line 245
    .local v1, soundSearchInfo:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    invoke-virtual {v1, v0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->setLookupRequest(Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    .line 246
    invoke-virtual {v1, v2}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->setStreamRequest(Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    .line 248
    invoke-virtual {v1, v4}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->setTtsOutputEnabled(Z)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    .line 249
    return-object v1
.end method


# virtual methods
.method public init(Lcom/google/android/speech/params/SessionParams;)V
    .locals 1
    .parameter "sessionParams"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    .line 96
    invoke-virtual {p1}, Lcom/google/android/speech/params/SessionParams;->getRequestIdSupplier()Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->requestIdSupplier:Lcom/google/common/base/Supplier;

    .line 97
    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->createPinholeParamsFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->pinholeParamsFuture:Ljava/util/concurrent/Future;

    .line 98
    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->createMobileUserInfoFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->mobileUserInfoFuture:Ljava/util/concurrent/Future;

    .line 99
    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->createS3AudioInfo()Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;

    .line 100
    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->createS3ClientInfoFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3ClientInfoFuture:Ljava/util/concurrent/Future;

    .line 101
    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->createS3UserInfoFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3UserInfoFuture:Ljava/util/concurrent/Future;

    .line 102
    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->createS3RecognizerInfo()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3RecognizerInfo:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 103
    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->createSoundSearchInfo()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->soundSearchInfo:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    .line 104
    return-void
.end method

.method public newRequestProducer(Ljava/io/InputStream;)Lcom/google/android/speech/network/producers/S3RequestProducer;
    .locals 14
    .parameter "audioInputStream"

    .prologue
    const/4 v12, 0x1

    .line 108
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v2}, Lcom/google/android/speech/params/SessionParams;->getMode()Lcom/google/android/speech/params/SessionParams$Mode;

    move-result-object v2

    sget-object v3, Lcom/google/android/speech/params/SessionParams$Mode;->SOUND_SEARCH:Lcom/google/android/speech/params/SessionParams$Mode;

    if-ne v2, v3, :cond_0

    .line 111
    new-instance v0, Lcom/google/glass/voice/network/SoundSearchHeaderProducer;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->mobileUserInfoFuture:Ljava/util/concurrent/Future;

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3ClientInfoFuture:Ljava/util/concurrent/Future;

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3UserInfoFuture:Ljava/util/concurrent/Future;

    iget-object v4, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->soundSearchInfo:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    iget-object v5, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;

    iget-object v6, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->requestIdSupplier:Lcom/google/common/base/Supplier;

    const-string v7, "sound-search"

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/voice/network/SoundSearchHeaderProducer;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;Lcom/google/speech/s3/Audio$S3AudioInfo;Lcom/google/common/base/Supplier;Ljava/lang/String;)V

    .line 119
    .local v0, header:Lcom/google/android/speech/network/producers/S3RequestProducer;
    new-instance v1, Lcom/google/glass/voice/VorbisStreamProducer;

    const/16 v3, 0x3e80

    const/16 v5, 0x800

    const/16 v6, 0xf

    const/4 v7, 0x2

    move-object v2, p1

    move v4, v12

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/voice/VorbisStreamProducer;-><init>(Ljava/io/InputStream;IIIII)V

    .line 127
    .local v1, audio:Lcom/google/android/speech/network/producers/S3RequestProducer;
    new-instance v2, Lcom/google/android/speech/network/producers/Producers$CompositeProducer;

    invoke-direct {v2, v0, v1}, Lcom/google/android/speech/network/producers/Producers$CompositeProducer;-><init>(Lcom/google/android/speech/network/producers/S3RequestProducer;Lcom/google/android/speech/network/producers/S3RequestProducer;)V

    .line 147
    :goto_0
    return-object v2

    .line 129
    .end local v0           #header:Lcom/google/android/speech/network/producers/S3RequestProducer;
    .end local v1           #audio:Lcom/google/android/speech/network/producers/S3RequestProducer;
    :cond_0
    const-string v10, "glass-search-web"

    .line 130
    .local v10, serviceName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v2}, Lcom/google/android/speech/params/SessionParams;->getMode()Lcom/google/android/speech/params/SessionParams$Mode;

    move-result-object v2

    sget-object v3, Lcom/google/android/speech/params/SessionParams$Mode;->SERVICE_API:Lcom/google/android/speech/params/SessionParams$Mode;

    if-ne v2, v3, :cond_1

    .line 132
    const-string v10, "recognizer"

    .line 134
    :cond_1
    new-instance v0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->pinholeParamsFuture:Ljava/util/concurrent/Future;

    iget-object v4, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->mobileUserInfoFuture:Ljava/util/concurrent/Future;

    iget-object v5, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3ClientInfoFuture:Ljava/util/concurrent/Future;

    iget-object v6, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3UserInfoFuture:Ljava/util/concurrent/Future;

    iget-object v7, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;

    iget-object v8, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3RecognizerInfo:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    iget-object v9, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->requestIdSupplier:Lcom/google/common/base/Supplier;

    iget-object v11, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->speechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v2}, Lcom/google/android/speech/params/SessionParams;->getMode()Lcom/google/android/speech/params/SessionParams$Mode;

    move-result-object v2

    sget-object v13, Lcom/google/android/speech/params/SessionParams$Mode;->VOICE_ACTIONS:Lcom/google/android/speech/params/SessionParams$Mode;

    if-ne v2, v13, :cond_2

    :goto_1
    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/google/speech/s3/Audio$S3AudioInfo;Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;Lcom/google/common/base/Supplier;Ljava/lang/String;Lcom/google/android/speech/logger/SpeechLibLogger;Z)V

    .line 145
    .restart local v0       #header:Lcom/google/android/speech/network/producers/S3RequestProducer;
    new-instance v1, Lcom/google/android/speech/network/producers/AmrStreamProducer;

    const/16 v2, 0x180

    invoke-direct {v1, p1, v2}, Lcom/google/android/speech/network/producers/AmrStreamProducer;-><init>(Ljava/io/InputStream;I)V

    .line 147
    .restart local v1       #audio:Lcom/google/android/speech/network/producers/S3RequestProducer;
    new-instance v2, Lcom/google/android/speech/network/producers/Producers$CompositeProducer;

    invoke-direct {v2, v0, v1}, Lcom/google/android/speech/network/producers/Producers$CompositeProducer;-><init>(Lcom/google/android/speech/network/producers/S3RequestProducer;Lcom/google/android/speech/network/producers/S3RequestProducer;)V

    goto :goto_0

    .line 134
    .end local v0           #header:Lcom/google/android/speech/network/producers/S3RequestProducer;
    .end local v1           #audio:Lcom/google/android/speech/network/producers/S3RequestProducer;
    :cond_2
    const/4 v12, 0x0

    goto :goto_1
.end method

.method public refresh()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 153
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    if-nez v2, :cond_0

    .line 154
    sget-object v2, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Trying to refresh before init."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :goto_0
    return-void

    .line 160
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->timeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3UserInfoFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v2, v3}, Lcom/google/android/speech/network/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/speech/s3/S3$S3UserInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .local v1, s3UserInfo:Lcom/google/speech/s3/S3$S3UserInfo;
    :goto_1
    if-nez v1, :cond_1

    .line 169
    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->createS3UserInfoFuture()Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3UserInfoFuture:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 161
    .end local v1           #s3UserInfo:Lcom/google/speech/s3/S3$S3UserInfo;
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Could not get S3UserInfo for refresh."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    const/4 v1, 0x0

    .restart local v1       #s3UserInfo:Lcom/google/speech/s3/S3$S3UserInfo;
    goto :goto_1

    .line 172
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->executor:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v3}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getAuthTokenHelper()Lcom/google/android/speech/helper/AuthTokenHelper;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->getAuthTokenRefreshingBuilder(Lcom/google/android/speech/helper/AuthTokenHelper;Lcom/google/speech/s3/S3$S3UserInfo;)Ljava/util/concurrent/Callable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3UserInfoFuture:Ljava/util/concurrent/Future;

    goto :goto_0
.end method
