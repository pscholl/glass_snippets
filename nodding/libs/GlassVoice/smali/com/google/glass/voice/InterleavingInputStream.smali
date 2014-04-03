.class public Lcom/google/glass/voice/InterleavingInputStream;
.super Ljava/io/InputStream;
.source "InterleavingInputStream.java"


# instance fields
.field private final delegate:Ljava/io/InputStream;

.field private leaf:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/glass/voice/InterleavingInputStream;->delegate:Ljava/io/InputStream;

    .line 18
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/glass/voice/InterleavingInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 82
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 83
    return-void
.end method

.method public declared-synchronized dropInterleavingBuffer()V
    .locals 1

    .prologue
    .line 42
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/glass/voice/InterleavingInputStream;->leaf:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized interleave(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "leaf"

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/glass/voice/InterleavingInputStream;->leaf:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 33
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
    .line 22
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized read([BII)I
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
    .line 51
    monitor-enter p0

    const/4 v1, 0x0

    .line 53
    .local v1, readSoFar:I
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/voice/InterleavingInputStream;->leaf:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_1

    .line 54
    iget-object v3, p0, Lcom/google/glass/voice/InterleavingInputStream;->leaf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lt v3, p3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/google/glass/voice/InterleavingInputStream;->leaf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local p3
    :goto_0
    monitor-exit p0

    return p3

    .line 58
    .restart local p3
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/voice/InterleavingInputStream;->leaf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 59
    .local v2, remaining:I
    iget-object v3, p0, Lcom/google/glass/voice/InterleavingInputStream;->leaf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1, p2, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 60
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/glass/voice/InterleavingInputStream;->leaf:Ljava/nio/ByteBuffer;

    .line 61
    move v1, v2

    .line 65
    .end local v2           #remaining:I
    :cond_1
    iget-object v3, p0, Lcom/google/glass/voice/InterleavingInputStream;->delegate:Ljava/io/InputStream;

    add-int v4, p2, v1

    sub-int v5, p3, v1

    invoke-virtual {v3, p1, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 66
    .local v0, readFromDelegate:I
    if-gtz v0, :cond_3

    .line 67
    if-lez v1, :cond_2

    move p3, v1

    .line 69
    goto :goto_0

    .line 73
    :cond_2
    const/4 p3, -0x1

    goto :goto_0

    .line 76
    :cond_3
    add-int p3, v1, v0

    goto :goto_0

    .line 51
    .end local v0           #readFromDelegate:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
