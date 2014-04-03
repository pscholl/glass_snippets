.class public Lcom/x/google/common/graphics/android/AndroidGraphics;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/common/graphics/GoogleGraphics;


# static fields
.field private static final clipRect:Landroid/graphics/Rect;

.field private static final destRect:Landroid/graphics/Rect;

.field private static final oval:Landroid/graphics/RectF;

.field private static final sourceRect:Landroid/graphics/Rect;


# instance fields
.field private canvas:Landroid/graphics/Canvas;

.field private currentFont:Lcom/x/google/common/graphics/GoogleFont;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/x/google/common/graphics/android/AndroidGraphics;->sourceRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/x/google/common/graphics/android/AndroidGraphics;->destRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/x/google/common/graphics/android/AndroidGraphics;->clipRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/x/google/common/graphics/android/AndroidGraphics;->oval:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object p1, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    return-void
.end method


# virtual methods
.method public clipRect(IIII)V
    .locals 3

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    add-int v1, p1, p3

    add-int v2, p2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    return-void
.end method

.method public drawArc(IIIIII)V
    .locals 7

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/x/google/common/graphics/android/AndroidGraphics;->setAntiAliased(Z)Z

    sget-object v0, Lcom/x/google/common/graphics/android/AndroidGraphics;->oval:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v5, p2, p4

    int-to-float v5, v5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    sget-object v1, Lcom/x/google/common/graphics/android/AndroidGraphics;->oval:Landroid/graphics/RectF;

    add-int/lit8 v2, p5, -0x5a

    sub-int/2addr v2, p6

    int-to-float v2, v2

    int-to-float v3, p6

    iget-object v5, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0, v4}, Lcom/x/google/common/graphics/android/AndroidGraphics;->setAntiAliased(Z)Z

    return-void
.end method

.method public drawChars([CIIII)V
    .locals 7

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->currentFont:Lcom/x/google/common/graphics/GoogleFont;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/x/google/common/graphics/GoogleFont;->drawChars(Lcom/x/google/common/graphics/GoogleGraphics;[CIIII)V

    return-void
.end method

.method public drawImage(Lcom/x/google/common/graphics/GoogleImage;II)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2, p3}, Lcom/x/google/common/graphics/GoogleImage;->drawImage(Lcom/x/google/common/graphics/GoogleGraphics;II)V

    :cond_0
    return-void
.end method

.method public drawLine(IIII)V
    .locals 6

    if-le p1, p3, :cond_0

    add-int/lit8 p1, p1, 0x1

    :goto_0
    if-le p2, p4, :cond_1

    add-int/lit8 p2, p2, 0x1

    :goto_1
    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    iget-object v5, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_1
.end method

.method public drawRGB([IIIIIIIZ)V
    .locals 10

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRect(IIII)V
    .locals 6

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRoundRect(IIIIII)V
    .locals 6

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    add-int v4, p1, p3

    int-to-float v4, v4

    add-int v5, p2, p4

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v2, p5

    int-to-float v3, p6

    iget-object v4, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawScaledImage(Lcom/x/google/common/graphics/GoogleImage;IIIIIIII)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/x/google/common/graphics/android/AndroidImage;

    invoke-virtual {p1}, Lcom/x/google/common/graphics/android/AndroidImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/x/google/common/graphics/android/AndroidGraphics;->sourceRect:Landroid/graphics/Rect;

    add-int v2, p6, p8

    add-int v3, p7, p9

    invoke-virtual {v0, p6, p7, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v0, Lcom/x/google/common/graphics/android/AndroidGraphics;->destRect:Landroid/graphics/Rect;

    add-int v2, p2, p4

    add-int v3, p3, p5

    invoke-virtual {v0, p2, p3, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    sget-object v2, Lcom/x/google/common/graphics/android/AndroidGraphics;->sourceRect:Landroid/graphics/Rect;

    sget-object v3, Lcom/x/google/common/graphics/android/AndroidGraphics;->destRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public drawString(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->currentFont:Lcom/x/google/common/graphics/GoogleFont;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/x/google/common/graphics/GoogleFont;->drawString(Lcom/x/google/common/graphics/GoogleGraphics;Ljava/lang/String;II)V

    return-void
.end method

.method public drawSubstring(Ljava/lang/String;IIII)V
    .locals 7

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->currentFont:Lcom/x/google/common/graphics/GoogleFont;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/x/google/common/graphics/GoogleFont;->drawSubstring(Lcom/x/google/common/graphics/GoogleGraphics;Ljava/lang/String;IIII)V

    return-void
.end method

.method public drawTriangle(IIIIII)V
    .locals 3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v1, p3

    int-to-float v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v1, p5

    int-to-float v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public fillArc(IIIIII)V
    .locals 6

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v0, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    add-int/lit8 v2, p5, -0x5a

    sub-int/2addr v2, p6

    int-to-float v2, v2

    int-to-float v3, p6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public fillRect(IIII)V
    .locals 6

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public fillRoundRect(IIIIII)V
    .locals 6

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    add-int v4, p1, p3

    int-to-float v4, v4

    add-int v5, p2, p4

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v2, p5

    int-to-float v3, p6

    iget-object v4, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public fillTriangle(IIIIII)V
    .locals 3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v1, p3

    int-to-float v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v1, p5

    int-to-float v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getCanvas()Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public getClipHeight()I
    .locals 2

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    sget-object v1, Lcom/x/google/common/graphics/android/AndroidGraphics;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/x/google/common/graphics/android/AndroidGraphics;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClipWidth()I
    .locals 2

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    sget-object v1, Lcom/x/google/common/graphics/android/AndroidGraphics;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/x/google/common/graphics/android/AndroidGraphics;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClipX()I
    .locals 2

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    sget-object v1, Lcom/x/google/common/graphics/android/AndroidGraphics;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/x/google/common/graphics/android/AndroidGraphics;->clipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClipY()I
    .locals 2

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    sget-object v1, Lcom/x/google/common/graphics/android/AndroidGraphics;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/x/google/common/graphics/android/AndroidGraphics;->clipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getFont()Lcom/x/google/common/graphics/GoogleFont;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->currentFont:Lcom/x/google/common/graphics/GoogleFont;

    return-object v0
.end method

.method public setAntiAliased(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public setCanvas(Landroid/graphics/Canvas;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public setClip(IIII)V
    .locals 4

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method public setColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColorArgb(I)Z
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public setFont(Lcom/x/google/common/graphics/GoogleFont;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->currentFont:Lcom/x/google/common/graphics/GoogleFont;

    return-void
.end method

.method public setStrokeSize(I)V
    .locals 2

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->paint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public translate(II)V
    .locals 3

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidGraphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method
