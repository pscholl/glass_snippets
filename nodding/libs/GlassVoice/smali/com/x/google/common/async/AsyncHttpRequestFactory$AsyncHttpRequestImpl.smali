.class public Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;
.super Lcom/x/google/common/async/AbstractRequest;

# interfaces
.implements Lcom/x/google/common/async/AsyncHttpRequest;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/google/common/async/AsyncHttpRequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AsyncHttpRequestImpl"
.end annotation


# static fields
.field private static final WATCHDOG_DELAY:J = 0x4e20L


# instance fields
.field private addContentLength:Z

.field private connection:Lcom/x/google/common/io/GoogleHttpConnection;

.field private factory:Lcom/x/google/common/async/AsyncHttpRequestFactory;

.field private flags:I

.field private httpHeaders:Ljava/util/Vector;

.field private lastProgressTimestamp:J

.field private method:Ljava/lang/String;

.field private payloadBytes:[B

.field private payloadInputStream:Ljava/io/InputStream;

.field private payloadStreamProvider:Lcom/x/google/masf/InputStreamProvider;

.field private responseCode:I

.field private responseLength:J

.field private responseStream:Ljava/io/DataInputStream;

.field private responseType:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private watchdogDelay:J


# direct methods
.method public constructor <init>(Lcom/x/google/common/async/AsyncHttpRequestFactory;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lcom/x/google/common/async/AbstractRequest;-><init>()V

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogDelay:J

    const-string v0, "GET"

    iput-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->method:Ljava/lang/String;

    iput-object p1, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/x/google/common/async/AsyncHttpRequestFactory;

    iput-object p2, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->url:Ljava/lang/String;

    iput p3, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->flags:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->httpHeaders:Ljava/util/Vector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->addContentLength:Z

    return-void
.end method

.method private addHttpHeader(Lcom/x/google/common/io/GoogleHttpConnection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->httpHeaders:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->httpHeaders:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    aget-object v3, v0, v2

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-interface {p1, v3, v0}, Lcom/x/google/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static debugResponseHeaders(Lcom/x/google/common/io/GoogleHttpConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method private getPayloadLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/x/google/common/io/IoUtil;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/x/google/masf/InputStreamProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/x/google/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/x/google/masf/InputStreamProvider;->getStreamLength()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasPayload()Z
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/x/google/masf/InputStreamProvider;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writePayload(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/x/google/masf/InputStreamProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/x/google/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/x/google/masf/InputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/x/google/common/io/IoUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lcom/x/google/common/io/IoUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->isCompletedOrException()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseStream:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/x/google/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/x/google/common/io/GoogleHttpConnection;

    invoke-static {v0}, Lcom/x/google/common/io/IoUtil;->closeConnection(Lcom/x/google/common/io/GoogleHttpConnection;)V

    invoke-super {p0}, Lcom/x/google/common/async/AbstractRequest;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHttpHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/x/google/common/io/GoogleHttpConnection;

    invoke-interface {v0, p1}, Lcom/x/google/common/io/GoogleHttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpHeaderKey(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/x/google/common/io/GoogleHttpConnection;

    invoke-interface {v0, p1}, Lcom/x/google/common/io/GoogleHttpConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpHeaderValue(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/x/google/common/io/GoogleHttpConnection;

    invoke-interface {v0, p1}, Lcom/x/google/common/io/GoogleHttpConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastProgressTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->lastProgressTimestamp:J

    return-wide v0
.end method

.method public declared-synchronized getResponseCode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseLength()J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget-wide v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseLength:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseStream()Ljava/io/DataInputStream;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseStream:Ljava/io/DataInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseType()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWatchdogDelay()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogDelay:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyProgress()V
    .locals 2

    iget v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getClock()Lcom/x/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->lastProgressTimestamp:J

    invoke-super {p0}, Lcom/x/google/common/async/AbstractRequest;->notifyProgress()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 12

    const/4 v11, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/x/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncHttRequest.run(): this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/x/google/common/async/AsyncHttpRequestFactory;

    #calls: Lcom/x/google/common/async/AsyncHttpRequestFactory;->getTaskRunner()Lcom/x/google/common/task/TaskRunner;
    invoke-static {v0}, Lcom/x/google/common/async/AsyncHttpRequestFactory;->access$000(Lcom/x/google/common/async/AsyncHttpRequestFactory;)Lcom/x/google/common/task/TaskRunner;

    move-result-object v0

    new-instance v4, Lcom/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask;

    invoke-direct {v4, v0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask;-><init>(Lcom/x/google/common/task/TaskRunner;)V

    invoke-virtual {v4, p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->setRequest(Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)V

    invoke-virtual {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getWatchdogDelay()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->setDelay(J)V

    invoke-virtual {v4}, Lcom/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->schedule()V

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyRunning()V

    invoke-virtual {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyProgress()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->method:Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/x/google/common/async/AsyncHttpRequestFactory;

    iget-object v3, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->url:Ljava/lang/String;

    #calls: Lcom/x/google/common/async/AsyncHttpRequestFactory;->createHttpConnection(Ljava/lang/String;Z)Lcom/x/google/common/io/GoogleHttpConnection;
    invoke-static {v2, v3, v0}, Lcom/x/google/common/async/AsyncHttpRequestFactory;->access$100(Lcom/x/google/common/async/AsyncHttpRequestFactory;Ljava/lang/String;Z)Lcom/x/google/common/io/GoogleHttpConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v4}, Lcom/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    invoke-static {v1}, Lcom/x/google/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-static {v3}, Lcom/x/google/common/io/IoUtil;->closeConnection(Lcom/x/google/common/io/GoogleHttpConnection;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_1
    :try_start_7
    iget-object v5, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/x/google/common/async/AsyncHttpRequestFactory;

    #getter for: Lcom/x/google/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/x/google/common/io/HttpConnectionFactory;
    invoke-static {v5}, Lcom/x/google/common/async/AsyncHttpRequestFactory;->access$200(Lcom/x/google/common/async/AsyncHttpRequestFactory;)Lcom/x/google/common/io/HttpConnectionFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/x/google/common/io/HttpConnectionFactory;->notifyFailure()V

    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v5

    if-ne v5, v11, :cond_0

    invoke-virtual {p0, v0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyException(Ljava/lang/Exception;)V

    :cond_0
    invoke-virtual {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    sget-object v5, Lcom/x/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/x/google/debug/LogSource;

    const-string v6, "AsyncHttpRequestImpl.run(): exception thrown "

    invoke-virtual {v5, v6, v0}, Lcom/x/google/debug/LogSource;->severe(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    invoke-virtual {v4}, Lcom/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    invoke-static {v1}, Lcom/x/google/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-static {v3}, Lcom/x/google/common/io/IoUtil;->closeConnection(Lcom/x/google/common/io/GoogleHttpConnection;)V

    goto :goto_0

    :cond_2
    :try_start_9
    iput-object v3, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/x/google/common/io/GoogleHttpConnection;

    invoke-virtual {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyProgress()V

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->type:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "Content-Type"

    iget-object v2, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->type:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Lcom/x/google/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0, v3}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->addHttpHeader(Lcom/x/google/common/io/GoogleHttpConnection;)V

    invoke-direct {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->hasPayload()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->addContentLength:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/x/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending payload [bytes="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getPayloadLength()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;)V

    const-string v0, "Content-Length"

    invoke-direct {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getPayloadLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Lcom/x/google/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-interface {v3}, Lcom/x/google/common/io/GoogleHttpConnection;->openDataOutputStream()Ljava/io/DataOutputStream;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move-result-object v2

    :goto_3
    :try_start_b
    invoke-direct {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->hasPayload()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    move-result v0

    if-eqz v0, :cond_4

    :try_start_c
    invoke-direct {p0, v2}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->writePayload(Ljava/io/OutputStream;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    invoke-static {v2}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    :cond_4
    invoke-interface {v3}, Lcom/x/google/common/io/GoogleHttpConnection;->getResponseCode()I

    move-result v0

    invoke-interface {v3}, Lcom/x/google/common/io/GoogleHttpConnection;->getLength()J

    move-result-wide v5

    invoke-interface {v3}, Lcom/x/google/common/io/GoogleHttpConnection;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3}, Lcom/x/google/common/io/GoogleHttpConnection;->openDataInputStream()Ljava/io/DataInputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyProgress()V

    sget-object v8, Lcom/x/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/x/google/debug/LogSource;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Response [http="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",length="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->debugResponseHeaders(Lcom/x/google/common/io/GoogleHttpConnection;)V

    const/16 v8, 0xc8

    if-ne v0, v8, :cond_6

    iget-object v8, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/x/google/common/async/AsyncHttpRequestFactory;

    #getter for: Lcom/x/google/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/x/google/common/io/HttpConnectionFactory;
    invoke-static {v8}, Lcom/x/google/common/async/AsyncHttpRequestFactory;->access$200(Lcom/x/google/common/async/AsyncHttpRequestFactory;)Lcom/x/google/common/io/HttpConnectionFactory;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/x/google/common/io/HttpConnectionFactory;->registerNetworkSuccess(Z)Z

    :goto_4
    monitor-enter p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    :try_start_e
    invoke-virtual {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->isRunning()Z

    move-result v8

    if-nez v8, :cond_7

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    invoke-virtual {v4}, Lcom/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    invoke-static {v1}, Lcom/x/google/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-static {v3}, Lcom/x/google/common/io/IoUtil;->closeConnection(Lcom/x/google/common/io/GoogleHttpConnection;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw v0

    :catch_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_1

    :cond_5
    const-string v0, "Content-Type"

    const-string v2, "application/binary"

    invoke-interface {v3, v0, v2}, Lcom/x/google/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v1

    :goto_5
    invoke-virtual {v4}, Lcom/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    invoke-static {v1}, Lcom/x/google/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-static {v3}, Lcom/x/google/common/io/IoUtil;->closeConnection(Lcom/x/google/common/io/GoogleHttpConnection;)V

    throw v0

    :catchall_3
    move-exception v0

    :try_start_11
    invoke-static {v2}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    throw v0

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :cond_6
    iget-object v8, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/x/google/common/async/AsyncHttpRequestFactory;

    #getter for: Lcom/x/google/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/x/google/common/io/HttpConnectionFactory;
    invoke-static {v8}, Lcom/x/google/common/async/AsyncHttpRequestFactory;->access$200(Lcom/x/google/common/async/AsyncHttpRequestFactory;)Lcom/x/google/common/io/HttpConnectionFactory;

    move-result-object v8

    invoke-interface {v8}, Lcom/x/google/common/io/HttpConnectionFactory;->notifyFailure()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_5

    :cond_7
    :try_start_12
    iput v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseCode:I

    iput-wide v5, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseLength:J

    iput-object v7, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseType:Ljava/lang/String;

    iput-object v1, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseStream:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyCompleted()V

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    invoke-virtual {v4}, Lcom/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2

    :catchall_6
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :try_start_16
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :catchall_7
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_5

    :cond_8
    move-object v2, v1

    goto/16 :goto_3
.end method

.method public declared-synchronized setContentType(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->type:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHttpHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "transfer-encoding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->addContentLength:Z

    :cond_0
    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->httpHeaders:Ljava/util/Vector;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized setMethod(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->method:Ljava/lang/String;
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
    iput-object p1, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/x/google/masf/InputStreamProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPayload(Ljava/io/InputStream;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;
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
    iput-object p1, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWatchdogDelay(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogDelay:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public submit(Lcom/x/google/common/task/AbstractTask;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->setTask(Lcom/x/google/common/task/AbstractTask;)V

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/x/google/common/async/AsyncHttpRequestFactory;

    #calls: Lcom/x/google/common/async/AsyncHttpRequestFactory;->submitRequest(Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)Z
    invoke-static {v0, p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory;->access$300(Lcom/x/google/common/async/AsyncHttpRequestFactory;Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/x/google/debug/DebugUtil;->getLogSource(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized watchdogFired()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/x/google/common/io/GoogleHttpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/x/google/common/io/GoogleHttpConnection;

    invoke-interface {v0}, Lcom/x/google/common/io/GoogleHttpConnection;->notifyTimeout()V

    :cond_0
    new-instance v0, Lcom/x/google/common/async/WatchdogException;

    invoke-direct {v0}, Lcom/x/google/common/async/WatchdogException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyException(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
