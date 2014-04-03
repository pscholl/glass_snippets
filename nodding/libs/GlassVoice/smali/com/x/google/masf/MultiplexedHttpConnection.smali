.class public Lcom/x/google/masf/MultiplexedHttpConnection;
.super Lcom/x/google/masf/AsyncHttpConnection;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/x/google/masf/AsyncHttpConnection;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private submitRequestAndWaitForCompletion()V
    .locals 2

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/x/google/masf/MultiplexedHttpConnection;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/x/google/masf/MultiplexedHttpConnection$1;

    invoke-direct {v0, p0, v1}, Lcom/x/google/masf/MultiplexedHttpConnection$1;-><init>(Lcom/x/google/masf/MultiplexedHttpConnection;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/x/google/masf/MultiplexedHttpConnection;->addObserver(Lcom/x/google/common/util/Observer;)V

    invoke-virtual {p0}, Lcom/x/google/masf/MultiplexedHttpConnection;->submitRequest()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/x/google/masf/MultiplexedHttpConnection;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/x/google/masf/MultiplexedHttpConnection;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
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


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/x/google/masf/MultiplexedHttpConnection;->submitRequestAndWaitForCompletion()V

    invoke-super {p0}, Lcom/x/google/masf/AsyncHttpConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/x/google/masf/MultiplexedHttpConnection;->submitRequestAndWaitForCompletion()V

    invoke-super {p0, p1}, Lcom/x/google/masf/AsyncHttpConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/x/google/masf/MultiplexedHttpConnection;->submitRequestAndWaitForCompletion()V

    invoke-super {p0, p1}, Lcom/x/google/masf/AsyncHttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/x/google/masf/MultiplexedHttpConnection;->submitRequestAndWaitForCompletion()V

    invoke-super {p0, p1}, Lcom/x/google/masf/AsyncHttpConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/x/google/masf/MultiplexedHttpConnection;->submitRequestAndWaitForCompletion()V

    invoke-super {p0}, Lcom/x/google/masf/AsyncHttpConnection;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/x/google/masf/MultiplexedHttpConnection;->submitRequestAndWaitForCompletion()V

    invoke-super {p0}, Lcom/x/google/masf/AsyncHttpConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/x/google/masf/MultiplexedHttpConnection;->submitRequestAndWaitForCompletion()V

    invoke-super {p0}, Lcom/x/google/masf/AsyncHttpConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/x/google/masf/MultiplexedHttpConnection;->submitRequestAndWaitForCompletion()V

    invoke-super {p0}, Lcom/x/google/masf/AsyncHttpConnection;->openDataInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    return-object v0
.end method
