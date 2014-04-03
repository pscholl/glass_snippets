.class Lcom/google/glass/voice/VoiceEngine$InputEffectsConfigChangeListener;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputEffectsConfigChangeListener"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$InputEffectsConfigChangeListener;->context:Landroid/content/Context;

    .line 425
    return-void
.end method

.method private setInputEffectsEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allow_input_effects="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, parameters:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$InputEffectsConfigChangeListener;->context:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 441
    return-void

    .line 439
    .end local v0           #parameters:Ljava/lang/String;
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method


# virtual methods
.method public onConfigChange(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1
    .parameter "from"
    .parameter "to"

    .prologue
    .line 429
    #calls: Lcom/google/glass/voice/VoiceEngine;->isNetworkConfig(Lcom/google/glass/voice/VoiceConfig;)Z
    invoke-static {p1}, Lcom/google/glass/voice/VoiceEngine;->access$1500(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v0

    if-nez v0, :cond_1

    #calls: Lcom/google/glass/voice/VoiceEngine;->isNetworkConfig(Lcom/google/glass/voice/VoiceConfig;)Z
    invoke-static {p2}, Lcom/google/glass/voice/VoiceEngine;->access$1500(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine$InputEffectsConfigChangeListener;->setInputEffectsEnabled(Z)V

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    #calls: Lcom/google/glass/voice/VoiceEngine;->isNetworkConfig(Lcom/google/glass/voice/VoiceConfig;)Z
    invoke-static {p1}, Lcom/google/glass/voice/VoiceEngine;->access$1500(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    #calls: Lcom/google/glass/voice/VoiceEngine;->isNetworkConfig(Lcom/google/glass/voice/VoiceConfig;)Z
    invoke-static {p2}, Lcom/google/glass/voice/VoiceEngine;->access$1500(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine$InputEffectsConfigChangeListener;->setInputEffectsEnabled(Z)V

    goto :goto_0
.end method
