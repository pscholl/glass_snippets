.class public Lcom/x/google/masf/protocol/PlainRequest;
.super Lcom/x/google/masf/protocol/SimpleRequest;


# instance fields
.field payloadHeader:[B

.field payloadProvider:Lcom/x/google/masf/InputStreamProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/x/google/masf/protocol/SimpleRequest;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/x/google/masf/protocol/PlainRequest;->setBlockType(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/x/google/masf/protocol/SimpleRequest;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/x/google/masf/protocol/PlainRequest;->setBlockType(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/x/google/masf/InputStreamProvider;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/x/google/masf/protocol/SimpleRequest;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/x/google/masf/protocol/PlainRequest;->setBlockType(I)V

    invoke-direct {p0, p3}, Lcom/x/google/masf/protocol/PlainRequest;->setPayloadProvider(Lcom/x/google/masf/InputStreamProvider;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 1

    new-instance v0, Lcom/x/google/masf/ByteArrayInputStreamProvider;

    invoke-direct {v0, p3}, Lcom/x/google/masf/ByteArrayInputStreamProvider;-><init>([B)V

    invoke-direct {p0, p1, p2, v0}, Lcom/x/google/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;ILcom/x/google/masf/InputStreamProvider;)V

    return-void
.end method

.method private generateBlockData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/masf/protocol/PlainRequest;->payloadHeader:[B

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/x/google/masf/protocol/PlainRequest;->generatePayloadHeader()V

    :cond_0
    return-void
.end method

.method private generatePayloadHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/x/google/masf/protocol/PlainRequest;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lcom/x/google/masf/protocol/PlainRequest;->getServiceUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/x/google/masf/protocol/PlainRequest;->getServiceVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Lcom/x/google/masf/protocol/PlainRequest;->payloadProvider:Lcom/x/google/masf/InputStreamProvider;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/x/google/masf/protocol/PlainRequest;->payloadProvider:Lcom/x/google/masf/InputStreamProvider;

    invoke-interface {v2}, Lcom/x/google/masf/InputStreamProvider;->getStreamLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/masf/protocol/PlainRequest;->payloadHeader:[B

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method

.method private setPayloadProvider(Lcom/x/google/masf/InputStreamProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/masf/protocol/PlainRequest;->payloadProvider:Lcom/x/google/masf/InputStreamProvider;

    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/x/google/masf/protocol/SimpleRequest;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/x/google/masf/protocol/PlainRequest;->payloadHeader:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getBodyInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/x/google/masf/protocol/PlainRequest;->generateBlockData()V

    iget-object v0, p0, Lcom/x/google/masf/protocol/PlainRequest;->payloadProvider:Lcom/x/google/masf/InputStreamProvider;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/x/google/masf/protocol/PlainRequest;->payloadHeader:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/x/google/common/io/SequenceInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/x/google/masf/protocol/PlainRequest;->payloadHeader:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lcom/x/google/masf/protocol/PlainRequest;->payloadProvider:Lcom/x/google/masf/InputStreamProvider;

    invoke-interface {v2}, Lcom/x/google/masf/InputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/x/google/common/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getBodyStreamLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/x/google/masf/protocol/PlainRequest;->generateBlockData()V

    iget-object v0, p0, Lcom/x/google/masf/protocol/PlainRequest;->payloadHeader:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/x/google/masf/protocol/PlainRequest;->payloadProvider:Lcom/x/google/masf/InputStreamProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/x/google/masf/protocol/PlainRequest;->payloadProvider:Lcom/x/google/masf/InputStreamProvider;

    invoke-interface {v1}, Lcom/x/google/masf/InputStreamProvider;->getStreamLength()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPayload()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/masf/protocol/PlainRequest;->payloadProvider:Lcom/x/google/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/x/google/masf/InputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/x/google/masf/protocol/PlainRequest;->payloadProvider:Lcom/x/google/masf/InputStreamProvider;

    invoke-interface {v1}, Lcom/x/google/masf/InputStreamProvider;->getStreamLength()I

    move-result v1

    invoke-static {v0, v1}, Lcom/x/google/common/io/IoUtil;->readAllBytes(Ljava/io/InputStream;I)[B
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

.method public getSendCount()I
    .locals 1

    iget v0, p0, Lcom/x/google/masf/protocol/PlainRequest;->sentCount:I

    return v0
.end method

.method public declared-synchronized setId(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/x/google/masf/protocol/SimpleRequest;->setId(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/x/google/masf/protocol/PlainRequest;->payloadHeader:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPayload(Lcom/x/google/masf/InputStreamProvider;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/x/google/masf/protocol/PlainRequest;->payloadProvider:Lcom/x/google/masf/InputStreamProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPayload([B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/x/google/masf/ByteArrayInputStreamProvider;

    invoke-direct {v0, p1}, Lcom/x/google/masf/ByteArrayInputStreamProvider;-><init>([B)V

    iput-object v0, p0, Lcom/x/google/masf/protocol/PlainRequest;->payloadProvider:Lcom/x/google/masf/InputStreamProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
