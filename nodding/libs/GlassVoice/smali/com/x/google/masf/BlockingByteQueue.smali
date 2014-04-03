.class Lcom/x/google/masf/BlockingByteQueue;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private closed:Z

.field private head:I

.field private final mutex:Ljava/lang/Object;

.field private tail:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bufferSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    iget-object v1, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    sub-int/2addr v0, v2

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    iget-object v2, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    array-length v2, v2

    iget v3, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method public close()V
    .locals 2

    iget-object v1, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/x/google/masf/BlockingByteQueue;->closed:Z

    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read()I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    if-gez v2, :cond_1

    iget-boolean v2, p0, Lcom/x/google/masf/BlockingByteQueue;->closed:Z

    if-eqz v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return v0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    iget-object v3, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    array-length v3, v3

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    iput v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    :cond_2
    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    iget v3, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    if-ne v2, v3, :cond_3

    const/4 v2, -0x1

    iput v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    :cond_3
    iget-object v2, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public read([BII)I
    .locals 5

    const/4 v1, -0x1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    monitor-enter v3

    :goto_1
    :try_start_0
    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    if-gez v2, :cond_2

    iget-boolean v2, p0, Lcom/x/google/masf/BlockingByteQueue;->closed:Z

    if-eqz v2, :cond_1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_2
    :try_start_2
    iget v1, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    if-ge v1, v2, :cond_6

    iget v1, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    sub-int/2addr v1, v2

    move v2, v0

    move v0, p3

    :goto_2
    if-le v1, v0, :cond_3

    move v1, v0

    :cond_3
    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    iget v4, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    invoke-static {v0, v4, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v2, v1

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    iget v1, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    iget-object v2, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    iput v1, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    :cond_4
    iget v1, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    if-ne v1, v2, :cond_5

    const/4 v1, -0x1

    iput v1, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    :cond_5
    iget-object v1, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    :try_start_3
    iget-object v1, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    sub-int v2, v1, v2

    if-ge v2, p3, :cond_7

    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    iget v1, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    iget v1, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, p3

    goto :goto_2

    :cond_7
    move v1, v2

    move v2, v0

    move v0, p3

    goto :goto_2
.end method

.method public write(B)V
    .locals 4

    iget-object v1, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

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
    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    :cond_1
    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    aput-byte p1, v0, v2

    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    iget-object v2, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    array-length v2, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    :cond_2
    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public write([BI)V
    .locals 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    monitor-enter v3

    move v2, v0

    move v1, p2

    :cond_0
    :goto_0
    if-lez v1, :cond_5

    :goto_1
    :try_start_0
    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    iget v4, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v4, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_2
    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    if-gez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    :cond_2
    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    iget v4, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    if-ge v0, v4, :cond_4

    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    iget v4, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    sub-int/2addr v0, v4

    :goto_2
    if-le v0, v1, :cond_3

    move v0, v1

    :cond_3
    iget-object v4, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    iget v5, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    invoke-static {p1, v2, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v0

    sub-int/2addr v1, v0

    iget v4, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    iget-object v4, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    array-length v4, v4

    if-ne v0, v4, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    array-length v0, v0

    iget v4, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    sub-int/2addr v0, v4

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method
