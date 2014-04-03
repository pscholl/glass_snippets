.class public abstract Lcom/x/google/masf/protocol/Request;
.super Lcom/x/google/masf/protocol/Block;

# interfaces
.implements Lcom/x/google/masf/InputStreamProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/masf/protocol/Request$Listener;
    }
.end annotation


# static fields
.field public static final DEFAULT_IMMEDIATE_REQUEST_TIMEOUT:J = 0x4e20L

.field public static final DEFAULT_RETRY_TIMEOUT:J = 0x7d0L

.field public static final DEFAULT_SEND_COUNT:I = 0x4

.field public static final RETRY_IMMEDIATE_DEALINE:J = 0x1388L

.field public static final RETRY_IMMEDIATE_START:J = 0xbb8L

.field public static final RETRY_NON_IMMEDIATE_DEALINE:J = 0x36ee80L


# instance fields
.field private immediate:Z

.field protected listener:Lcom/x/google/masf/protocol/Request$Listener;

.field private logger:Lcom/x/google/debug/LogSource;

.field private preemptableId:Ljava/lang/String;

.field private requestTimeoutPeriod:J

.field private responseReceived:Z

.field private retryDeadline:J

.field private retryStartTimestamp:J

.field protected retryTimeout:J

.field private secure:Z

.field protected sentCount:I

.field private submitTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Lcom/x/google/masf/protocol/Block;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/x/google/masf/protocol/Request;->retryTimeout:J

    const/4 v0, 0x4

    iput v0, p0, Lcom/x/google/masf/protocol/Request;->sentCount:I

    iput-wide v2, p0, Lcom/x/google/masf/protocol/Request;->retryStartTimestamp:J

    iput-wide v2, p0, Lcom/x/google/masf/protocol/Request;->retryDeadline:J

    iput-wide v2, p0, Lcom/x/google/masf/protocol/Request;->submitTimestamp:J

    iput-wide v2, p0, Lcom/x/google/masf/protocol/Request;->requestTimeoutPeriod:J

    iput-boolean v4, p0, Lcom/x/google/masf/protocol/Request;->responseReceived:Z

    iput-boolean v4, p0, Lcom/x/google/masf/protocol/Request;->secure:Z

    invoke-static {p0}, Lcom/x/google/debug/LogSource;->getDynamicLogSource(Ljava/lang/Object;)Lcom/x/google/debug/LogSource;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/masf/protocol/Request;->logger:Lcom/x/google/debug/LogSource;

    return-void
.end method

.method private adjustRetryTimeout()V
    .locals 4

    iget-wide v0, p0, Lcom/x/google/masf/protocol/Request;->retryDeadline:J

    iget-wide v2, p0, Lcom/x/google/masf/protocol/Request;->retryStartTimestamp:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/x/google/masf/protocol/Request;->retryDeadline:J

    return-void
.end method


# virtual methods
.method public abstract dispose()V
.end method

.method public flagImmediate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/x/google/masf/protocol/Request;->immediate:Z

    return-void
.end method

.method public declared-synchronized flagResponseReceived()Z
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/x/google/masf/protocol/Request;->responseReceived:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/x/google/masf/protocol/Request;->responseReceived:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public flagSecure()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/x/google/masf/protocol/Request;->secure:Z

    return-void
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized getListener()Lcom/x/google/masf/protocol/Request$Listener;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/masf/protocol/Request;->listener:Lcom/x/google/masf/protocol/Request$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPreemptableId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/protocol/Request;->preemptableId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTimeoutPeriod()J
    .locals 2

    iget-wide v0, p0, Lcom/x/google/masf/protocol/Request;->requestTimeoutPeriod:J

    return-wide v0
.end method

.method public getRetryDeadline()J
    .locals 2

    iget-wide v0, p0, Lcom/x/google/masf/protocol/Request;->retryDeadline:J

    return-wide v0
.end method

.method public getRetryStartTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/x/google/masf/protocol/Request;->retryStartTimestamp:J

    return-wide v0
.end method

.method public abstract getStreamLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public isImmediate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/x/google/masf/protocol/Request;->immediate:Z

    return v0
.end method

.method public isResponseReceived()Z
    .locals 1

    iget-boolean v0, p0, Lcom/x/google/masf/protocol/Request;->responseReceived:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    iget-boolean v0, p0, Lcom/x/google/masf/protocol/Request;->secure:Z

    return v0
