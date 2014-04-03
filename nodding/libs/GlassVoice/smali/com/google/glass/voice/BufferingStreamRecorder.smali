.class public Lcom/google/glass/voice/BufferingStreamRecorder;
.super Ljava/io/InputStream;
.source "BufferingStreamRecorder.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

.field private final isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final readMonitor:Ljava/lang/Object;

.field private final recordExecutor:Ljava/util/concurrent/ExecutorService;

.field private final recordRunnable:Ljava/lang/Runnable;

.field private final underlyingStream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/BufferingStreamRecorder;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 3
    .parameter "underlyingStream"
    .parameter "bufferSizeBytes"
    .parameter "bytesPerRead"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->readMonitor:Ljava/lang/Object;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const/16 v1, 0xa

    const-string v2, "recordThread"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->recordExecutor:Ljava/util/concurrent/ExecutorService;

    .line 31
    iput-object p1, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->underlyingStream:Ljava/io/InputStream;

    .line 32
    new-instance v0, Lcom/google/glass/util/CircularByteBuffer;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/CircularByteBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    .line 33
    invoke-direct {p0, p3}, Lcom/google/glass/voice/BufferingStreamRecorder;->createRecordThreadRunnable(I)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->recordRunnable:Ljava/lang/Runnable;

    .line 34
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/voice/BufferingStreamRecorder;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/BufferingStreamRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/BufferingStreamRecorder;)Ljava/io/InputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->underlyingStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/BufferingStreamRecorder;)Lcom/google/glass/util/CircularByteBuffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/voice/BufferingStreamRecorder;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->recordExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/voice/BufferingStreamRecorder;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->readMonitor:Ljava/lang/Object;

    return-object v0
.end method

.method private final createRecordThreadRunnable(I)Ljava/lang/Runnable;
    .locals 1
    .parameter "bytesPerRead"

    .prologue
    .line 42
    new-instance v0, Lcom/google/glass/voice/BufferingStreamRecorder$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/BufferingStreamRecorder$1;-><init>(Lcom/google/glass/voice/BufferingStreamRecorder;I)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/voice/BufferingStreamRecorder;->stopRecording()V

    .line 162
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->underlyingStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 133
    monitor-enter p0

    const/4 v2, 0x0

    .line 134
    .local v2, totalRead:I
    :cond_0
    :goto_0
    if-ge v2, p3, :cond_1

    .line 135
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_2

    .line 136
    sget-object v3, Lcom/google/glass/voice/BufferingStreamRecorder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "No longer recording from underlying input stream; returning -1."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 137
    const/4 v2, -0x1

    .line 153
    .end local v2           #totalRead:I
    :cond_1
    monitor-exit p0

    return v2

    .line 140
    .restart local v2       #totalRead:I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    add-int v4, p2, v2

    sub-int v5, p3, v2

    invoke-static {p1, v4, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/util/CircularByteBuffer;->read(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 142
    .local v1, readOnThisPass:I
    add-int/2addr v2, v1

    .line 143
    if-ge v2, p3, :cond_0

    .line 145
    :try_start_2
    iget-object v4, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->readMonitor:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    :try_start_3
    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->readMonitor:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 147
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 133
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #readOnThisPass:I
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized startRecording()V
    .locals 3

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 103
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/glass/voice/BufferingStreamRecorder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting recording."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->recordExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->recordRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stopRecording()V
    .locals 3

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already stopped."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 113
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/glass/voice/BufferingStreamRecorder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stopping recording."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :goto_0
    monitor-exit p0

    return-void

    .line 115
    :cond_1
    :try_start_2
    sget-object v0, Lcom/google/glass/voice/BufferingStreamRecorder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Recording has already been stopped."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
