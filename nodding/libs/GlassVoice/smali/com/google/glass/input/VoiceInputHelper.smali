.class public Lcom/google/glass/input/VoiceInputHelper;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;,
        Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;,
        Lcom/google/glass/input/VoiceInputHelper$UserActivityVoiceCommandObserver;,
        Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;
    }
.end annotation


# static fields
.field private static final MSG_RESAMPLED_AUDIO_DATA:I = 0x4

.field protected static final MSG_VOICE_AMPLITUDE:I = 0x5

.field private static final MSG_VOICE_COMMAND:I = 0x2

.field private static final MSG_VOICE_CONFIG_CHANGED:I = 0x6

.field private static final MSG_VOICE_SERVICE_CONNECTED:I = 0x0

.field private static final MSG_VOICE_SERVICE_DISCONNECTED:I = 0x1

.field private static final VOICE_SERVICE:Landroid/content/ComponentName;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field static voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final voiceServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

.field private static final voiceServiceConnectionLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final voiceServiceListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private volatile expectedVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

.field private final inputListener:Lcom/google/glass/input/VoiceListener;

.field private final observer:Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;

.field private voiceAmplitude:D

.field private final voiceHandler:Landroid/os/Handler;

.field private voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

.field private final voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/VoiceInputHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 41
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "voiceServiceConnection"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceConnectionLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 62
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.voice"

    const-string v2, "com.google.glass.voice.VoiceService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/input/VoiceInputHelper;->VOICE_SERVICE:Landroid/content/ComponentName;

    .line 109
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper$1;

    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->VOICE_SERVICE:Landroid/content/ComponentName;

    invoke-direct {v0, v1}, Lcom/google/glass/input/VoiceInputHelper$1;-><init>(Landroid/content/ComponentName;)V

    sput-object v0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    .line 147
    invoke-static {}, Lcom/google/common/collect/Sets;->newTreeSet()Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListeners:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/VoiceListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/input/VoiceInputHelper;-><init>(Landroid/content/Context;Lcom/google/glass/input/VoiceListener;Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;)V

    .line 282
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/VoiceListener;Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "observer"

    .prologue
    .line 285
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/input/VoiceInputHelper;-><init>(Landroid/content/Context;Lcom/google/glass/input/VoiceListener;Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;Landroid/os/Bundle;)V

    .line 286
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/VoiceListener;Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;Landroid/os/Bundle;)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "observer"
    .parameter "serviceExtras"

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/input/VoiceInputHelper$2;-><init>(Lcom/google/glass/input/VoiceInputHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;

    .line 271
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    invoke-direct {v0, p0}, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;-><init>(Lcom/google/glass/input/VoiceInputHelper;)V

    iput-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    .line 294
    iput-object p2, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    .line 295
    iput-object p3, p0, Lcom/google/glass/input/VoiceInputHelper;->observer:Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;

    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->applicationContext:Landroid/content/Context;

    .line 298
    invoke-virtual {p0}, Lcom/google/glass/input/VoiceInputHelper;->isVoiceServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->applicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/google/glass/input/VoiceInputHelper;->VOICE_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 303
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->bindVoiceService()Z

    .line 304
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/glass/input/VoiceInputHelper;->addVoiceServiceListener(Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;)V

    return-void
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceConnectionLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/input/VoiceInputHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceServiceConnected()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/input/VoiceInputHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceServiceDisconnected()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/glass/input/VoiceInputHelper;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceAmplitude:D

    return-wide p1
.end method

.method static synthetic access$900(Lcom/google/glass/input/VoiceInputHelper;)Lcom/google/glass/input/VoiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    return-object v0
.end method

.method private static addVoiceServiceListener(Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;)V
    .locals 6
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 576
    :try_start_0
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Attaching listener to VoiceService: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v1, p0}, Lcom/google/glass/voice/IVoiceService;->addListener(Lcom/google/glass/voice/IVoiceServiceListener;)V

    .line 578
    invoke-virtual {p0}, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->onVoiceServiceConnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to attach listener to VoiceService"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private bindVoiceService()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 322
    invoke-virtual {p0}, Lcom/google/glass/input/VoiceInputHelper;->isVoiceServiceBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Binding VoiceService"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeServiceConnection;->bindAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 326
    const/4 v0, 0x1

    .line 329
    :cond_0
    return v0
