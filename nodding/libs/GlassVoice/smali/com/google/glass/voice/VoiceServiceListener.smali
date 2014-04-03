.class public interface abstract Lcom/google/glass/voice/VoiceServiceListener;
.super Ljava/lang/Object;
.source "VoiceServiceListener.java"


# virtual methods
.method public abstract onResampledAudioData([BII)V
.end method

.method public abstract onVoiceAmplitudeChanged(D)V
.end method

.method public abstract onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
.end method

.method public abstract onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;)V
.end method
