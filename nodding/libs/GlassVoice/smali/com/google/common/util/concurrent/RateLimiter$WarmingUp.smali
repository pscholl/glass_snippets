.class Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;
.super Lcom/google/common/util/concurrent/RateLimiter;
.source "RateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/RateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WarmingUp"
.end annotation


# instance fields
.field private halfPermits:D

.field private slope:D

.field final warmupPeriodMicros:J


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .parameter "ticker"
    .parameter "warmupPeriod"
    .parameter "timeUnit"

    .prologue
    .line 593
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/RateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;Lcom/google/common/util/concurrent/RateLimiter$1;)V

    .line 594
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->warmupPeriodMicros:J

    .line 595
    return-void
.end method

.method private permitsToTime(D)D
    .locals 4
    .parameter "permits"

    .prologue
    .line 632
    iget-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->stableIntervalMicros:D

    iget-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->slope:D

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method doSetRate(DD)V
    .locals 10
    .parameter "permitsPerSecond"
    .parameter "stableIntervalMicros"

    .prologue
    const-wide/16 v8, 0x0

    .line 599
    iget-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->maxPermits:D

    .line 600
    .local v2, oldMaxPermits:D
    iget-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->warmupPeriodMicros:J

    long-to-double v4, v4

    div-double/2addr v4, p3

    iput-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->maxPermits:D

    .line 601
    iget-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->maxPermits:D

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->halfPermits:D

    .line 603
    const-wide/high16 v4, 0x4008

    mul-double v0, p3, v4

    .line 604
    .local v0, coldIntervalMicros:D
    sub-double v4, v0, p3

    iget-wide v6, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->halfPermits:D

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->slope:D

    .line 605
    const-wide/high16 v4, 0x7ff0

    cmpl-double v4, v2, v4

    if-nez v4, :cond_0

    .line 607
    iput-wide v8, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->storedPermits:D

    .line 612
    :goto_0
    return-void

    .line 609
    :cond_0
    cmpl-double v4, v2, v8

    if-nez v4, :cond_1

    iget-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->maxPermits:D

    :goto_1
    iput-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->storedPermits:D

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->storedPermits:D

    iget-wide v6, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->maxPermits:D

    mul-double/2addr v4, v6

    div-double/2addr v4, v2

    goto :goto_1
.end method

.method storedPermitsToWaitTime(DD)J
    .locals 10
    .parameter "storedPermits"
    .parameter "permitsToTake"

    .prologue
    .line 616
    iget-wide v6, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->halfPermits:D

    sub-double v0, p1, v6

    .line 617
    .local v0, availablePermitsAboveHalf:D
    const-wide/16 v2, 0x0

    .line 619
    .local v2, micros:J
    const-wide/16 v6, 0x0

    cmpl-double v6, v0, v6

    if-lez v6, :cond_0

    .line 620
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 621
    .local v4, permitsAboveHalfToTake:D
    invoke-direct {p0, v0, v1}, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->permitsToTime(D)D

    move-result-wide v6

    sub-double v8, v0, v4

    invoke-direct {p0, v8, v9}, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->permitsToTime(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    mul-double/2addr v6, v4

    const-wide/high16 v8, 0x4000

    div-double/2addr v6, v8

    double-to-long v2, v6

    .line 624
    sub-double/2addr p3, v4

    .line 627
    .end local v4           #permitsAboveHalfToTake:D
    :cond_0
    long-to-double v6, v2

    iget-wide v8, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->stableIntervalMicros:D

    mul-double/2addr v8, p3

    add-double/2addr v6, v8

    double-to-long v2, v6

    .line 628
    return-wide v2
.end method
