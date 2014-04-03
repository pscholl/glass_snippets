.class public interface abstract Lcom/google/glass/input/VoiceListener;
.super Ljava/lang/Object;
.source "VoiceListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/input/VoiceListener$SimpleVoiceListener;
    }
.end annotation


# virtual methods
.method public abstract getLogger()Lcom/google/glass/logging/FormattingLogger;
.end method

.method public abstract isRunning()Z
.end method

.method public abstract onResampledAudioData([BII)Z
.end method

.method public abstract onVoiceAmplitudeChanged(D)Z
.end method

.method public abstract onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
.end method

.method public abstract onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;Z)V
.end method

.method public abstract onVoiceServiceConnected()V
.end method

.method public abstract onVoiceServiceDisconnected()V
.end method
