.class public final Lcom/google/common/math/LongMath;
.super Ljava/lang/Object;
.source "LongMath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/LongMath$1;
    }
.end annotation


# static fields
.field static final FLOOR_SQRT_MAX_LONG:J = 0xb504f333L
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:J = -0x4afb0ccc06219b7cL
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final biggestBinomials:[I

.field static final biggestSimpleBinomials:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final factorials:[J

.field static final halfPowersOf10:[J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final maxLog10ForLeadingZeros:[B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final powersOf10:[J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x13

    .line 166
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    .line 172
    new-array v0, v1, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/common/math/LongMath;->powersOf10:[J

    .line 180
    new-array v0, v1, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/math/LongMath;->halfPowersOf10:[J

    .line 601
    const/16 v0, 0x15

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    .line 700
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    .line 709
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    return-void

    .line 166
    nop

    :array_0
    .array-data 0x1
        0x13t
        0x12t
        0x12t
        0x12t
        0x12t
        0x11t
        0x11t
        0x11t
        0x10t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xct
        0xct
        0xct
        0xct
        0xbt
        0xbt
        0xbt
        0xat
        0xat
        0xat
        0x9t
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
    .end array-data

    .line 172
    :array_1
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x86t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x42t 0xft 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x96t 0x98t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xe1t 0xf5t 0x5t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xcat 0x9at 0x3bt 0x0t 0x0t 0x0t 0x0t
        0x0t 0xe4t 0xbt 0x54t 0x2t 0x0t 0x0t 0x0t
        0x0t 0xe8t 0x76t 0x48t 0x17t 0x0t 0x0t 0x0t
        0x0t 0x10t 0xa5t 0xd4t 0xe8t 0x0t 0x0t 0x0t
        0x0t 0xa0t 0x72t 0x4et 0x18t 0x9t 0x0t 0x0t
        0x0t 0x40t 0x7at 0x10t 0xf3t 0x5at 0x0t 0x0t
        0x0t 0x80t 0xc6t 0xa4t 0x7et 0x8dt 0x3t 0x0t
        0x0t 0x0t 0xc1t 0x6ft 0xf2t 0x86t 0x23t 0x0t
        0x0t 0x0t 0x8at 0x5dt 0x78t 0x45t 0x63t 0x1t
        0x0t 0x0t 0x64t 0xa7t 0xb3t 0xb6t 0xe0t 0xdt
    .end array-data

    .line 180
    :array_2
    .array-data 0x8
        0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x3ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x5at 0xct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x86t 0x7bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x43t 0xd3t 0x4t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa5t 0x40t 0x30t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x78t 0x86t 0xe2t 0x1t 0x0t 0x0t 0x0t 0x0t
        0xb6t 0x40t 0xd9t 0x12t 0x0t 0x0t 0x0t 0x0t
        0x1ct 0x87t 0x7ct 0xbct 0x0t 0x0t 0x0t 0x0t
        0x19t 0x47t 0xddt 0x5ct 0x7t 0x0t 0x0t 0x0t
        0x0t 0xc7t 0xa4t 0xa0t 0x49t 0x0t 0x0t 0x0t
        0x8t 0xc6t 0x6ft 0x46t 0xe0t 0x2t 0x0t 0x0t
        0x53t 0xbct 0x5dt 0xc0t 0xc2t 0x1ct 0x0t 0x0t
        0x45t 0x5bt 0xa9t 0x83t 0x9bt 0x1ft 0x1t 0x0t
        0xbbt 0x90t 0x9dt 0x24t 0x13t 0x3ct 0xbt 0x0t
        0x51t 0xa7t 0x27t 0x6et 0xbft 0x58t 0x70t 0x0t
        0x2dt 0x89t 0x8ct 0x4dt 0x7at 0x77t 0x63t 0x4t
        0xc3t 0x5bt 0x7dt 0x7t 0xc7t 0xaat 0xe2t 0x2bt
    .end array-data

    .line 601
    :array_3
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x13t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x9dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x89t 0x5t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x5ft 0x37t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x15t 0x61t 0x2t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xfct 0x8ct 0x1ct 0x0t 0x0t 0x0t 0x0t
        0x0t 0xcct 0x28t 0x73t 0x1t 0x0t 0x0t 0x0t
        0x0t 0x28t 0x3bt 0x4ct 0x14t 0x0t 0x0t 0x0t
        0x0t 0x58t 0x77t 0x77t 0x30t 0x1t 0x0t 0x0t
        0x0t 0x80t 0x75t 0x77t 0x7t 0x13t 0x0t 0x0t
        0x0t 0x80t 0xcdt 0xeet 0x7et 0x43t 0x1t 0x0t
        0x0t 0x0t 0x73t 0xcat 0xect 0xbet 0x16t 0x0t
        0x0t 0x0t 0x89t 0x6t 0x93t 0x2bt 0xb0t 0x1t
        0x0t 0x0t 0xb4t 0x82t 0x7ct 0x67t 0xc3t 0x21t
    .end array-data

    .line 700
    :array_4
    .array-data 0x4
        0xfft 0xfft 0xfft 0x7ft
        0xfft 0xfft 0xfft 0x7ft
        0xfft 0xfft 0xfft 0x7ft
        0xdbt 0x25t 0x3at 0x0t
        0x79t 0xdct 0x1t 0x0t
        0x2ft 0x3ft 0x0t 0x0t
        0xf1t 0x10t 0x0t 0x0t
        0xc5t 0x6t 0x0t 0x0t
        0x77t 0x3t 0x0t 0x0t
        0x16t 0x2t 0x0t 0x0t
        0x69t 0x1t 0x0t 0x0t
        0x9t 0x1t 0x0t 0x0t
        0xcet 0x0t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
    .end array-data

    .line 709
    :array_5
    .array-data 0x4
        0xfft 0xfft 0xfft 0x7ft
        0xfft 0xfft 0xfft 0x7ft
        0xfft 0xfft 0xfft 0x7ft
        0x46t 0x51t 0x28t 0x0t
        0xebt 0x50t 0x1t 0x0t
        0xcct 0x2dt 0x0t 0x0t
        0x92t 0xct 0x0t 0x0t
        0x21t 0x5t 0x0t 0x0t
        0xact 0x2t 0x0t 0x0t
        0xa3t 0x1t 0x0t 0x0t
        0x1ft 0x1t 0x0t 0x0t
        0xd6t 0x0t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0x8bt 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)J
    .locals 18
    .parameter "n"
    .parameter "k"

    .prologue
    .line 622
    const-string v12, "n"

    move/from16 v0, p0

    invoke-static {v12, v0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 623
    const-string v12, "k"

    move/from16 v0, p1

    invoke-static {v12, v0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 624
    move/from16 v0, p1

    move/from16 v1, p0

    if-gt v0, v1, :cond_2

    const/4 v12, 0x1

    :goto_0
    const-string v13, "k (%s) > n (%s)"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 625
    shr-int/lit8 v12, p0, 0x1

    move/from16 v0, p1

    if-le v0, v12, :cond_0

    .line 626
    sub-int p1, p0, p1

    .line 628
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 634
    sget-object v12, Lcom/google/common/math/LongMath;->factorials:[J

    array-length v12, v12

    move/from16 v0, p0

    if-ge v0, v12, :cond_3

    .line 635
    sget-object v12, Lcom/google/common/math/LongMath;->factorials:[J

    aget-wide v12, v12, p0

    sget-object v14, Lcom/google/common/math/LongMath;->factorials:[J

    aget-wide v14, v14, p1

    sget-object v16, Lcom/google/common/math/LongMath;->factorials:[J

    sub-int v17, p0, p1

    aget-wide v16, v16, v17

    mul-long v14, v14, v16

    div-long v2, v12, v14

    .line 676
    :cond_1
    :goto_1
    return-wide v2

    .line 624
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 630
    :pswitch_0
    const-wide/16 v2, 0x1

    goto :goto_1

    .line 632
    :pswitch_1
    move/from16 v0, p0

    int-to-long v2, v0

    goto :goto_1

    .line 636
    :cond_3
    sget-object v12, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    array-length v12, v12

    move/from16 v0, p1

    if-ge v0, v12, :cond_4

    sget-object v12, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    aget v12, v12, p1

    move/from16 v0, p0

    if-le v0, v12, :cond_5

    .line 637
    :cond_4
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_1

    .line 638
    :cond_5
    sget-object v12, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    array-length v12, v12

    move/from16 v0, p1

    if-ge v0, v12, :cond_6

    sget-object v12, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    aget v12, v12, p1

    move/from16 v0, p0

    if-gt v0, v12, :cond_6

    .line 640
    add-int/lit8 v9, p0, -0x1

    .end local p0
    .local v9, n:I
    move/from16 v0, p0

    int-to-long v2, v0

    .line 641
    .local v2, result:J
    const/4 v8, 0x2

    .local v8, i:I
    move/from16 p0, v9

    .end local v9           #n:I
    .restart local p0
    :goto_2
    move/from16 v0, p1

    if-gt v8, v0, :cond_1

    .line 642
    move/from16 v0, p0

    int-to-long v12, v0

    mul-long/2addr v2, v12

    .line 643
    int-to-long v12, v8

    div-long/2addr v2, v12

    .line 641
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 647
    .end local v2           #result:J
    .end local v8           #i:I
    :cond_6
    move/from16 v0, p0

    int-to-long v12, v0

    sget-object v14, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v12, v13, v14}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v10

    .line 649
    .local v10, nBits:I
    const-wide/16 v2, 0x1

    .line 650
    .restart local v2       #result:J
    add-int/lit8 v9, p0, -0x1

    .end local p0
    .restart local v9       #n:I
    move/from16 v0, p0

    int-to-long v4, v0

    .line 651
    .local v4, numerator:J
    const-wide/16 v6, 0x1

    .line 653
    .local v6, denominator:J
    move v11, v10

    .line 661
    .local v11, numeratorBits:I
    const/4 v8, 0x2

    .restart local v8       #i:I
    move/from16 p0, v9

    .end local v9           #n:I
    .restart local p0
    :goto_3
    move/from16 v0, p1

    if-gt v8, v0, :cond_8

    .line 662
    add-int v12, v11, v10

    const/16 v13, 0x3f

    if-ge v12, v13, :cond_7

    .line 664
    move/from16 v0, p0

    int-to-long v12, v0

    mul-long/2addr v4, v12

    .line 665
    int-to-long v12, v8

    mul-long/2addr v6, v12

    .line 666
    add-int/2addr v11, v10

    .line 661
    :goto_4
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_3

    .line 670
    :cond_7
    invoke-static/range {v2 .. v7}, Lcom/google/common/math/LongMath;->multiplyFraction(JJJ)J

    move-result-wide v2

    .line 671
    move/from16 v0, p0

    int-to-long v4, v0

    .line 672
    int-to-long v6, v8

    .line 673
    move v11, v10

    goto :goto_4

    .line 676
    :cond_8
    invoke-static/range {v2 .. v7}, Lcom/google/common/math/LongMath;->multiplyFraction(JJJ)J

    move-result-wide v2

    goto :goto_1

    .line 628
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static checkedAdd(JJ)J
    .locals 9
    .parameter "a"
    .parameter "b"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 490
    add-long v0, p0, p2

    .line 491
    .local v0, result:J
    xor-long v4, p0, p2

    cmp-long v4, v4, v7

    if-gez v4, :cond_0

    move v4, v2

    :goto_0
    xor-long v5, p0, v0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    :goto_1
    or-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 492
    return-wide v0

    :cond_0
    move v4, v3

    .line 491
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static checkedMultiply(JJ)J
    .locals 12
    .parameter "a"
    .parameter "b"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 515
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    xor-long v6, p0, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v6

    add-int/2addr v3, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v6

    add-int/2addr v3, v6

    xor-long v6, p2, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v6

    add-int v0, v3, v6

    .line 527
    .local v0, leadingZeros:I
    const/16 v3, 0x41

    if-le v0, v3, :cond_0

    .line 528
    mul-long v1, p0, p2

    .line 534
    :goto_0
    return-wide v1

    .line 530
    :cond_0
    const/16 v3, 0x40

    if-lt v0, v3, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 531
    cmp-long v3, p0, v10

    if-ltz v3, :cond_4

    move v6, v4

    :goto_2
    const-wide/high16 v7, -0x8000

    cmp-long v3, p2, v7

    if-eqz v3, :cond_5

    move v3, v4

    :goto_3
    or-int/2addr v3, v6

    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 532
    mul-long v1, p0, p2

    .line 533
    .local v1, result:J
    cmp-long v3, p0, v10

    if-eqz v3, :cond_1

    div-long v6, v1, p0

    cmp-long v3, v6, p2

    if-nez v3, :cond_2

    :cond_1
    move v5, v4

    :cond_2
    invoke-static {v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    goto :goto_0

    .end local v1           #result:J
    :cond_3
    move v3, v5

    .line 530
    goto :goto_1

    :cond_4
    move v6, v5

    .line 531
    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_3
.end method

.method public static checkedPow(JI)J
    .locals 12
    .parameter "b"
    .parameter "k"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    const-wide/16 v2, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 545
    const-string v8, "exponent"

    invoke-static {v8, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 546
    const-wide/16 v8, -0x2

    cmp-long v8, p0, v8

    if-ltz v8, :cond_0

    move v9, v6

    :goto_0
    const-wide/16 v10, 0x2

    cmp-long v8, p0, v10

    if-gtz v8, :cond_1

    move v8, v6

    :goto_1
    and-int/2addr v8, v9

    if-eqz v8, :cond_7

    .line 547
    long-to-int v8, p0

    packed-switch v8, :pswitch_data_0

    .line 561
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move v9, v7

    .line 546
    goto :goto_0

    :cond_1
    move v8, v7

    goto :goto_1

    .line 549
    :pswitch_0
    if-nez p2, :cond_3

    .line 570
    :cond_2
    :goto_2
    :pswitch_1
    return-wide v2

    .line 549
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_2

    .line 553
    :pswitch_2
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_2

    move-wide v2, v4

    goto :goto_2

    .line 555
    :pswitch_3
    const/16 v4, 0x3f

    if-ge p2, v4, :cond_4

    move v4, v6

    :goto_3
    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 556
    shl-long/2addr v2, p2

    goto :goto_2

    :cond_4
    move v4, v7

    .line 555
    goto :goto_3

    .line 558
    :pswitch_4
    const/16 v8, 0x40

    if-ge p2, v8, :cond_5

    :goto_4
    invoke-static {v6}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 559
    and-int/lit8 v6, p2, 0x1

    if-nez v6, :cond_6

    shl-long/2addr v2, p2

    goto :goto_2

    :cond_5
    move v6, v7

    .line 558
    goto :goto_4

    .line 559
    :cond_6
    shl-long v2, v4, p2

    goto :goto_2

    .line 564
    :cond_7
    const-wide/16 v0, 0x1

    .line 566
    .local v0, accum:J
    :cond_8
    :goto_5
    packed-switch p2, :pswitch_data_1

    .line 572
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_9

    .line 573
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v0

    .line 575
    :cond_9
    shr-int/lit8 p2, p2, 0x1

    .line 576
    if-lez p2, :cond_8

    .line 577
    const-wide v2, 0xb504f333L

    cmp-long v2, p0, v2

    if-gtz v2, :cond_a

    move v2, v6

    :goto_6
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 578
    mul-long/2addr p0, p0

    goto :goto_5

    :pswitch_5
    move-wide v2, v0

    .line 568
    goto :goto_2

    .line 570
    :pswitch_6
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v2

    goto :goto_2

    :cond_a
    move v2, v7

    .line 577
    goto :goto_6

    .line 547
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 566
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static checkedSubtract(JJ)J
    .locals 9
    .parameter "a"
    .parameter "b"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 502
    sub-long v0, p0, p2

    .line 503
    .local v0, result:J
    xor-long v4, p0, p2

    cmp-long v4, v4, v7

    if-ltz v4, :cond_0

    move v4, v2

    :goto_0
    xor-long v5, p0, v0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    :goto_1
    or-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 504
    return-wide v0

    :cond_0
    move v4, v3

    .line 503
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static divide(JJLjava/math/RoundingMode;)J
    .locals 18
    .parameter "p"
    .parameter "q"
    .parameter "mode"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 333
    invoke-static/range {p4 .. p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    div-long v5, p0, p2

    .line 335
    .local v5, div:J
    mul-long v11, p2, v5

    sub-long v8, p0, v11

    .line 337
    .local v8, rem:J
    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-nez v11, :cond_1

    .line 382
    .end local v5           #div:J
    :cond_0
    :goto_0
    return-wide v5

    .line 348
    .restart local v5       #div:J
    :cond_1
    xor-long v11, p0, p2

    const/16 v13, 0x3f

    shr-long/2addr v11, v13

    long-to-int v11, v11

    or-int/lit8 v10, v11, 0x1

    .line 350
    .local v10, signum:I
    sget-object v11, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual/range {p4 .. p4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 380
    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 352
    :pswitch_0
    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-nez v11, :cond_2

    const/4 v11, 0x1

    :goto_1
    invoke-static {v11}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 355
    :pswitch_1
    const/4 v7, 0x0

    .line 382
    .local v7, increment:Z
    :goto_2
    if-eqz v7, :cond_0

    int-to-long v11, v10

    add-long/2addr v5, v11

    goto :goto_0

    .line 352
    .end local v7           #increment:Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 358
    :pswitch_2
    const/4 v7, 0x1

    .line 359
    .restart local v7       #increment:Z
    goto :goto_2

    .line 361
    .end local v7           #increment:Z
    :pswitch_3
    if-lez v10, :cond_3

    const/4 v7, 0x1

    .line 362
    .restart local v7       #increment:Z
    :goto_3
    goto :goto_2

    .line 361
    .end local v7           #increment:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 364
    :pswitch_4
    if-gez v10, :cond_4

    const/4 v7, 0x1

    .line 365
    .restart local v7       #increment:Z
    :goto_4
    goto :goto_2

    .line 364
    .end local v7           #increment:Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    .line 369
    :pswitch_5
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 370
    .local v1, absRem:J
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    sub-long/2addr v11, v1

    sub-long v3, v1, v11

    .line 373
    .local v3, cmpRemToHalfDivisor:J
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-nez v11, :cond_8

    .line 374
    sget-object v11, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    move-object/from16 v0, p4

    if-ne v0, v11, :cond_5

    const/4 v11, 0x1

    :goto_5
    sget-object v12, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_6

    const/4 v12, 0x1

    move v13, v12

    :goto_6
    const-wide/16 v14, 0x1

    and-long/2addr v14, v5

    const-wide/16 v16, 0x0

    cmp-long v12, v14, v16

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    :goto_7
    and-int/2addr v12, v13

    or-int v7, v11, v12

    .restart local v7       #increment:Z
    goto :goto_2

    .end local v7           #increment:Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    move v13, v12

    goto :goto_6

    :cond_7
    const/4 v12, 0x0

    goto :goto_7

    .line 376
    :cond_8
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-lez v11, :cond_9

    const/4 v7, 0x1

    .line 378
    .restart local v7       #increment:Z
    :goto_8
    goto :goto_2

    .line 376
    .end local v7           #increment:Z
    :cond_9
    const/4 v7, 0x0

    goto :goto_8

    .line 350
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

.method public static factorial(I)J
    .locals 2
    .parameter "n"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 597
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 598
    sget-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    aget-wide v0, v0, p0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method static fitsInInt(J)Z
    .locals 2
    .parameter "x"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 718
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static gcd(JJ)J
    .locals 9
    .parameter "a"
    .parameter "b"

    .prologue
    const-wide/16 v7, 0x0

    .line 444
    const-string v6, "a"

    invoke-static {v6, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 445
    const-string v6, "b"

    invoke-static {v6, p2, p3}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 446
    cmp-long v6, p0, v7

    if-nez v6, :cond_1

    move-wide p0, p2

    .line 480
    .end local p0
    :cond_0
    :goto_0
    return-wide p0

    .line 450
    .restart local p0
    :cond_1
    cmp-long v6, p2, v7

    if-eqz v6, :cond_0

    .line 457
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    .line 458
    .local v0, aTwos:I
    shr-long/2addr p0, v0

    .line 459
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    .line 460
    .local v1, bTwos:I
    shr-long/2addr p2, v1

    .line 461
    :goto_1
    cmp-long v6, p0, p2

    if-eqz v6, :cond_2

    .line 469
    sub-long v2, p0, p2

    .line 471
    .local v2, delta:J
    const/16 v6, 0x3f

    shr-long v6, v2, v6

    and-long v4, v2, v6

    .line 474
    .local v4, minDeltaOrZero:J
    sub-long v6, v2, v4

    sub-long p0, v6, v4

    .line 477
    add-long/2addr p2, v4

    .line 478
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v6

    shr-long/2addr p0, v6

    .line 479
    goto :goto_1

    .line 480
    .end local v2           #delta:J
    .end local v4           #minDeltaOrZero:J
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    shl-long/2addr p0, v6

    goto :goto_0
.end method

.method public static isPowerOfTwo(J)Z
    .locals 7
    .parameter "x"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    cmp-long v2, p0, v5

    if-lez v2, :cond_0

    move v2, v0

    :goto_0
    const-wide/16 v3, 0x1

    sub-long v3, p0, v3

    and-long/2addr v3, p0

    cmp-long v3, v3, v5

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

.method public static log10(JLjava/math/RoundingMode;)I
    .locals 5
    .parameter "x"
    .parameter "mode"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 118
    const-string v3, "x"

    invoke-static {v3, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 119
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->fitsInInt(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    long-to-int v3, p0

    invoke-static {v3, p2}, Lcom/google/common/math/IntMath;->log10(ILjava/math/RoundingMode;)I

    move-result v2

    .line 138
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 122
    :cond_1
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->log10Floor(J)I

    move-result v2

    .line 123
    .local v2, logFloor:I
    sget-object v3, Lcom/google/common/math/LongMath;->powersOf10:[J

    aget-wide v0, v3, v2

    .line 124
    .local v0, floorPow:J
    sget-object v3, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 140
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 126
    :pswitch_1
    cmp-long v3, p0, v0

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 133
    :pswitch_2
    cmp-long v3, p0, v0

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :pswitch_3
    sget-object v3, Lcom/google/common/math/LongMath;->halfPowersOf10:[J

    aget-wide v3, v3, v2

    cmp-long v3, p0, v3

    if-lez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method static log10Floor(J)I
    .locals 6
    .parameter "x"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 153
    sget-object v3, Lcom/google/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    aget-byte v2, v3, v4

    .line 156
    .local v2, y:I
    sget-object v3, Lcom/google/common/math/LongMath;->powersOf10:[J

    aget-wide v3, v3, v2

    sub-long v3, p0, v3

    const/16 v5, 0x3f

    ushr-long v0, v3, v5

    .line 161
    .local v0, sgn:J
    long-to-int v3, v0

    sub-int v3, v2, v3

    return v3
.end method

.method public static log2(JLjava/math/RoundingMode;)I
    .locals 6
    .parameter "x"
    .parameter "mode"

    .prologue
    .line 75
    const-string v4, "x"

    invoke-static {v4, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 76
    sget-object v4, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 99
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "impossible"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 78
    :pswitch_0
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 82
    :pswitch_1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    rsub-int/lit8 v3, v4, 0x3f

    .line 96
    :cond_0
    :goto_0
    return v3

    .line 86
    :pswitch_2
    const-wide/16 v4, 0x1

    sub-long v4, p0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    rsub-int/lit8 v3, v4, 0x40

    goto :goto_0

    .line 92
    :pswitch_3
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    .line 93
    .local v2, leadingZeros:I
    const-wide v4, -0x4afb0ccc06219b7cL

    ushr-long v0, v4, v2

    .line 95
    .local v0, cmp:J
    rsub-int/lit8 v3, v2, 0x3f

    .line 96
    .local v3, logFloor:I
    cmp-long v4, p0, v0

    if-lez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
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

.method public static mean(JJ)J
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 731
    and-long v0, p0, p2

    xor-long v2, p0, p2

    const/4 v4, 0x1

    shr-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static mod(JI)I
    .locals 2
    .parameter "x"
    .parameter "m"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 404
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/math/LongMath;->mod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static mod(JJ)J
    .locals 5
    .parameter "x"
    .parameter "m"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 425
    cmp-long v2, p2, v3

    if-gtz v2, :cond_0

    .line 426
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Modulus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must be > 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 428
    :cond_0
    rem-long v0, p0, p2

    .line 429
    .local v0, result:J
    cmp-long v2, v0, v3

    if-ltz v2, :cond_1

    .end local v0           #result:J
    :goto_0
    return-wide v0

    .restart local v0       #result:J
    :cond_1
    add-long/2addr v0, p2

    goto :goto_0
.end method

.method static multiplyFraction(JJJ)J
    .locals 4
    .parameter "x"
    .parameter "numerator"
    .parameter "denominator"

    .prologue
    .line 685
    const-wide/16 v2, 0x1

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    .line 686
    div-long v2, p2, p4

    .line 693
    :goto_0
    return-wide v2

    .line 688
    :cond_0
    invoke-static {p0, p1, p4, p5}, Lcom/google/common/math/LongMath;->gcd(JJ)J

    move-result-wide v0

    .line 689
    .local v0, commonDivisor:J
    div-long/2addr p0, v0

    .line 690
    div-long/2addr p4, v0

    .line 693
    div-long v2, p2, p4

    mul-long/2addr v2, p0

    goto :goto_0
.end method

.method public static pow(JI)J
    .locals 9
    .parameter "b"
    .parameter "k"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const/16 v8, 0x40

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x1

    .line 194
    const-string v6, "exponent"

    invoke-static {v6, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 195
    const-wide/16 v6, -0x2

    cmp-long v6, v6, p0

    if-gtz v6, :cond_5

    const-wide/16 v6, 0x2

    cmp-long v6, p0, v6

    if-gtz v6, :cond_5

    .line 196
    long-to-int v6, p0

    packed-switch v6, :pswitch_data_0

    .line 212
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 198
    :pswitch_0
    if-nez p2, :cond_1

    .line 220
    :cond_0
    :goto_0
    :pswitch_1
    return-wide v2

    :cond_1
    move-wide v2, v4

    .line 198
    goto :goto_0

    .line 202
    :pswitch_2
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_0

    const-wide/16 v2, -0x1

    goto :goto_0

    .line 204
    :pswitch_3
    if-ge p2, v8, :cond_2

    shl-long v4, v2, p2

    :cond_2
    move-wide v2, v4

    goto :goto_0

    .line 206
    :pswitch_4
    if-ge p2, v8, :cond_4

    .line 207
    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_3

    shl-long/2addr v2, p2

    goto :goto_0

    :cond_3
    shl-long/2addr v2, p2

    neg-long v2, v2

    goto :goto_0

    :cond_4
    move-wide v2, v4

    .line 209
    goto :goto_0

    .line 215
    :cond_5
    const-wide/16 v0, 0x1

    .line 216
    .local v0, accum:J
    :goto_1
    packed-switch p2, :pswitch_data_1

    .line 222
    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_6

    move-wide v4, v2

    :goto_2
    mul-long/2addr v0, v4

    .line 223
    mul-long/2addr p0, p0

    .line 215
    shr-int/lit8 p2, p2, 0x1

    goto :goto_1

    :pswitch_5
    move-wide v2, v0

    .line 218
    goto :goto_0

    .line 220
    :pswitch_6
    mul-long v2, v0, p0

    goto :goto_0

    :cond_6
    move-wide v4, p0

    .line 222
    goto :goto_2

    .line 196
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 216
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static sqrt(JLjava/math/RoundingMode;)J
    .locals 11
    .parameter "x"
    .parameter "mode"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v9, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 238
    const-string v6, "x"

    invoke-static {v6, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 239
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->fitsInInt(J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 240
    long-to-int v4, p0

    invoke-static {v4, p2}, Lcom/google/common/math/IntMath;->sqrt(ILjava/math/RoundingMode;)I

    move-result v4

    int-to-long v2, v4

    .line 261
    :cond_0
    :goto_0
    :pswitch_0
    return-wide v2

    .line 242
    :cond_1
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->sqrtFloor(J)J

    move-result-wide v2

    .line 243
    .local v2, sqrtFloor:J
    sget-object v6, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 263
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 245
    :pswitch_1
    mul-long v6, v2, v2

    cmp-long v6, v6, p0

    if-nez v6, :cond_2

    :goto_1
    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 251
    :pswitch_2
    mul-long v4, v2, v2

    cmp-long v4, v4, p0

    if-eqz v4, :cond_0

    add-long/2addr v2, v9

    goto :goto_0

    .line 255
    :pswitch_3
    mul-long v6, v2, v2

    add-long v0, v6, v2

    .line 261
    .local v0, halfSquare:J
    cmp-long v6, v0, p0

    if-ltz v6, :cond_3

    move v6, v4

    :goto_2
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-gez v7, :cond_4

    :goto_3
    or-int/2addr v4, v6

    if-nez v4, :cond_0

    add-long/2addr v2, v9

    goto :goto_0

    :cond_3
    move v6, v5

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static sqrtFloor(J)J
    .locals 10
    .parameter "x"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v8, 0x1

    .line 269
    long-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-long v0, v4

    .line 313
    .local v0, guess:J
    mul-long v2, v0, v0

    .line 314
    .local v2, guessSquared:J
    sub-long v4, p0, v2

    add-long v6, v0, v0

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 316
    add-long/2addr v0, v8

    .line 320
    :cond_0
    :goto_0
    return-wide v0

    .line 317
    :cond_1
    cmp-long v4, p0, v2

    if-gez v4, :cond_0

    .line 318
    sub-long/2addr v0, v8

    goto :goto_0
.end method
