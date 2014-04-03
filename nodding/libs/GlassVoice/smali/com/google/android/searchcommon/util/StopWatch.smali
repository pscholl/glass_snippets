.class public Lcom/google/android/searchcommon/util/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# instance fields
.field private mStart:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/searchcommon/util/StopWatch;->mStart:J

    .line 15
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter "start"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/searchcommon/util/StopWatch;->mStart:J

    .line 18
    iput-wide p1, p0, Lcom/google/android/searchcommon/util/StopWatch;->mStart:J

    .line 19
    return-void
.end method


# virtual methods
.method public getElapsedTime()I
    .locals 4

    .prologue
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/searchcommon/util/StopWatch;->mStart:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isStarted()Z
    .locals 4

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/google/android/searchcommon/util/StopWatch;->mStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/searchcommon/util/StopWatch;->mStart:J

    .line 27
    return-void
.end method
