.class public final Lcom/google/common/hash/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Hashing$1;,
        Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;,
        Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;,
        Lcom/google/common/hash/Hashing$ChecksumType;
    }
.end annotation


# static fields
.field private static final ADLER_32:Lcom/google/common/hash/HashFunction;

.field private static final CRC_32:Lcom/google/common/hash/HashFunction;

.field private static final GOOD_FAST_HASH_FUNCTION_128:Lcom/google/common/hash/HashFunction;

.field private static final GOOD_FAST_HASH_FUNCTION_32:Lcom/google/common/hash/HashFunction;

.field private static final GOOD_FAST_HASH_SEED:I

.field private static final MD5:Lcom/google/common/hash/HashFunction;

.field private static final MURMUR3_128:Lcom/google/common/hash/HashFunction;

.field private static final MURMUR3_32:Lcom/google/common/hash/HashFunction;

.field private static final SHA_1:Lcom/google/common/hash/HashFunction;

.field private static final SHA_256:Lcom/google/common/hash/HashFunction;

.field private static final SHA_512:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    .line 50
    sget v0, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    invoke-static {v0}, Lcom/google/common/hash/Hashing;->murmur3_32(I)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_FUNCTION_32:Lcom/google/common/hash/HashFunction;

    .line 53
    sget v0, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    invoke-static {v0}, Lcom/google/common/hash/Hashing;->murmur3_128(I)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_FUNCTION_128:Lcom/google/common/hash/HashFunction;

    .line 115
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    invoke-direct {v0, v2}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/Hashing;->MURMUR3_32:Lcom/google/common/hash/HashFunction;

    .line 141
    new-instance v0, Lcom/google/common/hash/Murmur3_128HashFunction;

    invoke-direct {v0, v2}, Lcom/google/common/hash/Murmur3_128HashFunction;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/Hashing;->MURMUR3_128:Lcom/google/common/hash/HashFunction;

    .line 151
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction;

    const-string v1, "MD5"

    const-string v2, "Hashing.md5()"

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/MessageDigestHashFunction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/hash/Hashing;->MD5:Lcom/google/common/hash/HashFunction;

    .line 161
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction;

    const-string v1, "SHA-1"

    const-string v2, "Hashing.sha1()"

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/MessageDigestHashFunction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/hash/Hashing;->SHA_1:Lcom/google/common/hash/HashFunction;

    .line 172
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction;

    const-string v1, "SHA-256"

    const-string v2, "Hashing.sha256()"

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/MessageDigestHashFunction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/hash/Hashing;->SHA_256:Lcom/google/common/hash/HashFunction;

    .line 183
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction;

    const-string v1, "SHA-512"

    const-string v2, "Hashing.sha512()"

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/MessageDigestHashFunction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/hash/Hashing;->SHA_512:Lcom/google/common/hash/HashFunction;

    .line 199
    sget-object v0, Lcom/google/common/hash/Hashing$ChecksumType;->CRC_32:Lcom/google/common/hash/Hashing$ChecksumType;

    const-string v1, "Hashing.crc32()"

    invoke-static {v0, v1}, Lcom/google/common/hash/Hashing;->checksumHashFunction(Lcom/google/common/hash/Hashing$ChecksumType;Ljava/lang/String;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Hashing;->CRC_32:Lcom/google/common/hash/HashFunction;

    .line 215
    sget-object v0, Lcom/google/common/hash/Hashing$ChecksumType;->ADLER_32:Lcom/google/common/hash/Hashing$ChecksumType;

    const-string v1, "Hashing.adler32()"

    invoke-static {v0, v1}, Lcom/google/common/hash/Hashing;->checksumHashFunction(Lcom/google/common/hash/Hashing$ChecksumType;Ljava/lang/String;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Hashing;->ADLER_32:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adler32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/google/common/hash/Hashing;->ADLER_32:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method static checkPositiveAndMakeMultipleOf32(I)I
    .locals 2
    .parameter "bits"

    .prologue
    .line 370
    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Number of bits must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 371
    add-int/lit8 v0, p0, 0x1f

    and-int/lit8 v0, v0, -0x20

    return v0

    .line 370
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checksumHashFunction(Lcom/google/common/hash/Hashing$ChecksumType;Ljava/lang/String;)Lcom/google/common/hash/HashFunction;
    .locals 2
    .parameter "type"
    .parameter "toString"

    .prologue
    .line 219
    new-instance v0, Lcom/google/common/hash/ChecksumHashFunction;

    #getter for: Lcom/google/common/hash/Hashing$ChecksumType;->bits:I
    invoke-static {p0}, Lcom/google/common/hash/Hashing$ChecksumType;->access$000(Lcom/google/common/hash/Hashing$ChecksumType;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/common/hash/ChecksumHashFunction;-><init>(Lcom/google/common/base/Supplier;ILjava/lang/String;)V

    return-object v0
.end method

.method public static combineOrdered(Ljava/lang/Iterable;)Lcom/google/common/hash/HashCode;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/hash/HashCode;",
            ">;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, hashCodes:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 327
    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "Must be at least 1 hash code to combine."

    invoke-static {v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 328
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/hash/HashCode;

    invoke-virtual {v7}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v0

    .line 329
    .local v0, bits:I
    div-int/lit8 v7, v0, 0x8

    new-array v6, v7, [B

    .line 330
    .local v6, resultBytes:[B
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/hash/HashCode;

    .line 331
    .local v1, hashCode:Lcom/google/common/hash/HashCode;
    invoke-virtual {v1}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v5

    .line 332
    .local v5, nextBytes:[B
    array-length v7, v5

    array-length v8, v6

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    :goto_0
    const-string v8, "All hashcodes must have the same bit length."

    invoke-static {v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 334
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v5

    if-ge v2, v7, :cond_0

    .line 335
    aget-byte v7, v6, v2

    mul-int/lit8 v7, v7, 0x25

    aget-byte v8, v5, v2

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 332
    .end local v2           #i:I
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 338
    .end local v1           #hashCode:Lcom/google/common/hash/HashCode;
    .end local v5           #nextBytes:[B
    :cond_2
    invoke-static {v6}, Lcom/google/common/hash/HashCodes;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v7

    return-object v7
.end method

.method public static combineUnordered(Ljava/lang/Iterable;)Lcom/google/common/hash/HashCode;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/hash/HashCode;",
            ">;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, hashCodes:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 353
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "Must be at least 1 hash code to combine."

    invoke-static {v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 354
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/hash/HashCode;

    invoke-virtual {v6}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    new-array v5, v6, [B

    .line 355
    .local v5, resultBytes:[B
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/HashCode;

    .line 356
    .local v0, hashCode:Lcom/google/common/hash/HashCode;
    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v4

    .line 357
    .local v4, nextBytes:[B
    array-length v6, v4

    array-length v7, v5

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_0
    const-string v7, "All hashcodes must have the same bit length."

    invoke-static {v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 359
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v4

    if-ge v1, v6, :cond_0

    .line 360
    aget-byte v6, v5, v1

    aget-byte v7, v4, v1

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 357
    .end local v1           #i:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 363
    .end local v0           #hashCode:Lcom/google/common/hash/HashCode;
    .end local v4           #nextBytes:[B
    :cond_2
    invoke-static {v5}, Lcom/google/common/hash/HashCodes;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v6

    return-object v6
.end method

.method public static consistentHash(JI)I
    .locals 8
    .parameter "input"
    .parameter "buckets"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 299
    if-lez p2, :cond_0

    move v3, v4

    :goto_0
    const-string v6, "buckets must be positive: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v6, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 300
    new-instance v1, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;

    invoke-direct {v1, p0, p1}, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;-><init>(J)V

    .line 301
    .local v1, generator:Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;
    const/4 v0, 0x0

    .line 306
    .local v0, candidate:I
    :goto_1
    add-int/lit8 v3, v0, 0x1

    int-to-double v3, v3

    invoke-virtual {v1}, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;->nextDouble()D

    move-result-wide v5

    div-double/2addr v3, v5

    double-to-int v2, v3

    .line 307
    .local v2, next:I
    if-ltz v2, :cond_1

    if-ge v2, p2, :cond_1

    .line 308
    move v0, v2

    goto :goto_1

    .end local v0           #candidate:I
    .end local v1           #generator:Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;
    .end local v2           #next:I
    :cond_0
    move v3, v5

    .line 299
    goto :goto_0

    .line 310
    .restart local v0       #candidate:I
    .restart local v1       #generator:Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;
    .restart local v2       #next:I
    :cond_1
    return v0
.end method

.method public static consistentHash(Lcom/google/common/hash/HashCode;I)I
    .locals 2
    .parameter "hashCode"
    .parameter "buckets"

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->padToLong()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/common/hash/Hashing;->consistentHash(JI)I

    move-result v0

    return v0
.end method

.method public static crc32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/google/common/hash/Hashing;->CRC_32:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static goodFastHash(I)Lcom/google/common/hash/HashFunction;
    .locals 7
    .parameter "minimumBits"

    .prologue
    .line 70
    invoke-static {p0}, Lcom/google/common/hash/Hashing;->checkPositiveAndMakeMultipleOf32(I)I

    move-result v0

    .line 72
    .local v0, bits:I
    const/16 v5, 0x20

    if-ne v0, v5, :cond_0

    .line 73
    sget-object v5, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_FUNCTION_32:Lcom/google/common/hash/HashFunction;

    .line 88
    :goto_0
    return-object v5

    .line 75
    :cond_0
    const/16 v5, 0x80

    if-gt v0, v5, :cond_1

    .line 76
    sget-object v5, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_FUNCTION_128:Lcom/google/common/hash/HashFunction;

    goto :goto_0

    .line 80
    :cond_1
    add-int/lit8 v5, v0, 0x7f

    div-int/lit16 v2, v5, 0x80

    .line 81
    .local v2, hashFunctionsNeeded:I
    new-array v1, v2, [Lcom/google/common/hash/HashFunction;

    .line 82
    .local v1, hashFunctions:[Lcom/google/common/hash/HashFunction;
    const/4 v5, 0x0

    sget-object v6, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_FUNCTION_128:Lcom/google/common/hash/HashFunction;

    aput-object v6, v1, v5

    .line 83
    sget v4, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    .line 84
    .local v4, seed:I
    const/4 v3, 0x1

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 85
    const v5, 0x596f0ddf

    add-int/2addr v4, v5

    .line 86
    invoke-static {v4}, Lcom/google/common/hash/Hashing;->murmur3_128(I)Lcom/google/common/hash/HashFunction;

    move-result-object v5

    aput-object v5, v1, v3

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 88
    :cond_2
    new-instance v5, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    invoke-direct {v5, v1}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    goto :goto_0
.end method

.method public static md5()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/google/common/hash/Hashing;->MD5:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_128()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/google/common/hash/Hashing;->MURMUR3_128:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_128(I)Lcom/google/common/hash/HashFunction;
    .locals 1
    .parameter "seed"

    .prologue
    .line 126
    new-instance v0, Lcom/google/common/hash/Murmur3_128HashFunction;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_128HashFunction;-><init>(I)V

    return-object v0
.end method

.method public static murmur3_32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/google/common/hash/Hashing;->MURMUR3_32:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_32(I)Lcom/google/common/hash/HashFunction;
    .locals 1
    .parameter "seed"

    .prologue
    .line 100
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(I)V

    return-object v0
.end method

.method public static padToLong(Lcom/google/common/hash/HashCode;)J
    .locals 2
    .parameter "hashCode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->padToLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static sha1()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/google/common/hash/Hashing;->SHA_1:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha256()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/google/common/hash/Hashing;->SHA_256:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha512()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/google/common/hash/Hashing;->SHA_512:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method
