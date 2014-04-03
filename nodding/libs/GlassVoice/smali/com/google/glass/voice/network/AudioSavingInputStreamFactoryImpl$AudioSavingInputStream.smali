.class Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl$AudioSavingInputStream;
.super Ljava/io/InputStream;
.source "AudioSavingInputStreamFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudioSavingInputStream"
.end annotation


# instance fields
.field private audioSaver:Lcom/google/glass/logging/audio/FileAudioSaver;

.field private delegate:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .parameter "delegate"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 42
    new-instance v0, Lcom/google/glass/logging/audio/BufferedAudioSaver;

    const-wide/16 v1, 0x1f40

    const/16 v3, 0x800

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/logging/audio/BufferedAudioSaver;-><init>(JI)V

    iput-object v0, p0, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl$AudioSavingInputStream;->audioSaver:Lcom/google/glass/logging/audio/FileAudioSaver;

    .line 47
    iput-object p1, p0, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl$AudioSavingInputStream;->delegate:Ljava/io/InputStream;

    .line 48
    return-void
.end method

.method private wrappedRead([BII)I
    .locals 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v2, p0, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl$AudioSavingInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 67
    .local v1, read:I
    if-lez v1, :cond_1

    .line 68
    iget-object v2, p0, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl$AudioSavingInputStream;->audioSaver:Lcom/google/glass/logging/audio/FileAudioSaver;

    invoke-virtual {v2}, Lcom/google/glass/logging/audio/FileAudioSaver;->isSavingAudio()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GRECO-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl;->sessionCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl;->sessionCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, filename:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Saving greco audio to %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v2, p0, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl$AudioSavingInputStream;->audioSaver:Lcom/google/glass/logging/audio/FileAudioSaver;

    invoke-virtual {v2, v0}, Lcom/google/glass/logging/audio/FileAudioSaver;->prepareToSaveAudio(Ljava/lang/String;)V

    .line 73
    .end local v0           #filename:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl$AudioSavingInputStream;->audioSaver:Lcom/google/glass/logging/audio/FileAudioSaver;

    invoke-virtual {v2, p1, p2, v1}, Lcom/google/glass/logging/audio/FileAudioSaver;->saveAudio([BII)V

    .line 75
    :cond_1
    return v1
.end method


# virtual methods
.method public finishRecording()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl$AudioSavingInputStream;->audioSaver:Lcom/google/glass/logging/audio/FileAudioSaver;

    invoke-virtual {v0}, Lcom/google/glass/logging/audio/FileAudioSaver;->finishSavingAudio()V

    .line 80
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public read([B)I
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl$AudioSavingInputStream;->wrappedRead([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl$AudioSavingInputStream;->wrappedRead([BII)I

    move-result v0

    return v0
.end method
