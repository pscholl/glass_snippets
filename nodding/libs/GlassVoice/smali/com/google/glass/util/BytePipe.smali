.class public Lcom/google/glass/util/BytePipe;
.super Ljava/io/InputStream;
.source "BytePipe.java"


# instance fields
.field final circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

.field private isClosed:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/util/BytePipe;->isClosed:Z

    .line 19
    new-instance v0, Lcom/google/glass/util/CircularByteBuffer;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/CircularByteBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/google/glass/util/BytePipe;->circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    .line 20
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/BytePipe;->circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-virtual {v0}, Lcom/google/glass/util/CircularByteBuffer;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/util/BytePipe;->isClosed:Z

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read into a buffer rather than one int at a time."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 5
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 52
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 54
    .local v2, wrapped:Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 55
    .local v1, read:I
    :cond_0
    iget-object v4, p0, Lcom/google/glass/util/BytePipe;->circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-virtual {v4, v2}, Lcom/google/glass/util/CircularByteBuffer;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 57
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    :try_start_2
    iget-boolean v4, p0, Lcom/google/glass/util/BytePipe;->isClosed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_0

    move v1, v3

    .line 69
    .end local v1           #read:I
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 58
    .restart local v1       #read:I
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v3

    .line 61
    goto :goto_0

    .line 52
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #read:I
    .end local v2           #wrapped:Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/BytePipe;->circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-virtual {v0}, Lcom/google/glass/util/CircularByteBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(Ljava/nio/ByteBuffer;)Z
    .locals 3
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/glass/util/BytePipe;->isClosed:Z

    if-eqz v1, :cond_0

    .line 32
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Writing to a closed BytePipe."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 35
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/glass/util/BytePipe;->circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-virtual {v1, p1}, Lcom/google/glass/util/CircularByteBuffer;->put(Ljava/nio/ByteBuffer;)Z

    move-result v0

    .line 37
    .local v0, overwrote:Z
    iget-object v1, p0, Lcom/google/glass/util/BytePipe;->circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-virtual {v1}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :cond_1
    monitor-exit p0

    return v0
.end method
