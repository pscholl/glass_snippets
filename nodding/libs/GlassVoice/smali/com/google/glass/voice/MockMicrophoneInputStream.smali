.class public Lcom/google/glass/voice/MockMicrophoneInputStream;
.super Lcom/google/glass/voice/MicrophoneInputStream;
.source "MockMicrophoneInputStream.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final cannedAudioInputStreamRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private feedingCannedAudio:Z

.field private sleepPerRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/MockMicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/voice/NativeAudioInterfaceWrapper;Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;I)V
    .locals 1
    .parameter "nativeAudioInterfaceWrapper"
    .parameter "listener"
    .parameter "sampleRate"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/MicrophoneInputStream;-><init>(Lcom/google/glass/voice/NativeAudioInterfaceWrapper;Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;I)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->feedingCannedAudio:Z

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->cannedAudioInputStreamRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->sleepPerRead:Z

    .line 28
    return-void
.end method


# virtual methods
.method public declared-synchronized feedCannedAudio(Ljava/io/InputStream;)V
    .locals 3
    .parameter "cannedAudioInputStream"

    .prologue
    .line 91
    monitor-enter p0

    if-nez p1, :cond_0

    .line 92
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Canned audio input stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/glass/voice/MockMicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "received canned audio input stream"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->cannedAudioInputStreamRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->feedingCannedAudio:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized isFeedingCannedAudio()Z
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->feedingCannedAudio:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 7
    .parameter "b"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->sleepPerRead:Z

    if-eqz v4, :cond_0

    .line 50
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 52
    :cond_0
    iget-object v4, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->cannedAudioInputStreamRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .local v0, cannedAudioInputStream:Ljava/io/InputStream;
    if-eqz v0, :cond_2

    .line 55
    :try_start_1
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 56
    .local v3, readReturn:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 57
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/glass/voice/MockMicrophoneInputStream;->onRawBytesRead([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .end local v3           #readReturn:I
    :goto_0
    monitor-exit p0

    return v3

    .line 60
    .restart local v3       #readReturn:I
    :cond_1
    :try_start_2
    sget-object v4, Lcom/google/glass/voice/MockMicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "finished reading from canned audio, passing zeros"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 64
    iget-object v4, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->cannedAudioInputStreamRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->feedingCannedAudio:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 74
    .end local v3           #readReturn:I
    :cond_2
    :goto_1
    move v2, p2

    .local v2, i:I
    :goto_2
    add-int v4, p2, p3

    if-ge v2, v4, :cond_3

    .line 75
    const/4 v4, 0x0

    :try_start_3
    aput-byte v4, p1, v2

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 67
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 68
    .local v1, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/voice/MockMicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Error reading canned audio, passing zeros instead"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v1, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v4, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->cannedAudioInputStreamRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->feedingCannedAudio:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 48
    .end local v0           #cannedAudioInputStream:Ljava/io/InputStream;
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 78
    .restart local v0       #cannedAudioInputStream:Ljava/io/InputStream;
    .restart local v2       #i:I
    :cond_3
    :try_start_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/voice/MockMicrophoneInputStream;->onRawBytesRead([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v3, p3

    .line 80
    goto :goto_0
.end method

.method public setSleepPerRead(Z)V
    .locals 0
    .parameter "sleepPerRead"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->sleepPerRead:Z

    .line 32
    return-void
.end method

.method public declared-synchronized startListening()V
    .locals 3

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/MockMicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "starting listening"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->listening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopListening()V
    .locals 3

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/MockMicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "stopping listening"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->listening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
