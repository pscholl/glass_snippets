.class final Lcom/google/common/hash/HashCodes$LongHashCode;
.super Lcom/google/common/hash/i;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final hash:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/hash/i;-><init>()V

    iput-wide p1, p0, Lcom/google/common/hash/HashCodes$LongHashCode;->hash:J

    return-void
.end method


# virtual methods
.method public final asBytes()[B
    .locals 5

    const/16 v4, 0x8

    new-array v0, v4, [B

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/common/hash/HashCodes$LongHashCode;->hash:J

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/hash/HashCodes$LongHashCode;->hash:J

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/hash/HashCodes$LongHashCode;->hash:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/common/hash/HashCodes$LongHashCode;->hash:J

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/common/hash/HashCodes$LongHashCode;->hash:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/common/hash/HashCodes$LongHashCode;->hash:J

    const/16 v4, 0x28

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/common/hash/HashCodes$LongHashCode;->hash:J

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/common/hash/HashCodes$LongHashCode;->hash:J

    const/16 v4, 0x38

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public final asInt()I
    .locals 2

    iget-wide v0, p0, Lcom/google/common/hash/HashCodes$LongHashCode;->hash:J

    long-to-int v0, v0

    return v0
.end method

.method public final asLong()J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/hash/HashCodes$LongHashCode;->hash:J

    return-wide v0
.end method

.method public final bits()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public final padToLong()J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/hash/HashCodes$LongHashCode;->hash:J

    return-wide v0
.end method