.end method

.method public declared-synchronized setListener(Lcom/x/google/masf/protocol/Request$Listener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/x/google/masf/protocol/Request;->listener:Lcom/x/google/masf/protocol/Request$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPreemptableId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/masf/protocol/Request;->preemptableId:Ljava/lang/String;

    return-void
.end method

.method public setRequestTimeoutPeriod(J)V
    .locals 0

    iput-wide p1, p0, Lcom/x/google/masf/protocol/Request;->requestTimeoutPeriod:J

    return-void
.end method

.method public declared-synchronized setRetryTimeout(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/x/google/masf/protocol/Request;->retryTimeout:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSentCount(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/x/google/masf/protocol/Request;->sentCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldRetry(J)Z
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lcom/x/google/masf/protocol/Request;->requestTimeoutPeriod:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/x/google/masf/protocol/Request;->submitTimestamp:J

    iget-wide v3, p0, Lcom/x/google/masf/protocol/Request;->requestTimeoutPeriod:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget v1, p0, Lcom/x/google/masf/protocol/Request;->sentCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatePreemtableTimeout(J)V
    .locals 4

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getClock()Lcom/x/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    add-long v2, v0, p1

    iput-wide v2, p0, Lcom/x/google/masf/protocol/Request;->retryStartTimestamp:J

    iget-boolean v2, p0, Lcom/x/google/masf/protocol/Request;->immediate:Z

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lcom/x/google/masf/protocol/Request;->retryStartTimestamp:J

    iput-wide v0, p0, Lcom/x/google/masf/protocol/Request;->retryDeadline:J

    :goto_0
    invoke-direct {p0}, Lcom/x/google/masf/protocol/Request;->adjustRetryTimeout()V

    return-void

    :cond_0
    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/x/google/masf/protocol/Request;->retryDeadline:J

    goto :goto_0
.end method

.method public updateProgress(J)V
    .locals 2

    iget-boolean v0, p0, Lcom/x/google/masf/protocol/Request;->immediate:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xbb8

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/x/google/masf/protocol/Request;->retryStartTimestamp:J

    const-wide/16 v0, 0x1388

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/x/google/masf/protocol/Request;->retryDeadline:J

    :cond_0
    return-void
.end method

.method public declared-synchronized updateResendTimeoutOnError(J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/x/google/masf/protocol/Request;->retryTimeout:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/x/google/masf/protocol/Request;->retryStartTimestamp:J

    iget-boolean v0, p0, Lcom/x/google/masf/protocol/Request;->immediate:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/x/google/masf/protocol/Request;->retryStartTimestamp:J

    iput-wide v0, p0, Lcom/x/google/masf/protocol/Request;->retryDeadline:J

    :goto_0
    invoke-direct {p0}, Lcom/x/google/masf/protocol/Request;->adjustRetryTimeout()V

    iget-wide v0, p0, Lcom/x/google/masf/protocol/Request;->retryTimeout:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/x/google/masf/protocol/Request;->retryTimeout:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const-wide/32 v0, 0x36ee80

    add-long/2addr v0, p1

    :try_start_1
    iput-wide v0, p0, Lcom/x/google/masf/protocol/Request;->retryDeadline:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateResendTimeoutOnSent(J)V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0xbb8

    add-long/2addr v0, p1

    :try_start_0
    iput-wide v0, p0, Lcom/x/google/masf/protocol/Request;->retryStartTimestamp:J

    const-wide/16 v0, 0x1388

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/x/google/masf/protocol/Request;->retryDeadline:J

    invoke-direct {p0}, Lcom/x/google/masf/protocol/Request;->adjustRetryTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateSentCounter()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/x/google/masf/protocol/Request;->sentCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/x/google/masf/protocol/Request;->sentCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateSubmit()V
    .locals 4

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/x/google/masf/protocol/Request;->logger:Lcom/x/google/debug/LogSource;

    const-string v1, "updateSubmit"

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/x/google/masf/protocol/Request;->submitTimestamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getClock()Lcom/x/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/x/google/masf/protocol/Request;->submitTimestamp:J

    :cond_0
    invoke-virtual {p0}, Lcom/x/google/masf/protocol/Request;->isImmediate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/x/google/masf/protocol/Request;->getRequestTimeoutPeriod()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/x/google/masf/protocol/Request;->requestTimeoutPeriod:J

    :cond_1
    return-void
.end method
