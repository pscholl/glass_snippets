.class Lcom/google/common/util/concurrent/RateLimiter$Bursty;
.super Lcom/google/common/util/concurrent/RateLimiter;
.source "RateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/RateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bursty"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;)V
    .locals 1
    .parameter "ticker"

    .prologue
    .line 647
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/RateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;Lcom/google/common/util/concurrent/RateLimiter$1;)V

    .line 648
    return-void
.end method


# virtual methods
.method doSetRate(DD)V
    .locals 6
    .parameter "permitsPerSecond"
    .parameter "stableIntervalMicros"

    .prologue
    const-wide/16 v2, 0x0

    .line 652
    iget-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->maxPermits:D

    .line 659
    .local v0, oldMaxPermits:D
    iput-wide p1, p0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->maxPermits:D

    .line 660
    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    :goto_0
    iput-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->storedPermits:D

    .line 662
    return-void

    .line 660
    :cond_0
    iget-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->storedPermits:D

    iget-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$Bursty;->maxPermits:D

    mul-double/2addr v2, v4

    div-double/2addr v2, v0

    goto :goto_0
.end method

.method storedPermitsToWaitTime(DD)J
    .locals 2
    .parameter "storedPermits"
    .parameter "permitsToTake"

    .prologue
    .line 666
    const-wide/16 v0, 0x0

    return-wide v0
.end method
