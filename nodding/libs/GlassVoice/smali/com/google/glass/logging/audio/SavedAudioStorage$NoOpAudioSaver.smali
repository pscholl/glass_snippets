.class Lcom/google/glass/logging/audio/SavedAudioStorage$NoOpAudioSaver;
.super Ljava/lang/Object;
.source "SavedAudioStorage.java"

# interfaces
.implements Lcom/google/glass/logging/audio/AudioSaver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/audio/SavedAudioStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoOpAudioSaver"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishSavingAudio()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public isSavingAudio()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public onResult(Lcom/google/glass/voice/HotwordResult;)V
    .locals 0
    .parameter "hotwordResult"

    .prologue
    .line 71
    return-void
.end method

.method public prepareToSaveAudio(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 54
    return-void
.end method

.method public registerWithStorage(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioStorage;)V
    .locals 0
    .parameter "context"
    .parameter "savedAudioStorage"

    .prologue
    .line 68
    return-void
.end method

.method public saveAudio([BII)V
    .locals 0
    .parameter "b"
    .parameter "offset"
    .parameter "readByteCount"

    .prologue
    .line 57
    return-void
.end method
