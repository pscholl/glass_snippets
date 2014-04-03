.class public abstract Lcom/google/glass/sync/BackOffSyncHandler;
.super Ljava/lang/Object;
.source "BackOffSyncHandler.java"

# interfaces
.implements Lcom/google/glass/sync/SyncStatusReporter;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BACKOFF_EXPONENT:D = 2.0

.field private static final RETRY_DELAY_MILLIS:I = 0x3e8


# instance fields
.field private nextSyncTime:J

.field private numFailures:I

.field private numServerFailures:I

.field private final retryStrategy:Lcom/google/glass/util/RetryStrategy;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 40
    const/16 v0, 0x3e8

    const-wide/high16 v1, 0x4000

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/util/RetryStrategy;->exponentialBackoffWithJitter(IDI)Lcom/google/glass/util/RetryStrategy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/sync/BackOffSyncHandler;-><init>(Lcom/google/glass/util/RetryStrategy;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/util/RetryStrategy;)V
    .locals 0
    .parameter "retryStrategy"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/glass/sync/BackOffSyncHandler;->retryStrategy:Lcom/google/glass/util/RetryStrategy;

    .line 46
    return-void
.end method


# virtual methods
.method public getDelayRemainingSecs()J
    .locals 5

    .prologue
    .line 97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 98
    .local v0, uptime:J
    iget-wide v2, p0, Lcom/google/glass/sync/BackOffSyncHandler;->nextSyncTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 99
    const-wide/16 v2, 0x0

    .line 101
    :goto_0
    return-wide v2

    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/google/glass/sync/BackOffSyncHandler;->nextSyncTime:J

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    goto :goto_0
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method public handleFail(I)V
    .locals 7
    .parameter "errorCode"

    .prologue
    .line 56
    iget v2, p0, Lcom/google/glass/sync/BackOffSyncHandler;->numFailures:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/sync/BackOffSyncHandler;->numFailures:I

    .line 57
    const/4 v2, 0x5

    if-eq v2, p1, :cond_0

    .line 58
    iget v2, p0, Lcom/google/glass/sync/BackOffSyncHandler;->numServerFailures:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/sync/BackOffSyncHandler;->numServerFailures:I

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/google/glass/sync/BackOffSyncHandler;->retryStrategy:Lcom/google/glass/util/RetryStrategy;

    iget v3, p0, Lcom/google/glass/sync/BackOffSyncHandler;->numFailures:I

    invoke-virtual {v2, v3}, Lcom/google/glass/util/RetryStrategy;->getDelayMillis(I)I

    move-result v2

    int-to-long v0, v2

    .line 61
    .local v0, backOffDelay:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 62
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3c

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/glass/sync/BackOffSyncHandler;->nextSyncTime:J

    .line 68
    invoke-virtual {p0}, Lcom/google/glass/sync/BackOffSyncHandler;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sync failed [errorCode=%s, numFailures=%s, numServerFailures=%s]."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/google/glass/sync/BackOffSyncHandler;->numFailures:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/google/glass/sync/BackOffSyncHandler;->numServerFailures:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    return-void

    .line 65
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "We should never stop trying when we use RetryStrategy.NO_MAX"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public handleSuccess()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/google/glass/sync/BackOffSyncHandler;->numFailures:I

    .line 51
    iput v0, p0, Lcom/google/glass/sync/BackOffSyncHandler;->numServerFailures:I

    .line 52
    return-void
.end method

.method public hasFailures()Z
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/google/glass/sync/BackOffSyncHandler;->numFailures:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasServerFailures()Z
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/glass/sync/BackOffSyncHandler;->numServerFailures:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldRetry()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 74
    iget-wide v5, p0, Lcom/google/glass/sync/BackOffSyncHandler;->nextSyncTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v0, v5, v7

    .line 75
    .local v0, remainingBackOffDelay:J
    iget-object v5, p0, Lcom/google/glass/sync/BackOffSyncHandler;->retryStrategy:Lcom/google/glass/util/RetryStrategy;

    iget v6, p0, Lcom/google/glass/sync/BackOffSyncHandler;->numServerFailures:I

    invoke-virtual {v5, v6}, Lcom/google/glass/util/RetryStrategy;->tryAgain(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gtz v5, :cond_1

    move v2, v3

    .line 78
    .local v2, shouldRetry:Z
    :goto_0
    if-nez v2, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/google/glass/sync/BackOffSyncHandler;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Backing off for %s ms"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v5, v6, v3}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_0
    return v2

    .end local v2           #shouldRetry:Z
    :cond_1
    move v2, v4

    .line 75
    goto :goto_0
.end method