.end method

.method private dispatchVoiceServiceConnected()V
    .locals 3

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Listener is not running, ignoring voiceServiceConnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 499
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->onVoiceServiceConnected()V

    goto :goto_0
.end method

.method private dispatchVoiceServiceDisconnected()V
    .locals 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Listener is not running, ignoring voiceServiceDisconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->onVoiceServiceDisconnected()V

    goto :goto_0
.end method

.method private getResultingConfig(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 8
    .parameter "command"

    .prologue
    const/4 v3, 0x0

    .line 526
    iget-object v4, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v4}, Lcom/google/glass/input/VoiceListener;->isRunning()Z

    move-result v4

    if-nez v4, :cond_1

    .line 527
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Listener is not running, ignoring voiceCommand"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    const/4 v2, 0x0

    .line 551
    :cond_0
    :goto_0
    return-object v2

    .line 531
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Voice command triggered"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    const/4 v4, 0x4

    sget-object v5, Lcom/google/glass/input/VoiceInputHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v5}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Voice command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v4, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v4, p1}, Lcom/google/glass/input/VoiceListener;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v2

    .line 535
    .local v2, resultingConfig:Lcom/google/glass/voice/VoiceConfig;
    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 537
    .local v0, handled:Z
    :goto_1
    iget-object v4, p0, Lcom/google/glass/input/VoiceInputHelper;->observer:Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;

    if-eqz v4, :cond_2

    .line 538
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->observer:Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;

    .line 540
    .local v1, observer:Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;
    iget-object v4, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/glass/input/VoiceInputHelper$3;

    invoke-direct {v5, p0, v1, p1, v0}, Lcom/google/glass/input/VoiceInputHelper$3;-><init>(Lcom/google/glass/input/VoiceInputHelper;Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;Lcom/google/glass/voice/VoiceCommand;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 548
    .end local v1           #observer:Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;
    :cond_2
    if-nez v0, :cond_0

    .line 549
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Voice command not handled"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v0           #handled:Z
    :cond_3
    move v0, v3

    .line 535
    goto :goto_1
.end method

.method private listenerLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public static newUserActivityObserver(Landroid/content/Context;)Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper$UserActivityVoiceCommandObserver;

    invoke-direct {v0, p0}, Lcom/google/glass/input/VoiceInputHelper$UserActivityVoiceCommandObserver;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private removeVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 4
    .parameter "voiceInputCallback"

    .prologue
    const/4 v3, 0x0

    .line 383
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->bindVoiceService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "detachVoiceInputCallback called before VoiceService connected"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    :goto_0
    return-void

    .line 390
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v1, p1}, Lcom/google/glass/voice/IVoiceService;->removeVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to remove voice input callback from VoiceService"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addVoiceServiceListener()V
    .locals 2

    .prologue
    .line 308
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 309
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->bindVoiceService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->addVoiceServiceListener(Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;)V

    goto :goto_0
.end method

.method public attachVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 4
    .parameter "newVoiceInputCallback"

    .prologue
    const/4 v3, 0x0

    .line 361
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    if-ne v1, p1, :cond_0

    .line 362
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Ignoring attachVoiceInputCallback, callback is already attached."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->bindVoiceService()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "attachVoiceInputCallback called before VoiceService connected"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 372
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    if-eqz v1, :cond_2

    .line 373
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    invoke-direct {p0, v1}, Lcom/google/glass/input/VoiceInputHelper;->removeVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    .line 375
    :cond_2
    iput-object p1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    .line 376
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v1, p1}, Lcom/google/glass/voice/IVoiceService;->addVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to attach voice input callback to VoiceService"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public detachVoiceInputCallback()V
    .locals 3

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    if-nez v0, :cond_0

    .line 405
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Ignoring detachVoiceInputCallback when no callback attached."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    invoke-direct {p0, v0}, Lcom/google/glass/input/VoiceInputHelper;->removeVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    goto :goto_0
.end method

