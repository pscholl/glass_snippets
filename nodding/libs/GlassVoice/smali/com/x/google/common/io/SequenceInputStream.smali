.class public Lcom/x/google/common/io/SequenceInputStream;
.super Ljava/io/InputStream;


# instance fields
.field streamArray:[Ljava/io/InputStream;

.field streamIndex:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/x/google/common/io/SequenceInputStream;-><init>([Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0}, Lcom/x/google/common/io/SequenceInputStream;-><init>([Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-direct {p0, v0}, Lcom/x/google/common/io/SequenceInputStream;-><init>([Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>([Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/x/google/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/common/io/SequenceInputStream;->streamIndex:I

    iput-object p1, p0, Lcom/x/google/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    return-void
.end method

.method private getStream()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/x/google/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/x/google/common/io/SequenceInputStream;->streamIndex:I

    iget-object v1, p0, Lcom/x/google/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/x/google/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    iget v1, p0, Lcom/x/google/common/io/SequenceInputStream;->streamIndex:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextStream()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/x/google/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/x/google/common/io/SequenceInputStream;->streamIndex:I

    iget-object v1, p0, Lcom/x/google/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    iget v1, p0, Lcom/x/google/common/io/SequenceInputStream;->streamIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/x/google/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    iget v1, p0, Lcom/x/google/common/io/SequenceInputStream;->streamIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/x/google/common/io/SequenceInputStream;->streamIndex:I

    aput-object v3, v0, v1

    iget v0, p0, Lcom/x/google/common/io/SequenceInputStream;->streamIndex:I

    iget-object v1, p0, Lcom/x/google/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iput-object v3, p0, Lcom/x/google/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static validateStreamArray([Ljava/io/InputStream;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/x/google/common/io/SequenceInputStream;->getStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    iget v2, p0, Lcom/x/google/common/io/SequenceInputStream;->streamIndex:I

    iget-object v3, p0, Lcom/x/google/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    array-length v3, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v2, v3, :cond_2

    :try_start_2
    iget-object v2, p0, Lcom/x/google/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    iget v3, p0, Lcom/x/google/common/io/SequenceInputStream;->streamIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    iget v2, p0, Lcom/x/google/common/io/SequenceInputStream;->streamIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/x/google/common/io/SequenceInputStream;->streamIndex:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/x/google/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/x/google/common/io/SequenceInputStream;->getStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/x/google/common/io/SequenceInputStream;->nextStream()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, -0x1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    if-nez p3, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v1, p2, p3

    :try_start_1
    array-length v2, p1

    if-le v1, v2, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_4
    iget-object v1, p0, Lcom/x/google/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/x/google/common/io/SequenceInputStream;->streamIndex:I

    iget-object v2, p0, Lcom/x/google/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    array-length v2, v2

    if-lt v1, v2, :cond_6

    :cond_5
    move v0, v3

    goto :goto_0

    :cond_6
    if-eqz p3, :cond_1

    move v1, p3

    move v2, p2

    :goto_1
    if-lez v1, :cond_7

    invoke-direct {p0}, Lcom/x/google/common/io/SequenceInputStream;->getStream()Ljava/io/InputStream;

    move-result-object v4

    if-nez v4, :cond_8

    :cond_7
    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_8
    invoke-virtual {v4, p1, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v4, v3, :cond_9

    add-int/2addr v2, v4

    sub-int/2addr v1, v4

    add-int/2addr v0, v4

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/x/google/common/io/SequenceInputStream;->nextStream()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized skip(J)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v10, 0x1

    const-wide/16 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/x/google/common/io/SequenceInputStream;->streamIndex:I

    iget-object v1, p0, Lcom/x/google/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_2

    :cond_0
    move-wide v0, v4

    :cond_1
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_2
    cmp-long v0, p1, v4

    if-gtz v0, :cond_6

    move-wide v0, v4

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v6, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v7

    cmp-long v9, v7, v4

    if-nez v9, :cond_5

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    invoke-direct {p0}, Lcom/x/google/common/io/SequenceInputStream;->nextStream()V

    :goto_1
    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    invoke-direct {p0}, Lcom/x/google/common/io/SequenceInputStream;->getStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_4
    sub-long/2addr v2, v10

    add-long/2addr v0, v10

    goto :goto_1

    :cond_5
    sub-long/2addr v2, v7

    add-long/2addr v0, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    move-wide v0, v4

    move-wide v2, p1

    goto :goto_1
.end method
