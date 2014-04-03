.class Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;
.super Lcom/google/glass/util/RetryStrategy;
.source "RetryStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/RetryStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExponentialBackoff"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final firstDelayMs:I

.field final multiplier:D

.field final numAttempts:I

.field final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/google/glass/util/RetryStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(IDI)V
    .locals 6
    .parameter "firstDelayMs"
    .parameter "multiplier"
    .parameter "numAttempts"

    .prologue
    .line 96
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;-><init>(IDILjava/util/Random;)V

    .line 97
    return-void
.end method

.method constructor <init>(IDILjava/util/Random;)V
    .locals 2
    .parameter "firstDelayMs"
    .parameter "multiplier"
    .parameter "numAttempts"
    .parameter "random"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/glass/util/RetryStrategy;-><init>()V

    .line 100
    iput p4, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->numAttempts:I

    .line 101
    #calls: Lcom/google/glass/util/RetryStrategy;->checkPositive(I)I
    invoke-static {p1}, Lcom/google/glass/util/RetryStrategy;->access$000(I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->firstDelayMs:I

    .line 102
    #calls: Lcom/google/glass/util/RetryStrategy;->checkPositive(D)D
    invoke-static {p2, p3}, Lcom/google/glass/util/RetryStrategy;->access$100(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->multiplier:D

    .line 103
    iput-object p5, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->random:Ljava/util/Random;

    .line 104
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 135
    instance-of v2, p1, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 136
    check-cast v0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;

    .line 137
    .local v0, other:Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;
    iget v2, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->firstDelayMs:I

    iget v3, v0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->firstDelayMs:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->multiplier:D

    iget-wide v4, v0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->multiplier:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->numAttempts:I

    iget v3, v0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->numAttempts:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 141
    .end local v0           #other:Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;
    :cond_0
    return v1
.end method

.method public getDelayMillis(I)I
    .locals 7
    .parameter "tries"

    .prologue
    .line 116
    sget-boolean v1, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 118
    :cond_0
    if-nez p1, :cond_2

    .line 119
    const/4 v0, 0x0

    .line 129
    :cond_1
    :goto_0
    return v0

    .line 121
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->tryAgain(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 122
    const/4 v0, -0x1

    goto :goto_0

    .line 125
    :cond_3
    iget v1, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->firstDelayMs:I

    int-to-double v1, v1

    iget-wide v3, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->multiplier:D

    add-int/lit8 v5, p1, -0x1

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v1, v3

    #calls: Lcom/google/glass/util/RetryStrategy;->closestInt(D)I
    invoke-static {v1, v2}, Lcom/google/glass/util/RetryStrategy;->access$300(D)I

    move-result v0

    .line 126
    .local v0, nominalDelay:I
    iget-object v1, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->random:Ljava/util/Random;

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->random:Ljava/util/Random;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    goto :goto_0
.end method

.method getNumAttempts()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->numAttempts:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 146
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->numAttempts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->firstDelayMs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->multiplier:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public tryAgain(I)Z
    .locals 2
    .parameter "tries"

    .prologue
    .line 112
    const/4 v0, -0x1

    iget v1, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->numAttempts:I

    if-eq v0, v1, :cond_0

    #calls: Lcom/google/glass/util/RetryStrategy;->checkNotNegative(I)I
    invoke-static {p1}, Lcom/google/glass/util/RetryStrategy;->access$200(I)I

    move-result v0

    iget v1, p0, Lcom/google/glass/util/RetryStrategy$ExponentialBackoff;->numAttempts:I

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
