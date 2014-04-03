.class public abstract Lcom/x/google/common/io/android/J2SeTcpConnectionFactory;
.super Lcom/x/google/common/io/BaseTcpConnectionFactory;

# interfaces
.implements Lcom/x/google/common/io/android/CountingByteChannel$Counter;


# instance fields
.field private receivedBytes:J

.field private sentBytes:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/x/google/common/io/BaseTcpConnectionFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized bytesRead(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/x/google/common/io/android/J2SeTcpConnectionFactory;->receivedBytes:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/x/google/common/io/android/J2SeTcpConnectionFactory;->receivedBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bytesWritten(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/x/google/common/io/android/J2SeTcpConnectionFactory;->sentBytes:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/x/google/common/io/android/J2SeTcpConnectionFactory;->sentBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createConnection(Ljava/lang/String;I)Lcom/x/google/common/io/GoogleTcpConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/x/google/common/io/android/J2SeTcpConnection;

    invoke-direct {v0, p0, p1, p2}, Lcom/x/google/common/io/android/J2SeTcpConnection;-><init>(Lcom/x/google/common/io/android/J2SeTcpConnectionFactory;Ljava/lang/String;I)V

    return-object v0
.end method

.method public getReceivedBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/x/google/common/io/android/J2SeTcpConnectionFactory;->receivedBytes:J

    return-wide v0
.end method

.method public getSentBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/x/google/common/io/android/J2SeTcpConnectionFactory;->sentBytes:J

    return-wide v0
.end method

.method public abstract isNetworkAvailable()I
.end method

.method public resetSentReceiveBytes()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/x/google/common/io/android/J2SeTcpConnectionFactory;->receivedBytes:J

    iput-wide v0, p0, Lcom/x/google/common/io/android/J2SeTcpConnectionFactory;->sentBytes:J

    return-void
.end method
