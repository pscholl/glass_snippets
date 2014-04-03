.class public final Lcom/google/common/primitives/UnsignedLongs;
.super Ljava/lang/Object;
.source "UnsignedLongs.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final MAX_VALUE:J = -0x1L

.field private static final maxSafeDigits:[I

.field private static final maxValueDivs:[J

.field private static final maxValueMods:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/16 v3, 0x25

    .line 383
    new-array v2, v3, [J

    sput-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueDivs:[J

    .line 384
    new-array v2, v3, [I

    sput-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueMods:[I

    .line 385
    new-array v2, v3, [I

    sput-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxSafeDigits:[I

    .line 387
    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "10000000000000000"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 388
    .local v1, overflow:Ljava/math/BigInteger;
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    const/16 v2, 0x24

    if-gt v0, v2, :cond_0

    .line 389
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueDivs:[J

    int-to-long v3, v0

    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 390
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueMods:[I

    int-to-long v3, v0

    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    aput v3, v2, v0

    .line 391
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxSafeDigits:[I

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v0

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(JJ)I
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 76
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static decode(Ljava/lang/String;)J
    .locals 5
    .parameter "stringValue"

    .prologue
    .line 269
    invoke-static {p0}, Lcom/google/common/primitives/ParseRequest;->fromString(Ljava/lang/String;)Lcom/google/common/primitives/ParseRequest;

    move-result-object v2

    .line 272
    .local v2, request:Lcom/google/common/primitives/ParseRequest;
    :try_start_0
    iget-object v3, v2, Lcom/google/common/primitives/ParseRequest;->rawValue:Ljava/lang/String;

    iget v4, v2, Lcom/google/common/primitives/ParseRequest;->radix:I

    invoke-static {v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->parseUnsignedLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    return-wide v3

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, decodeException:Ljava/lang/NumberFormatException;
    invoke-virtual {v0, v1}, Ljava/lang/NumberFormatException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 277
    throw v0
.end method

.method public static divide(JJ)J
    .locals 8
    .parameter "dividend"
    .parameter "divisor"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    .line 182
    cmp-long v7, p2, v5

    if-gez v7, :cond_1

    .line 183
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v4

    if-gez v4, :cond_0

    move-wide v4, v5

    .line 203
    :goto_0
    return-wide v4

    .line 186
    :cond_0
    const-wide/16 v4, 0x1

    goto :goto_0

    .line 191
    :cond_1
    cmp-long v5, p0, v5

    if-ltz v5, :cond_2

    .line 192
    div-long v4, p0, p2

    goto :goto_0

    .line 201
    :cond_2
    ushr-long v5, p0, v4

    div-long/2addr v5, p2

    shl-long v0, v5, v4

    .line 202
    .local v0, quotient:J
    mul-long v5, v0, p2

    sub-long v2, p0, v5

    .line 203
    .local v2, rem:J
    invoke-static {v2, v3, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v5

    if-ltz v5, :cond_3

    :goto_1
    int-to-long v4, v4

    add-long/2addr v4, v0

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static flip(J)J
    .locals 2
    .parameter "a"

    .prologue
    .line 63
    const-wide/high16 v0, -0x8000

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method public static varargs join(Ljava/lang/String;[J)Ljava/lang/String;
    .locals 5
    .parameter "separator"
    .parameter "array"

    .prologue
    .line 128
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    array-length v2, p1

    if-nez v2, :cond_0

    .line 130
    const-string v2, ""

    .line 139
    :goto_0
    return-object v2

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 135
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-wide v2, p1, v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 137
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v3, p1, v1

    invoke-static {v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[J>;"
        }
    .end annotation

    .prologue
    .line 156
    sget-object v0, Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([J)J
    .locals 7
    .parameter "array"

    .prologue
    const/4 v6, 0x0

    .line 108
    array-length v5, p0

    if-lez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 109
    aget-wide v5, p0, v6

    invoke-static {v5, v6}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v1

    .line 110
    .local v1, max:J
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v5, p0

    if-ge v0, v5, :cond_2

    .line 111
    aget-wide v5, p0, v0

    invoke-static {v5, v6}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v3

    .line 112
    .local v3, next:J
    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    .line 113
    move-wide v1, v3

    .line 110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #max:J
    .end local v3           #next:J
    :cond_1
    move v5, v6

    .line 108
    goto :goto_0

    .line 116
    .restart local v0       #i:I
    .restart local v1       #max:J
    :cond_2
    invoke-static {v1, v2}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v5

    return-wide v5
.end method

.method public static varargs min([J)J
    .locals 7
    .parameter "array"

    .prologue
    const/4 v6, 0x0

    .line 88
    array-length v5, p0

    if-lez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 89
    aget-wide v5, p0, v6

    invoke-static {v5, v6}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v1

    .line 90
    .local v1, min:J
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v5, p0

    if-ge v0, v5, :cond_2

    .line 91
    aget-wide v5, p0, v0

    invoke-static {v5, v6}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v3

    .line 92
    .local v3, next:J
    cmp-long v5, v3, v1

    if-gez v5, :cond_0

    .line 93
    move-wide v1, v3

    .line 90
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #min:J
    .end local v3           #next:J
    :cond_1
    move v5, v6

    .line 88
    goto :goto_0

    .line 96
    .restart local v0       #i:I
    .restart local v1       #min:J
    :cond_2
    invoke-static {v1, v2}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v5

    return-wide v5
.end method

.method private static overflowInParse(JII)Z
    .locals 4
    .parameter "current"
    .parameter "digit"
    .parameter "radix"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 324
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-ltz v2, :cond_0

    .line 325
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueDivs:[J

    aget-wide v2, v2, p3

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    move v0, v1

    .line 336
    :cond_0
    :goto_0
    return v0

    .line 328
    :cond_1
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueDivs:[J

    aget-wide v2, v2, p3

    cmp-long v2, p0, v2

    if-gtz v2, :cond_0

    .line 332
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueMods:[I

    aget v2, v2, p3

    if-gt p2, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static parseUnsignedLong(Ljava/lang/String;)J
    .locals 2
    .parameter "s"

    .prologue
    .line 249
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedLongs;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseUnsignedLong(Ljava/lang/String;I)J
    .locals 9
    .parameter "s"
    .parameter "radix"

    .prologue
    .line 293
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 295
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string v6, "empty string"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 297
    :cond_0
    const/4 v5, 0x2

    if-lt p1, v5, :cond_1

    const/16 v5, 0x24

    if-le p1, v5, :cond_2

    .line 298
    :cond_1
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "illegal radix: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 301
    :cond_2
    sget-object v5, Lcom/google/common/primitives/UnsignedLongs;->maxSafeDigits:[I

    aget v5, v5, p1

    add-int/lit8 v1, v5, -0x1

    .line 302
    .local v1, max_safe_pos:I
    const-wide/16 v3, 0x0

    .line 303
    .local v3, value:J
    const/4 v2, 0x0

    .local v2, pos:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 304
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 305
    .local v0, digit:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    .line 306
    new-instance v5, Ljava/lang/NumberFormatException;

    invoke-direct {v5, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 308
    :cond_3
    if-le v2, v1, :cond_4

    invoke-static {v3, v4, v0, p1}, Lcom/google/common/primitives/UnsignedLongs;->overflowInParse(JII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 309
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too large for unsigned long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 311
    :cond_4
    int-to-long v5, p1

    mul-long/2addr v5, v3

    int-to-long v7, v0

    add-long v3, v5, v7

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    .end local v0           #digit:I
    :cond_5
    return-wide v3
.end method

.method public static remainder(JJ)J
    .locals 9
    .parameter "dividend"
    .parameter "divisor"

    .prologue
    const/4 v8, 0x1

    const-wide/16 v4, 0x0

    .line 216
    cmp-long v6, p2, v4

    if-gez v6, :cond_1

    .line 217
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v4

    if-gez v4, :cond_0

    .line 237
    .end local p0
    .end local p2
    :goto_0
    return-wide p0

    .line 220
    .restart local p0
    .restart local p2
    :cond_0
    sub-long/2addr p0, p2

    goto :goto_0

    .line 225
    :cond_1
    cmp-long v6, p0, v4

    if-ltz v6, :cond_2

    .line 226
    rem-long/2addr p0, p2

    goto :goto_0

    .line 235
    :cond_2
    ushr-long v6, p0, v8

    div-long/2addr v6, p2

    shl-long v0, v6, v8

    .line 236
    .local v0, quotient:J
    mul-long v6, v0, p2

    sub-long v2, p0, v6

    .line 237
    .local v2, rem:J
    invoke-static {v2, v3, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v6

    if-ltz v6, :cond_3

    .end local p2
    :goto_1
    sub-long p0, v2, p2

    goto :goto_0

    .restart local p2
    :cond_3
    move-wide p2, v4

    goto :goto_1
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 1
    .parameter "x"

    .prologue
    .line 343
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/google/common/primitives/UnsignedLongs;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(JI)Ljava/lang/String;
    .locals 13
    .parameter "x"
    .parameter "radix"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    .line 356
    const/4 v6, 0x2

    if-lt p2, v6, :cond_0

    const/16 v6, 0x24

    if-gt p2, v6, :cond_0

    move v6, v7

    :goto_0
    const-string v9, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v6, v9, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 358
    cmp-long v6, p0, v11

    if-nez v6, :cond_1

    .line 360
    const-string v6, "0"

    .line 378
    :goto_1
    return-object v6

    :cond_0
    move v6, v8

    .line 356
    goto :goto_0

    .line 362
    :cond_1
    const/16 v6, 0x40

    new-array v0, v6, [C

    .line 363
    .local v0, buf:[C
    array-length v1, v0

    .line 364
    .local v1, i:I
    cmp-long v6, p0, v11

    if-gez v6, :cond_2

    .line 367
    int-to-long v6, p2

    invoke-static {p0, p1, v6, v7}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v2

    .line 368
    .local v2, quotient:J
    int-to-long v6, p2

    mul-long/2addr v6, v2

    sub-long v4, p0, v6

    .line 369
    .local v4, rem:J
    add-int/lit8 v1, v1, -0x1

    long-to-int v6, v4

    invoke-static {v6, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    aput-char v6, v0, v1

    .line 370
    move-wide p0, v2

    .line 373
    .end local v2           #quotient:J
    .end local v4           #rem:J
    :cond_2
    :goto_2
    cmp-long v6, p0, v11

    if-lez v6, :cond_3

    .line 374
    add-int/lit8 v1, v1, -0x1

    int-to-long v6, p2

    rem-long v6, p0, v6

    long-to-int v6, v6

    invoke-static {v6, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    aput-char v6, v0, v1

    .line 375
    int-to-long v6, p2

    div-long/2addr p0, v6

    goto :goto_2

    .line 378
    :cond_3
    new-instance v6, Ljava/lang/String;

    array-length v7, v0

    sub-int/2addr v7, v1

    invoke-direct {v6, v0, v1, v7}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1
.end method
