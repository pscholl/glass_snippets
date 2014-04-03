.class public Lcom/google/glass/sound/VolumeHelper;
.super Ljava/lang/Object;
.source "VolumeHelper.java"


# static fields
.field private static final DEFAULT_VALUE_BCT:I = 0x9

.field private static final DEFAULT_VALUE_EARBUD:I = 0x9

.field private static final EXTRA_HEADSET_STATE:Ljava/lang/String; = "state"

.field public static final HEADSET_STATE_PLUGGED:I = 0x1

.field public static final HEADSET_STATE_UNPLUGGED:I = 0x0

.field private static final NUM_VALUES_BCT:I = 0xa

.field private static final NUM_VALUES_EARBUDS:I = 0x13

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final audioManager:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sound/VolumeHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 0
    .parameter "context"
    .parameter "audioManager"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/google/glass/sound/VolumeHelper;->audioManager:Landroid/media/AudioManager;

    .line 36
    return-void
.end method

.method public static getHeadsetState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 73
    const/4 v0, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/sound/VolumeHelper;->getHeadsetState(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static getHeadsetState(Landroid/content/Intent;)I
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 79
    if-nez p0, :cond_0

    .line 80
    sget-object v2, Lcom/google/glass/sound/VolumeHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Defaulting to headset state: 0"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 85
    :goto_0
    return v0

    .line 83
    :cond_0
    const-string v2, "state"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 84
    .local v0, state:I
    sget-object v2, Lcom/google/glass/sound/VolumeHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Determined headset state: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getNumVolumeValues(I)I
    .locals 1
    .parameter "headsetState"

    .prologue
    .line 39
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 40
    const/16 v0, 0x13

    .line 42
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method


# virtual methods
.method public readAudioVolume(I)I
    .locals 9
    .parameter "headsetState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/sound/VolumeHelper;->audioManager:Landroid/media/AudioManager;

    const-string v3, "earbuds_volume"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 53
    .local v1, fromHal:I
    sget-object v2, Lcom/google/glass/sound/VolumeHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Read volume from HAL: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return v1

    .line 54
    .end local v1           #fromHal:I
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Ljava/lang/NumberFormatException;
    if-ne p1, v7, :cond_0

    .line 56
    const/16 v1, 0x9

    .line 60
    .restart local v1       #fromHal:I
    :goto_1
    sget-object v2, Lcom/google/glass/sound/VolumeHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Could not read HAL volume, defaulting to: %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    .end local v1           #fromHal:I
    :cond_0
    const/16 v1, 0x9

    .restart local v1       #fromHal:I
    goto :goto_1
.end method

.method public writeAudioVolume(II)V
    .locals 5
    .parameter "headsetState"
    .parameter "volume"

    .prologue
    .line 67
    sget-object v0, Lcom/google/glass/sound/VolumeHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Writing volume to HAL: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/google/glass/sound/VolumeHelper;->audioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "earbuds_volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 69
    return-void
.end method
