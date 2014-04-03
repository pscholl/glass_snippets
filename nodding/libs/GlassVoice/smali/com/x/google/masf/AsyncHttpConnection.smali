.class public Lcom/x/google/masf/AsyncHttpConnection;
.super Lcom/x/google/common/util/AbstractObservable;

# interfaces
.implements Lcom/x/google/common/io/GoogleAsyncHttpConnection;
.implements Lcom/x/google/masf/protocol/Request$Listener;


# static fields
.field public static final STATE_CLOSED:I = 0x3

.field public static final STATE_COMPLETED:I = 0x2

.field public static final STATE_INIT:I = 0x0

.field public static final STATE_SUBMITTED:I = 0x1


# instance fields
.field private httpOutputStream:Ljava/io/ByteArrayOutputStream;

.field private final httpRequest:Lcom/x/google/masf/protocol/HttpRequest;

.field private keepDataAfterClosing:Z

.field private final mobileServiceMux:Lcom/x/google/masf/MobileServiceMux;

.field private responseCode:I

.field private responseException:Ljava/lang/Exception;

.field private responseHeaderKeys:[Ljava/lang/String;

.field private responseHeaderValues:[Ljava/lang/String;

.field private responseInputStream:Ljava/io/DataInputStream;

.field private responseLength:I

.field protected state:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/x/google/common/util/AbstractObservable;-><init>()V

    iput v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->state:I

    iput-boolean v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->keepDataAfterClosing:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncHttpConnection("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/x/google/masf/MobileServiceMux;->getSingleton()Lcom/x/google/masf/MobileServiceMux;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->mobileServiceMux:Lcom/x/google/masf/MobileServiceMux;

    new-instance v0, Lcom/x/google/masf/protocol/HttpRequest;

    invoke-direct {v0, p1, v2}, Lcom/x/google/masf/protocol/HttpRequest;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->httpRequest:Lcom/x/google/masf/protocol/HttpRequest;

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->httpRequest:Lcom/x/google/masf/protocol/HttpRequest;

    invoke-virtual {v0, p0}, Lcom/x/google/masf/protocol/HttpRequest;->setListener(Lcom/x/google/masf/protocol/Request$Listener;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->httpRequest:Lcom/x/google/masf/protocol/HttpRequest;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/x/google/masf/protocol/HttpRequest;->setMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->httpRequest:Lcom/x/google/masf/protocol/HttpRequest;

    invoke-virtual {v0, v2}, Lcom/x/google/masf/protocol/HttpRequest;->setSentCount(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->httpRequest:Lcom/x/google/masf/protocol/HttpRequest;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/x/google/masf/protocol/HttpRequest;->setMethod(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private assertStateCompleted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "AsyncHttpConnection.assertStateCompleted()"

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    iget v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    :cond_0
    return-void
.end method

.method private assertStateInit()V
    .locals 1

    const-string v0, "AsyncHttpConnection.assertStateInit()"

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private checkException()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseException:Ljava/lang/Exception;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseException:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseException:Ljava/lang/Exception;

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseException:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseException:Ljava/lang/Exception;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method

.method private static debug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private setState(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncHttpConnection.setState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    iput p1, p0, Lcom/x/google/masf/AsyncHttpConnection;->state:I

    invoke-virtual {p0}, Lcom/x/google/masf/AsyncHttpConnection;->notifyObservers()V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.close()"

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->httpOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->httpOutputStream:Ljava/io/ByteArrayOutputStream;

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->httpRequest:Lcom/x/google/masf/protocol/HttpRequest;

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/HttpRequest;->dispose()V

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseInputStream:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/x/google/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseInputStream:Ljava/io/DataInputStream;

    iget-boolean v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->keepDataAfterClosing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseHeaderKeys:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseHeaderValues:[Ljava/lang/String;

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/x/google/masf/AsyncHttpConnection;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public flagKeepDataAfterClosing()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->keepDataAfterClosing:Z

    return-void
.end method

.method public declared-synchronized getContentType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.getContentType()"

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/x/google/masf/AsyncHttpConnection;->assertStateCompleted()V

    invoke-direct {p0}, Lcom/x/google/masf/AsyncHttpConnection;->checkException()V

    const-string v0, "content-type"

    invoke-virtual {p0, v0}, Lcom/x/google/masf/AsyncHttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
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

.method public declared-synchronized getHeaderCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.getHeaderCount()"

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/x/google/masf/AsyncHttpConnection;->assertStateCompleted()V

    invoke-direct {p0}, Lcom/x/google/masf/AsyncHttpConnection;->checkException()V

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseHeaderKeys:[Ljava/lang/String;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHeaderField(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncHttpConnection.getHeaderField("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/x/google/masf/AsyncHttpConnection;->assertStateCompleted()V

    invoke-direct {p0}, Lcom/x/google/masf/AsyncHttpConnection;->checkException()V

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseHeaderValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseHeaderValues:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseHeaderValues:[Ljava/lang/String;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncHttpConnection.getHeaderField(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/x/google/masf/AsyncHttpConnection;->assertStateCompleted()V

    invoke-direct {p0}, Lcom/x/google/masf/AsyncHttpConnection;->checkException()V

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseHeaderKeys:[Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseHeaderKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseHeaderKeys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseHeaderValues:[Ljava/lang/String;

    aget-object v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHeaderFieldKey(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncHttpConnection.getHeaderFieldKey("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/x/google/masf/AsyncHttpConnection;->assertStateCompleted()V

    invoke-direct {p0}, Lcom/x/google/masf/AsyncHttpConnection;->checkException()V

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseHeaderKeys:[Ljava/lang/String;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseHeaderKeys:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseHeaderKeys:[Ljava/lang/String;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.getLength()"

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/x/google/masf/AsyncHttpConnection;->assertStateCompleted()V

    invoke-direct {p0}, Lcom/x/google/masf/AsyncHttpConnection;->checkException()V

    iget v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProtocolName()Ljava/lang/String;
    .locals 1

    const-string v0, "AsyncHttpConnection.getProtocolName()"

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    const-string v0, "http"

    return-object v0
.end method

.method public declared-synchronized getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.getResponseCode()"

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/x/google/masf/AsyncHttpConnection;->assertStateCompleted()V

    invoke-direct {p0}, Lcom/x/google/masf/AsyncHttpConnection;->checkException()V

    iget v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.getResponseMessage()"

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/x/google/masf/AsyncHttpConnection;->assertStateCompleted()V

    invoke-direct {p0}, Lcom/x/google/masf/AsyncHttpConnection;->checkException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getServiceUri()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->httpRequest:Lcom/x/google/masf/protocol/HttpRequest;

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/HttpRequest;->getServiceUri()Ljava/lang/String;
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

.method public declared-synchronized getState()I
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.getState()"

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    iget v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.isClosed()"

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    iget v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

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

.method public declared-synchronized isCompleted()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.isCompleted()"

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    iget v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

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

.method public isEndToEndSecure()Z
    .locals 1

    const-string v0, "AsyncHttpConnection.isEndToEndSecure()"

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->mobileServiceMux:Lcom/x/google/masf/MobileServiceMux;

    invoke-virtual {v0}, Lcom/x/google/masf/MobileServiceMux;->isEndToEndSecure()Z

    move-result v0

    return v0
.end method

.method public isHttps()Z
    .locals 1

    const-string v0, "AsyncHttpConnection.isHttps()"

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->mobileServiceMux:Lcom/x/google/masf/MobileServiceMux;

    invoke-virtual {v0}, Lcom/x/google/masf/MobileServiceMux;->isHttps()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isInit()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.isInit()"

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    iget v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

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

.method public notifyTimeout()V
    .locals 0

    return-void
.end method

.method public declared-synchronized openDataInputStream()Ljava/io/DataInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.openDataInputStream()"

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/x/google/masf/AsyncHttpConnection;->assertStateCompleted()V

    invoke-direct {p0}, Lcom/x/google/masf/AsyncHttpConnection;->checkException()V

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseInputStream:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseInputStream:Ljava/io/DataInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openDataOutputStream()Ljava/io/DataOutputStream;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.openDataOutputStream()"

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/x/google/masf/AsyncHttpConnection;->assertStateInit()V

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->httpOutputStream:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->httpOutputStream:Ljava/io/ByteArrayOutputStream;

    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/x/google/masf/AsyncHttpConnection;->httpOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestCompleted(Lcom/x/google/masf/protocol/Request;Lcom/x/google/masf/protocol/Response;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.requestComplete(request, response)"

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    iget v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_1
    new-instance v0, Lcom/x/google/masf/protocol/HttpResponse;

    invoke-direct {v0, p2}, Lcom/x/google/masf/protocol/HttpResponse;-><init>(Lcom/x/google/masf/protocol/Response;)V

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/HttpResponse;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseCode:I

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/HttpResponse;->getHeaderKeys()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseHeaderKeys:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/HttpResponse;->getHeaderValues()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseHeaderValues:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/HttpResponse;->getStreamLength()I

    move-result v1

    iput v1, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseLength:I

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/HttpResponse;->getDataInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseInputStream:Ljava/io/DataInputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x2

    :try_start_2
    invoke-direct {p0, v0}, Lcom/x/google/masf/AsyncHttpConnection;->setState(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    iput-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseException:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x2

    :try_start_4
    invoke-direct {p0, v0}, Lcom/x/google/masf/AsyncHttpConnection;->setState(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_5
    iput-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseException:Ljava/lang/Exception;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v0, 0x2

    :try_start_6
    invoke-direct {p0, v0}, Lcom/x/google/masf/AsyncHttpConnection;->setState(I)V

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/x/google/masf/AsyncHttpConnection;->setState(I)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized requestFailed(Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/x/google/masf/AsyncHttpConnection;->responseException:Ljava/lang/Exception;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/x/google/masf/AsyncHttpConnection;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.setConnectionProperty()"

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/x/google/masf/AsyncHttpConnection;->assertStateInit()V

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->httpRequest:Lcom/x/google/masf/protocol/HttpRequest;

    invoke-virtual {v0, p1, p2}, Lcom/x/google/masf/protocol/HttpRequest;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized submitRequest()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/x/google/masf/AsyncHttpConnection;->submitRequest(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized submitRequest(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.submitRequest()"

    invoke-static {v0}, Lcom/x/google/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    iget v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->state:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->httpOutputStream:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->httpRequest:Lcom/x/google/masf/protocol/HttpRequest;

    iget-object v1, p0, Lcom/x/google/masf/AsyncHttpConnection;->httpOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/x/google/masf/protocol/HttpRequest;->setPayload([B)V

    :cond_0
    iget-object v0, p0, Lcom/x/google/masf/AsyncHttpConnection;->mobileServiceMux:Lcom/x/google/masf/MobileServiceMux;

    iget-object v1, p0, Lcom/x/google/masf/AsyncHttpConnection;->httpRequest:Lcom/x/google/masf/protocol/HttpRequest;

    invoke-virtual {v0, v1, p1}, Lcom/x/google/masf/MobileServiceMux;->submitRequest(Lcom/x/google/masf/protocol/Request;Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/x/google/masf/AsyncHttpConnection;->setState(I)V
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
