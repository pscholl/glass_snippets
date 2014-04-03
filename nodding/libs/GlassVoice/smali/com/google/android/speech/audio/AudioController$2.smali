.class Lcom/google/android/speech/audio/AudioController$2;
.super Ljava/lang/Object;
.source "AudioController.java"

# interfaces
.implements Lcom/google/android/speech/audio/AudioInputStreamFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/audio/AudioController;->setCannedAudio(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/speech/audio/AudioController;

.field final synthetic val$cannedAudioPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/speech/audio/AudioController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/android/speech/audio/AudioController$2;->this$0:Lcom/google/android/speech/audio/AudioController;

    iput-object p2, p0, Lcom/google/android/speech/audio/AudioController$2;->val$cannedAudioPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController$2;->this$0:Lcom/google/android/speech/audio/AudioController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/speech/audio/AudioController;->setRawInputStreamFactory(Lcom/google/android/speech/audio/AudioInputStreamFactory;)V

    .line 141
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/speech/audio/AudioController$2;->val$cannedAudioPath:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
