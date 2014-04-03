.class public Lcom/google/glass/voice/network/SpeechLibFactoryImpl;
.super Ljava/lang/Object;
.source "SpeechLibFactoryImpl.java"

# interfaces
.implements Lcom/google/android/speech/SpeechLibFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/SpeechLibFactoryImpl$SpeechLibLoggerImpl;
    }
.end annotation


# static fields
.field private static final ENGINE_EMBEDDED:I = 0x1

.field private static final ENGINE_MUSIC_DETECTOR:I = 0x3

.field private static final ENGINE_NETWORK:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/speech/params/RecognitionEngineParams;Lcom/google/android/speech/params/SessionParams;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->shouldUseMusicDetectorEngine(Lcom/google/android/speech/params/RecognitionEngineParams;Lcom/google/android/speech/params/SessionParams;)Z

    move-result v0

    return v0
.end method

.method private static shouldUseMusicDetectorEngine(Lcom/google/android/speech/params/RecognitionEngineParams;Lcom/google/android/speech/params/SessionParams;)Z
    .locals 3
    .parameter "engineParams"
    .parameter "sessionParams"

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/android/speech/params/RecognitionEngineParams;->getMusicDetectorParams()Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;->getSettings()Lcom/google/android/speech/SpeechSettings;

    move-result-object v0

    .line 190
    .local v0, speechSettings:Lcom/google/android/speech/SpeechSettings;
    invoke-interface {v0}, Lcom/google/android/speech/SpeechSettings;->isSoundSearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/speech/params/SessionParams;->getMode()Lcom/google/android/speech/params/SessionParams$Mode;

    move-result-object v1

    sget-object v2, Lcom/google/android/speech/params/SessionParams$Mode;->VOICE_ACTIONS:Lcom/google/android/speech/params/SessionParams$Mode;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public buildEngineSelector(Lcom/google/android/speech/params/RecognitionEngineParams;Lcom/google/android/speech/params/SessionParams;)Lcom/google/android/speech/EngineSelector;
    .locals 1
    .parameter "engineParams"
    .parameter "sessionParams"

    .prologue
    .line 52
    new-instance v0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$1;-><init>(Lcom/google/glass/voice/network/SpeechLibFactoryImpl;Lcom/google/android/speech/params/RecognitionEngineParams;Lcom/google/android/speech/params/SessionParams;)V

    return-object v0
.end method

.method public buildRecognitionEngineStore(Lcom/google/android/speech/params/RecognitionEngineParams;)Lcom/google/android/speech/RecognitionEngineStore;
    .locals 1
    .parameter "engineParams"

    .prologue
    .line 83
    new-instance v0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;-><init>(Lcom/google/glass/voice/network/SpeechLibFactoryImpl;Lcom/google/android/speech/params/RecognitionEngineParams;)V

    return-object v0
.end method

.method public buildResultsMerger(Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/dispatcher/RecognitionDispatcher;Lcom/google/android/speech/EngineSelector;Lcom/google/android/speech/callback/RecognitionEngineCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/speech/dispatcher/RecognitionDispatcher$ResultsMerger;
    .locals 1
    .parameter "sessionParams"
    .parameter "recognitionDispatcher"
    .parameter "engineSelector"
    .parameter "recognitionEngineCallback"
    .parameter "executor"
    .parameter "timeoutExecutor"

    .prologue
    .line 46
    new-instance v0, Lcom/google/glass/voice/network/ResultsMergerImpl;

    invoke-direct {v0, p2, p4}, Lcom/google/glass/voice/network/ResultsMergerImpl;-><init>(Lcom/google/android/speech/dispatcher/RecognitionDispatcher;Lcom/google/android/speech/callback/RecognitionEngineCallback;)V

    return-object v0
.end method

.method public buildSpeechLibLogger()Lcom/google/android/speech/logger/SpeechLibLogger;
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$SpeechLibLoggerImpl;

    invoke-direct {v0}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$SpeechLibLoggerImpl;-><init>()V

    return-object v0
.end method
