.class public final Lcom/google/glass/maps/b/ai;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Path;

.field private final d:Landroid/util/LruCache;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/ai;->c:Landroid/graphics/Path;

    new-instance v0, Lcom/google/glass/maps/b/aj;

    const/16 v1, 0x40

    invoke-direct {v0, p0, v1}, Lcom/google/glass/maps/b/aj;-><init>(Lcom/google/glass/maps/b/ai;I)V

    iput-object v0, p0, Lcom/google/glass/maps/b/ai;->d:Landroid/util/LruCache;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/ai;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/glass/maps/b/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/google/glass/maps/b/ai;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/ai;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/glass/maps/b/ai;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/google/glass/maps/b/ai;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/google/glass/maps/b/ai;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Typeface;I)I
    .locals 5

    iget-object v0, p0, Lcom/google/glass/maps/b/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/google/glass/maps/b/ai;->a:Landroid/graphics/Paint;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/google/glass/maps/b/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    int-to-float v1, p2

    const v2, 0x3e19999a

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    add-int/2addr v0, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Typeface;I)I
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/b/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/google/glass/maps/b/ai;->a:Landroid/graphics/Paint;

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    int-to-float v0, p3

    const v1, 0x3e19999a

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/maps/b/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Lcom/google/glass/maps/b/ak;)Lcom/google/glass/maps/opengl/i;
    .locals 11

    const/high16 v10, -0x100

    iget-object v0, p0, Lcom/google/glass/maps/b/ai;->d:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/opengl/i;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/b/ai;->a:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/google/glass/maps/b/ak;->a(Lcom/google/glass/maps/b/ak;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/google/glass/maps/b/ai;->a:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/google/glass/maps/b/ak;->b(Lcom/google/glass/maps/b/ak;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/google/glass/maps/b/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    invoke-static {p1}, Lcom/google/glass/maps/b/ak;->b(Lcom/google/glass/maps/b/ak;)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e19999a

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v1, p0, Lcom/google/glass/maps/b/ai;->a:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/google/glass/maps/b/ak;->c(Lcom/google/glass/maps/b/ak;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v2, v7, 0x2

    add-int v8, v1, v2

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int v5, v1, v7

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr v0, v5

    add-int v9, v0, v7

    iget-object v0, p0, Lcom/google/glass/maps/b/ai;->a:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/google/glass/maps/b/ak;->c(Lcom/google/glass/maps/b/ak;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/glass/maps/b/ak;->c(Lcom/google/glass/maps/b/ak;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-float v4, v7

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/glass/maps/b/ai;->c:Landroid/graphics/Path;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    invoke-static {v8}, Lcom/google/glass/maps/opengl/i;->a(I)I

    move-result v0

    invoke-static {v9}, Lcom/google/glass/maps/opengl/i;->a(I)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {p1}, Lcom/google/glass/maps/b/ak;->d(Lcom/google/glass/maps/b/ak;)I

    move-result v2

    and-int/2addr v2, v10

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/maps/b/ai;->b:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/google/glass/maps/b/ak;->d(Lcom/google/glass/maps/b/ak;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/google/glass/maps/b/ai;->b:Landroid/graphics/Paint;

    mul-int/lit8 v3, v7, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/google/glass/maps/b/ai;->c:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/google/glass/maps/b/ai;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    invoke-static {p1}, Lcom/google/glass/maps/b/ak;->e(Lcom/google/glass/maps/b/ak;)I

    move-result v2

    and-int/2addr v2, v10

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/maps/b/ai;->a:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/google/glass/maps/b/ak;->e(Lcom/google/glass/maps/b/ak;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/google/glass/maps/b/ai;->c:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/google/glass/maps/b/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    new-instance v0, Lcom/google/glass/maps/opengl/i;

    invoke-direct {v0}, Lcom/google/glass/maps/opengl/i;-><init>()V

    invoke-virtual {v0, v1, v8, v9}, Lcom/google/glass/maps/opengl/i;->a(Landroid/graphics/Bitmap;II)V

    iget-object v1, p0, Lcom/google/glass/maps/b/ai;->d:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final b(Ljava/lang/String;Landroid/graphics/Typeface;I)[F
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [F

    array-length v0, v4

    if-nez v0, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/b/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/google/glass/maps/b/ai;->a:Landroid/graphics/Paint;

    int-to-float v2, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/google/glass/maps/b/ai;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    int-to-float v0, p3

    const v2, 0x3e19999a

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v0, v5

    move v2, v0

    move v0, v1

    :goto_1
    array-length v3, v4

    if-ge v0, v3, :cond_1

    aget v3, v4, v0

    add-float/2addr v3, v2

    aput v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    :cond_1
    aget v0, v4, v1

    int-to-float v2, v5

    sub-float/2addr v0, v2

    aput v0, v4, v1

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget v1, v4, v0

    int-to-float v2, v5

    add-float/2addr v1, v2

    aput v1, v4, v0

    move-object v0, v4

    goto :goto_0
.end method
