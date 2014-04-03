.class public abstract Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;
.super Ljava/lang/Object;
.source "BasicVoiceMenuEnvironment.java"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuEnvironment;


# instance fields
.field private final glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;


# direct methods
.method public constructor <init>(Lcom/google/glass/app/GlassVoiceActivity;)V
    .locals 0
    .parameter "glassVoiceActivity"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;)Lcom/google/glass/app/GlassVoiceActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    return-object v0
.end method

.method public static postToUiThread(Lcom/google/glass/app/GlassActivity;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "activity"
    .parameter "r"

    .prologue
    .line 103
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method


# virtual methods
.method public getContext()Lcom/google/glass/app/GlassActivity;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    return-object v0
.end method

.method public isConnected()Z
    .locals 4

    .prologue
    .line 41
    iget-object v2, p0, Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Lcom/google/glass/app/GlassVoiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 43
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 44
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/app/GlassVoiceActivity;->logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassVoiceActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 55
    return-void
.end method

.method public playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$SoundCompletionListener;)V
    .locals 1
    .parameter "soundId"
    .parameter "listener"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassVoiceActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$SoundCompletionListener;)I

    .line 60
    return-void
.end method

.method public postToUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-static {v0, p1}, Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;->postToUiThread(Lcom/google/glass/app/GlassActivity;Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method public selectMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "menuItem"
    .parameter "postAnimationRunnable"

    .prologue
    .line 64
    if-eqz p2, :cond_0

    .line 65
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 67
    :cond_0
    return-void
.end method

.method public selectSecondaryMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;JLjava/lang/Runnable;)V
    .locals 0
    .parameter "item"
    .parameter "postAnimationDelayMs"
    .parameter "postAnimationRunnable"

    .prologue
    .line 79
    if-eqz p4, :cond_0

    .line 80
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 82
    :cond_0
    return-void
.end method

.method public selectSecondaryMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "item"
    .parameter "postAnimationRunnable"

    .prologue
    .line 71
    if-eqz p2, :cond_0

    .line 72
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 74
    :cond_0
    return-void
.end method

.method public setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1
    .parameter "voiceConfig"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 37
    return-void
.end method

.method public showError(Lcom/google/glass/app/GlassError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 86
    new-instance v0, Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment$1;-><init>(Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;Lcom/google/glass/app/GlassError;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;->postToUiThread(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public showProgressBar()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
