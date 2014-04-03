.class Lcom/google/android/speech/audio/AudioController$3;
.super Ljava/lang/Object;
.source "AudioController.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/audio/AudioController;->createDefaultRawInputStreamFactoryLocked(Lcom/google/android/speech/params/AudioInputParams;)Lcom/google/android/speech/audio/AudioInputStreamFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Landroid/media/MediaSyncEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/speech/audio/AudioController;


# direct methods
.method constructor <init>(Lcom/google/android/speech/audio/AudioController;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/android/speech/audio/AudioController$3;->this$0:Lcom/google/android/speech/audio/AudioController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/media/MediaSyncEvent;
    .locals 3

    .prologue
    .line 281
    iget-object v2, p0, Lcom/google/android/speech/audio/AudioController$3;->this$0:Lcom/google/android/speech/audio/AudioController;

    #getter for: Lcom/google/android/speech/audio/AudioController;->mSoundManager:Lcom/google/android/speech/audio/SpeechSoundManager;
    invoke-static {v2}, Lcom/google/android/speech/audio/AudioController;->access$000(Lcom/google/android/speech/audio/AudioController;)Lcom/google/android/speech/audio/SpeechSoundManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/speech/audio/SpeechSoundManager;->playSpeakNowSound()I

    move-result v0

    .line 282
    .local v0, sessionId:I
    if-lez v0, :cond_0

    .line 283
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/media/MediaSyncEvent;->createEvent(I)Landroid/media/MediaSyncEvent;

    move-result-object v1

    .line 285
    .local v1, syncEvent:Landroid/media/MediaSyncEvent;
    invoke-virtual {v1, v0}, Landroid/media/MediaSyncEvent;->setAudioSessionId(I)Landroid/media/MediaSyncEvent;

    .line 288
    .end local v1           #syncEvent:Landroid/media/MediaSyncEvent;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/android/speech/audio/AudioController$3;->get()Landroid/media/MediaSyncEvent;

    move-result-object v0

    return-object v0
.end method