.method public dispatchResampledAudioData([BII)V
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Listener is not running, ignoring resampledAudioData"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/glass/input/VoiceListener;->onResampledAudioData([BII)Z

    goto :goto_0
.end method

.method public dispatchVoiceAmplitude()V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Listener is not running, ignoring voiceAmplitude"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    iget-wide v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceAmplitude:D

    invoke-interface {v0, v1, v2}, Lcom/google/glass/input/VoiceListener;->onVoiceAmplitudeChanged(D)Z

    goto :goto_0
.end method

.method public dispatchVoiceCommand(Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;)V
    .locals 1
    .parameter "commandEvent"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 522
    #getter for: Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;->voiceCommand:Lcom/google/glass/voice/VoiceCommand;
    invoke-static {p1}, Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;->access$1000(Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/input/VoiceInputHelper;->getResultingConfig(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 523
    return-void
.end method

.method public dispatchVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 3
    .parameter "newConfig"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Listener is not running, ignoring voiceConfigChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->expectedVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p1, v1}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/google/glass/input/VoiceListener;->onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;Z)V

    goto :goto_0
.end method

.method public endpointNetworkRecognizer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 419
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->bindVoiceService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Trying to endpoint before connection to VoiceService established"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    :goto_0
    return-void

    .line 425
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v1}, Lcom/google/glass/voice/IVoiceService;->endpointNetworkRecognizer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to endpoint network recognizer"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 462
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->bindVoiceService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Trying to get VoiceConfig before connection to VoiceService established"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    :goto_0
    return-object v1

    .line 468
    :cond_0
    :try_start_0
    sget-object v2, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v2}, Lcom/google/glass/voice/IVoiceService;->getConfig()Lcom/google/glass/voice/VoiceConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Failed to get voice config"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isVoiceServiceBound()Z
    .locals 1

    .prologue
    .line 334
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v0

    return v0
.end method

.method public removeVoiceServiceListener()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 339
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 340
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListeners:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {p0}, Lcom/google/glass/input/VoiceInputHelper;->isVoiceServiceBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Removing listener from VoiceService: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    invoke-interface {v1, v2}, Lcom/google/glass/voice/IVoiceService;->removeListener(Lcom/google/glass/voice/IVoiceServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceServiceDisconnected()V

    .line 351
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to detach listener"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 435
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/input/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;Z)V

    .line 436
    return-void
.end method

.method public setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;Z)V
    .locals 4
    .parameter "config"
    .parameter "allowScreenOff"

    .prologue
    const/4 v3, 0x0

    .line 444
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->bindVoiceService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Trying to change VoiceConfig before VoiceService connected"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    :goto_0
    return-void

    .line 450
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v1, p1, p2}, Lcom/google/glass/voice/IVoiceService;->setConfig(Lcom/google/glass/voice/VoiceConfig;Z)V

    .line 451
    iput-object p1, p0, Lcom/google/glass/input/VoiceInputHelper;->expectedVoiceConfig:Lcom/google/glass/voice/VoiceConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to set voice config"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setWantAudioData(Z)V
    .locals 7
    .parameter "wantAudioData"

    .prologue
    const/4 v6, 0x0

    .line 479
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->bindVoiceService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Trying to set wantAudioData before VoiceService connected."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    :goto_0
    return-void

    .line 485
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Setting wantAudioData: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v1, p1}, Lcom/google/glass/voice/IVoiceService;->setWantAudioData(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to set wantAudioData"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
