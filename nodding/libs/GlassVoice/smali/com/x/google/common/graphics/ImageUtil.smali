.class public Lcom/x/google/common/graphics/ImageUtil;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final HIGH_QUALITY:I = 0x1

.field public static final PROCESS_ALPHA:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyImage(Lcom/x/google/common/graphics/GoogleImage;)Lcom/x/google/common/graphics/GoogleImage;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getImageFactory()Lcom/x/google/common/graphics/ImageFactory;

    move-result-object v0

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleImage;->getWidth()I

    move-result v1

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleImage;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/x/google/common/graphics/ImageFactory;->createImage(II)Lcom/x/google/common/graphics/GoogleImage;

    move-result-object v0

    invoke-interface {v0}, Lcom/x/google/common/graphics/GoogleImage;->getGraphics()Lcom/x/google/common/graphics/GoogleGraphics;

    move-result-object v1

    invoke-interface {v1, p0, v3, v3}, Lcom/x/google/common/graphics/GoogleGraphics;->drawImage(Lcom/x/google/common/graphics/GoogleImage;II)V

    return-object v0
.end method

.method public static copyImage(Ljava/lang/String;)Lcom/x/google/common/graphics/GoogleImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getImageFactory()Lcom/x/google/common/graphics/ImageFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/x/google/common/graphics/ImageFactory;->createImage(Ljava/lang/String;)Lcom/x/google/common/graphics/GoogleImage;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/common/graphics/ImageUtil;->copyImage(Lcom/x/google/common/graphics/GoogleImage;)Lcom/x/google/common/graphics/GoogleImage;

    move-result-object v0

    return-object v0
.end method

.method public static createPartialImage(Lcom/x/google/common/graphics/GoogleImage;IIII)Lcom/x/google/common/graphics/GoogleImage;
    .locals 4

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getImageFactory()Lcom/x/google/common/graphics/ImageFactory;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/x/google/common/graphics/ImageFactory;->createImage(II)Lcom/x/google/common/graphics/GoogleImage;

    move-result-object v0

    invoke-interface {v0}, Lcom/x/google/common/graphics/GoogleImage;->getGraphics()Lcom/x/google/common/graphics/GoogleGraphics;

    move-result-object v1

    neg-int v2, p1

    neg-int v3, p2

    invoke-interface {v1, p0, v2, v3}, Lcom/x/google/common/graphics/GoogleGraphics;->drawImage(Lcom/x/google/common/graphics/GoogleImage;II)V

    return-object v0
.end method

