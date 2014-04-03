.class public Lcom/google/android/speech/GrecoRecognizer;
.super Ljava/lang/Object;
.source "GrecoRecognizer.java"

# interfaces
.implements Lcom/google/android/speech/Recognizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/GrecoRecognizer$3;,
        Lcom/google/android/speech/GrecoRecognizer$State;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "GrecoRecognizer"


# instance fields
.field private mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

.field private final mAudioController:Lcom/google/android/speech/audio/AudioController;

.field private final mAudioRecorder:Lcom/google/android/speech/audio/AudioRecorder;

.field private final mEngineParams:Lcom/google/android/speech/params/RecognitionEngineParams;

.field private final mEngineStore:Lcom/google/android/speech/RecognitionEngineStore;

.field private final mListeningState:Lcom/google/android/searchcommon/util/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/searchcommon/util/StateMachine",
            "<",
            "Lcom/google/android/speech/GrecoRecognizer$State;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

.field private mResponseProcessor:Lcom/google/android/speech/ResponseProcessor;

.field private final mSpeechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

.field private final mSpeechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/audio/AudioController;Lcom/google/android/speech/audio/AudioRecorder;Lcom/google/android/speech/dispatcher/RecognitionDispatcher;Lcom/google/android/speech/RecognitionEngineStore;Lcom/google/android/speech/params/RecognitionEngineParams;Lcom/google/android/speech/SpeechLibFactory;)V
    .locals 4
    .parameter "audioController"
    .parameter "audioRecorder"
    .parameter "recognitionDispatcher"
    .parameter "engineStore"
    .parameter "engineParams"
    .parameter "speechLibFactory"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "GrecoRecognizer"

    sget-object v1, Lcom/google/android/speech/GrecoRecognizer$State;->IDLE:Lcom/google/android/speech/GrecoRecognizer$State;

    invoke-static {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->newBuilder(Ljava/lang/String;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/GrecoRecognizer$State;->IDLE:Lcom/google/android/speech/GrecoRecognizer$State;

    sget-object v2, Lcom/google/android/speech/GrecoRecognizer$State;->LISTENING:Lcom/google/android/speech/GrecoRecognizer$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/GrecoRecognizer$State;->LISTENING:Lcom/google/android/speech/GrecoRecognizer$State;

    sget-object v2, Lcom/google/android/speech/GrecoRecognizer$State;->IDLE:Lcom/google/android/speech/GrecoRecognizer$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/GrecoRecognizer$State;->LISTENING:Lcom/google/android/speech/GrecoRecognizer$State;

    sget-object v2, Lcom/google/android/speech/GrecoRecognizer$State;->LISTENING:Lcom/google/android/speech/GrecoRecognizer$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/GrecoRecognizer$State;->LISTENING:Lcom/google/android/speech/GrecoRecognizer$State;

    sget-object v2, Lcom/google/android/speech/GrecoRecognizer$State;->STOPPED:Lcom/google/android/speech/GrecoRecognizer$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/GrecoRecognizer$State;->STOPPED:Lcom/google/android/speech/GrecoRecognizer$State;

    sget-object v2, Lcom/google/android/speech/GrecoRecognizer$State;->IDLE:Lcom/google/android/speech/GrecoRecognizer$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->setSingleThreadOnly(Z)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->setStrictMode(Z)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->build()Lcom/google/android/searchcommon/util/StateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mListeningState:Lcom/google/android/searchcommon/util/StateMachine;

    .line 70
    new-instance v0, Lcom/google/android/speech/GrecoRecognizer$1;

    invoke-direct {v0, p0}, Lcom/google/android/speech/GrecoRecognizer$1;-><init>(Lcom/google/android/speech/GrecoRecognizer;)V

    iput-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    .line 104
    iput-object p1, p0, Lcom/google/android/speech/GrecoRecognizer;->mAudioController:Lcom/google/android/speech/audio/AudioController;

    .line 105
    iput-object p2, p0, Lcom/google/android/speech/GrecoRecognizer;->mAudioRecorder:Lcom/google/android/speech/audio/AudioRecorder;

    .line 106
    iput-object p3, p0, Lcom/google/android/speech/GrecoRecognizer;->mRecognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

    .line 107
    iput-object p4, p0, Lcom/google/android/speech/GrecoRecognizer;->mEngineStore:Lcom/google/android/speech/RecognitionEngineStore;

    .line 108
    iput-object p5, p0, Lcom/google/android/speech/GrecoRecognizer;->mEngineParams:Lcom/google/android/speech/params/RecognitionEngineParams;

    .line 109
    iput-object p6, p0, Lcom/google/android/speech/GrecoRecognizer;->mSpeechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

    .line 111
    invoke-interface {p6}, Lcom/google/android/speech/SpeechLibFactory;->buildSpeechLibLogger()Lcom/google/android/speech/logger/SpeechLibLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mSpeechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/speech/GrecoRecognizer;)Lcom/google/android/speech/audio/AudioRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mAudioRecorder:Lcom/google/android/speech/audio/AudioRecorder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/speech/GrecoRecognizer;)Lcom/google/android/searchcommon/util/StateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mListeningState:Lcom/google/android/searchcommon/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/speech/GrecoRecognizer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/speech/GrecoRecognizer;->internalStopAudio()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/speech/GrecoRecognizer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/speech/GrecoRecognizer;->internalShutdownAudio()V

    return-void
