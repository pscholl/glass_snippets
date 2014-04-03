.class public Lcom/google/glass/voice/VoiceEngine;
.super Landroid/content/ContextWrapper;
.source "VoiceEngine.java"

# interfaces
.implements Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;,
        Lcom/google/glass/voice/VoiceEngine$InputEffectsConfigChangeListener;,
        Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;,
        Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;
    }
.end annotation


# static fields
.field private static final ALLOW_INPUT_EFFECTS_PARAMETER_NAME:Ljava/lang/String; = "allow_input_effects"

#the value of this static final field might be set in the static constructor
.field static final HOTWORD_COMMAND_AUDIO_BUFFER_SIZE_MS:J = 0x0L

.field private static final MAX_MISSED_COMMAND_COUNT:I = 0x5

.field private static final MSG_POST_RESAMPLED_AUDIO_DATA:I = 0x1

.field private static final MSG_SCREEN_OFF:I = 0x0

.field public static final PER_RECOGNIZER_AUDIO_LOGGING:Z = false

.field private static final READ_BUFFER_SIZE:I = 0xa0

#the value of this static final field might be set in the static constructor
.field private static final REFEED_BYTES:I = 0x0

.field private static final REFEED_MS:I = 0xc8

.field static backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final entityChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final guestModeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final screenOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

.field private final audioRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

.field private final audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

.field private configChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final contactsDisplayNameHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile currentConfig:Lcom/google/glass/voice/VoiceConfig;

.field private final dynamicGrammarsInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final guestModeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final handler:Landroid/os/Handler;

.field private final httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

.field private interleaver:Lcom/google/glass/voice/InterleavingInputStream;

.field private lastHotwordResult:Lcom/google/glass/voice/HotwordResult;

.field private lastVoiceCommandAudio:Ljava/nio/ByteBuffer;

.field private volatile listener:Lcom/google/glass/voice/VoiceServiceListener;

.field private microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

.field private final mirrorCommandHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

.field private final missedCommands:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/glass/voice/VoiceCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mockAudio:[B

.field private final nativeCommandHelper:Lcom/google/glass/voice/NativeCommandDisambiguationHelper;

.field private final pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/glass/voice/network/VoiceInputCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final photoShareTargetsDisplayNameHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final plusShareTargetsDisplayNameHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final powerHelper:Lcom/google/glass/util/PowerHelper;

.field final readFromMicrophone:Ljava/lang/Runnable;

.field recognizerController:Lcom/google/glass/voice/network/RecognizerController;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

.field private final savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

.field private final screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final shouldReadFromMic:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final targetVoiceConfigState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;",
            ">;"
        }
    .end annotation
.end field

.field private triggerCacheListener:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;

.field private final videoShareTargetsDisplayNameHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile wantAudioData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 78
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 80
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "screenOffReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceEngine;->screenOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 83
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "entityChangedReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceEngine;->entityChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 86
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "guestModeReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceEngine;->guestModeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 114
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/voice/VoiceEngine;->HOTWORD_COMMAND_AUDIO_BUFFER_SIZE_MS:J

    .line 195
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Lcom/google/glass/voice/AudioByteUtils;->getByteLength(J)I

    move-result v0

    sput v0, Lcom/google/glass/voice/VoiceEngine;->REFEED_BYTES:I

    .line 497
    new-instance v0, Lcom/google/glass/util/ThreadCheckThreadFactory;

    new-instance v1, Lcom/google/glass/async/PriorityThreadFactory;

    const/16 v2, 0xa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v4}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/backgroundExecutor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/glass/util/ThreadCheckThreadFactory;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/glass/voice/VoiceEngine;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    .line 501
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceEngine;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "base"

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/VoiceEngine;-><init>(Landroid/content/Context;Lcom/google/glass/voice/MicrophoneInputStream;)V

    .line 522
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/MicrophoneInputStream;)V
    .locals 8
    .parameter "base"
    .parameter "mis"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v6, 0x3e80

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 526
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 120
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->shouldReadFromMic:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 138
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$1;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->readFromMicrophone:Ljava/lang/Runnable;

    .line 244
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;

    new-instance v1, Lcom/google/glass/voice/VoiceEngine$InputEffectsConfigChangeListener;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceEngine$InputEffectsConfigChangeListener;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;

    invoke-direct {v1, p0, v5}, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;-><init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/VoiceEngine$1;)V

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->configChangeListeners:Ljava/util/List;

    .line 248
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->dynamicGrammarsInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 254
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->missedCommands:Ljava/util/Queue;

    .line 260
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/VoiceEngine$2;-><init>(Lcom/google/glass/voice/VoiceEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->handler:Landroid/os/Handler;

    .line 282
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$3;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$3;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 297
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->contactsDisplayNameHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 303
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->plusShareTargetsDisplayNameHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 309
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->photoShareTargetsDisplayNameHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 315
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->videoShareTargetsDisplayNameHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 376
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$4;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$4;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 395
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$5;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$5;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->guestModeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 410
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$6;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$6;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->triggerCacheListener:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;

    .line 476
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 483
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->targetVoiceConfigState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 506
    invoke-static {v6, v7}, Lcom/google/glass/logging/audio/SavedAudioStorage;->newAudioSaver(J)Lcom/google/glass/logging/audio/AudioSaver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    .line 515
    iput-object v5, p0, Lcom/google/glass/voice/VoiceEngine;->mockAudio:[B

    .line 528
    invoke-static {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->createContainer(Landroid/content/Context;)V

    .line 529
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getContainer()Lcom/google/glass/voice/network/VoiceSearchContainer;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->getEndpointerEventPreprocessors()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getRecognizerController(Ljava/util/List;)Lcom/google/glass/voice/network/RecognizerController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    .line 532
    new-instance v0, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->mirrorCommandHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

    .line 533
    new-instance v0, Lcom/google/glass/voice/NativeCommandDisambiguationHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/NativeCommandDisambiguationHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->nativeCommandHelper:Lcom/google/glass/voice/NativeCommandDisambiguationHelper;

    .line 534
    new-instance v0, Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->createRecognizerFactory()Lcom/google/glass/voice/RecognizerFactory;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/voice/CommandRecognizerLoader;-><init>(Landroid/content/Context;Lcom/google/glass/voice/RecognizerFactory;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    .line 536
    new-instance v0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-direct {v0, p0}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    .line 537
    new-instance v0, Lcom/google/glass/logging/audio/SavedAudioStorage;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-static {p0, v1}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->createS3SavedAudioSyncer(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;)Lcom/google/glass/logging/audio/S3SavedAudioSyncer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;-><init>(Lcom/google/glass/logging/audio/SavedAudioSyncer;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

    .line 539
    new-instance v0, Lcom/google/glass/util/CircularByteBuffer;

    sget-wide v1, Lcom/google/glass/voice/VoiceEngine;->HOTWORD_COMMAND_AUDIO_BUFFER_SIZE_MS:J

    mul-long/2addr v1, v6

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/CircularByteBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

    .line 541
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 543
    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->createMicrophoneInputStream()Lcom/google/glass/voice/MicrophoneInputStream;

    move-result-object p2

    .end local p2
    :cond_0
    iput-object p2, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    .line 544
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/VoiceEngine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->shouldReadFromMic:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/voice/VoiceEngine;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->screenOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/voice/VoiceEngine;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine;->isRequiredToRecompileGrammars(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->entityChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->guestModeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/glass/voice/VoiceConfig;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/google/glass/voice/VoiceEngine;->isNetworkConfig(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->blockingAttachVoiceInputCallback()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->blockingDetachVoiceInputCallback()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->blockingEndpointNetworkRecognizer()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/MicrophoneInputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->initialize()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/glass/voice/VoiceEngine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine;->compileDynamicGrammars(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/CommandRecognizerLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/glass/voice/VoiceEngine;)Ljava/util/Queue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->missedCommands:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->blockingSetConfigToTarget()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/voice/VoiceEngine;[BII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/VoiceEngine;->handleAudioData([BII)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/InterleavingInputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->interleaver:Lcom/google/glass/voice/InterleavingInputStream;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/InterleavingInputStream;)Lcom/google/glass/voice/InterleavingInputStream;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine;->interleaver:Lcom/google/glass/voice/InterleavingInputStream;

    return-object p1
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/google/glass/voice/VoiceEngine;->REFEED_BYTES:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/util/CircularByteBuffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/util/PowerHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->powerHelper:Lcom/google/glass/util/PowerHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    return-object v0
.end method

.method private assertBackgroundThread()V
    .locals 1

    .prologue
    .line 1235
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1236
    return-void
.end method

.method private blockingAttachVoiceInputCallback()V
    .locals 3

    .prologue
    .line 1173
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 1174
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/VoiceInputCallback;

    .line 1175
    .local v0, voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/network/RecognizerController;->attachVoiceInputCallback(Lcom/google/glass/voice/network/VoiceInputCallback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1178
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1180
    :cond_0
    return-void
.end method

.method private blockingDetachVoiceInputCallback()V
    .locals 2

    .prologue
    .line 1184
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 1185
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1186
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/RecognizerController;->detachVoiceInputCallback()V

    .line 1187
    return-void
.end method

.method private blockingEndpointNetworkRecognizer()V
    .locals 1

    .prologue
    .line 1191
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 1192
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/RecognizerController;->stopListening()V

    .line 1193
    return-void
.end method

.method private blockingSetConfigToTarget()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 989
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 990
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->targetVoiceConfigState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;

    .line 992
    .local v2, configState:Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;
    #getter for: Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;->config:Lcom/google/glass/voice/VoiceConfig;
    invoke-static {v2}, Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;->access$2500(Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    .line 993
    .local v1, config:Lcom/google/glass/voice/VoiceConfig;
    #getter for: Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;->allowScreenOff:Z
    invoke-static {v2}, Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;->access$2600(Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;)Z

    move-result v0

    .line 994
    .local v0, allowScreenOff:Z
    sget-object v4, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "setConfig called with %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 999
    if-nez v0, :cond_0

    sget-object v4, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-eq v1, v4, :cond_0

    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v4}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1000
    sget-object v4, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Attempt to set a VoiceConfig while screen is off - setting to OFF instead."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1001
    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    .line 1004
    :cond_0
    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceConfig;->isValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1005
    sget-object v4, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Attempt to set invalid VoiceConfig %s - setting to OFF instead."

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1006
    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    .line 1009
    :cond_1
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    if-eq v4, v1, :cond_3

    .line 1010
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-virtual {v4}, Lcom/google/glass/voice/CommandRecognizerLoader;->unloadReplacedRecognizers()V

    .line 1012
    sget-object v4, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "VoiceConfig changing from %s to %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    aput-object v7, v6, v8

    aput-object v1, v6, v9

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1013
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v4, v1}, Lcom/google/glass/voice/VoiceEngine;->onConfigChange(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V

    .line 1014
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    if-eqz v4, :cond_2

    .line 1015
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    invoke-interface {v4, v1}, Lcom/google/glass/voice/VoiceServiceListener;->onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;)V

    .line 1017
    :cond_2
    sget-object v4, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-ne v1, v4, :cond_4

    .line 1019
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopReadingFromMicrophone()V

    .line 1020
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopHotwordRecognition()V

    .line 1021
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopNetworkRecognizer()V

    .line 1022
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopMicrophone()V

    .line 1023
    iput-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 1045
    :cond_3
    :goto_0
    return-void

    .line 1025
    :cond_4
    iget-object v4, v1, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v5, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v4, v5, :cond_7

    .line 1026
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v4}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v1}, Lcom/google/glass/voice/VoiceEngine;->shouldSaveAudio(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1029
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->finishSavingAudio()V

    .line 1032
    :cond_5
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    iget-object v4, v4, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v5, Lcom/google/glass/voice/VoiceConfig$Type;->SEARCH:Lcom/google/glass/voice/VoiceConfig$Type;

    if-eq v4, v5, :cond_6

    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    iget-object v4, v4, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v5, Lcom/google/glass/voice/VoiceConfig$Type;->DICTATION:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v4, v5, :cond_7

    .line 1034
    :cond_6
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopNetworkRecognizer()V

    .line 1039
    :cond_7
    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/glass/voice/VoiceEngine;->startVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1040
    :catch_0
    move-exception v3

    .line 1041
    .local v3, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Exception starting microphone for %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-interface {v4, v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private compileDynamicGrammars(Z)V
    .locals 9
    .parameter "async"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 740
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 741
    iget-object v5, p0, Lcom/google/glass/voice/VoiceEngine;->dynamicGrammarsInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v8, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 742
    sget-object v5, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Grammars already up-to-date."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    :goto_0
    return-void

    .line 746
    :cond_0
    const/4 v5, 0x5

    new-array v5, v5, [Lcom/google/glass/voice/VoiceConfig;

    sget-object v6, Lcom/google/glass/voice/VoiceConfig;->MAIN_MENU:Lcom/google/glass/voice/VoiceConfig;

    aput-object v6, v5, v7

    sget-object v6, Lcom/google/glass/voice/VoiceConfig;->CONTACTS:Lcom/google/glass/voice/VoiceConfig;

    aput-object v6, v5, v8

    const/4 v6, 0x2

    sget-object v7, Lcom/google/glass/voice/VoiceConfig;->PLUS_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Lcom/google/glass/voice/VoiceConfig;->PHOTO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Lcom/google/glass/voice/VoiceConfig;->VIDEO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 755
    .local v0, configsToLoad:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/VoiceConfig;>;"
    iget-object v5, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    iget-object v6, p0, Lcom/google/glass/voice/VoiceEngine;->mirrorCommandHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

    invoke-virtual {v6}, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->getAllConfigs()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/glass/voice/CommandRecognizerLoader;->unload(Ljava/util/Collection;)V

    .line 756
    iget-object v5, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    iget-object v6, p0, Lcom/google/glass/voice/VoiceEngine;->nativeCommandHelper:Lcom/google/glass/voice/NativeCommandDisambiguationHelper;

    invoke-virtual {v6}, Lcom/google/glass/voice/NativeCommandDisambiguationHelper;->getAllConfigs()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/glass/voice/CommandRecognizerLoader;->unload(Ljava/util/Collection;)V

    .line 759
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->getMirrorCommandEntities(Landroid/content/Context;)Lcom/google/common/collect/ListMultimap;

    move-result-object v3

    .line 761
    .local v3, mirrorCommandEntities:Lcom/google/common/collect/ListMultimap;,"Lcom/google/common/collect/ListMultimap<Ljava/lang/Integer;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    iget-object v5, p0, Lcom/google/glass/voice/VoiceEngine;->mirrorCommandHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

    invoke-virtual {v5, v3}, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->updateConfigs(Lcom/google/common/collect/ListMultimap;)V

    .line 762
    invoke-static {p0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getInstance(Landroid/content/Context;)Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getNativeAppCommands(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 764
    .local v4, nativeAppCommandLiterals:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/google/glass/voice/VoiceEngine;->nativeCommandHelper:Lcom/google/glass/voice/NativeCommandDisambiguationHelper;

    invoke-virtual {v5, v4}, Lcom/google/glass/voice/NativeCommandDisambiguationHelper;->updateConfigs(Ljava/util/List;)V

    .line 767
    iget-object v5, p0, Lcom/google/glass/voice/VoiceEngine;->mirrorCommandHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

    invoke-virtual {v5}, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->getAllConfigs()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/VoiceConfig;

    .line 768
    .local v1, disambiguationConfig:Lcom/google/glass/voice/VoiceConfig;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 771
    .end local v1           #disambiguationConfig:Lcom/google/glass/voice/VoiceConfig;
    :cond_1
    iget-object v5, p0, Lcom/google/glass/voice/VoiceEngine;->nativeCommandHelper:Lcom/google/glass/voice/NativeCommandDisambiguationHelper;

    invoke-virtual {v5}, Lcom/google/glass/voice/NativeCommandDisambiguationHelper;->getAllConfigs()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/VoiceConfig;

    .line 772
    .restart local v1       #disambiguationConfig:Lcom/google/glass/voice/VoiceConfig;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 775
    .end local v1           #disambiguationConfig:Lcom/google/glass/voice/VoiceConfig;
    :cond_2
    if-eqz p1, :cond_3

    .line 776
    iget-object v5, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-virtual {v5, v0}, Lcom/google/glass/voice/CommandRecognizerLoader;->loadAsync(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 778
    :cond_3
    iget-object v5, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-virtual {v5, v0}, Lcom/google/glass/voice/CommandRecognizerLoader;->load(Ljava/util/Collection;)V

    goto/16 :goto_0
.end method

.method static final computeSpeakableEntityHashCode(Ljava/util/Collection;)I
    .locals 5
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, entities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 343
    .local v2, idAndDisplayNameSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 344
    .local v0, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v3

    return v3
.end method

.method private final createMicrophoneInputStream()Lcom/google/glass/voice/MicrophoneInputStream;
    .locals 4

    .prologue
    .line 576
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Creating MIS..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$10;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$10;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    .line 589
    .local v0, microphoneInputStreamListener:Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;
    new-instance v1, Lcom/google/glass/voice/VoiceEngine$11;

    new-instance v2, Lcom/google/glass/voice/NativeAudioInterfaceWrapper;

    invoke-direct {v2}, Lcom/google/glass/voice/NativeAudioInterfaceWrapper;-><init>()V

    const/16 v3, 0x3e80

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/google/glass/voice/VoiceEngine$11;-><init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/NativeAudioInterfaceWrapper;Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;I)V

    return-object v1
.end method

.method private createMockMicrophoneInputStream()Lcom/google/glass/voice/MockMicrophoneInputStream;
    .locals 4

    .prologue
    .line 601
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$12;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$12;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    .line 611
    .local v0, microphoneInputStreamListener:Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;
    new-instance v1, Lcom/google/glass/voice/VoiceEngine$13;

    new-instance v2, Lcom/google/glass/voice/NativeAudioInterfaceWrapper;

    invoke-direct {v2}, Lcom/google/glass/voice/NativeAudioInterfaceWrapper;-><init>()V

    const/16 v3, 0x3e80

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/google/glass/voice/VoiceEngine$13;-><init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/NativeAudioInterfaceWrapper;Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;I)V

    return-object v1
.end method

.method private final createRecognizerFactory()Lcom/google/glass/voice/RecognizerFactory;
    .locals 3

    .prologue
    .line 693
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->GRC_VC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 694
    :cond_0
    new-instance v0, Lcom/google/glass/voice/SensoryRecognizerFactory;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->mirrorCommandHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->nativeCommandHelper:Lcom/google/glass/voice/NativeCommandDisambiguationHelper;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/SensoryRecognizerFactory;-><init>(Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;Lcom/google/glass/voice/NativeCommandDisambiguationHelper;)V

    .line 697
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->mirrorCommandHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->nativeCommandHelper:Lcom/google/glass/voice/NativeCommandDisambiguationHelper;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;-><init>(Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;Lcom/google/glass/voice/NativeCommandDisambiguationHelper;)V

    goto :goto_0
.end method

.method private doInBackground(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 627
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 629
    .local v0, exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/glass/voice/VoiceEngine$14;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/glass/voice/VoiceEngine$14;-><init>(Lcom/google/glass/voice/VoiceEngine;Ljava/lang/Runnable;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 640
    return-void
.end method

.method private finishSavingAudio()V
    .locals 3

    .prologue
    .line 911
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v0}, Lcom/google/glass/logging/audio/AudioSaver;->finishSavingAudio()V

    .line 912
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/audio/AudioSaver;->registerWithStorage(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioStorage;)V

    .line 913
    return-void
.end method

.method private declared-synchronized getActiveRecognizer()Lcom/google/glass/voice/HotwordRecognizer;
    .locals 1

    .prologue
    .line 1228
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    if-nez v0, :cond_0

    .line 1229
    sget-object v0, Lcom/google/glass/voice/RecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1231
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final getEndpointerEventPreprocessors()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 701
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/glass/voice/SoundSearchEventPreprocessor;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/SoundSearchEventPreprocessor;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private final getSpeakableEntityHashCode(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)I
    .locals 2
    .parameter "context"
    .parameter "config"

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, entities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->CONTACTS:Lcom/google/glass/voice/VoiceConfig;

    if-ne p2, v1, :cond_1

    .line 321
    invoke-static {p1}, Lcom/google/glass/voice/EntityUtils;->getContactEntities(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 330
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 331
    const/4 v1, -0x1

    .line 333
    :goto_1
    return v1

    .line 322
    :cond_1
    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->PHOTO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    if-ne p2, v1, :cond_2

    .line 323
    const-string v1, "image/jpeg"

    invoke-static {p1, v1}, Lcom/google/glass/voice/EntityUtils;->getShareTargetEntities(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    .line 325
    :cond_2
    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->PLUS_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    if-ne p2, v1, :cond_3

    .line 326
    invoke-static {p1}, Lcom/google/glass/voice/EntityUtils;->getPlusShareTargetEntities(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_3
    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->VIDEO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    if-ne p2, v1, :cond_0

    .line 328
    const-string v1, "video/mp4"

    invoke-static {p1, v1}, Lcom/google/glass/voice/EntityUtils;->getShareTargetEntities(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    .line 333
    :cond_4
    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->computeSpeakableEntityHashCode(Ljava/util/Collection;)I

    move-result v1

    goto :goto_1
.end method

.method private handleAudioData([BII)V
    .locals 8
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v7, 0x0

    .line 852
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    sget-object v4, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-ne v3, v4, :cond_1

    .line 903
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 858
    .local v0, audioRecordingBuffer:Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    iget-object v3, v3, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v4, Lcom/google/glass/voice/VoiceConfig$Type;->DICTATION:Lcom/google/glass/voice/VoiceConfig$Type;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    iget-object v3, v3, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v4, Lcom/google/glass/voice/VoiceConfig$Type;->SEARCH:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v3, v4, :cond_3

    .line 860
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/network/RecognizerController;->writeAudio(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 861
    :catch_0
    move-exception v3

    goto :goto_0

    .line 867
    :cond_3
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->getActiveRecognizer()Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v2

    .line 869
    .local v2, recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    if-nez v2, :cond_4

    .line 870
    sget-object v3, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Ignoring audio due to null recognizer!"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 875
    :cond_4
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v3}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xa0

    if-ne p3, v3, :cond_5

    .line 876
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v3, p1, p2, p3}, Lcom/google/glass/logging/audio/AudioSaver;->saveAudio([BII)V

    .line 880
    :cond_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v4}, Lcom/google/glass/voice/MicrophoneInputStream;->getSampleRate()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/google/glass/voice/HotwordRecognizer;->writeAudio(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/HotwordResult;

    move-result-object v1

    .line 883
    .local v1, hotwordResult:Lcom/google/glass/voice/HotwordResult;
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->audioRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/util/CircularByteBuffer;->put(Ljava/nio/ByteBuffer;)Z

    .line 885
    if-eqz v1, :cond_0

    .line 890
    sget-object v3, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Hotword recognizer triggered a recognition result"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    const/4 v3, 0x4

    sget-object v4, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v4}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recognition result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-virtual {v1}, Lcom/google/glass/voice/HotwordResult;->getRecognizedCommand()Lcom/google/glass/voice/VoiceCommand;

    move-result-object v3

    if-nez v3, :cond_6

    .line 894
    sget-object v3, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Recognized command was null, not firing a voice command"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 898
    :cond_6
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v3, v1}, Lcom/google/glass/logging/audio/AudioSaver;->onResult(Lcom/google/glass/voice/HotwordResult;)V

    .line 899
    iput-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->lastHotwordResult:Lcom/google/glass/voice/HotwordResult;

    .line 900
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->audioRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-static {v1, v3}, Lcom/google/glass/voice/AudioByteUtils;->getLastCommandAudio(Lcom/google/glass/voice/HotwordResult;Lcom/google/glass/util/CircularByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->lastVoiceCommandAudio:Ljava/nio/ByteBuffer;

    .line 901
    invoke-virtual {v1}, Lcom/google/glass/voice/HotwordResult;->getRecognizedCommand()Lcom/google/glass/voice/VoiceCommand;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/glass/voice/VoiceEngine;->publishCommand(Lcom/google/glass/voice/VoiceCommand;)V

    goto/16 :goto_0
.end method

.method private initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 656
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 657
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Initializing"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v1, v4

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/google/glass/voice/VoiceConfig;

    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->GUARD:Lcom/google/glass/voice/VoiceConfig;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->MAIN_MENU:Lcom/google/glass/voice/VoiceConfig;

    aput-object v2, v1, v5

    const/4 v2, 0x2

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->NOTIFICATION:Lcom/google/glass/voice/VoiceConfig;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->GUARD_CONSERVATIVE:Lcom/google/glass/voice/VoiceConfig;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->PHOTO_REVIEW:Lcom/google/glass/voice/VoiceConfig;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->PHOTO_SHARE:Lcom/google/glass/voice/VoiceConfig;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->INCOMING_CALL:Lcom/google/glass/voice/VoiceConfig;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->DIRECTIONS:Lcom/google/glass/voice/VoiceConfig;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->VOICE_CORRECTION_HOTWORD:Lcom/google/glass/voice/VoiceConfig;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/CommandRecognizerLoader;->load(Ljava/util/Collection;)V

    .line 672
    const-string v0, "image/jpeg"

    invoke-static {p0, v0}, Lcom/google/glass/voice/EntityUtils;->getShareTargetEntities(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/glass/voice/EntityUtils;->preloadQualifiedNames(Landroid/content/Context;Ljava/util/Collection;)V

    .line 674
    const-string v0, "video/mp4"

    invoke-static {p0, v0}, Lcom/google/glass/voice/EntityUtils;->getShareTargetEntities(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/glass/voice/EntityUtils;->preloadQualifiedNames(Landroid/content/Context;Ljava/util/Collection;)V

    .line 676
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->getMirrorCommandEntities(Landroid/content/Context;)Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/ListMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/glass/voice/EntityUtils;->preloadQualifiedNames(Landroid/content/Context;Ljava/util/Collection;)V

    .line 677
    invoke-direct {p0, v4}, Lcom/google/glass/voice/VoiceEngine;->compileDynamicGrammars(Z)V

    .line 679
    sget-object v0, Lcom/google/glass/voice/RecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    .line 684
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.google.glass.action.ENTITY_CACHE_CHANGED"

    aput-object v2, v1, v4

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->guestModeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.google.glass.ACTION_GUEST_MODE"

    aput-object v2, v1, v4

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->NATIVE_APP_VOICE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    invoke-static {p0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getInstance(Landroid/content/Context;)Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->triggerCacheListener:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->addTriggerCacheUpdateListener(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;)V

    .line 690
    :cond_0
    return-void
.end method

.method private static isNetworkConfig(Lcom/google/glass/voice/VoiceConfig;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Type;->DICTATION:Lcom/google/glass/voice/VoiceConfig$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Type;->SEARCH:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isRequiredToRecompileGrammars(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 354
    sget-object v4, Lcom/google/glass/voice/VoiceConfig;->CONTACTS:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, p1, v4}, Lcom/google/glass/voice/VoiceEngine;->getSpeakableEntityHashCode(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)I

    move-result v0

    .line 356
    .local v0, currentSpeakableContactsHashCode:I
    sget-object v4, Lcom/google/glass/voice/VoiceConfig;->PLUS_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, p1, v4}, Lcom/google/glass/voice/VoiceEngine;->getSpeakableEntityHashCode(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)I

    move-result v2

    .line 358
    .local v2, currentSpeakablePlusShareTargetsHashCode:I
    sget-object v4, Lcom/google/glass/voice/VoiceConfig;->PHOTO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, p1, v4}, Lcom/google/glass/voice/VoiceEngine;->getSpeakableEntityHashCode(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)I

    move-result v1

    .line 360
    .local v1, currentSpeakablePhotoShareTargetsHashCode:I
    sget-object v4, Lcom/google/glass/voice/VoiceConfig;->VIDEO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, p1, v4}, Lcom/google/glass/voice/VoiceEngine;->getSpeakableEntityHashCode(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)I

    move-result v3

    .line 363
    .local v3, currentSpeakableVideoShareTargetsHashCode:I
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->contactsDisplayNameHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ne v4, v0, :cond_0

    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->plusShareTargetsDisplayNameHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->photoShareTargetsDisplayNameHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ne v4, v1, :cond_0

    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->videoShareTargetsDisplayNameHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 367
    :cond_0
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->contactsDisplayNameHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 368
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->plusShareTargetsDisplayNameHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 369
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->photoShareTargetsDisplayNameHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 370
    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->videoShareTargetsDisplayNameHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 371
    const/4 v4, 0x1

    .line 373
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private onConfigChange(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1052
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->configChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;

    .line 1053
    .local v0, configChangeListener:Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;
    invoke-interface {v0, p1, p2}, Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;->onConfigChange(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0

    .line 1055
    .end local v0           #configChangeListener:Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;
    :cond_0
    return-void
.end method

.method private queueMissedCommand(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 4
    .parameter "command"

    .prologue
    .line 933
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 934
    const/4 v0, 0x3

    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queueing missed command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 935
    :goto_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->missedCommands:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 936
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->missedCommands:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->missedCommands:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 939
    return-void
.end method

.method private declared-synchronized setActiveRecognizer(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 4
    .parameter "config"

    .prologue
    .line 1206
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 1208
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-interface {v0}, Lcom/google/glass/voice/HotwordRecognizer;->deactivate()V

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/CommandRecognizerLoader;->getRecognizer(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    .line 1213
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Setting active recognizer: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1215
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    if-eqz v0, :cond_1

    .line 1216
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-interface {v0}, Lcom/google/glass/voice/HotwordRecognizer;->activate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1218
    :cond_1
    monitor-exit p0

    return-void

    .line 1206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private shouldSaveAudio(Lcom/google/glass/voice/VoiceConfig;)Z
    .locals 1
    .parameter "config"

    .prologue
    .line 1048
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->SAVE_AUDIO:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/google/glass/voice/VoiceConfig;->shouldSaveAudio:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startHotwordRecognition(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 4
    .parameter "config"

    .prologue
    .line 1141
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 1142
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting voice recognition with config: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1143
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine;->setActiveRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 1144
    return-void
.end method

.method private startMicrophone()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1089
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 1090
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v0}, Lcom/google/glass/voice/MicrophoneInputStream;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/logging/audio/AudioSaver;->prepareToSaveAudio(Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v0}, Lcom/google/glass/voice/MicrophoneInputStream;->startListening()V

    .line 1094
    :cond_0
    return-void
.end method

.method private startNetworkRecognizer(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 1156
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 1158
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0, p1, p0}, Lcom/google/glass/voice/network/RecognizerController;->startListening(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;)V

    .line 1159
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1163
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/network/RecognizerController;->attachVoiceInputCallback(Lcom/google/glass/voice/network/VoiceInputCallback;)Z

    .line 1165
    :cond_0
    return-void
.end method

.method private startReadingFromMicrophone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1113
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->shouldReadFromMic:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting microphoneRead Runnable to write to handleAudioData"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1115
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->readFromMicrophone:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1119
    :goto_0
    return-void

    .line 1117
    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Attempted to start reading from the microphone but it is already reading"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private startVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1065
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->startMicrophone()V

    .line 1068
    iget-object v0, p1, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceConfig$Type;->isOpenEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine;->startNetworkRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 1074
    :goto_0
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 1075
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->startReadingFromMicrophone()V

    .line 1076
    return-void

    .line 1071
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine;->startHotwordRecognition(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0
.end method

.method private stopHotwordRecognition()V
    .locals 3

    .prologue
    .line 1147
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stopping hotword recognition"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1148
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->setActiveRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 1149
    return-void
.end method

.method private stopMicrophone()V
    .locals 1

    .prologue
    .line 1101
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 1102
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v0}, Lcom/google/glass/voice/MicrophoneInputStream;->stopListening()V

    .line 1103
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v0}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->finishSavingAudio()V

    .line 1106
    :cond_0
    return-void
.end method

.method private stopNetworkRecognizer()V
    .locals 1

    .prologue
    .line 1200
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 1201
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/RecognizerController;->cancel()V

    .line 1202
    return-void
.end method

.method private stopReadingFromMicrophone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1126
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->shouldReadFromMic:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1127
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stopped reading from microphone."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1128
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v0}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->finishSavingAudio()V

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1132
    :cond_1
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Trying to stop reading from microphone but it is already stopped"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method areDynamicGrammarsInvalid()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 729
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->dynamicGrammarsInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public attachVoiceInputCallback(Lcom/google/glass/voice/network/VoiceInputCallback;)V
    .locals 1
    .parameter "voiceInputCallback"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 450
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$7;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$7;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 456
    return-void
.end method

.method cleanupSynchronously()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 783
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Destroying VoiceEngine"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v1}, Lcom/google/glass/voice/MicrophoneInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    :goto_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 796
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 798
    new-instance v1, Lcom/google/glass/voice/VoiceEngine$17;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceEngine$17;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v1}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 805
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->destroyContainer()V

    .line 807
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    if-eqz v1, :cond_0

    .line 808
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-virtual {v1}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->close()V

    .line 812
    :cond_0
    :try_start_1
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 813
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 817
    :goto_1
    return-void

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error closing microphone"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 814
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 815
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to shutdown background executor."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public detachVoiceInputCallback()V
    .locals 1

    .prologue
    .line 459
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$8;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$8;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 465
    return-void
.end method

.method public dumpState(Ljava/io/PrintWriter;)V
    .locals 8
    .parameter "writer"

    .prologue
    const/4 v7, 0x1

    .line 1250
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Active recognizer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1251
    const-string v5, "Config change listeners: "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1252
    iget-object v5, p0, Lcom/google/glass/voice/VoiceEngine;->configChangeListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;

    .line 1253
    .local v3, listener:Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1255
    .end local v3           #listener:Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current config: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Target config: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/google/glass/voice/VoiceEngine;->targetVoiceConfigState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dynamic grammars invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/voice/VoiceEngine;->dynamicGrammarsInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Last hotword result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/voice/VoiceEngine;->lastHotwordResult:Lcom/google/glass/voice/HotwordResult;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1262
    const-string v5, "Receivers: "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1264
    const/4 v5, 0x3

    new-array v0, v5, [Lcom/google/glass/util/SafeBroadcastReceiver;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/voice/VoiceEngine;->entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    aput-object v6, v0, v5

    iget-object v5, p0, Lcom/google/glass/voice/VoiceEngine;->guestModeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    aput-object v5, v0, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/glass/voice/VoiceEngine;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    aput-object v6, v0, v5

    .local v0, arr$:[Lcom/google/glass/util/SafeBroadcastReceiver;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 1265
    .local v4, receiver:Lcom/google/glass/util/SafeBroadcastReceiver;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/glass/util/SafeBroadcastReceiver;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " registered: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; result extras: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v7}, Lcom/google/glass/util/SafeBroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1264
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1257
    .end local v0           #arr$:[Lcom/google/glass/util/SafeBroadcastReceiver;
    .end local v2           #len$:I
    .end local v4           #receiver:Lcom/google/glass/util/SafeBroadcastReceiver;
    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    iget-object v5, p0, Lcom/google/glass/voice/VoiceEngine;->targetVoiceConfigState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;

    #getter for: Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;->config:Lcom/google/glass/voice/VoiceConfig;
    invoke-static {v5}, Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;->access$2500(Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v5

    goto/16 :goto_1

    .line 1268
    .restart local v0       #arr$:[Lcom/google/glass/util/SafeBroadcastReceiver;
    .local v1, i$:I
    .restart local v2       #len$:I
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/voice/VoiceEngine;->triggerCacheListener:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Should read from mic: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/voice/VoiceEngine;->shouldReadFromMic:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1271
    const-string v5, "Recognizer loader:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1272
    iget-object v5, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-virtual {v5, p1}, Lcom/google/glass/voice/CommandRecognizerLoader;->dumpState(Ljava/io/PrintWriter;)V

    .line 1273
    return-void
.end method

.method public endpointNetworkRecognizer()V
    .locals 1

    .prologue
    .line 468
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$9;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$9;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 474
    return-void
.end method

.method getConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method getLastHotwordResult()Lcom/google/glass/voice/HotwordResult;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->lastHotwordResult:Lcom/google/glass/voice/HotwordResult;

    return-object v0
.end method

.method initializeAsynchronously()V
    .locals 3

    .prologue
    .line 643
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Creating VoiceEngine!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$15;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$15;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 653
    return-void
.end method

.method invalidateGrammars(Ljava/lang/String;)V
    .locals 2
    .parameter "message"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 717
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->dynamicGrammarsInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 718
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$16;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/VoiceEngine$16;-><init>(Lcom/google/glass/voice/VoiceEngine;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 725
    return-void
.end method

.method public onResampledAudioData([BII)V
    .locals 5
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 822
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-ne v1, v2, :cond_1

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    iget-boolean v1, p0, Lcom/google/glass/voice/VoiceEngine;->wantAudioData:Z

    if-eqz v1, :cond_0

    .line 830
    if-lt p3, v4, :cond_0

    .line 834
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    if-eqz v1, :cond_0

    .line 837
    new-array v0, p3, [B

    .line 838
    .local v0, copy:[B
    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 844
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->handler:Landroid/os/Handler;

    invoke-static {v1, v4, v3, p3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method publishCommand(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 6
    .parameter "command"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 917
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 918
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "publishCommand"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 919
    const/4 v1, 0x3

    sget-object v2, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v2}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "publishCommand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    if-eqz v1, :cond_1

    .line 921
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    invoke-interface {v1, p1}, Lcom/google/glass/voice/VoiceServiceListener;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 922
    .local v0, nextConfig:Lcom/google/glass/voice/VoiceConfig;
    if-eqz v0, :cond_0

    .line 923
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/voice/VoiceEngine;->setConfig(Lcom/google/glass/voice/VoiceConfig;Z)V

    .line 930
    .end local v0           #nextConfig:Lcom/google/glass/voice/VoiceConfig;
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Voice command triggered while we had no listener; queueing"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 928
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine;->queueMissedCommand(Lcom/google/glass/voice/VoiceCommand;)V

    goto :goto_0
.end method

.method refeedLastCommand()V
    .locals 7

    .prologue
    .line 965
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->lastVoiceCommandAudio:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    .line 966
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No command to refeed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 969
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->lastVoiceCommandAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/google/glass/voice/AudioByteUtils;->getMillis(J)J

    move-result-wide v0

    .line 970
    .local v0, refeedMillis:J
    sget-object v2, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "millis in %s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/voice/VoiceEngine;->lastVoiceCommandAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 971
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->interleaver:Lcom/google/glass/voice/InterleavingInputStream;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->lastVoiceCommandAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/InterleavingInputStream;->interleave(Ljava/nio/ByteBuffer;)V

    .line 972
    return-void
.end method

.method setConfig(Lcom/google/glass/voice/VoiceConfig;Z)V
    .locals 2
    .parameter "config"
    .parameter "allowScreenOff"

    .prologue
    .line 979
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->targetVoiceConfigState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;

    invoke-direct {v1, p1, p2}, Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;-><init>(Lcom/google/glass/voice/VoiceConfig;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 980
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$19;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$19;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 986
    return-void
.end method

.method setListener(Lcom/google/glass/voice/VoiceServiceListener;)V
    .locals 1
    .parameter "listener"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 943
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    .line 945
    if-eqz p1, :cond_0

    .line 946
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$18;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$18;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 962
    :cond_0
    return-void
.end method

.method public setMockAudio([B)V
    .locals 4
    .parameter "mockAudio"

    .prologue
    .line 548
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "setMockAudio"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->mockAudio:[B

    if-ne p1, v1, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine;->mockAudio:[B

    .line 554
    if-eqz p1, :cond_3

    .line 555
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    instance-of v1, v1, Lcom/google/glass/voice/MockMicrophoneInputStream;

    if-nez v1, :cond_2

    .line 556
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->createMockMicrophoneInputStream()Lcom/google/glass/voice/MockMicrophoneInputStream;

    move-result-object v0

    .line 557
    .local v0, mockmis:Lcom/google/glass/voice/MockMicrophoneInputStream;
    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    .line 559
    .end local v0           #mockmis:Lcom/google/glass/voice/MockMicrophoneInputStream;
    :cond_2
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    check-cast v1, Lcom/google/glass/voice/MockMicrophoneInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/MockMicrophoneInputStream;->feedCannedAudio(Ljava/io/InputStream;)V

    goto :goto_0

    .line 563
    :cond_3
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    instance-of v1, v1, Lcom/google/glass/voice/MockMicrophoneInputStream;

    if-eqz v1, :cond_0

    .line 564
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->createMicrophoneInputStream()Lcom/google/glass/voice/MicrophoneInputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    goto :goto_0
.end method

.method public setWantAudioData(Z)V
    .locals 0
    .parameter "wantAudioData"

    .prologue
    .line 1243
    iput-boolean p1, p0, Lcom/google/glass/voice/VoiceEngine;->wantAudioData:Z

    .line 1244
    return-void
.end method