.method public static createScaledImage(Lcom/x/google/common/graphics/GoogleImage;IIIIIII)Lcom/x/google/common/graphics/GoogleImage;
    .locals 15

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleImage;->getHeight()I

    move-result v2

    move/from16 v0, p4

    if-ne v0, v2, :cond_1

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleImage;->getWidth()I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    mul-int/lit8 v2, p5, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, p5, 0x2

    move/from16 v0, p4

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    invoke-static {p0}, Lcom/x/google/common/graphics/ImageUtil;->quarterImage(Lcom/x/google/common/graphics/GoogleImage;)Lcom/x/google/common/graphics/GoogleImage;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    mul-int/lit8 v2, p3, 0x2

    move/from16 v0, p5

    if-ne v2, v0, :cond_1

    mul-int/lit8 v2, p4, 0x2

    move/from16 v0, p6

    if-ne v2, v0, :cond_1

    if-nez p7, :cond_1

    invoke-static {p0}, Lcom/x/google/common/graphics/ImageUtil;->quadrupleImage(Lcom/x/google/common/graphics/GoogleImage;)Lcom/x/google/common/graphics/GoogleImage;

    move-result-object v2

    goto :goto_0

    :cond_1
    mul-int v2, p5, p6

    new-array v10, v2, [I

    mul-int v2, p3, p4

    new-array v3, v2, [I

    const/4 v4, 0x0

    move-object v2, p0

    move/from16 v5, p3

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-interface/range {v2 .. v9}, Lcom/x/google/common/graphics/GoogleImage;->getRGB([IIIIIII)V

    const/4 v7, 0x0

    shl-int/lit8 v2, p3, 0x10

    div-int v8, v2, p5

    shl-int/lit8 v2, p4, 0x10

    div-int v14, v2, p6

    const/4 v2, 0x0

    :goto_1
    move/from16 v0, p6

    if-ge v2, v0, :cond_2

    const/4 v6, 0x0

    const/4 v9, 0x0

    mul-int v11, v2, p5

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v12, p5

    move/from16 v13, p7

    invoke-static/range {v3 .. v13}, Lcom/x/google/common/graphics/ImageUtil;->transformScanline([IIIIIII[IIII)V

    add-int/2addr v7, v14

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/x/google/common/Config;->getImageFactory()Lcom/x/google/common/graphics/ImageFactory;

    move-result-object v3

    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-interface {v3, v10, v0, v1, v2}, Lcom/x/google/common/graphics/ImageFactory;->createRGBImage([IIIZ)Lcom/x/google/common/graphics/GoogleImage;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static createSquareImage(Lcom/x/google/common/graphics/GoogleImage;I)Lcom/x/google/common/graphics/GoogleImage;
    .locals 3

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleImage;->getWidth()I

    move-result v0

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleImage;->getHeight()I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v1, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ne v0, v1, :cond_1

    invoke-interface {p0, p1, p1}, Lcom/x/google/common/graphics/GoogleImage;->createScaledImage(II)Lcom/x/google/common/graphics/GoogleImage;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    int-to-float v1, v1

    int-to-float v2, p1

    int-to-float v0, v0

    div-float v0, v2, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    move v1, p1

    :goto_1
    invoke-interface {p0, v1, v0}, Lcom/x/google/common/graphics/GoogleImage;->createScaledImage(II)Lcom/x/google/common/graphics/GoogleImage;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/x/google/common/graphics/ImageUtil;->padImageToSquare(Lcom/x/google/common/graphics/GoogleImage;I)Lcom/x/google/common/graphics/GoogleImage;

    move-result-object p0

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    int-to-float v2, p1

    int-to-float v1, v1

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    move v1, v0

    move v0, p1

    goto :goto_1
.end method

.method public static drawScaledByTwoImage(Lcom/x/google/common/graphics/GoogleImage;Lcom/x/google/common/graphics/GoogleGraphics;IIIIIIII)Z
    .locals 11

    mul-int/lit8 v1, p8, 0x2

    if-eq p4, v1, :cond_0

    mul-int/lit8 v1, p9, 0x2

    move/from16 v0, p5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    mul-int v1, p8, p9

    new-array v2, v1, [I

    mul-int v1, p4, p5

    new-array v9, v1, [I

    const/4 v3, 0x0

    move-object v1, p0

    move/from16 v4, p8

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-interface/range {v1 .. v8}, Lcom/x/google/common/graphics/GoogleImage;->getRGB([IIIIIII)V

    const/4 v1, 0x0

    move v6, v1

    :goto_1
    move/from16 v0, p9

    if-ge v6, v0, :cond_2

    mul-int v4, v6, p8

    mul-int v1, v6, p4

    mul-int/lit8 v7, v1, 0x2

    aget v3, v2, v4

    const/4 v1, 0x0

    :goto_2
    move/from16 v0, p8

    if-ge v1, v0, :cond_1

    add-int/lit8 v5, v4, 0x1

    aget v4, v2, v4

    xor-int v8, v4, v3

    const v10, -0x10102

    and-int/2addr v8, v10

    shr-int/lit8 v8, v8, 0x1

    and-int/2addr v3, v4

    add-int/2addr v3, v8

    mul-int/lit8 v8, v1, 0x2

    add-int/2addr v8, v7

    aput v3, v9, v8

    add-int/lit8 v10, v8, 0x1

    aput v4, v9, v10

    add-int/2addr v8, p4

    aput v3, v9, v8

    add-int/lit8 v3, v8, 0x1

    aput v4, v9, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    move v4, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/x/google/common/Config;->getImageFactory()Lcom/x/google/common/graphics/ImageFactory;

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v0, p5

    invoke-interface {v1, v9, p4, v0, v2}, Lcom/x/google/common/graphics/ImageFactory;->createRGBImage([IIIZ)Lcom/x/google/common/graphics/GoogleImage;

    move-result-object v1

    invoke-interface {p1, v1, p2, p3}, Lcom/x/google/common/graphics/GoogleGraphics;->drawImage(Lcom/x/google/common/graphics/GoogleImage;II)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method static getColor([IIIII)I
    .locals 1

    const/4 v0, 0x0

    if-gez p3, :cond_2

    move p3, v0

    :cond_0
    :goto_0
    if-gez p4, :cond_3

    move p4, v0

    :cond_1
    :goto_1
    mul-int v0, p4, p1

    add-int/2addr v0, p3

    aget v0, p0, v0

    return v0

    :cond_2
    if-lt p3, p1, :cond_0

    add-int/lit8 p3, p1, -0x1

    goto :goto_0

    :cond_3
    if-lt p4, p2, :cond_1

    add-int/lit8 p4, p2, -0x1

    goto :goto_1
.end method

.method public static mixColors(III)I
    .locals 4

    const v2, 0xff00ff

    const v3, 0xff00

    rsub-int v0, p2, 0x100

    and-int v1, p0, v2

    mul-int/2addr v1, v0

    and-int/2addr v2, p1

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    const v2, -0xff0100

    and-int/2addr v1, v2

    and-int v2, p0, v3

    mul-int/2addr v0, v2

    and-int v2, p1, v3

    mul-int/2addr v2, p2

    add-int/2addr v0, v2

    const/high16 v2, 0xff

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static padImageToSquare(Lcom/x/google/common/graphics/GoogleImage;I)Lcom/x/google/common/graphics/GoogleImage;
    .locals 6

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleImage;->getWidth()I

    move-result v0

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleImage;->getHeight()I

    move-result v2

    if-ne p1, v0, :cond_0

    if-ne p1, v2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-le v0, v2, :cond_1

    sub-int v0, p1, v2

    div-int/lit8 v0, v0, 0x2

    move v2, v1

    :goto_1
    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/x/google/common/Config;->getImageFactory()Lcom/x/google/common/graphics/ImageFactory;

    move-result-object v3

    invoke-interface {v3, p1, p1}, Lcom/x/google/common/graphics/ImageFactory;->createImage(II)Lcom/x/google/common/graphics/GoogleImage;

    move-result-object v3

    invoke-interface {v3}, Lcom/x/google/common/graphics/GoogleImage;->getGraphics()Lcom/x/google/common/graphics/GoogleGraphics;

    move-result-object v4

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lcom/x/google/common/graphics/GoogleGraphics;->setColor(I)V

    invoke-interface {v4, v1, v1, p1, p1}, Lcom/x/google/common/graphics/GoogleGraphics;->fillRect(IIII)V

    invoke-interface {v4, p0, v2, v0}, Lcom/x/google/common/graphics/GoogleGraphics;->drawImage(Lcom/x/google/common/graphics/GoogleImage;II)V

    move-object p0, v3

    goto :goto_0

    :cond_1
    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    move v2, v0

    move v0, v1

    goto :goto_1
.end method

.method public static quadrupleImage(Lcom/x/google/common/graphics/GoogleImage;)Lcom/x/google/common/graphics/GoogleImage;
    .locals 10

    const/4 v2, 0x0

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleImage;->getWidth()I

    move-result v6

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleImage;->getHeight()I

    move-result v7

    shl-int/lit8 v0, v6, 0x1

    shl-int/lit8 v1, v7, 0x1

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    shl-int/lit8 v3, v6, 0x2

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v7}, Lcom/x/google/common/graphics/GoogleImage;->getRGB([IIIIIII)V

    shl-int/lit8 v5, v6, 0x1

    shl-int/lit8 v6, v7, 0x1

    move v3, v2

    move v4, v2

    :goto_0
    if-ge v3, v6, :cond_1

    add-int/lit8 v0, v5, -0x1

    :goto_1
    if-ltz v0, :cond_0

    add-int v7, v4, v0

    shr-int/lit8 v8, v0, 0x1

    add-int/2addr v8, v4

    aget v8, v1, v8

    add-int/lit8 v9, v7, -0x1

    aput v8, v1, v7

    aput v8, v1, v9

    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_0
    add-int v0, v4, v5

    invoke-static {v1, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v0, v5, 0x1

    add-int/2addr v4, v0

    add-int/lit8 v0, v3, 0x2

    move v3, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getImageFactory()Lcom/x/google/common/graphics/ImageFactory;

    move-result-object v0

    invoke-interface {v0, v1, v5, v6, v2}, Lcom/x/google/common/graphics/ImageFactory;->createRGBImage([IIIZ)Lcom/x/google/common/graphics/GoogleImage;

    move-result-object v0

    return-object v0
.end method

.method public static quarterImage(Lcom/x/google/common/graphics/GoogleImage;)Lcom/x/google/common/graphics/GoogleImage;
    .locals 16

    invoke-interface/range {p0 .. p0}, Lcom/x/google/common/graphics/GoogleImage;->getWidth()I

    move-result v3

    invoke-interface/range {p0 .. p0}, Lcom/x/google/common/graphics/GoogleImage;->getHeight()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v6, v3

    invoke-interface/range {v0 .. v7}, Lcom/x/google/common/graphics/GoogleImage;->getRGB([IIIIIII)V

    shr-int/lit8 v6, v3, 0x1

    shr-int/lit8 v7, v7, 0x1

    mul-int v0, v6, v7

    new-array v8, v0, [I

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v5, v4

    move v4, v2

    move v2, v0

    :goto_0
    if-ge v2, v7, :cond_1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_0

    add-int v9, v4, v0

    aget v10, v1, v9

    add-int/lit8 v11, v9, 0x1

    aget v11, v1, v11

    add-int v12, v9, v3

    aget v12, v1, v12

    add-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    const/high16 v13, 0xff

    and-int/2addr v13, v10

    const/high16 v14, 0xff

    and-int/2addr v14, v11

    add-int/2addr v13, v14

    const/high16 v14, 0xff

    and-int/2addr v14, v12

    add-int/2addr v13, v14

    const/high16 v14, 0xff

    and-int/2addr v14, v9

    add-int/2addr v13, v14

    shr-int/lit8 v13, v13, 0x2

    const v14, 0xff00

    and-int/2addr v14, v10

    const v15, 0xff00

    and-int/2addr v15, v11

    add-int/2addr v14, v15

    const v15, 0xff00

    and-int/2addr v15, v12

    add-int/2addr v14, v15

    const v15, 0xff00

    and-int/2addr v15, v9

    add-int/2addr v14, v15

    shr-int/lit8 v14, v14, 0x2

    and-int/lit16 v10, v10, 0xff

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v10, v11

    and-int/lit16 v11, v12, 0xff

    add-int/2addr v10, v11

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v9, v10

    shr-int/lit8 v9, v9, 0x2

    add-int v10, v5, v0

    const/high16 v11, 0xff

    and-int/2addr v11, v13

    const v12, 0xff00

    and-int/2addr v12, v14

    or-int/2addr v11, v12

    or-int/2addr v9, v11

    aput v9, v8, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v5, v6

    shl-int/lit8 v0, v3, 0x1

    add-int/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getImageFactory()Lcom/x/google/common/graphics/ImageFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v8, v6, v7, v1}, Lcom/x/google/common/graphics/ImageFactory;->createRGBImage([IIIZ)Lcom/x/google/common/graphics/GoogleImage;

    move-result-object v0

    return-object v0
.end method

.method public static resizeImage(Lcom/x/google/common/graphics/GoogleImage;II)Lcom/x/google/common/graphics/GoogleImage;
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal target width or height"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleImage;->getWidth()I

    move-result v1

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleImage;->getHeight()I

    move-result v4

    if-ne p1, v1, :cond_3

    if-ne p2, v4, :cond_3

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getImageFactory()Lcom/x/google/common/graphics/ImageFactory;

    move-result-object v5

    if-eq p1, v1, :cond_4

    invoke-interface {v5, p1, v4}, Lcom/x/google/common/graphics/ImageFactory;->createImage(II)Lcom/x/google/common/graphics/GoogleImage;

    move-result-object v0

    invoke-interface {v0}, Lcom/x/google/common/graphics/GoogleImage;->getGraphics()Lcom/x/google/common/graphics/GoogleGraphics;

    move-result-object v6

    shl-int/lit8 v1, v1, 0x10

    div-int v7, v1, p1

    div-int/lit8 v1, v7, 0x2

    move v3, v1

    move v1, v2

    :goto_1
    if-ge v1, p1, :cond_5

    invoke-interface {v6, v1, v2, v9, v4}, Lcom/x/google/common/graphics/GoogleGraphics;->setClip(IIII)V

    shr-int/lit8 v8, v3, 0x10

    sub-int v8, v1, v8

    invoke-interface {v6, p0, v8, v2}, Lcom/x/google/common/graphics/GoogleGraphics;->drawImage(Lcom/x/google/common/graphics/GoogleImage;II)V

    add-int/2addr v3, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v0, p0

    :cond_5
    if-eq p2, v4, :cond_6

    invoke-interface {v5, p1, p2}, Lcom/x/google/common/graphics/ImageFactory;->createImage(II)Lcom/x/google/common/graphics/GoogleImage;

    move-result-object p0

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleImage;->getGraphics()Lcom/x/google/common/graphics/GoogleGraphics;

    move-result-object v5

    shl-int/lit8 v1, v4, 0x10

    div-int v4, v1, p2

    div-int/lit8 v1, v4, 0x2

    move v3, v1

    move v1, v2

    :goto_2
    if-ge v1, p2, :cond_2

    invoke-interface {v5, v2, v1, p1, v9}, Lcom/x/google/common/graphics/GoogleGraphics;->setClip(IIII)V

    shr-int/lit8 v6, v3, 0x10

    sub-int v6, v1, v6

    invoke-interface {v5, v0, v2, v6}, Lcom/x/google/common/graphics/GoogleGraphics;->drawImage(Lcom/x/google/common/graphics/GoogleImage;II)V

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move-object p0, v0

    goto :goto_0
.end method

.method public static rotate90(Lcom/x/google/common/graphics/GoogleImage;)Lcom/x/google/common/graphics/GoogleImage;
    .locals 10

    const/4 v2, 0x0

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleImage;->getWidth()I

    move-result v3

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleImage;->getHeight()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-interface/range {v0 .. v7}, Lcom/x/google/common/graphics/GoogleImage;->getRGB([IIIIIII)V

    array-length v0, v1

    new-array v5, v0, [I

    move v4, v2

    :goto_0
    if-ge v4, v7, :cond_1

    move v0, v2

    :goto_1
    if-ge v0, v3, :cond_0

    mul-int v6, v4, v3

    add-int/2addr v6, v0

    mul-int v8, v0, v7

    sub-int v9, v7, v4

    add-int/lit8 v9, v9, -0x1

    add-int/2addr v8, v9

    aget v6, v1, v6

    aput v6, v5, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getImageFactory()Lcom/x/google/common/graphics/ImageFactory;

    move-result-object v0

    invoke-interface {v0, v5, v7, v3, v2}, Lcom/x/google/common/graphics/ImageFactory;->createRGBImage([IIIZ)Lcom/x/google/common/graphics/GoogleImage;

    move-result-object v0

    return-object v0
.end method

.method public static toBmp(Lcom/x/google/common/graphics/GoogleImage;)[B
    .locals 12

    const/4 v2, 0x0

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleImage;->getWidth()I

    move-result v3

    invoke-interface {p0}, Lcom/x/google/common/graphics/GoogleImage;->getHeight()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-interface/range {v0 .. v7}, Lcom/x/google/common/graphics/GoogleImage;->getRGB([IIIIIII)V

    mul-int v0, v3, v7

    new-array v8, v0, [I

    move v4, v2

    :goto_0
    if-ge v4, v7, :cond_1

    move v0, v2

    :goto_1
    if-ge v0, v3, :cond_0

    mul-int v5, v4, v3

    add-int/2addr v5, v0

    add-int/lit8 v6, v7, -0x1

    sub-int/2addr v6, v4

    mul-int/2addr v6, v3

    add-int/2addr v6, v0

    aget v5, v1, v5

    aput v5, v8, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x36

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    const/16 v0, 0x15

    shr-int/lit8 v4, v3, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    const/16 v0, 0x14

    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    const/16 v0, 0x13

    shr-int/lit8 v4, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    const/16 v0, 0x12

    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    const/16 v0, 0x19

    shr-int/lit8 v4, v7, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    const/16 v0, 0x18

    shr-int/lit8 v4, v7, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    const/16 v0, 0x17

    shr-int/lit8 v4, v7, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    const/16 v0, 0x16

    and-int/lit16 v4, v7, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    mul-int/lit8 v0, v3, 0x3

    rem-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_2

    move v0, v2

    :goto_2
    array-length v4, v1

    mul-int/lit8 v5, v3, 0x3

    mul-int/2addr v5, v7

    add-int/2addr v4, v5

    mul-int v5, v0, v7

    add-int/2addr v4, v5

    const/4 v5, 0x5

    shr-int/lit8 v6, v4, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    const/4 v5, 0x4

    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    const/4 v5, 0x3

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    const/4 v5, 0x2

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    new-array v7, v4, [B

    array-length v4, v1

    invoke-static {v1, v2, v7, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    move v4, v2

    move v5, v1

    move v1, v2

    :goto_3
    array-length v6, v8

    if-ge v1, v6, :cond_5

    aget v6, v8, v1

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aget v9, v8, v1

    shr-int/lit8 v9, v9, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aget v10, v8, v1

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    add-int/lit8 v11, v5, 0x1

    aput-byte v10, v7, v5

    add-int/lit8 v10, v11, 0x1

    aput-byte v9, v7, v11

    add-int/lit8 v5, v10, 0x1

    aput-byte v6, v7, v10

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_4

    if-eqz v0, :cond_4

    move v4, v2

    :goto_4
    if-ge v4, v0, :cond_3

    add-int/lit8 v6, v5, 0x1

    aput-byte v2, v7, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_4

    :cond_2
    rem-int/lit8 v0, v0, 0x4

    rsub-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_3
    move v4, v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-object v7

    :array_0
    .array-data 0x1
        0x42t
        0x4dt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x36t
        0x0t
        0x0t
        0x0t
        0x28t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x18t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static transformScanline([IIIIIII[IIII)V
    .locals 43

    and-int/lit8 v5, p10, 0x2

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    move/from16 v16, v5

    :goto_0
    and-int/lit8 v5, p10, 0x1

    if-eqz v5, :cond_7

    shr-int/lit8 v5, p5, 0x10

    add-int/lit8 v17, v5, 0x1

    shr-int/lit8 v5, p6, 0x10

    add-int/lit8 v18, v5, 0x1

    div-int v19, p5, v17

    div-int v20, p6, v18

    mul-int v21, v17, v18

    move/from16 v14, p4

    move/from16 v11, p3

    :goto_1
    add-int/lit8 v15, p9, -0x1

    if-lez p9, :cond_5

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    move v12, v5

    move v13, v14

    :goto_2
    move/from16 v0, v18

    if-ge v12, v0, :cond_3

    const/4 v5, 0x0

    move v10, v11

    move/from16 v42, v6

    move v6, v5

    move v5, v9

    move v9, v8

    move v8, v7

    move/from16 v7, v42

    :goto_3
    move/from16 v0, v17

    if-ge v6, v0, :cond_2

    shr-int/lit8 v22, v10, 0x10

    shr-int/lit8 v23, v13, 0x10

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/x/google/common/graphics/ImageUtil;->getColor([IIIII)I

    move-result v24

    add-int/lit8 v25, v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v25

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/x/google/common/graphics/ImageUtil;->getColor([IIIII)I

    move-result v25

    add-int/lit8 v26, v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v22

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Lcom/x/google/common/graphics/ImageUtil;->getColor([IIIII)I

    move-result v26

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v23, v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/x/google/common/graphics/ImageUtil;->getColor([IIIII)I

    move-result v22

    const v23, 0xffff

    and-int v23, v23, v10

    shr-int/lit8 v23, v23, 0x8

    const v27, 0xffff

    and-int v27, v27, v13

    shr-int/lit8 v27, v27, 0x8

    move/from16 v0, v23

    rsub-int v0, v0, 0x100

    move/from16 v28, v0

    move/from16 v0, v27

    rsub-int v0, v0, 0x100

    move/from16 v29, v0

    mul-int v28, v28, v29

    move/from16 v0, v27

    rsub-int v0, v0, 0x100

    move/from16 v29, v0

    mul-int v29, v29, v23

    move/from16 v0, v23

    rsub-int v0, v0, 0x100

    move/from16 v30, v0

    mul-int v30, v30, v27

    mul-int v23, v23, v27

    shr-int/lit8 v27, v24, 0x10

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shr-int/lit8 v31, v24, 0x8

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    shr-int/lit8 v33, v25, 0x10

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0xff

    move/from16 v33, v0

    shr-int/lit8 v34, v25, 0x8

    move/from16 v0, v34

    and-int/lit16 v0, v0, 0xff

    move/from16 v34, v0

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v35, v0

    shr-int/lit8 v36, v26, 0x10

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0xff

    move/from16 v36, v0

    shr-int/lit8 v37, v26, 0x8

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v38, v0

    shr-int/lit8 v39, v22, 0x10

    move/from16 v0, v39

    and-int/lit16 v0, v0, 0xff

    move/from16 v39, v0

    shr-int/lit8 v40, v22, 0x8

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0xff

    move/from16 v40, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v41, v0

    mul-int v27, v27, v28

    mul-int v36, v36, v30

    add-int v27, v27, v36

    mul-int v33, v33, v29

    add-int v27, v27, v33

    mul-int v33, v39, v23

    add-int v27, v27, v33

    add-int v9, v9, v27

    mul-int v27, v31, v28

    mul-int v31, v37, v30

    add-int v27, v27, v31

    mul-int v31, v34, v29

    add-int v27, v27, v31

    mul-int v31, v40, v23

    add-int v27, v27, v31

    add-int v8, v8, v27

    mul-int v27, v32, v28

    mul-int v31, v38, v30

    add-int v27, v27, v31

    mul-int v31, v35, v29

    add-int v27, v27, v31

    mul-int v31, v41, v23

    add-int v27, v27, v31

    add-int v7, v7, v27

    if-eqz v16, :cond_0

    shr-int/lit8 v5, v24, 0x18

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v24, v25, 0x18

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    shr-int/lit8 v25, v26, 0x18

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shr-int/lit8 v22, v22, 0x18

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    mul-int v5, v5, v28

    mul-int v25, v25, v30

    add-int v5, v5, v25

    mul-int v24, v24, v29

    add-int v5, v5, v24

    mul-int v22, v22, v23

    add-int v5, v5, v22

    :cond_0
    add-int v10, v10, v19

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_1
    const/4 v5, 0x0

    move/from16 v16, v5

    goto/16 :goto_0

    :cond_2
    add-int v10, v13, v20

    add-int/lit8 v6, v12, 0x1

    move v12, v6

    move v13, v10

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v5

    goto/16 :goto_2

    :cond_3
    div-int v5, v8, v21

    const/high16 v8, 0xff

    and-int/2addr v5, v8

    div-int v7, v7, v21

    shr-int/lit8 v7, v7, 0x8

    const v8, 0xff00

    and-int/2addr v7, v8

    or-int/2addr v5, v7

    div-int v6, v6, v21

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    or-int v7, v5, v6

    add-int/lit8 v6, p8, 0x1

    if-eqz v16, :cond_4

    div-int v5, v9, v21

    shl-int/lit8 v5, v5, 0x8

    const/high16 v8, -0x100

    and-int/2addr v5, v8

    :goto_4
    or-int/2addr v5, v7

    aput v5, p7, p8

    add-int v11, v11, p5

    add-int v14, v14, p6

    move/from16 p9, v15

    move/from16 p8, v6

    goto/16 :goto_1

    :cond_4
    const/high16 v5, -0x100

    goto :goto_4

    :goto_5
    add-int/lit8 v7, p9, -0x1

    if-lez p9, :cond_5

    shr-int/lit8 v8, p3, 0x10

    shr-int/lit8 v9, p4, 0x10

    if-ltz v8, :cond_6

    if-ltz v9, :cond_6

    move/from16 v0, p1

    if-ge v8, v0, :cond_6

    move/from16 v0, p2

    if-ge v9, v0, :cond_6

    add-int/lit8 v5, v6, 0x1

    mul-int v9, v9, p1

    add-int/2addr v8, v9

    aget v8, p0, v8

    aput v8, p7, v6

    :goto_6
    add-int p3, p3, p5

    add-int p4, p4, p6

    move/from16 p9, v7

    move v6, v5

    goto :goto_5

    :cond_5
    return-void

    :cond_6
    move v5, v6

    goto :goto_6

    :cond_7
    move/from16 v6, p8

    goto :goto_5
.end method
