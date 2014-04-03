.class public Lcom/x/google/masf/DelimitedInputStream;
.super Ljava/io/InputStream;


# static fields
.field private static final MAX_BUFFER_SIZE:I = 0x10000

.field private static final READ_BUFFER_SIZE:I = 0x400


# instance fields
.field protected buffer:Lcom/x/google/masf/BlockingByteQueue;

.field protected volatile complete:Z

.field protected inputStream:Ljava/io/InputStream;

.field protected length:I

.field protected lockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/x/google/masf/DelimitedInputStream;->lockObject:Ljava/lang/Object;

    iput-object p1, p0, Lcom/x/google/masf/DelimitedInputStream;->inputStream:Ljava/io/InputStream;

    iput p2, p0, Lcom/x/google/masf/DelimitedInputStream;->length:I

    return-void
.end method

.method private readFromUnderlyingStream()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    iget v1, p0, Lcom/x/google/masf/DelimitedInputStream;->length:I

    if-lez v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/x/google/masf/DelimitedInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/x/google/masf/DelimitedInputStream;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/x/google/masf/DelimitedInputStream;->length:I

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/x/google/masf/DelimitedInputStream;->signalCompletion()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/x/google/masf/DelimitedInputStream;->signalCompletion()V

    throw v0
.end method

.method private readFromUnderlyingStream([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    iget v1, p0, Lcom/x/google/masf/DelimitedInputStream;->length:I

    if-lez v1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/x/google/masf/DelimitedInputStream;->inputStream:Ljava/io/InputStream;

    iget v1, p0, Lcom/x/google/masf/DelimitedInputStream;->length:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/x/google/masf/DelimitedInputStream;->length:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/x/google/masf/DelimitedInputStream;->length:I

    :cond_0
    if-lez v0, :cond_1

    iget v1, p0, Lcom/x/google/masf/DelimitedInputStream;->length:I

    if-nez v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/x/google/masf/DelimitedInputStream;->signalCompletion()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/x/google/masf/DelimitedInputStream;->signalCompletion()V

    throw v0
.end method

.method private signalCompletion()V
    .locals 2

    iget-object v1, p0, Lcom/x/google/masf/DelimitedInputStream;->lockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/x/google/masf/DelimitedInputStream;->complete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/x/google/masf/DelimitedInputStream;->complete:Z

    iget-object v0, p0, Lcom/x/google/masf/DelimitedInputStream;->lockObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public bufferAndDetach()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/x/google/masf/DelimitedInputStream;->length:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/DelimitedInputStream;->buffer:Lcom/x/google/masf/BlockingByteQueue;

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/x/google/masf/BlockingByteQueue;

    const/high16 v1, 0x1

    iget v2, p0, Lcom/x/google/masf/DelimitedInputStream;->length:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/x/google/masf/BlockingByteQueue;-><init>(I)V

    iput-object v0, p0, Lcom/x/google/masf/DelimitedInputStream;->buffer:Lcom/x/google/masf/BlockingByteQueue;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_1
    :try_start_1
    iget v1, p0, Lcom/x/google/masf/DelimitedInputStream;->length:I

    if-lez v1, :cond_3

    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Lcom/x/google/masf/DelimitedInputStream;->readFromUnderlyingStream([BII)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/x/google/masf/DelimitedInputStream;->buffer:Lcom/x/google/masf/BlockingByteQueue;

    invoke-virtual {v2, v0, v1}, Lcom/x/google/masf/BlockingByteQueue;->write([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "DelimitedInputStream"

    invoke-static {v1, v0}, Lcom/x/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/x/google/masf/DelimitedInputStream;->buffer:Lcom/x/google/masf/BlockingByteQueue;

    invoke-virtual {v0}, Lcom/x/google/masf/BlockingByteQueue;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_2
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Premature EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/x/google/masf/DelimitedInputStream;->buffer:Lcom/x/google/masf/BlockingByteQueue;

    invoke-virtual {v1}, Lcom/x/google/masf/BlockingByteQueue;->close()V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/x/google/masf/DelimitedInputStream;->buffer:Lcom/x/google/masf/BlockingByteQueue;

    invoke-virtual {v0}, Lcom/x/google/masf/BlockingByteQueue;->close()V

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    invoke-virtual {p0}, Lcom/x/google/masf/DelimitedInputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemaining()I
    .locals 1

    iget v0, p0, Lcom/x/google/masf/DelimitedInputStream;->length:I

    return v0
.end method

.method public declared-synchronized read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/masf/DelimitedInputStream;->buffer:Lcom/x/google/masf/BlockingByteQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/DelimitedInputStream;->buffer:Lcom/x/google/masf/BlockingByteQueue;

    invoke-virtual {v0}, Lcom/x/google/masf/BlockingByteQueue;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/x/google/masf/DelimitedInputStream;->readFromUnderlyingStream()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/x/google/masf/DelimitedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/masf/DelimitedInputStream;->buffer:Lcom/x/google/masf/BlockingByteQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/DelimitedInputStream;->buffer:Lcom/x/google/masf/BlockingByteQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/x/google/masf/BlockingByteQueue;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/x/google/masf/DelimitedInputStream;->readFromUnderlyingStream([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitForCompletion()V
    .locals 2

    iget-object v1, p0, Lcom/x/google/masf/DelimitedInputStream;->lockObject:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/x/google/masf/DelimitedInputStream;->complete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/x/google/masf/DelimitedInputStream;->lockObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
