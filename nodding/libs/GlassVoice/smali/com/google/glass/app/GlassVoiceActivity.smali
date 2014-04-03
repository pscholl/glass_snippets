.class public abstract Lcom/google/glass/app/GlassVoiceActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "GlassVoiceActivity.java"

# interfaces
.implements Lcom/google/glass/input/VoiceListener;


# instance fields
.field private guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

.field private isRunning:Z

.field private preserveConfigOnPause:Z

.field voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z

    return-void
.end method

.method private attachVoiceListener()V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->shouldAllowVoiceInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->addVoiceServiceListener()V

    .line 92
    :cond_0
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/app/GlassVoiceActivity;
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 452
    if-nez p0, :cond_0

    move-object p0, v0

    .line 459
    .end local p0
    :goto_0
    return-object p0

    .line 454
    .restart local p0
    :cond_0
    instance-of v1, p0, Lcom/google/glass/app/GlassVoiceActivity;

    if-eqz v1, :cond_1

    .line 455
    check-cast p0, Lcom/google/glass/app/GlassVoiceActivity;

    goto :goto_0

    .line 456
    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 457
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/app/GlassVoiceActivity;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassVoiceActivity;

    move-result-object p0

    goto :goto_0

    .restart local p0
    :cond_2
    move-object p0, v0

    .line 459
    goto :goto_0
.end method

.method private removeVoiceListener()V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->shouldAllowVoiceInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->removeVoiceServiceListener()V

    .line 166
    :cond_0
    return-void
.end method


# virtual methods
.method public areOrientationSensorsStarted()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 465
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->areOrientationSensorsStarted()Z

    move-result v0

    return v0
.end method

.method public attachVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 1
    .parameter "voiceInputCallback"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/VoiceInputHelper;->attachVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    .line 194
    return-void
.end method

.method public closeVoiceMenu()V
    .locals 2

    .prologue
    .line 375
    iget-object v1, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    if-eqz v1, :cond_0

    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, dismissedByUser:Z
    iget-object v1, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    invoke-virtual {v1, v0}, Lcom/google/glass/app/VoiceMenuDialog;->dismiss(Z)V

    .line 378
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    .line 380
    .end local v0           #dismissedByUser:Z
    :cond_0
    return-void
.end method

.method createVoiceMenuDialog()Lcom/google/glass/app/VoiceMenuDialog;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 336
    new-instance v0, Lcom/google/glass/app/VoiceMenuDialog;

    invoke-direct {v0, p0}, Lcom/google/glass/app/VoiceMenuDialog;-><init>(Lcom/google/glass/app/GlassVoiceActivity;)V

    return-object v0
.end method

.method public detachVoiceInputCallback()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->detachVoiceInputCallback()V

    .line 199
    return-void
.end method

.method public endpointNetworkRecognizer()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->endpointNetworkRecognizer()V

    .line 204
    return-void
.end method

.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method public getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getVoiceServiceExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z

    return v0
.end method

.method public isVoiceMenuShowing()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    invoke-virtual {v0}, Lcom/google/glass/app/VoiceMenuDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoiceServiceBound()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->isVoiceServiceBound()Z

    move-result v0

    return v0
.end method

