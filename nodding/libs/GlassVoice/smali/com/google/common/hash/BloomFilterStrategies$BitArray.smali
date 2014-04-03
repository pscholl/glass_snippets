.class Lcom/google/common/hash/BloomFilterStrategies$BitArray;
.super Ljava/lang/Object;
.source "BloomFilterStrategies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/BloomFilterStrategies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitArray"
.end annotation


# instance fields
.field bitCount:I

.field final data:[J


# direct methods
.method constructor <init>(J)V
    .locals 3
    .parameter "bits"

    .prologue
    .line 82
    const-wide/16 v0, 0x40

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v0

    new-array v0, v0, [J

    invoke-direct {p0, v0}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;-><init>([J)V

    .line 83
    return-void
.end method

.method constructor <init>([J)V
    .locals 8
    .parameter "data"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    array-length v6, p1

    if-lez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    const-string v7, "data length is zero!"

    invoke-static {v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 88
    iput-object p1, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, bitCount:I
    move-object v0, p1

    .local v0, arr$:[J
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-wide v4, v0, v2

    .line 91
    .local v4, value:J
    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v6

    add-int/2addr v1, v6

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 87
    .end local v0           #arr$:[J
    .end local v1           #bitCount:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #value:J
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 93
    .restart local v0       #arr$:[J
    .restart local v1       #bitCount:I
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_1
    iput v1, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:I

    .line 94
    return-void
.end method


# virtual methods
.method bitCount()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:I

    return v0
.end method

.method copy()Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    .locals 2

    .prologue
    .line 121
    new-instance v1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-direct {v1, v0}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;-><init>([J)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 126
    instance-of v1, p1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 127
    check-cast v0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    .line 128
    .local v0, bitArray:Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    iget-object v2, v0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    .line 130
    .end local v0           #bitArray:Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method get(I)Z
    .locals 4
    .parameter "index"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    shr-int/lit8 v1, p1, 0x6

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0
.end method

.method set(I)Z
    .locals 6
    .parameter "index"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    shr-int/lit8 v1, p1, 0x6

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 100
    iget v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:I

    .line 101
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method size()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x40

    return v0
.end method
