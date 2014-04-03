.class final Lcom/google/common/hash/HashCodes$IntHashCode;
.super Lcom/google/common/hash/i;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final hash:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/hash/i;-><init>()V

    iput p1, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    return-void
.end method


# virtual methods
.method public final asBytes()[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public final asInt()I
    .locals 1

    iget v0, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    return v0
.end method

.method public final asLong()J
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this HashCode only has 32 bits; cannot create a long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bits()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public final padToLong()J
    .locals 2

    iget v0, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->a(I)J

    move-result-wide v0

    return-wide v0
.end method
