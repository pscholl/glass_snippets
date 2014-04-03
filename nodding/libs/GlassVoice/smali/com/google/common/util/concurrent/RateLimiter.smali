.class public abstract Lcom/google/common/util/concurrent/RateLimiter;
.super Ljava/lang/Object;
.source "RateLimiter.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/RateLimiter$1;,
        Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;,
        Lcom/google/common/util/concurrent/RateLimiter$Bursty;,
        Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field maxPermits:D

.field private final mutex:Ljava/lang/Object;

.field private nextFreeTicketMicros:J

.field private final offsetNanos:J

.field volatile stableIntervalMicros:D

.field storedPermits:D

.field private final ticker:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;)V
    .locals 2
    .parameter "ticker"

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->mutex:Ljava/lang/Object;

    .line 314
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->nextFreeTicketMicros:J

    .line 317
    iput-object p1, p0, Lcom/google/common/util/concurrent/RateLimiter;->ticker:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;

    .line 318
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;->read()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->offsetNanos:J

    .line 319
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;Lcom/google/common/util/concurrent/RateLimiter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/RateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;)V

    return-void
.end method

.method private static checkPermits(I)V
    .locals 2
    .parameter "permits"

    .prologue
    .line 459
    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Requested permits must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 460
    return-void

    .line 459
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(D)Lcom/google/common/util/concurrent/RateLimiter;
    .locals 1
    .parameter "permitsPerSecond"

    .prologue
    .line 227
    sget-object v0, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;->SYSTEM_TICKER:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;

    invoke-static {v0, p0, p1}, Lcom/google/common/util/concurrent/RateLimiter;->create(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;D)Lcom/google/common/util/concurrent/RateLimiter;

    move-result-object v0

    return-object v0
.end method

.method public static create(DJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/RateLimiter;
    .locals 6
    .parameter "permitsPerSecond"
    .parameter "warmupPeriod"
    .parameter "unit"

    .prologue
    .line 261
    sget-object v0, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;->SYSTEM_TICKER:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/RateLimiter;->create(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;DJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/RateLimiter;

    move-result-object v0

    return-object v0
.end method

.method static create(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;D)Lcom/google/common/util/concurrent/RateLimiter;
    .locals 1
    .parameter "ticker"
    .parameter "permitsPerSecond"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 232
    new-instance v0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/RateLimiter$Bursty;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;)V

    .line 233
    .local v0, rateLimiter:Lcom/google/common/util/concurrent/RateLimiter;
    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/RateLimiter;->setRate(D)V

    .line 234
    return-object v0
.end method

.method static create(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;DJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/RateLimiter;
    .locals 1
    .parameter "ticker"
    .parameter "permitsPerSecond"
    .parameter "warmupPeriod"
    .parameter "timeUnit"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 267
    new-instance v0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;

    invoke-direct {v0, p0, p3, p4, p5}, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;JLjava/util/concurrent/TimeUnit;)V

    .line 268
    .local v0, rateLimiter:Lcom/google/common/util/concurrent/RateLimiter;
    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/RateLimiter;->setRate(D)V

    .line 269
    return-object v0
.end method

.method static createBursty(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;DI)Lcom/google/common/util/concurrent/RateLimiter;
    .locals 3
    .parameter "ticker"
    .parameter "permitsPerSecond"
    .parameter "maxBurstSize"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 274
    new-instance v0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/RateLimiter$Bursty;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;)V

    .line 275
    .local v0, rateLimiter:Lcom/google/common/util/concurrent/RateLimiter$Bursty;
    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->setRate(D)V

    .line 276
    int-to-double v1, p3

    iput-wide v1, v0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->maxPermits:D

    .line 277
    return-object v0
.end method

.method private readSafeMicros()J
    .locals 5

    .prologue
    .line 499
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/google/common/util/concurrent/RateLimiter;->ticker:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;->read()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/common/util/concurrent/RateLimiter;->offsetNanos:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private reserveNextTicket(DJ)J
    .locals 14
    .parameter "requiredPermits"
    .parameter "nowMicros"

    .prologue
    .line 466
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/google/common/util/concurrent/RateLimiter;->resync(J)V

    .line 467
    iget-wide v10, p0, Lcom/google/common/util/concurrent/RateLimiter;->nextFreeTicketMicros:J

    sub-long v4, v10, p3

    .line 468
    .local v4, microsToNextFreeTicket:J
    iget-wide v10, p0, Lcom/google/common/util/concurrent/RateLimiter;->storedPermits:D

    move-wide v0, p1

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 469
    .local v6, storedPermitsToSpend:D
    sub-double v2, p1, v6

    .line 471
    .local v2, freshPermits:D
    iget-wide v10, p0, Lcom/google/common/util/concurrent/RateLimiter;->storedPermits:D

    invoke-virtual {p0, v10, v11, v6, v7}, Lcom/google/common/util/concurrent/RateLimiter;->storedPermitsToWaitTime(DD)J

    move-result-wide v10

    iget-wide v12, p0, Lcom/google/common/util/concurrent/RateLimiter;->stableIntervalMicros:D

    mul-double/2addr v12, v2

    double-to-long v12, v12

    add-long v8, v10, v12

    .line 474
    .local v8, waitMicros:J
    iget-wide v10, p0, Lcom/google/common/util/concurrent/RateLimiter;->nextFreeTicketMicros:J

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/google/common/util/concurrent/RateLimiter;->nextFreeTicketMicros:J

    .line 475
    iget-wide v10, p0, Lcom/google/common/util/concurrent/RateLimiter;->storedPermits:D

    sub-double/2addr v10, v6

    iput-wide v10, p0, Lcom/google/common/util/concurrent/RateLimiter;->storedPermits:D

    .line 476
    return-wide v4
