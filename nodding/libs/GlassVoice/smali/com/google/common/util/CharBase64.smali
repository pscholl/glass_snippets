.class public final Lcom/google/common/util/CharBase64;
.super Ljava/lang/Object;
.source "CharBase64.java"


# annotations
.annotation build Lcom/google/common/util/GwtCompatible;
.end annotation


# static fields
.field public static final DECODE:Z = false

.field public static final ENCODE:Z = true

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field private static final NEW_LINE:C = '\n'

.field private static final PADDING_CHAR:C = '='

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final alphabet:[C

.field private static final decodabet:[B

.field private static final websafeAlphabet:[C

.field private static final websafeDecodabet:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 63
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/common/util/CharBase64;->alphabet:[C

    .line 68
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/common/util/CharBase64;->websafeAlphabet:[C

    .line 76
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/util/CharBase64;->decodabet:[B

    .line 110
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/common/util/CharBase64;->websafeDecodabet:[B

    return-void

    .line 76
    nop

    :array_0
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data

    .line 110
    :array_1
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/util/Base64DecoderException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 432
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 433
    .local v0, chars:[C
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/common/util/CharBase64;->decode([CII)[B

    move-result-object v1

    return-object v1
.end method

.method public static decode([C)[B
    .locals 2
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/util/Base64DecoderException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 466
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/util/CharBase64;->decode([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([CII)[B
    .locals 1
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/util/Base64DecoderException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 505
    sget-object v0, Lcom/google/common/util/CharBase64;->decodabet:[B

    invoke-static {p0, p1, p2, v0}, Lcom/google/common/util/CharBase64;->decode([CII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([CII[B)[B
    .locals 17
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "decodabet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/util/Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 541
    mul-int/lit8 v14, p2, 0x3

    div-int/lit8 v6, v14, 0x4

    .line 542
    .local v6, len34:I
    add-int/lit8 v14, v6, 0x2

    new-array v8, v14, [B

    .line 543
    .local v8, outBuff:[B
    const/4 v9, 0x0

    .line 545
    .local v9, outBuffPosn:I
    const/4 v14, 0x4

    new-array v1, v14, [C

    .line 546
    .local v1, c4:[C
    const/4 v2, 0x0

    .line 547
    .local v2, c4Posn:I
    const/4 v4, 0x0

    .line 548
    .local v4, i:I
    const/4 v11, 0x0

    .line 549
    .local v11, sbiCrop:C
    const/4 v12, 0x0

    .line 550
    .local v12, sbiDecode:B
    const/4 v10, 0x0

    .line 551
    .local v10, paddingCharSeen:Z
    const/4 v4, 0x0

    move v3, v2

    .end local v2           #c4Posn:I
    .local v3, c4Posn:I
    :goto_0
    move/from16 v0, p2

    if-ge v4, v0, :cond_7

    .line 552
    add-int v14, v4, p1

    aget-char v13, p0, v14

    .line 553
    .local v13, sbiRaw:C
    and-int/lit8 v14, v13, 0x7f

    int-to-char v11, v14

    .line 554
    aget-byte v12, p3, v11

    .line 556
    if-ne v11, v13, :cond_0

    const/4 v14, -0x5

    if-ge v12, v14, :cond_0

    .line 558
    new-instance v14, Lcom/google/common/util/Base64DecoderException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad Base64 input character at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int v16, v4, p1

    aget-char v16, p0, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "(decimal)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/google/common/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 562
    :cond_0
    const/4 v14, -0x1

    if-lt v12, v14, :cond_a

    .line 564
    const/16 v14, 0x3d

    if-ne v11, v14, :cond_5

    .line 565
    if-eqz v10, :cond_2

    move v2, v3

    .line 551
    .end local v3           #c4Posn:I
    .restart local v2       #c4Posn:I
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #c4Posn:I
    .restart local v3       #c4Posn:I
    goto :goto_0

    .line 570
    :cond_2
    const/4 v14, 0x2

    if-ge v4, v14, :cond_3

    .line 571
    new-instance v14, Lcom/google/common/util/Base64DecoderException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid padding char found in position "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/google/common/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 574
    :cond_3
    const/4 v10, 0x1

    .line 575
    add-int/lit8 v14, p2, -0x1

    add-int v14, v14, p1

    aget-char v14, p0, v14

    and-int/lit8 v14, v14, 0x7f

    int-to-char v5, v14

    .line 576
    .local v5, lastChar:C
    const/16 v14, 0x3d

    if-eq v5, v14, :cond_4

    const/16 v14, 0xa

    if-eq v5, v14, :cond_4

    .line 577
    new-instance v14, Lcom/google/common/util/Base64DecoderException;

    const-string v15, "encoded value has invalid trailing char"

    invoke-direct {v14, v15}, Lcom/google/common/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_4
    move v2, v3

    .line 581
    .end local v3           #c4Posn:I
    .restart local v2       #c4Posn:I
    goto :goto_1

    .end local v2           #c4Posn:I
    .end local v5           #lastChar:C
    .restart local v3       #c4Posn:I
    :cond_5
    if-eqz v10, :cond_6

    .line 582
    new-instance v14, Lcom/google/common/util/Base64DecoderException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Data found after trailing padding char at index "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/google/common/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 586
    :cond_6
    add-int/lit8 v2, v3, 0x1

    .end local v3           #c4Posn:I
    .restart local v2       #c4Posn:I
    aput-char v11, v1, v3

    .line 587
    const/4 v14, 0x4

    if-ne v2, v14, :cond_1

    .line 588
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-static {v1, v14, v8, v9, v0}, Lcom/google/common/util/CharBase64;->decode4to3([CI[BI[B)I

    move-result v14

    add-int/2addr v9, v14

    .line 590
    const/4 v2, 0x0

    goto :goto_1

    .line 602
    .end local v2           #c4Posn:I
    .end local v13           #sbiRaw:C
    .restart local v3       #c4Posn:I
    :cond_7
    if-eqz v3, :cond_9

    .line 603
    const/4 v14, 0x1

    if-ne v3, v14, :cond_8

    .line 604
    new-instance v14, Lcom/google/common/util/Base64DecoderException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "single trailing character at offset "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v16, p2, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/google/common/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 607
    :cond_8
    const/16 v14, 0x3d

    aput-char v14, v1, v3

    .line 608
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-static {v1, v14, v8, v9, v0}, Lcom/google/common/util/CharBase64;->decode4to3([CI[BI[B)I

    move-result v14

    add-int/2addr v9, v14

    .line 611
    :cond_9
    new-array v7, v9, [B

    .line 612
    .local v7, out:[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v8, v14, v7, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 613
    return-object v7

    .end local v7           #out:[B
    .restart local v13       #sbiRaw:C
    :cond_a
    move v2, v3

    .end local v3           #c4Posn:I
    .restart local v2       #c4Posn:I
    goto/16 :goto_1
.end method

.method private static decode4to3([CI[BI[B)I
    .locals 3
    .parameter "source"
    .parameter "srcOffset"
    .parameter "destination"
    .parameter "destOffset"
    .parameter "decodabet"

    .prologue
    const/16 v2, 0x3d

    .line 388
    add-int/lit8 v1, p1, 0x2

    aget-char v1, p0, v1

    if-ne v1, v2, :cond_0

    .line 389
    aget-char v1, p0, p1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, p1, 0x1

    aget-char v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0xc

    or-int v0, v1, v2

    .line 393
    .local v0, outBuff:I
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 394
    const/4 v1, 0x1

    .line 416
    :goto_0
    return v1

    .line 395
    .end local v0           #outBuff:I
    :cond_0
    add-int/lit8 v1, p1, 0x3

    aget-char v1, p0, v1

    if-ne v1, v2, :cond_1

    .line 397
    aget-char v1, p0, p1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, p1, 0x1

    aget-char v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-char v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x12

    or-int v0, v1, v2

    .line 402
    .restart local v0       #outBuff:I
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 403
    add-int/lit8 v1, p3, 0x1

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 404
    const/4 v1, 0x2

    goto :goto_0

    .line 407
    .end local v0           #outBuff:I
    :cond_1
    aget-char v1, p0, p1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, p1, 0x1

    aget-char v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-char v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x12

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-char v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    or-int v0, v1, v2

    .line 413
    .restart local v0       #outBuff:I
    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 414
    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 415
    add-int/lit8 v1, p3, 0x2

    int-to-byte v2, v0

    aput-byte v2, p2, v1

    .line 416
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public static decodeWebSafe(Ljava/lang/String;)[B
    .locals 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/util/Base64DecoderException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 448
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 449
    .local v0, chars:[C
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/common/util/CharBase64;->decodeWebSafe([CII)[B

    move-result-object v1

    return-object v1
.end method

.method public static decodeWebSafe([C)[B
    .locals 2
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/util/Base64DecoderException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 485
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/util/CharBase64;->decodeWebSafe([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeWebSafe([CII)[B
    .locals 1
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/util/Base64DecoderException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 526
    sget-object v0, Lcom/google/common/util/CharBase64;->websafeDecodabet:[B

    invoke-static {p0, p1, p2, v0}, Lcom/google/common/util/CharBase64;->decode([CII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 4
    .parameter "source"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x0

    array-length v1, p0

    sget-object v2, Lcom/google/common/util/CharBase64;->alphabet:[C

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/common/util/CharBase64;->encode([BII[CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII[CZ)Ljava/lang/String;
    .locals 4
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "alphabet"
    .parameter "doPadding"

    .prologue
    .line 285
    const v2, 0x7fffffff

    invoke-static {p0, p1, p2, p3, v2}, Lcom/google/common/util/CharBase64;->encode([BII[CI)[C

    move-result-object v0

    .line 286
    .local v0, outBuff:[C
    array-length v1, v0

    .line 290
    .local v1, outLen:I
    :goto_0
    if-nez p4, :cond_0

    if-lez v1, :cond_0

    .line 291
    add-int/lit8 v2, v1, -0x1

    aget-char v2, v0, v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1

    .line 297
    :cond_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 294
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static encode([BII[CI)[C
    .locals 13
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "alphabet"
    .parameter "maxLineLength"

    .prologue
    .line 312
    add-int/lit8 v1, p2, 0x2

    div-int/lit8 v11, v1, 0x3

    .line 313
    .local v11, lenDiv3:I
    mul-int/lit8 v10, v11, 0x4

    .line 314
    .local v10, len43:I
    div-int v1, v10, p4

    add-int/2addr v1, v10

    new-array v4, v1, [C

    .line 317
    .local v4, outBuff:[C
    const/4 v7, 0x0

    .line 318
    .local v7, d:I
    const/4 v5, 0x0

    .line 319
    .local v5, e:I
    add-int/lit8 v9, p2, -0x2

    .line 320
    .local v9, len2:I
    const/4 v12, 0x0

    .line 321
    .local v12, lineLength:I
    :goto_0
    if-ge v7, v9, :cond_1

    .line 326
    add-int v1, v7, p1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v7, 0x1

    add-int/2addr v2, p1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v7, 0x2

    add-int/2addr v2, p1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    or-int v8, v1, v2

    .line 330
    .local v8, inBuff:I
    ushr-int/lit8 v1, v8, 0x12

    aget-char v1, p3, v1

    aput-char v1, v4, v5

    .line 331
    add-int/lit8 v1, v5, 0x1

    ushr-int/lit8 v2, v8, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, p3, v2

    aput-char v2, v4, v1

    .line 332
    add-int/lit8 v1, v5, 0x2

    ushr-int/lit8 v2, v8, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, p3, v2

    aput-char v2, v4, v1

    .line 333
    add-int/lit8 v1, v5, 0x3

    and-int/lit8 v2, v8, 0x3f

    aget-char v2, p3, v2

    aput-char v2, v4, v1

    .line 335
    add-int/lit8 v12, v12, 0x4

    .line 336
    move/from16 v0, p4

    if-ne v12, v0, :cond_0

    .line 337
    add-int/lit8 v1, v5, 0x4

    const/16 v2, 0xa

    aput-char v2, v4, v1

    .line 338
    add-int/lit8 v5, v5, 0x1

    .line 339
    const/4 v12, 0x0

    .line 321
    :cond_0
    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    .line 343
    .end local v8           #inBuff:I
    :cond_1
    if-ge v7, p2, :cond_3

    .line 344
    add-int v2, v7, p1

    sub-int v3, p2, v7

    move-object v1, p0

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/google/common/util/CharBase64;->encode3to4([BII[CI[C)[C

    .line 346
    add-int/lit8 v12, v12, 0x4

    .line 347
    move/from16 v0, p4

    if-ne v12, v0, :cond_2

    .line 349
    add-int/lit8 v1, v5, 0x4

    const/16 v2, 0xa

    aput-char v2, v4, v1

    .line 350
    add-int/lit8 v5, v5, 0x1

    .line 352
    :cond_2
    add-int/lit8 v5, v5, 0x4

    .line 356
    :cond_3
    return-object v4
.end method

.method private static encode3to4([BII[CI[C)[C
    .locals 5
    .parameter "source"
    .parameter "srcOffset"
    .parameter "numSigBytes"
    .parameter "destination"
    .parameter "destOffset"
    .parameter "alphabet"

    .prologue
    const/16 v4, 0x3d

    const/4 v1, 0x0

    .line 216
    if-lez p2, :cond_1

    aget-byte v2, p0, p1

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x8

    move v3, v2

    :goto_0
    const/4 v2, 0x1

    if-le p2, v2, :cond_2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x10

    :goto_1
    or-int/2addr v2, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_0

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    :cond_0
    or-int v0, v2, v1

    .line 221
    .local v0, inBuff:I
    packed-switch p2, :pswitch_data_0

    .line 241
    :goto_2
    return-object p3

    .end local v0           #inBuff:I
    :cond_1
    move v3, v1

    .line 216
    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    .line 223
    .restart local v0       #inBuff:I
    :pswitch_0
    ushr-int/lit8 v1, v0, 0x12

    aget-char v1, p5, v1

    aput-char v1, p3, p4

    .line 224
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, p5, v2

    aput-char v2, p3, v1

    .line 225
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, p5, v2

    aput-char v2, p3, v1

    .line 226
    add-int/lit8 v1, p4, 0x3

    and-int/lit8 v2, v0, 0x3f

    aget-char v2, p5, v2

    aput-char v2, p3, v1

    goto :goto_2

    .line 229
    :pswitch_1
    ushr-int/lit8 v1, v0, 0x12

    aget-char v1, p5, v1

    aput-char v1, p3, p4

    .line 230
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, p5, v2

    aput-char v2, p3, v1

    .line 231
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, p5, v2

    aput-char v2, p3, v1

    .line 232
    add-int/lit8 v1, p4, 0x3

    aput-char v4, p3, v1

    goto :goto_2

    .line 235
    :pswitch_2
    ushr-int/lit8 v1, v0, 0x12

    aget-char v1, p5, v1

    aput-char v1, p3, p4

    .line 236
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, p5, v2

    aput-char v2, p3, v1

    .line 237
    add-int/lit8 v1, p4, 0x2

    aput-char v4, p3, v1

    .line 238
    add-int/lit8 v1, p4, 0x3

    aput-char v4, p3, v1

    goto :goto_2

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static encodeWebSafe([BZ)Ljava/lang/String;
    .locals 3
    .parameter "source"
    .parameter "doPadding"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 270
    const/4 v0, 0x0

    array-length v1, p0

    sget-object v2, Lcom/google/common/util/CharBase64;->websafeAlphabet:[C

    invoke-static {p0, v0, v1, v2, p1}, Lcom/google/common/util/CharBase64;->encode([BII[CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getAlphabet()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    sget-object v1, Lcom/google/common/util/CharBase64;->alphabet:[C

    array-length v1, v1

    new-array v0, v1, [C

    .line 164
    .local v0, clone:[C
    sget-object v1, Lcom/google/common/util/CharBase64;->alphabet:[C

    sget-object v2, Lcom/google/common/util/CharBase64;->alphabet:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    return-object v0
.end method

.method public static final getWebSafeAlphabet()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 175
    sget-object v1, Lcom/google/common/util/CharBase64;->websafeAlphabet:[C

    array-length v1, v1

    new-array v0, v1, [C

    .line 176
    .local v0, clone:[C
    sget-object v1, Lcom/google/common/util/CharBase64;->websafeAlphabet:[C

    sget-object v2, Lcom/google/common/util/CharBase64;->websafeAlphabet:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    return-object v0
.end method
