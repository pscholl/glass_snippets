.class Lcom/google/glass/voice/BufferingStreamRecorder$1;
.super Ljava/lang/Object;
.source "BufferingStreamRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/BufferingStreamRecorder;->createRecordThreadRunnable(I)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final buffer:[B

.field private overflowLogged:Z

.field private final recordThreadLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/voice/BufferingStreamRecorder;

.field final synthetic val$bytesPerRead:I


# direct methods
.method constructor <init>(Lcom/google/glass/voice/BufferingStreamRecorder;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->this$0:Lcom/google/glass/voice/BufferingStreamRecorder;

    iput p2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$bytesPerRead:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/google/glass/voice/BufferingStreamRecorder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "recordThread"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->recordThreadLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 46
    iget v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$bytesPerRead:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->buffer:[B

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->overflowLogged:Z

    return-void
.end method

.method private notifyReadMonitor()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->this$0:Lcom/google/glass/voice/BufferingStreamRecorder;

    #getter for: Lcom/google/glass/voice/BufferingStreamRecorder;->readMonitor:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/glass/voice/BufferingStreamRecorder;->access$500(Lcom/google/glass/voice/BufferingStreamRecorder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->this$0:Lcom/google/glass/voice/BufferingStreamRecorder;

    #getter for: Lcom/google/glass/voice/BufferingStreamRecorder;->readMonitor:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/glass/voice/BufferingStreamRecorder;->access$500(Lcom/google/glass/voice/BufferingStreamRecorder;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 93
    monitor-exit v1

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 57
    iget-object v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->this$0:Lcom/google/glass/voice/BufferingStreamRecorder;

    #getter for: Lcom/google/glass/voice/BufferingStreamRecorder;->isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/google/glass/voice/BufferingStreamRecorder;->access$100(Lcom/google/glass/voice/BufferingStreamRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 59
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->this$0:Lcom/google/glass/voice/BufferingStreamRecorder;

    #getter for: Lcom/google/glass/voice/BufferingStreamRecorder;->underlyingStream:Ljava/io/InputStream;
    invoke-static {v2}, Lcom/google/glass/voice/BufferingStreamRecorder;->access$200(Lcom/google/glass/voice/BufferingStreamRecorder;)Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->buffer:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 61
    .local v1, read:I
    if-gtz v1, :cond_0

    .line 62
    iget-object v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->recordThreadLogger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping recording because read returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->this$0:Lcom/google/glass/voice/BufferingStreamRecorder;

    invoke-virtual {v2}, Lcom/google/glass/voice/BufferingStreamRecorder;->stopRecording()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    invoke-direct {p0}, Lcom/google/glass/voice/BufferingStreamRecorder$1;->notifyReadMonitor()V

    .line 88
    .end local v1           #read:I
    :goto_0
    return-void

    .line 68
    .restart local v1       #read:I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->this$0:Lcom/google/glass/voice/BufferingStreamRecorder;

    #getter for: Lcom/google/glass/voice/BufferingStreamRecorder;->circularBuffer:Lcom/google/glass/util/CircularByteBuffer;
    invoke-static {v2}, Lcom/google/glass/voice/BufferingStreamRecorder;->access$300(Lcom/google/glass/voice/BufferingStreamRecorder;)Lcom/google/glass/util/CircularByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->buffer:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/util/CircularByteBuffer;->put(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    iget-boolean v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->overflowLogged:Z

    if-nez v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->recordThreadLogger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Buffer overflow!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->overflowLogged:Z

    .line 78
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->this$0:Lcom/google/glass/voice/BufferingStreamRecorder;

    #getter for: Lcom/google/glass/voice/BufferingStreamRecorder;->recordExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v2}, Lcom/google/glass/voice/BufferingStreamRecorder;->access$400(Lcom/google/glass/voice/BufferingStreamRecorder;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    invoke-direct {p0}, Lcom/google/glass/voice/BufferingStreamRecorder$1;->notifyReadMonitor()V

    goto :goto_0

    .line 74
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->overflowLogged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 79
    .end local v1           #read:I
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    iget-object v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->recordThreadLogger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "IOException from underlying stream."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    invoke-direct {p0}, Lcom/google/glass/voice/BufferingStreamRecorder$1;->notifyReadMonitor()V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lcom/google/glass/voice/BufferingStreamRecorder$1;->notifyReadMonitor()V

    throw v2

    .line 85
    :cond_3
    iget-object v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->recordThreadLogger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Stopped recording"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-direct {p0}, Lcom/google/glass/voice/BufferingStreamRecorder$1;->notifyReadMonitor()V

    goto :goto_0
.end method
