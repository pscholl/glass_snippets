.class public Lcom/x/google/masf/MobileServiceMux;
.super Lcom/x/google/common/io/BaseHttpConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/masf/MobileServiceMux$Configuration;,
        Lcom/x/google/masf/MobileServiceMux$Listener;
    }
.end annotation


# static fields
.field public static final CONTENT_LOCATION:Ljava/lang/String; = "Content-Location"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/binary"

.field private static final DEFAULT_WORKER_TIMEOUT:J = 0x4e20L

.field public static final HARD_DELAY:J = 0x64L

.field private static final MAX_CONNECTIONS:I = 0x3

.field public static final MAX_DELAYED_REQUESTS:I = 0x64

.field public static final MAX_REQUEST_LENGTH:I = 0x8000

.field private static final NUM_WORKER_THREADS:I = 0x1

.field private static final RESPONSE_CACHE_SIZE:I = 0x8

.field public static final SOFT_DELAY:J = 0xaL

.field public static final STATUS_CODE_SUBREQUEST_TIMED_OUT:I = 0x226

.field public static final STATUS_HEADER:Ljava/lang/String; = "X-Masf-Response-Code"

.field private static logger:Lcom/x/google/debug/LogSource;

.field protected static mux:Lcom/x/google/masf/MobileServiceMux;


# instance fields
.field private asyncFactory:Lcom/x/google/common/async/AsyncHttpRequestFactory;

.field private bytesReceived:I

.field private bytesSent:I

.field private connectionFactory:Lcom/x/google/common/io/HttpConnectionFactory;

.field protected delayedFlushTask:Lcom/x/google/common/task/TimerTask;

.field protected delayedRequestQueue:Ljava/util/Hashtable;

.field protected flushTask:Lcom/x/google/common/task/TimerTask;

.field protected hardDeadline:J

.field protected headerRequest:Lcom/x/google/masf/protocol/HeaderRequest;

.field private listeners:Ljava/util/Vector;

.field private mutex:Ljava/lang/Object;

.field protected nextFlush:J

.field protected preemptableRequestMap:Ljava/util/Hashtable;

.field private requestId:I

.field private requireEndToEndSecure:Z

.field private responseCache:Lcom/x/google/masf/OneTimeCache;

.field protected resumeService:Lcom/x/google/masf/services/resume/ResumeService;

.field private secureServerUri:Ljava/lang/String;

.field private serverUri:Ljava/lang/String;

.field protected submitRequestQueue:Ljava/util/Vector;

.field protected taskRunner:Lcom/x/google/common/task/TaskRunner;

.field private final workerTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/x/google/masf/MobileServiceMux;

    invoke-static {v0}, Lcom/x/google/debug/LogSource;->getLogSource(Ljava/lang/Class;)Lcom/x/google/debug/LogSource;

    move-result-object v0

    sput-object v0, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    return-void
.end method

