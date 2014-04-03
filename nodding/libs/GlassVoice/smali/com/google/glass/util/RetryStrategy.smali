.class public abstract Lcom/google/glass/util/RetryStrategy;
.super Ljava/lang/Object;
.source "RetryStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;
    }
.end annotation


# static fields
.field public static final NO_MAX:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method static synthetic access$000(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-static {p0}, Lcom/google/glass/util/RetryStrategy;->checkPositive(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(D)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 17
    invoke-static {p0, p1}, Lcom/google/glass/util/RetryStrategy;->checkPositive(D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-static {p0}, Lcom/google/glass/util/RetryStrategy;->checkNotNegative(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(D)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-static {p0, p1}, Lcom/google/glass/util/RetryStrategy;->closestInt(D)I

    move-result v0

    return v0
.end method

.method private static checkNotNegative(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 165
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 166
    return p0

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkNotNegative(J)J
    .locals 2
    .parameter "value"

    .prologue
    .line 170
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 171
    return-wide p0

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkPositive(D)D
    .locals 2
    .parameter "value"

    .prologue
    .line 160
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 161
    return-wide p0

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkPositive(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 155
    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 156
    return p0

    .line 155
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static closestInt(D)I
    .locals 2
    .parameter "x"

    .prologue
    .line 151
    double-to-long v0, p0

    invoke-static {v0, v1}, Lcom/google/glass/util/RetryStrategy;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public static exponentialBackoff(IDI)Lcom/google/glass/util/RetryStrategy;
    .locals 1
    .parameter "firstDelayMs"
    .parameter "multiplier"
    .parameter "numAttempts"

    .prologue
    .line 72
    new-instance v0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;-><init>(IDI)V

    return-object v0
.end method

.method public static exponentialBackoffWithJitter(IDI)Lcom/google/glass/util/RetryStrategy;
    .locals 6
    .parameter "firstDelayMs"
    .parameter "multiplier"
    .parameter "numAttempts"

    .prologue
    .line 86
    new-instance v0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    move v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;-><init>(IDILjava/util/Random;)V

    return-object v0
.end method

.method private static saturatedCast(J)I
    .locals 2
    .parameter "value"

    .prologue
    .line 183
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 184
    const v0, 0x7fffffff

    .line 189
    :goto_0
    return v0

    .line 186
    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 187
    const/high16 v0, -0x8000

    goto :goto_0

    .line 189
    :cond_1
    long-to-int v0, p0

    goto :goto_0
.end method


# virtual methods
.method public abstract getDelayMillis(I)I
.end method

.method protected getDelayMillis(IJ)I
    .locals 1
    .parameter "tries"
    .parameter "millisElapsed"

    .prologue
    .line 51
    invoke-static {p2, p3}, Lcom/google/glass/util/RetryStrategy;->checkNotNegative(J)J

    .line 52
    invoke-virtual {p0, p1}, Lcom/google/glass/util/RetryStrategy;->tryAgain(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const/4 v0, -0x1

    .line 55
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/util/RetryStrategy;->getDelayMillis(I)I

    move-result v0

    goto :goto_0
.end method

.method abstract getNumAttempts()I
.end method

.method public tryAgain(I)Z
    .locals 1
    .parameter "tries"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/glass/util/RetryStrategy;->getDelayMillis(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
