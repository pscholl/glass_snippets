.class public interface abstract Lcom/google/glass/logging/audio/AudioSaver;
.super Ljava/lang/Object;
.source "AudioSaver.java"


# virtual methods
.method public abstract finishSavingAudio()V
.end method

.method public abstract isSavingAudio()Z
.end method

.method public abstract onResult(Lcom/google/glass/voice/HotwordResult;)V
.end method

.method public abstract prepareToSaveAudio(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract registerWithStorage(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioStorage;)V
.end method

.method public abstract saveAudio([BII)V
.end method
