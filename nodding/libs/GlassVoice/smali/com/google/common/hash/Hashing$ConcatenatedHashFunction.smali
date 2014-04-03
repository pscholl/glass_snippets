.class final Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
.super Lcom/google/common/hash/AbstractCompositeHashFunction;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatenatedHashFunction"
.end annotation


# instance fields
.field private final bits:I


# direct methods
.method varargs constructor <init>([Lcom/google/common/hash/HashFunction;)V
    .locals 6
    .parameter "functions"

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    .line 381
    const/4 v1, 0x0

    .line 382
    .local v1, bitSum:I
    move-object v0, p1

    .local v0, arr$:[Lcom/google/common/hash/HashFunction;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 383
    .local v2, function:Lcom/google/common/hash/HashFunction;
    invoke-interface {v2}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v5

    add-int/2addr v1, v5

    .line 382
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 385
    .end local v2           #function:Lcom/google/common/hash/HashFunction;
    :cond_0
    iput v1, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    .line 386
    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    return v0
.end method

.method makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;
    .locals 7
    .parameter "hashers"

    .prologue
    .line 391
    iget v6, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    div-int/lit8 v6, v6, 0x8

    new-array v2, v6, [B

    .line 392
    .local v2, bytes:[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 393
    .local v1, buffer:Ljava/nio/ByteBuffer;
    move-object v0, p1

    .local v0, arr$:[Lcom/google/common/hash/Hasher;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4

    .line 394
    .local v3, hasher:Lcom/google/common/hash/Hasher;
    invoke-interface {v3}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 393
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 396
    .end local v3           #hasher:Lcom/google/common/hash/Hasher;
    :cond_0
    invoke-static {v2}, Lcom/google/common/hash/HashCodes;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v6

    return-object v6
.end method