.method public listenForGuardPhrase(Landroid/widget/ImageView;Lcom/google/glass/widget/TypophileTextView;)V
    .locals 3
    .parameter "gradient"
    .parameter "guardPhrase"

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Listening for guard phrase."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->GUARD:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 233
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/google/glass/voice/GuardHintAnimator;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/glass/voice/GuardHintAnimator;-><init>(Landroid/widget/ImageView;Lcom/google/glass/widget/TypophileTextView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

    invoke-virtual {v0}, Lcom/google/glass/voice/GuardHintAnimator;->animateIn()V

    .line 237
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onCreate: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper;

    new-instance v1, Lcom/google/glass/app/GlassVoiceActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/google/glass/app/GlassVoiceActivity$1;-><init>(Lcom/google/glass/app/GlassVoiceActivity;Lcom/google/glass/input/VoiceListener;)V

    invoke-static {p0}, Lcom/google/glass/input/VoiceInputHelper;->newUserActivityObserver(Landroid/content/Context;)Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getVoiceServiceExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/glass/input/VoiceInputHelper;-><init>(Landroid/content/Context;Lcom/google/glass/input/VoiceListener;Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    .line 73
    return-void
.end method

.method protected onDismissVoiceMenu(Z)V
    .locals 2
    .parameter "dismissedByUser"

    .prologue
    .line 348
    if-eqz p1, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->stopOrientationSensors()V

    .line 353
    iget-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 356
    :cond_1
    return-void
.end method

.method public onOptionsMenuClosed(Lcom/google/glass/widget/OptionMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 442
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onOptionsMenuClosed(Lcom/google/glass/widget/OptionMenu;)V

    .line 443
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 116
    iput-boolean v4, p0, Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z

    .line 117
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPause()V

    .line 118
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onPause: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->isVoiceMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    invoke-virtual {v0}, Lcom/google/glass/app/VoiceMenuDialog;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    iput-boolean v5, p0, Lcom/google/glass/app/GlassVoiceActivity;->preserveConfigOnPause:Z

    .line 130
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->preserveConfigOnPause:Z

    if-nez v0, :cond_1

    .line 131
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->areOrientationSensorsStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Orientation sensors still running in onPause! Stopping them."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->stopOrientationSensors()V

    .line 138
    :cond_2
    return-void

    .line 125
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->closeVoiceMenu()V

    goto :goto_0
.end method

.method public onPrepareVoiceMenu(Lcom/google/glass/app/VoiceMenuDialog;)V
    .locals 0
    .parameter "voiceMenu"

    .prologue
    .line 401
    return-void
.end method

.method public onPrepareVoiceSubmenu(Lcom/google/glass/voice/menu/VoiceMenuItem;ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "menuItem"
    .parameter "commandType"
    .parameter "commandLiteral"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p4, subMenu:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    return-void
.end method

.method public onPrepareVoiceSubmenu(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;Ljava/util/List;)V
    .locals 0
    .parameter "menuItem"
    .parameter "type"
    .parameter "command"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            "Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;",
            "Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p4, subMenu:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    return-void
.end method

.method public onResampledAudioData([BII)Z
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 96
    iput-boolean v2, p0, Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z

    .line 97
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResume()V

    .line 98
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onResume: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iput-boolean v4, p0, Lcom/google/glass/app/GlassVoiceActivity;->preserveConfigOnPause:Z

    .line 104
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->isVoiceServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onVoiceServiceConnected()V

    .line 107
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 82
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onStart()V

    .line 83
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onStart: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;->attachVoiceListener()V

    .line 86
    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    .line 142
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onStop()V

    .line 143
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onStop: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;->removeVoiceListener()V

    .line 146
    return-void
.end method

.method public onVerticalHeadScroll(F)Z
    .locals 1
    .parameter "delta"

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->isVoiceMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    invoke-virtual {v0, p1}, Lcom/google/glass/app/VoiceMenuDialog;->onVerticalHeadScroll(F)V

    .line 386
    const/4 v0, 0x1

    .line 388
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onVerticalHeadScroll(F)Z

    move-result v0

    goto :goto_0
.end method

.method public onVoiceAmplitudeChanged(D)Z
    .locals 1
    .parameter "amplitude"

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "command"

    .prologue
    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method public onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;Z)V
    .locals 0
    .parameter "newConfig"
    .parameter "expected"

    .prologue
    .line 306
    return-void
.end method

.method public onVoiceMenuCommand(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 0
    .parameter "command"

    .prologue
    .line 431
    return-void
.end method

.method public onVoiceServiceConnected()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 256
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Voice Service Connected"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    iget-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z

    if-nez v0, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Not applying initial voice config because we are paused."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;->removeVoiceListener()V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->shouldProvideAudioData()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/input/VoiceInputHelper;->setWantAudioData(Z)V

    .line 273
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->checkNetwork()V

    .line 275
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->isVoiceMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0
.end method

.method public onVoiceServiceDisconnected()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public openOptionsMenu()V
    .locals 1

    .prologue
    .line 435
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 436
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->openOptionsMenu()V

    .line 437
    return-void
.end method

.method public openVoiceMenu(Lcom/google/glass/voice/VoiceConfig;Ljava/util/List;)V
    .locals 1
    .parameter "voiceConfig"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/voice/VoiceConfig;",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p2, menuItems:Ljava/util/List;,"Ljava/util/List<+Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    invoke-virtual {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 321
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->isVoiceMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->closeVoiceMenu()V

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->createVoiceMenuDialog()Lcom/google/glass/app/VoiceMenuDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    .line 327
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    invoke-virtual {v0, p2}, Lcom/google/glass/app/VoiceMenuDialog;->setPrimaryItems(Ljava/util/List;)V

    .line 328
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    invoke-virtual {v0, p1}, Lcom/google/glass/app/VoiceMenuDialog;->setPrimaryVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 329
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->onPrepareVoiceMenu(Lcom/google/glass/app/VoiceMenuDialog;)V

    .line 330
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    invoke-virtual {v0}, Lcom/google/glass/app/VoiceMenuDialog;->show()V

    .line 331
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->startOrientationSensors()V

    .line 332
    return-void
.end method

.method public varargs openVoiceMenu(Lcom/google/glass/voice/VoiceConfig;[Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 1
    .parameter "voiceConfig"
    .parameter "menuItems"

    .prologue
    .line 367
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/app/GlassVoiceActivity;->openVoiceMenu(Lcom/google/glass/voice/VoiceConfig;Ljava/util/List;)V

    .line 368
    return-void
.end method

.method public overrideVoiceInputHelper(Lcom/google/glass/input/VoiceInputHelper;)Lcom/google/glass/input/VoiceInputHelper;
    .locals 1
    .parameter "override"

    .prologue
    .line 49
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 50
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    .line 51
    .local v0, temp:Lcom/google/glass/input/VoiceInputHelper;
    iput-object p1, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    .line 52
    return-object v0
.end method

.method public setPreserveConfigOnPause(Z)V
    .locals 0
    .parameter "preserveConfigOnPause"

    .prologue
    .line 474
    iput-boolean p1, p0, Lcom/google/glass/app/GlassVoiceActivity;->preserveConfigOnPause:Z

    .line 475
    return-void
.end method

.method public setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 176
    return-void
.end method

.method protected shouldAllowVoiceInput()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public shouldProvideAudioData()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public showError(Lcom/google/glass/widget/MessageDialog;)V
    .locals 1
    .parameter "errorDialog"

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->closeVoiceMenu()V

    .line 301
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 302
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->showError(Lcom/google/glass/widget/MessageDialog;)V

    .line 303
    return-void
.end method

.method public stopListeningForGuardPhrase(Landroid/widget/ImageView;Lcom/google/glass/widget/TypophileTextView;)V
    .locals 3
    .parameter "gradient"
    .parameter "guardPhrase"

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Stopping listening for guard phrase."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 248
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lcom/google/glass/voice/GuardHintAnimator;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/glass/voice/GuardHintAnimator;-><init>(Landroid/widget/ImageView;Lcom/google/glass/widget/TypophileTextView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

    invoke-virtual {v0}, Lcom/google/glass/voice/GuardHintAnimator;->animateOut()V

    .line 252
    return-void
.end method
