.class final Lcom/google/common/hash/HashCodes$BytesHashCode;
.super Lcom/google/common/hash/i;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final bytes:[B


# direct methods
.method constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/hash/i;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    return-void
.end method


# virtual methods
.method public final asBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final asInt()I
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    array-length v0, v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes)."

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ai;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public final asLong()J
    .locals 9

    const/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0xff

    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    array-length v0, v0

    if-lt v0, v8, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes)."

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ai;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    aget-byte v0, v0, v2

    int-to-long v2, v0

    and-long/2addr v2, v6

    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    shl-long/2addr v0, v8

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v3, 0x4

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v3, 0x7

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public final bits()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    array-length v0, v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/common/hash/HashCodes$BytesHashCode;->asInt()I

    move-result v1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final padToLong()J
    .locals 2

    iget-object v0, p0, Lcom/google/common/hash/HashCodes$BytesHashCode;->bytes:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/hash/HashCodes$BytesHashCode;->asInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->a(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/hash/HashCodes$BytesHashCode;->asLong()J

    move-result-wide v0

    goto :goto_0
.end method