.method protected constructor <init>(Lcom/x/google/masf/MobileServiceMux$Configuration;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/x/google/common/io/BaseHttpConnectionFactory;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->listeners:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->delayedRequestQueue:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->preemptableRequestMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    iput v1, p0, Lcom/x/google/masf/MobileServiceMux;->requestId:I

    iput v1, p0, Lcom/x/google/masf/MobileServiceMux;->bytesSent:I

    iput v1, p0, Lcom/x/google/masf/MobileServiceMux;->bytesReceived:I

    iput-boolean v1, p0, Lcom/x/google/masf/MobileServiceMux;->requireEndToEndSecure:Z

    #getter for: Lcom/x/google/masf/MobileServiceMux$Configuration;->workerTimeout:J
    invoke-static {p1}, Lcom/x/google/masf/MobileServiceMux$Configuration;->access$000(Lcom/x/google/masf/MobileServiceMux$Configuration;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/x/google/masf/MobileServiceMux;->workerTimeout:J

    new-instance v0, Lcom/x/google/masf/protocol/HeaderRequest;

    #getter for: Lcom/x/google/masf/MobileServiceMux$Configuration;->applicationName:Ljava/lang/String;
    invoke-static {p1}, Lcom/x/google/masf/MobileServiceMux$Configuration;->access$100(Lcom/x/google/masf/MobileServiceMux$Configuration;)Ljava/lang/String;

    move-result-object v1

    #getter for: Lcom/x/google/masf/MobileServiceMux$Configuration;->applicationVersion:Ljava/lang/String;
    invoke-static {p1}, Lcom/x/google/masf/MobileServiceMux$Configuration;->access$200(Lcom/x/google/masf/MobileServiceMux$Configuration;)Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/x/google/masf/MobileServiceMux$Configuration;->platformId:Ljava/lang/String;
    invoke-static {p1}, Lcom/x/google/masf/MobileServiceMux$Configuration;->access$300(Lcom/x/google/masf/MobileServiceMux$Configuration;)Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/x/google/masf/MobileServiceMux$Configuration;->distributionChannel:Ljava/lang/String;
    invoke-static {p1}, Lcom/x/google/masf/MobileServiceMux$Configuration;->access$400(Lcom/x/google/masf/MobileServiceMux$Configuration;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "g"

    invoke-direct/range {v0 .. v5}, Lcom/x/google/masf/protocol/HeaderRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->headerRequest:Lcom/x/google/masf/protocol/HeaderRequest;

    invoke-virtual {p0}, Lcom/x/google/masf/MobileServiceMux;->createTaskRunner()Lcom/x/google/common/task/TaskRunner;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->taskRunner:Lcom/x/google/common/task/TaskRunner;

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->taskRunner:Lcom/x/google/common/task/TaskRunner;

    invoke-virtual {v0}, Lcom/x/google/common/task/TaskRunner;->start()V

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getConnectionFactory()Lcom/x/google/common/io/HttpConnectionFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->connectionFactory:Lcom/x/google/common/io/HttpConnectionFactory;

    #getter for: Lcom/x/google/masf/MobileServiceMux$Configuration;->serverUri:Ljava/lang/String;
    invoke-static {p1}, Lcom/x/google/masf/MobileServiceMux$Configuration;->access$500(Lcom/x/google/masf/MobileServiceMux$Configuration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->serverUri:Ljava/lang/String;

    #getter for: Lcom/x/google/masf/MobileServiceMux$Configuration;->secureServerUri:Ljava/lang/String;
    invoke-static {p1}, Lcom/x/google/masf/MobileServiceMux$Configuration;->access$600(Lcom/x/google/masf/MobileServiceMux$Configuration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->secureServerUri:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/x/google/masf/MobileServiceMux;->createAsyncHttpRequestFactory()Lcom/x/google/common/async/AsyncHttpRequestFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->asyncFactory:Lcom/x/google/common/async/AsyncHttpRequestFactory;

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->asyncFactory:Lcom/x/google/common/async/AsyncHttpRequestFactory;

    invoke-virtual {v0}, Lcom/x/google/common/async/AsyncHttpRequestFactory;->start()V

    new-instance v0, Lcom/x/google/masf/services/resume/WindowResumeService;

    iget-object v1, p0, Lcom/x/google/masf/MobileServiceMux;->taskRunner:Lcom/x/google/common/task/TaskRunner;

    iget-object v2, p0, Lcom/x/google/masf/MobileServiceMux;->headerRequest:Lcom/x/google/masf/protocol/HeaderRequest;

    invoke-direct {v0, p0, v1, v2}, Lcom/x/google/masf/services/resume/WindowResumeService;-><init>(Lcom/x/google/masf/MobileServiceMux;Lcom/x/google/common/task/TaskRunner;Lcom/x/google/masf/protocol/HeaderRequest;)V

    iput-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->resumeService:Lcom/x/google/masf/services/resume/ResumeService;

    new-instance v0, Lcom/x/google/masf/OneTimeCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/x/google/masf/OneTimeCache;-><init>(I)V

    iput-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->responseCache:Lcom/x/google/masf/OneTimeCache;

    new-instance v0, Lcom/x/google/common/task/TimerTask;

    iget-object v1, p0, Lcom/x/google/masf/MobileServiceMux;->taskRunner:Lcom/x/google/common/task/TaskRunner;

    new-instance v2, Lcom/x/google/masf/MobileServiceMux$1;

    invoke-direct {v2, p0}, Lcom/x/google/masf/MobileServiceMux$1;-><init>(Lcom/x/google/masf/MobileServiceMux;)V

    invoke-direct {v0, v1, v2}, Lcom/x/google/common/task/TimerTask;-><init>(Lcom/x/google/common/task/TaskRunner;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->flushTask:Lcom/x/google/common/task/TimerTask;

    new-instance v0, Lcom/x/google/masf/MobileServiceMux$2;

    iget-object v1, p0, Lcom/x/google/masf/MobileServiceMux;->taskRunner:Lcom/x/google/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/x/google/masf/MobileServiceMux$2;-><init>(Lcom/x/google/masf/MobileServiceMux;Lcom/x/google/common/task/TaskRunner;)V

    iput-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->delayedFlushTask:Lcom/x/google/common/task/TimerTask;

    return-void
.end method

.method static synthetic access$1000(Lcom/x/google/masf/MobileServiceMux;[Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/x/google/masf/MobileServiceMux;->requeueOrFailRequests([Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/x/google/masf/MobileServiceMux;Lcom/x/google/common/async/AsyncHttpRequest;[Lcom/x/google/masf/protocol/Request;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/x/google/masf/MobileServiceMux;->handleMacroResponse(Lcom/x/google/common/async/AsyncHttpRequest;[Lcom/x/google/masf/protocol/Request;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/x/google/masf/MobileServiceMux;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/x/google/masf/MobileServiceMux;->disposeRequests([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1312(Lcom/x/google/masf/MobileServiceMux;I)I
    .locals 1

    iget v0, p0, Lcom/x/google/masf/MobileServiceMux;->bytesSent:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/x/google/masf/MobileServiceMux;->bytesSent:I

    return v0
.end method

.method static synthetic access$700(Lcom/x/google/masf/MobileServiceMux;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800()Lcom/x/google/debug/LogSource;
    .locals 1

    sget-object v0, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    return-object v0
.end method

.method static synthetic access$900(Lcom/x/google/masf/MobileServiceMux;)V
    .locals 0

    invoke-direct {p0}, Lcom/x/google/masf/MobileServiceMux;->scheduleDelayedFlush()V

    return-void
.end method

.method public static declared-synchronized deInitialize()V
    .locals 2

    const-class v1, Lcom/x/google/masf/MobileServiceMux;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/x/google/masf/MobileServiceMux;->mux:Lcom/x/google/masf/MobileServiceMux;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/x/google/masf/MobileServiceMux;->mux:Lcom/x/google/masf/MobileServiceMux;

    iget-object v0, v0, Lcom/x/google/masf/MobileServiceMux;->asyncFactory:Lcom/x/google/common/async/AsyncHttpRequestFactory;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/x/google/masf/MobileServiceMux;->mux:Lcom/x/google/masf/MobileServiceMux;

    iget-object v0, v0, Lcom/x/google/masf/MobileServiceMux;->asyncFactory:Lcom/x/google/common/async/AsyncHttpRequestFactory;

    invoke-virtual {v0}, Lcom/x/google/common/async/AsyncHttpRequestFactory;->stop()V

    :cond_0
    sget-object v0, Lcom/x/google/masf/MobileServiceMux;->mux:Lcom/x/google/masf/MobileServiceMux;

    iget-object v0, v0, Lcom/x/google/masf/MobileServiceMux;->taskRunner:Lcom/x/google/common/task/TaskRunner;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/x/google/masf/MobileServiceMux;->mux:Lcom/x/google/masf/MobileServiceMux;

    iget-object v0, v0, Lcom/x/google/masf/MobileServiceMux;->taskRunner:Lcom/x/google/common/task/TaskRunner;

    invoke-virtual {v0}, Lcom/x/google/common/task/TaskRunner;->stop()V

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/x/google/masf/MobileServiceMux;->mux:Lcom/x/google/masf/MobileServiceMux;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private disposeRequests([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    aget-object v0, p1, v1

    check-cast v0, Lcom/x/google/masf/protocol/Request;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/Request;->dispose()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getListeners()[Lcom/x/google/masf/MobileServiceMux$Listener;
    .locals 3

    iget-object v1, p0, Lcom/x/google/masf/MobileServiceMux;->listeners:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->listeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/x/google/masf/MobileServiceMux$Listener;

    iget-object v2, p0, Lcom/x/google/masf/MobileServiceMux;->listeners:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getMacroRequestPayload([Lcom/x/google/masf/protocol/Request;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    new-array v1, v0, [Ljava/io/InputStream;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/x/google/masf/protocol/Request;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/x/google/common/io/SequenceInputStream;

    iget-object v2, p0, Lcom/x/google/masf/MobileServiceMux;->headerRequest:Lcom/x/google/masf/protocol/HeaderRequest;

    invoke-virtual {v2}, Lcom/x/google/masf/protocol/HeaderRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Lcom/x/google/common/io/SequenceInputStream;

    invoke-direct {v3, v1}, Lcom/x/google/common/io/SequenceInputStream;-><init>([Ljava/io/InputStream;)V

    invoke-direct {v0, v2, v3}, Lcom/x/google/common/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-object v0
.end method

.method private getSecureRequests([Lcom/x/google/masf/protocol/Request;)[Lcom/x/google/masf/protocol/Request;
    .locals 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    move v3, v2

    move-object v0, v4

    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_2

    aget-object v5, p1, v3

    invoke-virtual {v5}, Lcom/x/google/masf/protocol/Request;->isSecure()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v0, :cond_0

    array-length v0, p1

    new-array v0, v0, [Lcom/x/google/masf/protocol/Request;

    :cond_0
    sget-object v5, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Encrypted request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    aget-object v5, p1, v3

    aput-object v5, v0, v3

    aput-object v4, p1, v3

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v8, v0

    move-object v0, v1

    move v1, v8

    goto :goto_0

    :cond_1
    aget-object v5, p1, v3

    invoke-virtual {v5}, Lcom/x/google/masf/protocol/Request;->isImmediate()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v1, v0

    move v0, v2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    sget-object v1, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    const-string v3, "Sending all the requests encrypted"

    invoke-virtual {v1, v3}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :goto_2
    array-length v1, p1

    if-ge v2, v1, :cond_4

    aget-object v1, p1, v2

    if-eqz v1, :cond_3

    aget-object v1, p1, v2

    aput-object v1, v0, v2

    aput-object v4, p1, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v0

    :cond_5
    move v8, v1

    move-object v1, v0

    move v0, v8

    goto :goto_1
.end method

.method private getServerAddress(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/x/google/masf/MobileServiceMux;->isSecureChannelSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->secureServerUri:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->serverUri:Ljava/lang/String;

    goto :goto_0
.end method

.method public static declared-synchronized getSingleton()Lcom/x/google/masf/MobileServiceMux;
    .locals 2

    const-class v0, Lcom/x/google/masf/MobileServiceMux;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/x/google/masf/MobileServiceMux;->mux:Lcom/x/google/masf/MobileServiceMux;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleMacroResponse(Lcom/x/google/common/async/AsyncHttpRequest;[Lcom/x/google/masf/protocol/Request;)V
    .locals 11

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {p1}, Lcom/x/google/common/async/AsyncHttpRequest;->getResponseCode()I

    move-result v1

    invoke-interface {p1}, Lcom/x/google/common/async/AsyncHttpRequest;->getResponseType()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f6

    if-ne v1, v3, :cond_0

    sget-object v2, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    const-string v3, "MobileServiceMux.Worker.processRequests() - responseCode == HTTP_BAD_GATEWAY"

    invoke-virtual {v2, v3}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;)V

    new-instance v2, Lcom/x/google/masf/ConnectionException;

    invoke-direct {v2, v1}, Lcom/x/google/masf/ConnectionException;-><init>(I)V

    invoke-direct {p0, p2, v2}, Lcom/x/google/masf/MobileServiceMux;->requeueOrFailRequests([Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_1

    sget-object v2, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileServiceMux.Worker.processRequests() - responseCode != HTTP_OK (It was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;)V

    new-instance v2, Lcom/x/google/masf/ConnectionException;

    invoke-direct {v2, v1}, Lcom/x/google/masf/ConnectionException;-><init>(I)V

    invoke-direct {p0, p2, v2}, Lcom/x/google/masf/MobileServiceMux;->requeueOrFailRequests([Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/x/google/masf/MobileServiceMux;->notifyNetworkError(I)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const-string v1, "application/binary"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    sget-object v1, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    const-string v2, "MobileServiceMux.Worker.processRequests() - contentType != application/binary"

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Bad content-type"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/x/google/masf/MobileServiceMux;->requeueOrFailRequests([Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    const-string v2, "handleResponses - success"

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :try_start_0
    iget v1, p0, Lcom/x/google/masf/MobileServiceMux;->bytesReceived:I

    int-to-long v1, v1

    invoke-interface {p1}, Lcom/x/google/common/async/AsyncHttpRequest;->getResponseLength()J

    move-result-wide v6

    add-long/2addr v1, v6

    long-to-int v1, v1

    iput v1, p0, Lcom/x/google/masf/MobileServiceMux;->bytesReceived:I

    invoke-interface {p1}, Lcom/x/google/common/async/AsyncHttpRequest;->getResponseStream()Ljava/io/DataInputStream;

    move-result-object v1

    new-instance v7, Lcom/x/google/masf/protocol/ProtocolReader;

    invoke-direct {v7, v1}, Lcom/x/google/masf/protocol/ProtocolReader;-><init>(Ljava/io/DataInputStream;)V

    move v6, v5

    :goto_1
    array-length v1, p2

    if-ge v6, v1, :cond_8

    invoke-virtual {v7}, Lcom/x/google/masf/protocol/ProtocolReader;->getNextResponse()Lcom/x/google/masf/protocol/Response;

    move-result-object v3

    if-eqz v3, :cond_8

    move v1, v5

    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_9

    aget-object v2, p2, v1

    sget-object v8, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Handle response - request "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/x/google/masf/protocol/Request;->getId()I

    move-result v8

    invoke-virtual {v3}, Lcom/x/google/masf/protocol/Response;->getId()I

    move-result v9

    if-ne v8, v9, :cond_5

    const/4 v8, 0x0

    aput-object v8, p2, v1

    :goto_3
    if-eqz v2, :cond_7

    instance-of v1, v3, Lcom/x/google/masf/protocol/MultipartResponse;

    if-eqz v1, :cond_4

    instance-of v1, v2, Lcom/x/google/masf/protocol/SimpleRequest;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    const-string v8, "MultipartResponse"

    invoke-virtual {v1, v8}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    move-object v0, v2

    check-cast v0, Lcom/x/google/masf/protocol/SimpleRequest;

    move-object v1, v0

    check-cast v3, Lcom/x/google/masf/protocol/MultipartResponse;

    invoke-direct {p0, v1, v3}, Lcom/x/google/masf/MobileServiceMux;->removeExtraResponses(Lcom/x/google/masf/protocol/SimpleRequest;Lcom/x/google/masf/protocol/MultipartResponse;)Lcom/x/google/masf/protocol/Response;

    move-result-object v3

    :cond_4
    invoke-virtual {v3}, Lcom/x/google/masf/protocol/Response;->getStatusCode()I

    move-result v1

    sget-object v8, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "subrequest status code = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    const/16 v8, 0x226

    if-ne v1, v8, :cond_6

    invoke-virtual {v3}, Lcom/x/google/masf/protocol/Response;->bufferAndDetach()V

    new-instance v3, Lcom/x/google/masf/ConnectionException;

    invoke-direct {v3, v1}, Lcom/x/google/masf/ConnectionException;-><init>(I)V

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/x/google/common/Config;->getClock()Lcom/x/google/common/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {p0, v2, v3, v8, v9}, Lcom/x/google/masf/MobileServiceMux;->requeueRequest(Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;J)Z

    :goto_4
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_6
    invoke-direct {p0, v2, v3}, Lcom/x/google/masf/MobileServiceMux;->handleResponse(Lcom/x/google/masf/protocol/Request;Lcom/x/google/masf/protocol/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    const-string v3, "MobileServiceMux.Worker.handleResponses()"

    invoke-virtual {v2, v3, v1}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v1, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    const-string v2, "MobileServiceMux.Worker.handleResponses() - requeuing any unhandled requests"

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request didn\'t complete"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/x/google/masf/MobileServiceMux;->requeueOrFailRequests([Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_7
    :try_start_2
    sget-object v1, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MobileServiceMux.Worker.handleResponses() - unmatched response, ignoring [responseId="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/x/google/masf/protocol/Response;->getId()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v3}, Lcom/x/google/masf/protocol/Response;->getStreamLength()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v3}, Lcom/x/google/masf/protocol/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_5
    :try_start_4
    invoke-virtual {v3}, Lcom/x/google/masf/protocol/Response;->bufferAndDetach()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    :try_start_5
    sget-object v2, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    const-string v3, "MobileServiceMux.Worker.handleResponses()"

    invoke-virtual {v2, v3, v1}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sget-object v1, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    const-string v2, "MobileServiceMux.Worker.handleResponses() - requeuing any unhandled requests"

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request didn\'t complete"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/x/google/masf/MobileServiceMux;->requeueOrFailRequests([Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_8
    :try_start_6
    invoke-virtual {v7}, Lcom/x/google/masf/protocol/ProtocolReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    sget-object v1, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    const-string v2, "MobileServiceMux.Worker.handleResponses() - requeuing any unhandled requests"

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request didn\'t complete"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/x/google/masf/MobileServiceMux;->requeueOrFailRequests([Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    const-string v3, "MobileServiceMux.Worker.handleResponses() - requeuing any unhandled requests"

    invoke-virtual {v2, v3}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Request didn\'t complete"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lcom/x/google/masf/MobileServiceMux;->requeueOrFailRequests([Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v1

    goto :goto_5

    :cond_9
    move-object v2, v4

    goto/16 :goto_3
.end method

.method private handleResponse(Lcom/x/google/masf/protocol/Request;Lcom/x/google/masf/protocol/Response;)V
    .locals 3

    sget-object v0, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    const-string v1, "MobileServiceMux.handleResponse()"

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/x/google/masf/protocol/Request;->flagResponseReceived()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/x/google/masf/protocol/Request;->getListener()Lcom/x/google/masf/protocol/Request$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/x/google/masf/protocol/Request$Listener;->requestCompleted(Lcom/x/google/masf/protocol/Request;Lcom/x/google/masf/protocol/Response;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/x/google/masf/MobileServiceMux;->notifyRequestComplete(Lcom/x/google/masf/protocol/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {p2}, Lcom/x/google/masf/protocol/Response;->bufferAndDetach()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    const-string v2, "MobileServiceMux.handleResponse(): Unhandled thrown by request listener"

    invoke-virtual {v1, v2, v0}, Lcom/x/google/debug/LogSource;->severe(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Lcom/x/google/masf/protocol/Response;->bufferAndDetach()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Lcom/x/google/masf/protocol/Response;->bufferAndDetach()V

    throw v0
.end method

.method public static declared-synchronized initialize(Lcom/x/google/masf/MobileServiceMux$Configuration;)V
    .locals 2

    const-class v1, Lcom/x/google/masf/MobileServiceMux;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/x/google/masf/MobileServiceMux;->mux:Lcom/x/google/masf/MobileServiceMux;

    if-nez v0, :cond_0

    new-instance v0, Lcom/x/google/masf/MobileServiceMux;

    invoke-direct {v0, p0}, Lcom/x/google/masf/MobileServiceMux;-><init>(Lcom/x/google/masf/MobileServiceMux$Configuration;)V

    sput-object v0, Lcom/x/google/masf/MobileServiceMux;->mux:Lcom/x/google/masf/MobileServiceMux;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/x/google/masf/MobileServiceMux;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/x/google/masf/MobileServiceMux$Configuration;

    invoke-direct {v0}, Lcom/x/google/masf/MobileServiceMux$Configuration;-><init>()V

    invoke-virtual {v0, p0}, Lcom/x/google/masf/MobileServiceMux$Configuration;->setServerUri(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/x/google/masf/MobileServiceMux$Configuration;->setApplicationName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/x/google/masf/MobileServiceMux$Configuration;->setApplicationVersion(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/x/google/masf/MobileServiceMux$Configuration;->setPlatformId(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/x/google/masf/MobileServiceMux$Configuration;->setDistributionChannel(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/x/google/masf/MobileServiceMux;->initialize(Lcom/x/google/masf/MobileServiceMux$Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const-class v1, Lcom/x/google/masf/MobileServiceMux;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/x/google/masf/MobileServiceMux$Configuration;

    invoke-direct {v0}, Lcom/x/google/masf/MobileServiceMux$Configuration;-><init>()V

    invoke-virtual {v0, p0}, Lcom/x/google/masf/MobileServiceMux$Configuration;->setServerUri(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/x/google/masf/MobileServiceMux$Configuration;->setSecureServerUri(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/x/google/masf/MobileServiceMux$Configuration;->setApplicationName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/x/google/masf/MobileServiceMux$Configuration;->setApplicationVersion(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/x/google/masf/MobileServiceMux$Configuration;->setPlatformId(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/x/google/masf/MobileServiceMux$Configuration;->setDistributionChannel(Ljava/lang/String;)V

    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Lcom/x/google/masf/MobileServiceMux$Configuration;->setWorkerTimeout(J)V

    invoke-static {v0}, Lcom/x/google/masf/MobileServiceMux;->initialize(Lcom/x/google/masf/MobileServiceMux$Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isSecureChannelSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->secureServerUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized nextRequestId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/x/google/masf/MobileServiceMux;->requestId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/x/google/masf/MobileServiceMux;->requestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyNetworkError(I)V
    .locals 3

    invoke-direct {p0}, Lcom/x/google/masf/MobileServiceMux;->getListeners()[Lcom/x/google/masf/MobileServiceMux$Listener;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lcom/x/google/masf/MobileServiceMux$Listener;->onNetworkError(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyRequestComplete(Lcom/x/google/masf/protocol/Request;)V
    .locals 3

    invoke-direct {p0}, Lcom/x/google/masf/MobileServiceMux;->getListeners()[Lcom/x/google/masf/MobileServiceMux$Listener;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lcom/x/google/masf/MobileServiceMux$Listener;->onRequestComplete(Lcom/x/google/masf/protocol/Request;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processRequests([Lcom/x/google/masf/protocol/Request;Z)V
    .locals 10

    :try_start_0
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lcom/x/google/masf/MobileServiceMux;->headerRequest:Lcom/x/google/masf/protocol/HeaderRequest;

    invoke-virtual {v1}, Lcom/x/google/masf/protocol/HeaderRequest;->getStreamLength()I

    move-result v3

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    array-length v1, p1

    if-ge v4, v1, :cond_4

    aget-object v2, p1, v4

    if-nez v2, :cond_0

    move v1, v3

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    goto :goto_0

    :cond_0
    instance-of v1, v2, Lcom/x/google/masf/protocol/SimpleRequest;

    if-eqz v1, :cond_2

    move-object v0, v2

    check-cast v0, Lcom/x/google/masf/protocol/SimpleRequest;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/x/google/masf/protocol/SimpleRequest;->getServiceUri()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    sget-object v1, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Looking for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in response cache"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/x/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/x/google/masf/MobileServiceMux;->responseCache:Lcom/x/google/masf/OneTimeCache;

    invoke-virtual {v1, v6}, Lcom/x/google/masf/OneTimeCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :try_start_2
    sget-object v7, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found cached response for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    const/4 v6, 0x0

    aput-object v6, p1, v4

    check-cast v1, Lcom/x/google/masf/protocol/Response;

    invoke-direct {p0, v2, v1}, Lcom/x/google/masf/MobileServiceMux;->handleResponse(Lcom/x/google/masf/protocol/Request;Lcom/x/google/masf/protocol/Response;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v1, v3

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    invoke-direct {p0, p1, v1}, Lcom/x/google/masf/MobileServiceMux;->requeueOrFailRequests([Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_5
    sget-object v1, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending request with id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/x/google/masf/protocol/Request;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/x/google/masf/protocol/Request;->getStreamLength()I

    move-result v1

    add-int/2addr v1, v3

    const v6, 0x8000

    if-le v1, v6, :cond_3

    invoke-virtual {p0, v5, p2}, Lcom/x/google/masf/MobileServiceMux;->sendMacroRequest(Ljava/util/Vector;Z)V

    iget-object v1, p0, Lcom/x/google/masf/MobileServiceMux;->headerRequest:Lcom/x/google/masf/protocol/HeaderRequest;

    invoke-virtual {v1}, Lcom/x/google/masf/protocol/HeaderRequest;->getStreamLength()I

    move-result v3

    invoke-virtual {v5}, Ljava/util/Vector;->removeAllElements()V

    :cond_3
    const/4 v1, 0x0

    aput-object v1, p1, v4

    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/x/google/masf/protocol/Request;->getStreamLength()I

    move-result v1

    add-int/2addr v1, v3

    goto/16 :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/x/google/masf/MobileServiceMux;->scheduleDelayedFlush()V

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v5, p2}, Lcom/x/google/masf/MobileServiceMux;->sendMacroRequest(Ljava/util/Vector;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2
.end method

.method private purgePreemptableRequest(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->preemptableRequestMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/masf/protocol/Request;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/x/google/masf/protocol/Request;->setSentCount(I)V

    iget-object v1, p0, Lcom/x/google/masf/MobileServiceMux;->delayedRequestQueue:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private removeExtraResponses(Lcom/x/google/masf/protocol/SimpleRequest;Lcom/x/google/masf/protocol/MultipartResponse;)Lcom/x/google/masf/protocol/Response;
    .locals 11

    invoke-virtual {p1}, Lcom/x/google/masf/protocol/SimpleRequest;->getServiceUri()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/x/google/masf/protocol/MultipartResponseBuilder;

    invoke-virtual {p2}, Lcom/x/google/masf/protocol/MultipartResponse;->getId()I

    move-result v1

    invoke-virtual {p2}, Lcom/x/google/masf/protocol/MultipartResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/x/google/masf/protocol/MultipartResponse;->getRoot()Lcom/x/google/masf/protocol/BodyPart;

    move-result-object v3

    invoke-direct {v5, v1, v2, v3}, Lcom/x/google/masf/protocol/MultipartResponseBuilder;-><init>(IILcom/x/google/masf/protocol/BodyPart;)V

    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p2}, Lcom/x/google/masf/protocol/MultipartResponse;->getBodyParts()[Lcom/x/google/masf/protocol/BodyPart;

    move-result-object v7

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    array-length v1, v7

    if-ge v3, v1, :cond_2

    aget-object v8, v7, v3

    invoke-virtual {v8}, Lcom/x/google/masf/protocol/BodyPart;->getProperties()Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "Content-Location"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v6, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/x/google/masf/protocol/MultipartResponseBuilder;

    if-nez v2, :cond_0

    invoke-virtual {v8}, Lcom/x/google/masf/protocol/BodyPart;->getProperties()Ljava/util/Hashtable;

    move-result-object v2

    const-string v9, "X-Masf-Response-Code"

    invoke-virtual {v2, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v9, Lcom/x/google/masf/protocol/MultipartResponseBuilder;

    invoke-virtual {p2}, Lcom/x/google/masf/protocol/MultipartResponse;->getId()I

    move-result v10

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v9, v10, v2, v8}, Lcom/x/google/masf/protocol/MultipartResponseBuilder;-><init>(IILcom/x/google/masf/protocol/BodyPart;)V

    invoke-virtual {v6, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v8}, Lcom/x/google/masf/protocol/MultipartResponseBuilder;->addBodyPart(Lcom/x/google/masf/protocol/BodyPart;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v8}, Lcom/x/google/masf/protocol/MultipartResponseBuilder;->addBodyPart(Lcom/x/google/masf/protocol/BodyPart;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    iget-object v4, p0, Lcom/x/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    monitor-enter v4

    :goto_2
    :try_start_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/x/google/masf/protocol/MultipartResponseBuilder;

    iget-object v7, p0, Lcom/x/google/masf/MobileServiceMux;->responseCache:Lcom/x/google/masf/OneTimeCache;

    invoke-virtual {v1}, Lcom/x/google/masf/protocol/MultipartResponseBuilder;->toMultipartResponse()Lcom/x/google/masf/protocol/MultipartResponse;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Lcom/x/google/masf/OneTimeCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v7, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cached response for "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v5}, Lcom/x/google/masf/protocol/MultipartResponseBuilder;->toMultipartResponse()Lcom/x/google/masf/protocol/MultipartResponse;

    move-result-object v1

    return-object v1
.end method

.method private requeueOrFailRequests([Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/x/google/common/Config;->getClock()Lcom/x/google/common/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/x/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    monitor-enter v4

    move v1, v0

    :goto_0
    :try_start_0
    array-length v5, p1

    if-ge v1, v5, :cond_1

    aget-object v5, p1, v1

    if-eqz v5, :cond_0

    aget-object v5, p1, v1

    invoke-direct {p0, v5, p2, v2, v3}, Lcom/x/google/masf/MobileServiceMux;->requeueRequest(Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;J)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requeuing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    const/4 v5, 0x0

    aput-object v5, p1, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/x/google/masf/MobileServiceMux;->scheduleDelayedFlush()V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/x/google/masf/protocol/Request;->flagResponseReceived()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/x/google/masf/protocol/Request;->getListener()Lcom/x/google/masf/protocol/Request$Listener;

    move-result-object v1

    if-eqz v1, :cond_2

    aget-object v2, p1, v0

    invoke-interface {v1, v2, p2}, Lcom/x/google/masf/protocol/Request$Listener;->requestFailed(Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    return-void
.end method

.method private requeueRequest(Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;J)Z
    .locals 3

    invoke-virtual {p1, p3, p4}, Lcom/x/google/masf/protocol/Request;->shouldRetry(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p3, p4}, Lcom/x/google/masf/protocol/Request;->updateResendTimeoutOnError(J)V

    sget-object v0, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->delayedRequestQueue:Ljava/util/Hashtable;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scheduleDelayedFlush()V
    .locals 9

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lcom/x/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->delayedFlushTask:Lcom/x/google/common/task/TimerTask;

    invoke-virtual {v0}, Lcom/x/google/common/task/TimerTask;->cancel()I

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->delayedRequestQueue:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    move-wide v2, v4

    :goto_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/masf/protocol/Request;

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/Request;->isResponseReceived()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/x/google/masf/MobileServiceMux;->delayedRequestQueue:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/Request;->getPreemptableId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/x/google/masf/MobileServiceMux;->preemptableRequestMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/Request;->getPreemptableId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v0, v2

    :cond_0
    :goto_1
    move-wide v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/x/google/masf/protocol/Request;->getRetryDeadline()J

    move-result-wide v0

    cmp-long v8, v0, v4

    if-eqz v8, :cond_2

    cmp-long v8, v2, v4

    if-eqz v8, :cond_0

    cmp-long v8, v2, v0

    if-gtz v8, :cond_0

    :cond_2
    move-wide v0, v2

    goto :goto_1

    :cond_3
    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    sget-object v0, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    const-string v1, "No delay flush required"

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    monitor-exit v6

    :goto_2
    return-void

    :cond_4
    sget-object v0, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling delayed flush: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v4

    invoke-virtual {v4}, Lcom/x/google/common/Config;->getClock()Lcom/x/google/common/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->delayedFlushTask:Lcom/x/google/common/task/TimerTask;

    invoke-virtual {v0, v2, v3}, Lcom/x/google/common/task/TimerTask;->setDeadline(J)V

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->delayedFlushTask:Lcom/x/google/common/task/TimerTask;

    invoke-virtual {v0}, Lcom/x/google/common/task/TimerTask;->schedule()V

    monitor-exit v6

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private scheduleDelayedRequests(J)V
    .locals 5

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->delayedRequestQueue:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/masf/protocol/Request;

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/Request;->getRetryStartTimestamp()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/x/google/masf/MobileServiceMux;->delayedRequestQueue:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/Request;->getPreemptableId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/x/google/masf/MobileServiceMux;->preemptableRequestMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/Request;->getPreemptableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/x/google/masf/protocol/Request;->shouldRetry(J)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending delayed request ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/x/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not sending delayed request ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private scheduleResendRequests(J)V
    .locals 5

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/masf/protocol/Request;

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/Request;->isImmediate()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/x/google/masf/protocol/Request;->shouldRetry(J)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delaying a request ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Lcom/x/google/masf/protocol/Request;->updateResendTimeoutOnSent(J)V

    iget-object v2, p0, Lcom/x/google/masf/MobileServiceMux;->delayedRequestQueue:Ljava/util/Hashtable;

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSentCounter()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/masf/protocol/Request;

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/Request;->updateSentCounter()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/x/google/masf/MobileServiceMux$Listener;)V
    .locals 2

    iget-object v1, p0, Lcom/x/google/masf/MobileServiceMux;->listeners:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelResumableRequest(Lcom/x/google/masf/services/resume/ResumableRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->resumeService:Lcom/x/google/masf/services/resume/ResumeService;

    invoke-virtual {v0, p1}, Lcom/x/google/masf/services/resume/ResumeService;->cancelRequest(Lcom/x/google/masf/services/resume/ResumableRequest;)V

    return-void
.end method

.method protected createAsyncHttpRequestFactory()Lcom/x/google/common/async/AsyncHttpRequestFactory;
    .locals 6

    new-instance v0, Lcom/x/google/common/async/AsyncHttpRequestFactory;

    iget-object v1, p0, Lcom/x/google/masf/MobileServiceMux;->taskRunner:Lcom/x/google/common/task/TaskRunner;

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/x/google/common/Config;->getThreadFactory()Lcom/x/google/common/lang/ThreadFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/x/google/masf/MobileServiceMux;->connectionFactory:Lcom/x/google/common/io/HttpConnectionFactory;

    const-string v4, "MobileServiceMux AsyncHttpRequestFactory"

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/x/google/common/async/AsyncHttpRequestFactory;-><init>(Lcom/x/google/common/task/TaskRunner;Lcom/x/google/common/lang/ThreadFactory;Lcom/x/google/common/io/HttpConnectionFactory;Ljava/lang/String;I)V

    return-object v0
.end method

.method public createConnection(Ljava/lang/String;Z)Lcom/x/google/common/io/GoogleHttpConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance v0, Lcom/x/google/masf/MultiplexedHttpConnection;

    invoke-direct {v0, p1, p2}, Lcom/x/google/masf/MultiplexedHttpConnection;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected createTaskRunner()Lcom/x/google/common/task/TaskRunner;
    .locals 4

    new-instance v0, Lcom/x/google/common/task/TaskRunner;

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/x/google/common/Config;->getThreadFactory()Lcom/x/google/common/lang/ThreadFactory;

    move-result-object v1

    const-string v2, "MobileServiceMux TaskRunner"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/x/google/common/task/TaskRunner;-><init>(Lcom/x/google/common/lang/ThreadFactory;Ljava/lang/String;I)V

    return-object v0
.end method

.method public disposeResumableRequest(Lcom/x/google/masf/services/resume/ResumableRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->resumeService:Lcom/x/google/masf/services/resume/ResumeService;

    invoke-virtual {v0, p1}, Lcom/x/google/masf/services/resume/ResumeService;->disposeRequest(Lcom/x/google/masf/services/resume/ResumableRequest;)V

    return-void
.end method

.method public flushRequests()V
    .locals 0

    invoke-virtual {p0}, Lcom/x/google/masf/MobileServiceMux;->processRequests()V

    return-void
.end method

.method public getBytesReceived()I
    .locals 1

    iget v0, p0, Lcom/x/google/masf/MobileServiceMux;->bytesReceived:I

    return v0
.end method

.method public getBytesSent()I
    .locals 1

    iget v0, p0, Lcom/x/google/masf/MobileServiceMux;->bytesSent:I

    return v0
.end method

.method public getNetworkWorkedThisSession()Z
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->connectionFactory:Lcom/x/google/common/io/HttpConnectionFactory;

    invoke-interface {v0}, Lcom/x/google/common/io/HttpConnectionFactory;->getNetworkWorkedThisSession()Z

    move-result v0

    return v0
.end method

.method public getResumableChunkSize()I
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->resumeService:Lcom/x/google/masf/services/resume/ResumeService;

    invoke-virtual {v0}, Lcom/x/google/masf/services/resume/ResumeService;->getChunkSize()I

    move-result v0

    return v0
.end method

.method public isEndToEndSecure()Z
    .locals 1

    invoke-virtual {p0}, Lcom/x/google/masf/MobileServiceMux;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/x/google/masf/MobileServiceMux;->requireEndToEndSecure:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHttps()Z
    .locals 2

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->serverUri:Ljava/lang/String;

    const-string v1, "https:/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNetworkAvailable()I
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->connectionFactory:Lcom/x/google/common/io/HttpConnectionFactory;

    invoke-interface {v0}, Lcom/x/google/common/io/HttpConnectionFactory;->isNetworkAvailable()I

    move-result v0

    return v0
.end method

.method public declared-synchronized peekRequestId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/x/google/masf/MobileServiceMux;->requestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected processRequests()V
    .locals 4

    iget-object v1, p0, Lcom/x/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getClock()Lcom/x/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/x/google/masf/MobileServiceMux;->scheduleDelayedRequests(J)V

    invoke-direct {p0, v2, v3}, Lcom/x/google/masf/MobileServiceMux;->scheduleResendRequests(J)V

    invoke-direct {p0}, Lcom/x/google/masf/MobileServiceMux;->updateSentCounter()V

    invoke-direct {p0}, Lcom/x/google/masf/MobileServiceMux;->scheduleDelayedFlush()V

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/x/google/masf/protocol/Request;

    iget-object v2, p0, Lcom/x/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/x/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/x/google/masf/MobileServiceMux;->isSecureChannelSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/x/google/masf/MobileServiceMux;->getSecureRequests([Lcom/x/google/masf/protocol/Request;)[Lcom/x/google/masf/protocol/Request;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/x/google/masf/MobileServiceMux;->processRequests([Lcom/x/google/masf/protocol/Request;Z)V

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/x/google/masf/MobileServiceMux;->processRequests([Lcom/x/google/masf/protocol/Request;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeListener(Lcom/x/google/masf/MobileServiceMux$Listener;)V
    .locals 2

    iget-object v1, p0, Lcom/x/google/masf/MobileServiceMux;->listeners:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized requireEndToEndSecure(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/x/google/masf/MobileServiceMux;->isHttps()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "End to end secure not possible: not https"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/x/google/masf/MobileServiceMux;->requireEndToEndSecure:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method protected scheduleFlush()V
    .locals 8

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getClock()Lcom/x/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    add-long/2addr v2, v0

    iget-wide v4, p0, Lcom/x/google/masf/MobileServiceMux;->nextFlush:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    const-wide/16 v4, 0x64

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/x/google/masf/MobileServiceMux;->hardDeadline:J

    iput-wide v2, p0, Lcom/x/google/masf/MobileServiceMux;->nextFlush:J

    sget-object v0, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1) scheduleFlush [next="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/x/google/masf/MobileServiceMux;->nextFlush:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->flushTask:Lcom/x/google/common/task/TimerTask;

    iget-wide v1, p0, Lcom/x/google/masf/MobileServiceMux;->nextFlush:J

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/task/TimerTask;->setDeadline(J)V

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->flushTask:Lcom/x/google/common/task/TimerTask;

    invoke-virtual {v0}, Lcom/x/google/common/task/TimerTask;->schedule()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/x/google/masf/MobileServiceMux;->hardDeadline:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    iput-wide v2, p0, Lcom/x/google/masf/MobileServiceMux;->nextFlush:J

    sget-object v0, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2) scheduleFlush [next="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/x/google/masf/MobileServiceMux;->nextFlush:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/x/google/masf/MobileServiceMux;->nextFlush:J

    iget-wide v2, p0, Lcom/x/google/masf/MobileServiceMux;->hardDeadline:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/x/google/masf/MobileServiceMux;->hardDeadline:J

    iput-wide v0, p0, Lcom/x/google/masf/MobileServiceMux;->nextFlush:J

    sget-object v0, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3) scheduleFlush [next="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/x/google/masf/MobileServiceMux;->nextFlush:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected sendMacroRequest(Ljava/util/Vector;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v4, v0, [Lcom/x/google/masf/protocol/Request;

    invoke-virtual {p1, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/x/google/masf/MobileServiceMux;->getMacroRequestPayload([Lcom/x/google/masf/protocol/Request;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/x/google/masf/MobileServiceMux;->getServerAddress(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/x/google/masf/MobileServiceMux;->asyncFactory:Lcom/x/google/common/async/AsyncHttpRequestFactory;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/x/google/common/async/AsyncHttpRequestFactory;->createAsyncHttpRequest(Ljava/lang/String;I)Lcom/x/google/common/async/AsyncHttpRequest;

    move-result-object v3

    const-string v1, "POST"

    invoke-interface {v3, v1}, Lcom/x/google/common/async/AsyncHttpRequest;->setMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v5

    invoke-interface {v3, v0}, Lcom/x/google/common/async/AsyncHttpRequest;->setPayload(Ljava/io/InputStream;)V

    iget-wide v0, p0, Lcom/x/google/masf/MobileServiceMux;->workerTimeout:J

    invoke-interface {v3, v0, v1}, Lcom/x/google/common/async/AsyncHttpRequest;->setWatchdogDelay(J)V

    const-string v0, "application/binary"

    invoke-interface {v3, v0}, Lcom/x/google/common/async/AsyncHttpRequest;->setContentType(Ljava/lang/String;)V

    new-instance v0, Lcom/x/google/masf/MobileServiceMux$4;

    iget-object v2, p0, Lcom/x/google/masf/MobileServiceMux;->taskRunner:Lcom/x/google/common/task/TaskRunner;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/x/google/masf/MobileServiceMux$4;-><init>(Lcom/x/google/masf/MobileServiceMux;Lcom/x/google/common/task/TaskRunner;Lcom/x/google/common/async/AsyncHttpRequest;[Lcom/x/google/masf/protocol/Request;I)V

    sget-object v1, Lcom/x/google/masf/MobileServiceMux;->logger:Lcom/x/google/debug/LogSource;

    const-string v2, "Scheduling a submit request"

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    invoke-interface {v3, v0}, Lcom/x/google/common/async/AsyncHttpRequest;->submit(Lcom/x/google/common/task/AbstractTask;)V

    return-void
.end method

.method public setResumableChunkSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->resumeService:Lcom/x/google/masf/services/resume/ResumeService;

    invoke-virtual {v0, p1}, Lcom/x/google/masf/services/resume/ResumeService;->setChunkSize(I)V

    return-void
.end method

.method public submitPreemptableRequest(Lcom/x/google/masf/protocol/Request;JZLjava/lang/String;)V
    .locals 2

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lcom/x/google/masf/protocol/Request;->flagImmediate()V

    :cond_0
    invoke-virtual {p1, p5}, Lcom/x/google/masf/protocol/Request;->setPreemptableId(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/x/google/masf/protocol/Request;->updatePreemtableTimeout(J)V

    iget-object v1, p0, Lcom/x/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p5}, Lcom/x/google/masf/MobileServiceMux;->purgePreemptableRequest(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->preemptableRequestMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p5, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p4}, Lcom/x/google/masf/MobileServiceMux;->submitRequest(Lcom/x/google/masf/protocol/Request;Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public submitRequest(Lcom/x/google/masf/protocol/Request;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/x/google/masf/MobileServiceMux;->submitRequest(Lcom/x/google/masf/protocol/Request;Z)V

    return-void
.end method

.method public submitRequest(Lcom/x/google/masf/protocol/Request;J)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/x/google/masf/MobileServiceMux;->submitRequest(Lcom/x/google/masf/protocol/Request;JZ)V

    return-void
.end method

.method public submitRequest(Lcom/x/google/masf/protocol/Request;JZ)V
    .locals 3

    new-instance v0, Lcom/x/google/masf/MobileServiceMux$3;

    invoke-direct {v0, p0, p1, p4}, Lcom/x/google/masf/MobileServiceMux$3;-><init>(Lcom/x/google/masf/MobileServiceMux;Lcom/x/google/masf/protocol/Request;Z)V

    new-instance v1, Lcom/x/google/common/task/TimerTask;

    iget-object v2, p0, Lcom/x/google/masf/MobileServiceMux;->taskRunner:Lcom/x/google/common/task/TaskRunner;

    invoke-direct {v1, v2, v0}, Lcom/x/google/common/task/TimerTask;-><init>(Lcom/x/google/common/task/TaskRunner;Ljava/lang/Runnable;)V

    invoke-virtual {v1, p2, p3}, Lcom/x/google/common/task/TimerTask;->setDelay(J)V

    invoke-virtual {v1}, Lcom/x/google/common/task/TimerTask;->schedule()V

    return-void
.end method

.method public submitRequest(Lcom/x/google/masf/protocol/Request;Z)V
    .locals 6

    iget-object v1, p0, Lcom/x/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/x/google/masf/protocol/Request;->updateSubmit()V

    invoke-direct {p0}, Lcom/x/google/masf/MobileServiceMux;->nextRequestId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/x/google/masf/protocol/Request;->setId(I)V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/x/google/masf/protocol/Request;->getRetryStartTimestamp()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/x/google/masf/protocol/Request;->flagImmediate()V

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->submitRequestQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/x/google/masf/MobileServiceMux;->scheduleFlush()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->delayedRequestQueue:Ljava/util/Hashtable;

    const-string v2, ""

    invoke-virtual {v0, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/x/google/masf/MobileServiceMux;->scheduleDelayedFlush()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public submitResumableRequest(Lcom/x/google/masf/services/resume/ResumableRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux;->resumeService:Lcom/x/google/masf/services/resume/ResumeService;

    invoke-virtual {v0, p1}, Lcom/x/google/masf/services/resume/ResumeService;->submitRequest(Lcom/x/google/masf/services/resume/ResumableRequest;)V

    return-void
.end method