.end method

.method public static create(Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/params/RecognitionEngineParams;Lcom/google/android/speech/audio/AudioController;Lcom/google/android/speech/SpeechLibFactory;)Lcom/google/android/speech/Recognizer;
    .locals 7
    .parameter "executor"
    .parameter "engineParams"
    .parameter "audioController"
    .parameter "speechLibFactory"

    .prologue
    .line 116
    new-instance v0, Lcom/google/android/speech/GrecoRecognizer;

    new-instance v2, Lcom/google/android/speech/audio/AudioRecorder;

    invoke-direct {v2}, Lcom/google/android/speech/audio/AudioRecorder;-><init>()V

    new-instance v3, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

    invoke-virtual {p1}, Lcom/google/android/speech/params/RecognitionEngineParams;->getHybridParams()Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-direct {v3, p0, v1, p3}, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/speech/SpeechLibFactory;)V

    invoke-interface {p3, p1}, Lcom/google/android/speech/SpeechLibFactory;->buildRecognitionEngineStore(Lcom/google/android/speech/params/RecognitionEngineParams;)Lcom/google/android/speech/RecognitionEngineStore;

    move-result-object v4

    move-object v1, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/speech/GrecoRecognizer;-><init>(Lcom/google/android/speech/audio/AudioController;Lcom/google/android/speech/audio/AudioRecorder;Lcom/google/android/speech/dispatcher/RecognitionDispatcher;Lcom/google/android/speech/RecognitionEngineStore;Lcom/google/android/speech/params/RecognitionEngineParams;Lcom/google/android/speech/SpeechLibFactory;)V

    invoke-static {p0, v0}, Lcom/google/android/speech/GrecoRecognizer;->threadChange(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/Recognizer;

    return-object v0
.end method

.method private internalShutdownAudio()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mListeningState:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/GrecoRecognizer$State;->IDLE:Lcom/google/android/speech/GrecoRecognizer$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    .line 233
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mResponseProcessor:Lcom/google/android/speech/ResponseProcessor;

    invoke-virtual {v0}, Lcom/google/android/speech/ResponseProcessor;->invalidate()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mResponseProcessor:Lcom/google/android/speech/ResponseProcessor;

    .line 235
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mAudioController:Lcom/google/android/speech/audio/AudioController;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioController;->shutdown()V

    .line 236
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mAudioRecorder:Lcom/google/android/speech/audio/AudioRecorder;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioRecorder;->waitForRecording()V

    .line 237
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mRecognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

    invoke-virtual {v0}, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->cancel()V

    .line 238
    return-void
.end method

.method private internalStopAudio()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mListeningState:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/GrecoRecognizer$State;->LISTENING:Lcom/google/android/speech/GrecoRecognizer$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mListeningState:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/GrecoRecognizer$State;->STOPPED:Lcom/google/android/speech/GrecoRecognizer$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    .line 245
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mAudioController:Lcom/google/android/speech/audio/AudioController;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioController;->stopListening()V

    .line 246
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mAudioRecorder:Lcom/google/android/speech/audio/AudioRecorder;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioRecorder;->waitForRecording()V

    .line 248
    :cond_0
    return-void
.end method

.method private recordStartRecognitionEvent(Lcom/google/android/speech/params/SessionParams;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 251
    invoke-virtual {p1}, Lcom/google/android/speech/params/SessionParams;->getMode()Lcom/google/android/speech/params/SessionParams$Mode;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/params/SessionParams$Mode;->HOTWORD:Lcom/google/android/speech/params/SessionParams$Mode;

    if-eq v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mSpeechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/google/android/speech/params/SessionParams;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/speech/logger/SpeechLibLogger;->recordSpeechEvent(ILjava/lang/Object;)V

    .line 264
    :cond_0
    sget-object v0, Lcom/google/android/speech/GrecoRecognizer$3;->$SwitchMap$com$google$android$speech$params$SessionParams$Mode:[I

    invoke-virtual {p1}, Lcom/google/android/speech/params/SessionParams;->getMode()Lcom/google/android/speech/params/SessionParams$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/speech/params/SessionParams$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 275
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mSpeechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/google/android/speech/logger/SpeechLibLogger;->recordSpeechEvent(I)V

    .line 277
    :goto_0
    return-void

    .line 266
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mSpeechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/google/android/speech/logger/SpeechLibLogger;->recordSpeechEvent(I)V

    goto :goto_0

    .line 269
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mSpeechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Lcom/google/android/speech/logger/SpeechLibLogger;->recordSpeechEvent(I)V

    goto :goto_0

    .line 272
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mSpeechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/google/android/speech/logger/SpeechLibLogger;->recordSpeechEvent(I)V

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static final threadChange(Ljava/util/concurrent/Executor;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "executor"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, delegate:Ljava/lang/Object;,"TT;"
    invoke-static {p0, p1, p2}, Lcom/google/android/searchcommon/util/ThreadChanger;->createNonBlockingThreadChangeProxy(Ljava/util/concurrent/Executor;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final threadChange(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "executor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, delegate:Ljava/lang/Object;,"TT;"
    invoke-static {p0, p1}, Lcom/google/android/searchcommon/util/ThreadChanger;->createNonBlockingThreadChangeProxy(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mListeningState:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/GrecoRecognizer$State;->IDLE:Lcom/google/android/speech/GrecoRecognizer$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->notIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mResponseProcessor:Lcom/google/android/speech/ResponseProcessor;

    invoke-virtual {v0}, Lcom/google/android/speech/ResponseProcessor;->onRecognitionCancelled()V

    .line 223
    invoke-direct {p0}, Lcom/google/android/speech/GrecoRecognizer;->internalShutdownAudio()V

    .line 225
    :cond_0
    return-void
.end method

.method getAudioCallback()Lcom/google/android/speech/ResponseProcessor$AudioCallback;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    return-object v0
.end method

.method setResponseProcessor(Lcom/google/android/speech/ResponseProcessor;)V
    .locals 0
    .parameter "responseProcessor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/speech/GrecoRecognizer;->mResponseProcessor:Lcom/google/android/speech/ResponseProcessor;

    .line 295
    return-void
.end method

.method public startListening(Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/listeners/RecognitionEventListener;Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 13
    .parameter "sessionParams"
    .end parameter
    .parameter "listener"
    .end parameter
    .parameter "executor"
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/params/SessionParams;",
            "Lcom/google/android/speech/listeners/RecognitionEventListener;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p4, futureAudio:Lcom/google/common/util/concurrent/SettableFuture;,"Lcom/google/common/util/concurrent/SettableFuture<[B>;"
    const/4 v10, 0x0

    .line 132
    .local v10, transition:Z
    invoke-virtual {p1}, Lcom/google/android/speech/params/SessionParams;->getAudioInputParams()Lcom/google/android/speech/params/AudioInputParams;

    move-result-object v7

    .line 133
    .local v7, audioInputParams:Lcom/google/android/speech/params/AudioInputParams;
    iget-object v1, p0, Lcom/google/android/speech/GrecoRecognizer;->mListeningState:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v2, Lcom/google/android/speech/GrecoRecognizer$State;->IDLE:Lcom/google/android/speech/GrecoRecognizer$State;

    invoke-virtual {v1, v2}, Lcom/google/android/searchcommon/util/StateMachine;->notIn(Ljava/lang/Enum;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v7}, Lcom/google/android/speech/params/AudioInputParams;->hasStreamRewindTime()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    const/4 v10, 0x1

    .line 136
    iget-object v1, p0, Lcom/google/android/speech/GrecoRecognizer;->mRecognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

    invoke-virtual {v1}, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->cancel()V

    .line 137
    iget-object v1, p0, Lcom/google/android/speech/GrecoRecognizer;->mResponseProcessor:Lcom/google/android/speech/ResponseProcessor;

    invoke-virtual {v1}, Lcom/google/android/speech/ResponseProcessor;->invalidate()V

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/speech/GrecoRecognizer;->mResponseProcessor:Lcom/google/android/speech/ResponseProcessor;

    .line 147
    :cond_0
    :goto_0
    const-class v1, Lcom/google/android/speech/listeners/RecognitionEventListener;

    move-object/from16 v0, p3

    invoke-static {v0, v1, p2}, Lcom/google/android/speech/GrecoRecognizer;->threadChange(Ljava/util/concurrent/Executor;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/speech/listeners/RecognitionEventListener;

    .line 149
    .local v9, eventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;
    invoke-direct {p0, p1}, Lcom/google/android/speech/GrecoRecognizer;->recordStartRecognitionEvent(Lcom/google/android/speech/params/SessionParams;)V

    .line 151
    if-eqz v10, :cond_3

    iget-object v1, p0, Lcom/google/android/speech/GrecoRecognizer;->mAudioController:Lcom/google/android/speech/audio/AudioController;

    invoke-virtual {v7}, Lcom/google/android/speech/params/AudioInputParams;->getStreamRewindTime()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Lcom/google/android/speech/audio/AudioController;->rewindInputStreamFactory(J)Lcom/google/android/speech/audio/AudioInputStreamFactory;

    move-result-object v3

    .line 155
    .local v3, inputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;
    :goto_1
    if-eqz p4, :cond_1

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/google/android/speech/GrecoRecognizer;->mAudioRecorder:Lcom/google/android/speech/audio/AudioRecorder;

    invoke-interface {v3}, Lcom/google/android/speech/audio/AudioInputStreamFactory;->createInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v4, 0x140

    move-object/from16 v0, p4

    invoke-virtual {v1, v2, v4, v0}, Lcom/google/android/speech/audio/AudioRecorder;->startRecording(Ljava/io/InputStream;ILcom/google/common/util/concurrent/SettableFuture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/google/android/speech/GrecoRecognizer;->mListeningState:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v2, Lcom/google/android/speech/GrecoRecognizer$State;->LISTENING:Lcom/google/android/speech/GrecoRecognizer$State;

    invoke-virtual {v1, v2}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    .line 168
    iget-object v1, p0, Lcom/google/android/speech/GrecoRecognizer;->mAudioController:Lcom/google/android/speech/audio/AudioController;

    invoke-virtual {v7}, Lcom/google/android/speech/params/AudioInputParams;->isHeadsetEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/speech/audio/AudioController;->setHeadsetEnabled(Z)V

    .line 169
    iget-object v1, p0, Lcom/google/android/speech/GrecoRecognizer;->mAudioController:Lcom/google/android/speech/audio/AudioController;

    invoke-virtual {v1, v9}, Lcom/google/android/speech/audio/AudioController;->startListening(Lcom/google/android/speech/listeners/RecognitionEventListener;)V

    .line 171
    iget-object v1, p0, Lcom/google/android/speech/GrecoRecognizer;->mSpeechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

    iget-object v2, p0, Lcom/google/android/speech/GrecoRecognizer;->mEngineParams:Lcom/google/android/speech/params/RecognitionEngineParams;

    invoke-interface {v1, v2, p1}, Lcom/google/android/speech/SpeechLibFactory;->buildEngineSelector(Lcom/google/android/speech/params/RecognitionEngineParams;Lcom/google/android/speech/params/SessionParams;)Lcom/google/android/speech/EngineSelector;

    move-result-object v5

    .line 173
    .local v5, engineSelector:Lcom/google/android/speech/EngineSelector;
    new-instance v1, Lcom/google/android/speech/ResponseProcessor;

    iget-object v2, p0, Lcom/google/android/speech/GrecoRecognizer;->mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    iget-object v4, p0, Lcom/google/android/speech/GrecoRecognizer;->mSpeechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

    invoke-interface {v4}, Lcom/google/android/speech/SpeechLibFactory;->buildSpeechLibLogger()Lcom/google/android/speech/logger/SpeechLibLogger;

    move-result-object v4

    invoke-direct {v1, v2, v9, p1, v4}, Lcom/google/android/speech/ResponseProcessor;-><init>(Lcom/google/android/speech/ResponseProcessor$AudioCallback;Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/logger/SpeechLibLogger;)V

    iput-object v1, p0, Lcom/google/android/speech/GrecoRecognizer;->mResponseProcessor:Lcom/google/android/speech/ResponseProcessor;

    .line 175
    iget-object v1, p0, Lcom/google/android/speech/GrecoRecognizer;->mRecognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

    iget-object v2, p0, Lcom/google/android/speech/GrecoRecognizer;->mEngineStore:Lcom/google/android/speech/RecognitionEngineStore;

    invoke-interface {v5}, Lcom/google/android/speech/EngineSelector;->getEngineList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/android/speech/RecognitionEngineStore;->getEngines(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/speech/GrecoRecognizer;->mResponseProcessor:Lcom/google/android/speech/ResponseProcessor;

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->startRecognition(Ljava/util/Collection;Lcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/EngineSelector;Lcom/google/android/speech/callback/RecognitionEngineCallback;)V

    .line 178
    .end local v5           #engineSelector:Lcom/google/android/speech/EngineSelector;
    :goto_2
    return-void

    .line 141
    .end local v3           #inputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;
    .end local v9           #eventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;
    :cond_2
    const-string v1, "GrecoRecognizer"

    const-string v2, "Multiple recognitions in progress, the first will be cancelled."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0}, Lcom/google/android/speech/GrecoRecognizer;->internalShutdownAudio()V

    .line 143
    iget-object v1, p0, Lcom/google/android/speech/GrecoRecognizer;->mListeningState:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v2, Lcom/google/android/speech/GrecoRecognizer$State;->IDLE:Lcom/google/android/speech/GrecoRecognizer$State;

    invoke-virtual {v1, v2}, Lcom/google/android/searchcommon/util/StateMachine;->checkIn(Ljava/lang/Enum;)V

    goto :goto_0

    .line 151
    .restart local v9       #eventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;
    :cond_3
    iget-object v1, p0, Lcom/google/android/speech/GrecoRecognizer;->mAudioController:Lcom/google/android/speech/audio/AudioController;

    invoke-virtual {v1, v7}, Lcom/google/android/speech/audio/AudioController;->createInputStreamFactory(Lcom/google/android/speech/params/AudioInputParams;)Lcom/google/android/speech/audio/AudioInputStreamFactory;

    move-result-object v3

    goto :goto_1

    .line 159
    .restart local v3       #inputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;
    :catch_0
    move-exception v8

    .line 160
    .local v8, e:Ljava/io/IOException;
    new-instance v1, Lcom/google/android/speech/exception/AudioRecognizeException;

    const-string v2, "Unable to start the audio recording"

    invoke-direct {v1, v2, v8}, Lcom/google/android/speech/exception/AudioRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v9, v1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onError(Lcom/google/android/speech/exception/RecognizeException;)V

    goto :goto_2
.end method

.method public startRecordedAudioRecognition(Lcom/google/android/speech/params/SessionParams;[BLcom/google/android/speech/listeners/RecognitionEventListener;Ljava/util/concurrent/Executor;)V
    .locals 7
    .parameter "sessionParams"
    .parameter "audio"
    .parameter "listener"
    .parameter "executor"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mListeningState:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/GrecoRecognizer$State;->IDLE:Lcom/google/android/speech/GrecoRecognizer$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->notIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "GrecoRecognizer"

    const-string v1, "Multiple recognitions in progress, the first will be cancelled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0}, Lcom/google/android/speech/GrecoRecognizer;->internalShutdownAudio()V

    .line 190
    :cond_0
    const-class v0, Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-static {p4, v0, p3}, Lcom/google/android/speech/GrecoRecognizer;->threadChange(Ljava/util/concurrent/Executor;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/speech/listeners/RecognitionEventListener;

    .line 192
    .local v6, eventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mListeningState:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/GrecoRecognizer$State;->IDLE:Lcom/google/android/speech/GrecoRecognizer$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->checkIn(Ljava/lang/Enum;)V

    .line 193
    invoke-direct {p0, p1}, Lcom/google/android/speech/GrecoRecognizer;->recordStartRecognitionEvent(Lcom/google/android/speech/params/SessionParams;)V

    .line 194
    new-instance v2, Lcom/google/android/speech/GrecoRecognizer$2;

    invoke-direct {v2, p0, p2}, Lcom/google/android/speech/GrecoRecognizer$2;-><init>(Lcom/google/android/speech/GrecoRecognizer;[B)V

    .line 200
    .local v2, inputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mListeningState:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/GrecoRecognizer$State;->LISTENING:Lcom/google/android/speech/GrecoRecognizer$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    .line 201
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mSpeechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

    iget-object v1, p0, Lcom/google/android/speech/GrecoRecognizer;->mEngineParams:Lcom/google/android/speech/params/RecognitionEngineParams;

    invoke-interface {v0, v1, p1}, Lcom/google/android/speech/SpeechLibFactory;->buildEngineSelector(Lcom/google/android/speech/params/RecognitionEngineParams;Lcom/google/android/speech/params/SessionParams;)Lcom/google/android/speech/EngineSelector;

    move-result-object v4

    .line 203
    .local v4, engineSelector:Lcom/google/android/speech/EngineSelector;
    new-instance v0, Lcom/google/android/speech/ResponseProcessor;

    iget-object v1, p0, Lcom/google/android/speech/GrecoRecognizer;->mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    iget-object v3, p0, Lcom/google/android/speech/GrecoRecognizer;->mSpeechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

    invoke-interface {v3}, Lcom/google/android/speech/SpeechLibFactory;->buildSpeechLibLogger()Lcom/google/android/speech/logger/SpeechLibLogger;

    move-result-object v3

    invoke-direct {v0, v1, v6, p1, v3}, Lcom/google/android/speech/ResponseProcessor;-><init>(Lcom/google/android/speech/ResponseProcessor$AudioCallback;Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/logger/SpeechLibLogger;)V

    iput-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mResponseProcessor:Lcom/google/android/speech/ResponseProcessor;

    .line 205
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mRecognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

    iget-object v1, p0, Lcom/google/android/speech/GrecoRecognizer;->mEngineStore:Lcom/google/android/speech/RecognitionEngineStore;

    invoke-interface {v4}, Lcom/google/android/speech/EngineSelector;->getEngineList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/speech/RecognitionEngineStore;->getEngines(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/speech/GrecoRecognizer;->mResponseProcessor:Lcom/google/android/speech/ResponseProcessor;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->startRecognition(Ljava/util/Collection;Lcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/EngineSelector;Lcom/google/android/speech/callback/RecognitionEngineCallback;)V

    .line 208
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer;->mListeningState:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/GrecoRecognizer$State;->LISTENING:Lcom/google/android/speech/GrecoRecognizer$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/google/android/speech/GrecoRecognizer;->internalStopAudio()V

    .line 216
    :cond_0
    return-void
.end method