.end method

.method private resync(J)V
    .locals 8
    .parameter "nowMicros"

    .prologue
    .line 491
    iget-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->nextFreeTicketMicros:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 492
    iget-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->maxPermits:D

    iget-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter;->storedPermits:D

    iget-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter;->nextFreeTicketMicros:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/google/common/util/concurrent/RateLimiter;->stableIntervalMicros:D

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->storedPermits:D

    .line 494
    iput-wide p1, p0, Lcom/google/common/util/concurrent/RateLimiter;->nextFreeTicketMicros:J

    .line 496
    :cond_0
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/RateLimiter;->acquire(I)V

    .line 370
    return-void
.end method

.method public acquire(I)V
    .locals 8
    .parameter "permits"

    .prologue
    .line 379
    invoke-static {p1}, Lcom/google/common/util/concurrent/RateLimiter;->checkPermits(I)V

    .line 381
    iget-object v3, p0, Lcom/google/common/util/concurrent/RateLimiter;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 382
    int-to-double v4, p1

    :try_start_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/RateLimiter;->readSafeMicros()J

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/google/common/util/concurrent/RateLimiter;->reserveNextTicket(DJ)J

    move-result-wide v0

    .line 383
    .local v0, microsToWait:J
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    iget-object v2, p0, Lcom/google/common/util/concurrent/RateLimiter;->ticker:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;->sleepMicrosUninterruptibly(J)V

    .line 385
    return-void

    .line 383
    .end local v0           #microsToWait:J
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method abstract doSetRate(DD)V
.end method

.method public final getRate()D
    .locals 4

    .prologue
    .line 360
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter;->stableIntervalMicros:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final setRate(D)V
    .locals 6
    .parameter "permitsPerSecond"

    .prologue
    .line 340
    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-lez v2, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v3, "rate must be positive"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 342
    iget-object v3, p0, Lcom/google/common/util/concurrent/RateLimiter;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 343
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/RateLimiter;->readSafeMicros()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/common/util/concurrent/RateLimiter;->resync(J)V

    .line 344
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    long-to-double v4, v4

    div-double v0, v4, p1

    .line 345
    .local v0, stableIntervalMicros:D
    iput-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->stableIntervalMicros:D

    .line 346
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/common/util/concurrent/RateLimiter;->doSetRate(DD)V

    .line 347
    monitor-exit v3

    .line 348
    return-void

    .line 340
    .end local v0           #stableIntervalMicros:D
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method abstract storedPermitsToWaitTime(DD)J
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 504
    const-string v0, "RateLimiter[stableRate=%3.1fqps]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide v3, 0x412e848000000000L

    iget-wide v5, p0, Lcom/google/common/util/concurrent/RateLimiter;->stableIntervalMicros:D

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryAcquire()Z
    .locals 4

    .prologue
    .line 428
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/common/util/concurrent/RateLimiter;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public tryAcquire(I)Z
    .locals 3
    .parameter "permits"

    .prologue
    .line 414
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/common/util/concurrent/RateLimiter;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    .locals 15
    .parameter "permits"
    .parameter "timeout"
    .parameter "unit"

    .prologue
    .line 443
    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v7

    .line 444
    .local v7, timeoutMicros:J
    invoke-static/range {p1 .. p1}, Lcom/google/common/util/concurrent/RateLimiter;->checkPermits(I)V

    .line 446
    iget-object v10, p0, Lcom/google/common/util/concurrent/RateLimiter;->mutex:Ljava/lang/Object;

    monitor-enter v10

    .line 447
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/RateLimiter;->readSafeMicros()J

    move-result-wide v5

    .line 448
    .local v5, nowMicros:J
    iget-wide v11, p0, Lcom/google/common/util/concurrent/RateLimiter;->nextFreeTicketMicros:J

    add-long v13, v5, v7

    cmp-long v9, v11, v13

    if-lez v9, :cond_0

    .line 449
    const/4 v9, 0x0

    monitor-exit v10

    .line 455
    :goto_0
    return v9

    .line 451
    :cond_0
    move/from16 v0, p1

    int-to-double v11, v0

    invoke-direct {p0, v11, v12, v5, v6}, Lcom/google/common/util/concurrent/RateLimiter;->reserveNextTicket(DJ)J

    move-result-wide v3

    .line 453
    .local v3, microsToWait:J
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    iget-object v9, p0, Lcom/google/common/util/concurrent/RateLimiter;->ticker:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;

    invoke-virtual {v9, v3, v4}, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;->sleepMicrosUninterruptibly(J)V

    .line 455
    const/4 v9, 0x1

    goto :goto_0

    .line 453
    .end local v3           #microsToWait:J
    .end local v5           #nowMicros:J
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method

.method public tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .parameter "timeout"
    .parameter "unit"

    .prologue
    .line 400
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/common/util/concurrent/RateLimiter;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method
