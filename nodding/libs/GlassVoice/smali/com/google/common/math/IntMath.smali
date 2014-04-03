.class public final Lcom/google/common/math/IntMath;
.super Ljava/lang/Object;
.source "IntMath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/IntMath$1;
    }
.end annotation


# static fields
.field static final FLOOR_SQRT_MAX_INT:I = 0xb504
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:I = -0x4afb0ccd
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static biggestBinomials:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final factorials:[I

.field static final halfPowersOf10:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final maxLog10ForLeadingZeros:[B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final powersOf10:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 162
    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    .line 166
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/common/math/IntMath;->powersOf10:[I

    .line 171
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    .line 490
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    .line 530
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    return-void

    .line 162
    :array_0
    .array-data 0x1
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 166
    nop

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
        0xa0t 0x86t 0x1t 0x0t
        0x40t 0x42t 0xft 0x0t
        0x80t 0x96t 0x98t 0x0t
        0x0t 0xe1t 0xf5t 0x5t
        0x0t 0xcat 0x9at 0x3bt
    .end array-data

    .line 171
    :array_2
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ct 0x1t 0x0t 0x0t
        0x5at 0xct 0x0t 0x0t
        0x86t 0x7bt 0x0t 0x0t
        0x43t 0xd3t 0x4t 0x0t
        0xa5t 0x40t 0x30t 0x0t
        0x78t 0x86t 0xe2t 0x1t
        0xb6t 0x40t 0xd9t 0x12t
        0xfft 0xfft 0xfft 0x7ft
    .end array-data

    .line 490
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0xd0t 0x2t 0x0t 0x0t
        0xb0t 0x13t 0x0t 0x0t
        0x80t 0x9dt 0x0t 0x0t
        0x80t 0x89t 0x5t 0x0t
        0x0t 0x5ft 0x37t 0x0t
        0x0t 0x15t 0x61t 0x2t
        0x0t 0xfct 0x8ct 0x1ct
    .end array-data

    .line 530
    :array_4
    .array-data 0x4
        0xfft 0xfft 0xfft 0x7ft
        0xfft 0xfft 0xfft 0x7ft
        0x0t 0x0t 0x1t 0x0t
        0x29t 0x9t 0x0t 0x0t
        0xddt 0x1t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)I
    .locals 9
    .parameter "n"
    .parameter "k"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 504
    const-string v3, "n"

    invoke-static {v3, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 505
    const-string v3, "k"

    invoke-static {v3, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 506
    if-gt p1, p0, :cond_2

    move v3, v4

    :goto_0
    const-string v6, "k (%s) > n (%s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v3, v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 507
    shr-int/lit8 v3, p0, 0x1

    if-le p1, v3, :cond_0

    .line 508
    sub-int p1, p0, p1

    .line 510
    :cond_0
    sget-object v3, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    array-length v3, v3

    if-ge p1, v3, :cond_1

    sget-object v3, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    aget v3, v3, p1

    if-le p0, v3, :cond_3

    .line 511
    :cond_1
    const v4, 0x7fffffff

    .line 524
    :goto_1
    :pswitch_0
    return v4

    :cond_2
    move v3, v5

    .line 506
    goto :goto_0

    .line 513
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 519
    const-wide/16 v1, 0x1

    .line 520
    .local v1, result:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p1, :cond_4

    .line 521
    sub-int v3, p0, v0

    int-to-long v3, v3

    mul-long/2addr v1, v3

    .line 522
    add-int/lit8 v3, v0, 0x1

    int-to-long v3, v3

    div-long/2addr v1, v3

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0           #i:I
    .end local v1           #result:J
    :pswitch_1
    move v4, p0

    .line 517
    goto :goto_1

    .line 524
    .restart local v0       #i:I
    .restart local v1       #result:J
    :cond_4
    long-to-int v4, v1

    goto :goto_1

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static checkedAdd(II)I
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 402
    int-to-long v2, p0

    int-to-long v4, p1

    add-long v0, v2, v4

    .line 403
    .local v0, result:J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 404
    long-to-int v2, v0

    return v2

    .line 403
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkedMultiply(II)I
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 424
    int-to-long v2, p0

    int-to-long v4, p1

    mul-long v0, v2, v4

    .line 425
    .local v0, result:J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 426
    long-to-int v2, v0

    return v2

    .line 425
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkedPow(II)I
    .locals 5
    .parameter "b"
    .parameter "k"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 438
    const-string v4, "exponent"

    invoke-static {v4, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 439
    packed-switch p0, :pswitch_data_0

    .line 455
    const/4 v0, 0x1

    .line 457
    .local v0, accum:I
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 463
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1

    .line 464
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v0

    .line 466
    :cond_1
    shr-int/lit8 p1, p1, 0x1

    .line 467
    if-lez p1, :cond_0

    .line 468
    const v3, -0xb504

    if-gt v3, p0, :cond_7

    move v4, v1

    :goto_1
    const v3, 0xb504

    if-gt p0, v3, :cond_8

    move v3, v1

    :goto_2
    and-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 469
    mul-int/2addr p0, p0

    goto :goto_0

    .line 441
    .end local v0           #accum:I
    :pswitch_0
    if-nez p1, :cond_3

    .line 461
    :cond_2
    :goto_3
    :pswitch_1
    return v1

    :cond_3
    move v1, v2

    .line 441
    goto :goto_3

    .line 445
    :pswitch_2
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    move v1, v3

    goto :goto_3

    .line 447
    :pswitch_3
    const/16 v3, 0x1f

    if-ge p1, v3, :cond_4

    move v2, v1

    :cond_4
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 448
    shl-int/2addr v1, p1

    goto :goto_3

    .line 450
    :pswitch_4
    const/16 v4, 0x20

    if-ge p1, v4, :cond_5

    move v2, v1

    :cond_5
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 451
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_6

    shl-int/2addr v1, p1

    goto :goto_3

    :cond_6
    shl-int v1, v3, p1

    goto :goto_3

    .restart local v0       #accum:I
    :pswitch_5
    move v1, v0

    .line 459
    goto :goto_3

    .line 461
    :pswitch_6
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v1

    goto :goto_3

    :cond_7
    move v4, v2

    .line 468
    goto :goto_1

    :cond_8
    move v3, v2

    goto :goto_2

    .line 439
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 457
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static checkedSubtract(II)I
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 413
    int-to-long v2, p0

    int-to-long v4, p1

    sub-long v0, v2, v4

    .line 414
    .local v0, result:J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 415
    long-to-int v2, v0

    return v2

    .line 414
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static divide(IILjava/math/RoundingMode;)I
    .locals 10
    .parameter "p"
    .parameter "q"
    .parameter "mode"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 268
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    if-nez p1, :cond_0

    .line 270
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "/ by zero"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 272
    :cond_0
    div-int v2, p0, p1

    .line 273
    .local v2, div:I
    mul-int v8, p1, v2

    sub-int v4, p0, v8

    .line 275
    .local v4, rem:I
    if-nez v4, :cond_2

    .line 320
    .end local v2           #div:I
    :cond_1
    :goto_0
    return v2

    .line 286
    .restart local v2       #div:I
    :cond_2
    xor-int v8, p0, p1

    shr-int/lit8 v8, v8, 0x1f

    or-int/lit8 v5, v8, 0x1

    .line 288
    .local v5, signum:I
    sget-object v8, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 318
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 290
    :pswitch_0
    if-nez v4, :cond_3

    :goto_1
    invoke-static {v6}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 293
    :pswitch_1
    const/4 v3, 0x0

    .line 320
    .local v3, increment:Z
    :goto_2
    if-eqz v3, :cond_1

    add-int/2addr v2, v5

    goto :goto_0

    .end local v3           #increment:Z
    :cond_3
    move v6, v7

    .line 290
    goto :goto_1

    .line 296
    :pswitch_2
    const/4 v3, 0x1

    .line 297
    .restart local v3       #increment:Z
    goto :goto_2

    .line 299
    .end local v3           #increment:Z
    :pswitch_3
    if-lez v5, :cond_4

    move v3, v6

    .line 300
    .restart local v3       #increment:Z
    :goto_3
    goto :goto_2

    .end local v3           #increment:Z
    :cond_4
    move v3, v7

    .line 299
    goto :goto_3

    .line 302
    :pswitch_4
    if-gez v5, :cond_5

    move v3, v6

    .line 303
    .restart local v3       #increment:Z
    :goto_4
    goto :goto_2

    .end local v3           #increment:Z
    :cond_5
    move v3, v7

    .line 302
    goto :goto_4

    .line 307
    :pswitch_5
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 308
    .local v0, absRem:I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int/2addr v8, v0

    sub-int v1, v0, v8

    .line 311
    .local v1, cmpRemToHalfDivisor:I
    if-nez v1, :cond_a

    .line 312
    sget-object v8, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, v8, :cond_6

    sget-object v8, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, v8, :cond_7

    move v9, v6

    :goto_5
    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_8

    move v8, v6

    :goto_6
    and-int/2addr v8, v9

    if-eqz v8, :cond_9

    :cond_6
    move v3, v6

    .restart local v3       #increment:Z
    :goto_7
    goto :goto_2

    .end local v3           #increment:Z
    :cond_7
    move v9, v7

    goto :goto_5

    :cond_8
    move v8, v7

    goto :goto_6

    :cond_9
    move v3, v7

    goto :goto_7

    .line 314
    :cond_a
    if-lez v1, :cond_b

    move v3, v6

    .line 316
    .restart local v3       #increment:Z
    :goto_8
    goto :goto_2

    .end local v3           #increment:Z
    :cond_b
    move v3, v7

    .line 314
    goto :goto_8

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static factorial(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 486
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 487
    sget-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    aget v0, v0, p0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public static gcd(II)I
    .locals 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 357
    const-string v4, "a"

    invoke-static {v4, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 358
    const-string v4, "b"

    invoke-static {v4, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 359
    if-nez p0, :cond_1

    move p0, p1

    .line 393
    .end local p0
    :cond_0
    :goto_0
    return p0

    .line 363
    .restart local p0
    :cond_1
    if-eqz p1, :cond_0

    .line 370
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 371
    .local v0, aTwos:I
    shr-int/2addr p0, v0

    .line 372
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    .line 373
    .local v1, bTwos:I
    shr-int/2addr p1, v1

    .line 374
    :goto_1
    if-eq p0, p1, :cond_2

    .line 382
    sub-int v2, p0, p1

    .line 384
    .local v2, delta:I
    shr-int/lit8 v4, v2, 0x1f

    and-int v3, v2, v4

    .line 387
    .local v3, minDeltaOrZero:I
    sub-int v4, v2, v3

    sub-int p0, v4, v3

    .line 390
    add-int/2addr p1, v3

    .line 391
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shr-int/2addr p0, v4

    .line 392
    goto :goto_1

    .line 393
    .end local v2           #delta:I
    .end local v3           #minDeltaOrZero:I
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    shl-int/2addr p0, v4

    goto :goto_0
.end method

.method public static isPowerOfTwo(I)Z
    .locals 4
    .parameter "x"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    if-lez p0, :cond_0

    move v2, v0

    :goto_0
    add-int/lit8 v3, p0, -0x1

    and-int/2addr v3, p0

    if-nez v3, :cond_1

    :goto_1
    and-int/2addr v0, v2

    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static log10(ILjava/math/RoundingMode;)I
    .locals 4
    .parameter "x"
    .parameter "mode"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    .prologue
    .line 118
    const-string v2, "x"

    invoke-static {v2, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 119
    invoke-static {p0}, Lcom/google/common/math/IntMath;->log10Floor(I)I

    move-result v1

    .line 120
    .local v1, logFloor:I
    sget-object v2, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v0, v2, v1

    .line 121
    .local v0, floorPow:I
    sget-object v2, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 137
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 123
    :pswitch_0
    if-ne p0, v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 135
    .end local v1           #logFloor:I
    :cond_0
    :goto_1
    :pswitch_1
    return v1

    .line 123
    .restart local v1       #logFloor:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 130
    :pswitch_2
    if-eq p0, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    :pswitch_3
    sget-object v2, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    aget v2, v2, v1

    if-le p0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static log10Floor(I)I
    .locals 4
    .parameter "x"

    .prologue
    .line 149
    sget-object v2, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    aget-byte v1, v2, v3

    .line 152
    .local v1, y:I
    sget-object v2, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v2, v2, v1

    sub-int v2, p0, v2

    ushr-int/lit8 v0, v2, 0x1f

    .line 157
    .local v0, sgn:I
    sub-int v2, v1, v0

    return v2
.end method

.method public static log2(ILjava/math/RoundingMode;)I
    .locals 5
    .parameter "x"
    .parameter "mode"

    .prologue
    .line 76
    const-string v3, "x"

    invoke-static {v3, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 77
    sget-object v3, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 100
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 79
    :pswitch_0
    invoke-static {p0}, Lcom/google/common/math/IntMath;->isPowerOfTwo(I)Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 83
    :pswitch_1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v2, v3, 0x1f

    .line 97
    :cond_0
    :goto_0
    return v2

    .line 87
    :pswitch_2
    add-int/lit8 v3, p0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v2, v3, 0x20

    goto :goto_0

    .line 93
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    .line 94
    .local v1, leadingZeros:I
    const v3, -0x4afb0ccd

    ushr-int v0, v3, v1

    .line 96
    .local v0, cmp:I
    rsub-int/lit8 v2, v1, 0x1f

    .line 97
    .local v2, logFloor:I
    if-le p0, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static mean(II)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 543
    and-int v0, p0, p1

    xor-int v1, p0, p1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public static mod(II)I
    .locals 4
    .parameter "x"
    .parameter "m"

    .prologue
    .line 338
    if-gtz p1, :cond_0

    .line 339
    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modulus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_0
    rem-int v0, p0, p1

    .line 342
    .local v0, result:I
    if-ltz v0, :cond_1

    .end local v0           #result:I
    :goto_0
    return v0

    .restart local v0       #result:I
    :cond_1
    add-int/2addr v0, p1

    goto :goto_0
.end method

.method public static pow(II)I
    .locals 5
    .parameter "b"
    .parameter "k"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "failing tests"
    .end annotation

    .prologue
    const/16 v4, 0x20

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 185
    const-string v3, "exponent"

    invoke-static {v3, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 186
    packed-switch p0, :pswitch_data_0

    .line 204
    const/4 v0, 0x1

    .line 205
    .local v0, accum:I
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 211
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_5

    move v2, v1

    :goto_1
    mul-int/2addr v0, v2

    .line 212
    mul-int/2addr p0, p0

    .line 204
    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 188
    .end local v0           #accum:I
    :pswitch_0
    if-nez p1, :cond_1

    .line 209
    :cond_0
    :goto_2
    :pswitch_1
    return v1

    :cond_1
    move v1, v2

    .line 188
    goto :goto_2

    .line 192
    :pswitch_2
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    const/4 v1, -0x1

    goto :goto_2

    .line 194
    :pswitch_3
    if-ge p1, v4, :cond_2

    shl-int v2, v1, p1

    :cond_2
    move v1, v2

    goto :goto_2

    .line 196
    :pswitch_4
    if-ge p1, v4, :cond_4

    .line 197
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_3

    shl-int/2addr v1, p1

    goto :goto_2

    :cond_3
    shl-int/2addr v1, p1

    neg-int v1, v1

    goto :goto_2

    :cond_4
    move v1, v2

    .line 199
    goto :goto_2

    .restart local v0       #accum:I
    :pswitch_5
    move v1, v0

    .line 207
    goto :goto_2

    .line 209
    :pswitch_6
    mul-int v1, p0, v0

    goto :goto_2

    :cond_5
    move v2, p0

    .line 211
    goto :goto_1

    .line 186
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 205
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static sqrt(ILjava/math/RoundingMode;)I
    .locals 6
    .parameter "x"
    .parameter "mode"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 227
    const-string v4, "x"

    invoke-static {v4, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 228
    invoke-static {p0}, Lcom/google/common/math/IntMath;->sqrtFloor(I)I

    move-result v1

    .line 229
    .local v1, sqrtFloor:I
    sget-object v4, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 249
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 231
    :pswitch_0
    mul-int v4, v1, v1

    if-ne v4, p0, :cond_1

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 247
    .end local v1           #sqrtFloor:I
    :cond_0
    :goto_1
    :pswitch_1
    return v1

    .restart local v1       #sqrtFloor:I
    :cond_1
    move v2, v3

    .line 231
    goto :goto_0

    .line 237
    :pswitch_2
    mul-int v2, v1, v1

    if-eq v2, p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 241
    :pswitch_3
    mul-int v4, v1, v1

    add-int v0, v4, v1

    .line 247
    .local v0, halfSquare:I
    if-gt p0, v0, :cond_2

    move v4, v2

    :goto_2
    if-gez v0, :cond_3

    :goto_3
    or-int/2addr v2, v4

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static sqrtFloor(I)I
    .locals 2
    .parameter "x"

    .prologue
    .line 256
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
