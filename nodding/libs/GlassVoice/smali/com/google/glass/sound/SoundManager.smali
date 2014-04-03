.class public Lcom/google/glass/sound/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sound/SoundManager$SoundId;,
        Lcom/google/glass/sound/SoundManager$SoundCompletionListener;
    }
.end annotation


# static fields
.field public static final FAILED_TO_PLAY_SOUND:I = 0x0

.field public static final FAILED_TO_PLAY_SOUND_MUTED:I = -0x1

.field public static final FAILED_TO_PLAY_SOUND_NOT_BOUND:I = -0x2

.field static final SOUND_MANAGER_SERVICE:Landroid/content/ComponentName;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final connectionLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final handler:Landroid/os/Handler;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field final connection:Lcom/google/glass/util/SafeServiceConnection;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private lastSoundIdRequested:Lcom/google/glass/sound/SoundManager$SoundId;

.field private soundManagerService:Lcom/google/glass/sound/ISoundManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 27
    sget-object v0, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "connection"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sound/SoundManager;->connectionLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/glass/sound/SoundManager;->handler:Landroid/os/Handler;

    .line 46
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.sound"

    const-string v2, "com.google.glass.sound.SoundManagerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/sound/SoundManager;->SOUND_MANAGER_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Lcom/google/glass/sound/SoundManager$1;

    sget-object v1, Lcom/google/glass/sound/SoundManager;->SOUND_MANAGER_SERVICE:Landroid/content/ComponentName;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/sound/SoundManager$1;-><init>(Lcom/google/glass/sound/SoundManager;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/google/glass/sound/SoundManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    .line 253
    iput-object p1, p0, Lcom/google/glass/sound/SoundManager;->context:Landroid/content/Context;

    .line 254
    invoke-direct {p0}, Lcom/google/glass/sound/SoundManager;->bindIfNotBound()Z

    .line 255
    return-void
.end method

.method static synthetic access$002(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/ISoundManagerService;)Lcom/google/glass/sound/ISoundManagerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;

    return-object p1
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/glass/sound/SoundManager;->connectionLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private bindIfNotBound()Z
    .locals 4

    .prologue
    .line 384
    iget-object v1, p0, Lcom/google/glass/sound/SoundManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v1}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v0

    .line 385
    .local v0, isConnected:Z
    if-nez v0, :cond_0

    .line 389
    iget-object v1, p0, Lcom/google/glass/sound/SoundManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/sound/SoundManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/util/SafeServiceConnection;->bindAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 391
    :cond_0
    return v0
.end method


# virtual methods
.method public getLastSoundIdRequested()Lcom/google/glass/sound/SoundManager$SoundId;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 378
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    .line 379
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager;->lastSoundIdRequested:Lcom/google/glass/sound/SoundManager$SoundId;

    return-object v0
.end method

.method public isMuted()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 359
    invoke-direct {p0}, Lcom/google/glass/sound/SoundManager;->bindIfNotBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    sget-object v1, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "SoundManagerService is not connected, returning default, unmuted."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    :goto_0
    return v0

    .line 365
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;

    invoke-interface {v1}, Lcom/google/glass/sound/ISoundManagerService;->isMuted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I
    .locals 1
    .parameter "soundId"

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$SoundCompletionListener;)I

    move-result v0

    return v0
.end method

.method public playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$SoundCompletionListener;)I
    .locals 7
    .parameter "soundId"
    .parameter "listener"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/glass/sound/SoundManager;->lastSoundIdRequested:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 282
    const/4 v1, 0x0

    .line 284
    .local v1, streamId:I
    invoke-direct {p0}, Lcom/google/glass/sound/SoundManager;->bindIfNotBound()Z

    move-result v3

    if-nez v3, :cond_0

    .line 285
    sget-object v3, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "SoundManagerService is not connected, not playing sound: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    const/4 v1, -0x2

    move v2, v1

    .line 317
    .end local v1           #streamId:I
    .local v2, streamId:I
    :goto_0
    return v2

    .line 291
    .end local v2           #streamId:I
    .restart local v1       #streamId:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;

    invoke-virtual {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/glass/sound/ISoundManagerService;->playSound(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 296
    :goto_1
    if-eqz p2, :cond_1

    .line 297
    if-lez v1, :cond_2

    .line 301
    sget-object v3, Lcom/google/glass/sound/SoundManager;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/google/glass/sound/SoundManager$2;

    invoke-direct {v4, p0, p2, p1}, Lcom/google/glass/sound/SoundManager$2;-><init>(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/SoundManager$SoundCompletionListener;Lcom/google/glass/sound/SoundManager$SoundId;)V

    #getter for: Lcom/google/glass/sound/SoundManager$SoundId;->durationMs:I
    invoke-static {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->access$200(Lcom/google/glass/sound/SoundManager$SoundId;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_2
    move v2, v1

    .line 317
    .end local v1           #streamId:I
    .restart local v2       #streamId:I
    goto :goto_0

    .line 308
    .end local v2           #streamId:I
    .restart local v1       #streamId:I
    :cond_2
    move v0, v1

    .line 309
    .local v0, reason:I
    sget-object v3, Lcom/google/glass/sound/SoundManager;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/google/glass/sound/SoundManager$3;

    invoke-direct {v4, p0, p2, p1, v0}, Lcom/google/glass/sound/SoundManager$3;-><init>(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/SoundManager$SoundCompletionListener;Lcom/google/glass/sound/SoundManager$SoundId;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 292
    .end local v0           #reason:I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public setMuted(Z)V
    .locals 5
    .parameter "isMuted"

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/google/glass/sound/SoundManager;->bindIfNotBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    sget-object v0, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "SoundManagerService is not connected, not setting mute to: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    :goto_0
    return-void

    .line 351
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;

    invoke-interface {v0, p1}, Lcom/google/glass/sound/ISoundManagerService;->setMuted(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopSound(I)V
    .locals 5
    .parameter "streamId"

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/google/glass/sound/SoundManager;->bindIfNotBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    sget-object v0, Lcom/google/glass/sound/SoundManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "SoundManagerService is not connected, not stopping sound: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    :goto_0
    return-void

    .line 337
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;

    invoke-interface {v0, p1}, Lcom/google/glass/sound/ISoundManagerService;->stopSound(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    goto :goto_0
.end method
