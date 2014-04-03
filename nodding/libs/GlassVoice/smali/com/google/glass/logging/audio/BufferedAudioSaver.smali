.class public Lcom/google/glass/logging/audio/BufferedAudioSaver;
.super Lcom/google/glass/logging/audio/FileAudioSaver;
.source "BufferedAudioSaver.java"


# static fields
.field public static final BYTES_PER_MICROPHONE_READ:I = 0xa0

.field public static final SAVE_TO_DISK_BUFFER_CAPACITY:I = 0x1f40

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final bufferSize:I

.field private bufferedStream:Ljava/io/BufferedOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter "sampleRate"

    .prologue
    .line 32
    const/16 v0, 0x1f40

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/logging/audio/BufferedAudioSaver;-><init>(JI)V

    .line 33
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0
    .parameter "sampleRate"
    .parameter "bufferSize"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/glass/logging/audio/FileAudioSaver;-><init>(J)V

    .line 37
    iput p3, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->bufferSize:I

    .line 39
    return-void
.end method


# virtual methods
.method protected onFinishSavingAudio()V
    .locals 4

    .prologue
    .line 58
    iget-object v1, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->bufferedStream:Ljava/io/BufferedOutputStream;

    if-nez v1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 63
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->bufferedStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/google/glass/logging/audio/BufferedAudioSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to flush buffered stream!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPrepareToSaveAudio()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Lcom/google/glass/logging/audio/BufferedAudioSaver;->getFileOutputStream()Ljava/io/FileOutputStream;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->bufferSize:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->bufferedStream:Ljava/io/BufferedOutputStream;

    .line 45
    return-void
.end method

.method onSaveAudio([BII)V
    .locals 4
    .parameter "buffer"
    .parameter "offset"
    .parameter "readByteCount"

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->bufferedStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/google/glass/logging/audio/BufferedAudioSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to write to buffered stream!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
