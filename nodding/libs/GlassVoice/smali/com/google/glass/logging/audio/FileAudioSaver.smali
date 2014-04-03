.class public abstract Lcom/google/glass/logging/audio/FileAudioSaver;
.super Ljava/lang/Object;
.source "FileAudioSaver.java"

# interfaces
.implements Lcom/google/glass/logging/audio/AudioSaver;


# static fields
.field public static final SAVE_TO_DISK_BASE_PATH:Ljava/lang/String; = "/data/data/com.google.glass.voice/recorded_audio/"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private destinationPath:Ljava/lang/String;

.field private final hotwordResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/HotwordResult;",
            ">;"
        }
    .end annotation
.end field

.field private final sampleRate:J

.field private saveToDiskOutputStream:Ljava/io/FileOutputStream;

.field private savingAudio:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/glass/logging/audio/FileAudioSaver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/audio/FileAudioSaver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter "sampleRate"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->hotwordResults:Ljava/util/List;

    .line 39
    iput-wide p1, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->sampleRate:J

    .line 40
    return-void
.end method


# virtual methods
.method public final finishSavingAudio()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 88
    iget-boolean v1, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->savingAudio:Z

    if-nez v1, :cond_0

    .line 89
    sget-object v1, Lcom/google/glass/logging/audio/FileAudioSaver;->TAG:Ljava/lang/String;

    const-string v2, "finishSavingAudio() called before preparing or after finishing."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :goto_0
    return-void

    .line 93
    :cond_0
    sget-object v1, Lcom/google/glass/logging/audio/FileAudioSaver;->TAG:Ljava/lang/String;

    const-string v2, "Closing out writing audio to disk"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0}, Lcom/google/glass/logging/audio/FileAudioSaver;->onFinishSavingAudio()V

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->saveToDiskOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->saveToDiskOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_1
    iput-object v6, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->saveToDiskOutputStream:Ljava/io/FileOutputStream;

    .line 107
    iput-boolean v5, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->savingAudio:Z

    goto :goto_0

    .line 101
    :cond_1
    :try_start_1
    sget-object v1, Lcom/google/glass/logging/audio/FileAudioSaver;->TAG:Ljava/lang/String;

    const-string v2, "Output stream was not initialized before finishing."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    sget-object v1, Lcom/google/glass/logging/audio/FileAudioSaver;->TAG:Ljava/lang/String;

    const-string v2, "Error closing output stream for saved audio"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    iput-object v6, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->saveToDiskOutputStream:Ljava/io/FileOutputStream;

    .line 107
    iput-boolean v5, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->savingAudio:Z

    goto :goto_0

    .line 106
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v6, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->saveToDiskOutputStream:Ljava/io/FileOutputStream;

    .line 107
    iput-boolean v5, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->savingAudio:Z

    throw v1
.end method

.method public final getDestinationPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->destinationPath:Ljava/lang/String;

    return-object v0
.end method

.method protected getFileOutputStream()Ljava/io/FileOutputStream;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->saveToDiskOutputStream:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public final isSavingAudio()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->savingAudio:Z

    return v0
.end method

.method protected onFinishSavingAudio()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method protected onPrepareToSaveAudio()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public final onResult(Lcom/google/glass/voice/HotwordResult;)V
    .locals 1
    .parameter "hotwordResult"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->hotwordResults:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method abstract onSaveAudio([BII)V
.end method

.method public final prepareToSaveAudio(Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 45
    iget-boolean v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->savingAudio:Z

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/google/glass/logging/audio/FileAudioSaver;->TAG:Ljava/lang/String;

    const-string v1, "prepareToSaveAudio() called more than once."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->hotwordResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->savingAudio:Z

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/com.google.glass.voice/recorded_audio/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->destinationPath:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/google/glass/logging/audio/FileAudioSaver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting up to save audio to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->destinationPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->destinationPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->saveToDiskOutputStream:Ljava/io/FileOutputStream;

    .line 58
    invoke-virtual {p0}, Lcom/google/glass/logging/audio/FileAudioSaver;->onPrepareToSaveAudio()V

    goto :goto_0
.end method

.method public final registerWithStorage(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioStorage;)V
    .locals 7
    .parameter "context"
    .parameter "savedAudioStorage"

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/glass/logging/audio/FileAudioSaver;->getDestinationPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->hotwordResults:Ljava/util/List;

    iget-wide v4, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->sampleRate:J

    invoke-static {}, Lcom/google/glass/logging/audio/SavedAudioStorage;->getEnabledStorageLabs()Ljava/util/List;

    move-result-object v6

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/logging/audio/SavedAudioStorage;->storeAudio(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V

    .line 123
    return-void
.end method

.method public final saveAudio([BII)V
    .locals 3
    .parameter "b"
    .parameter "offset"
    .parameter "readByteCount"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/glass/logging/audio/FileAudioSaver;->savingAudio:Z

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lcom/google/glass/logging/audio/FileAudioSaver;->TAG:Ljava/lang/String;

    const-string v1, "saveAudio() called before preparing or after finishing."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/logging/audio/FileAudioSaver;->onSaveAudio([BII)V

    goto :goto_0
.end method
