.class Lcom/google/glass/app/DelegatingVoiceListener;
.super Ljava/lang/Object;
.source "DelegatingVoiceListener.java"

# interfaces
.implements Lcom/google/glass/input/VoiceListener;


# instance fields
.field private final delegate:Lcom/google/glass/input/VoiceListener;


# direct methods
.method constructor <init>(Lcom/google/glass/input/VoiceListener;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/glass/app/DelegatingVoiceListener;->delegate:Lcom/google/glass/input/VoiceListener;

    .line 17
    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/app/DelegatingVoiceListener;->delegate:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/app/DelegatingVoiceListener;->delegate:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->isRunning()Z

    move-result v0

    return v0
.end method

.method public onResampledAudioData([BII)Z
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/app/DelegatingVoiceListener;->delegate:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/glass/input/VoiceListener;->onResampledAudioData([BII)Z

    move-result v0

    return v0
.end method

.method public onVoiceAmplitudeChanged(D)Z
    .locals 1
    .parameter "amplitude"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/app/DelegatingVoiceListener;->delegate:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/input/VoiceListener;->onVoiceAmplitudeChanged(D)Z

    move-result v0

    return v0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "command"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/app/DelegatingVoiceListener;->delegate:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0, p1}, Lcom/google/glass/input/VoiceListener;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;Z)V
    .locals 1
    .parameter "newConfig"
    .parameter "expected"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/app/DelegatingVoiceListener;->delegate:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/input/VoiceListener;->onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;Z)V

    .line 32
    return-void
.end method

.method public onVoiceServiceConnected()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/app/DelegatingVoiceListener;->delegate:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->onVoiceServiceConnected()V

    .line 27
    return-void
.end method

.method public onVoiceServiceDisconnected()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/app/DelegatingVoiceListener;->delegate:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->onVoiceServiceDisconnected()V

    .line 22
    return-void
.end method
