.class public final Lcom/google/glass/maps/c/i;
.super Landroid/text/style/ReplacementSpan;

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private final b:F

.field private c:F

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;F)V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    :cond_0
    iput-object p1, p0, Lcom/google/glass/maps/c/i;->a:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Lcom/google/glass/maps/c/i;->b:F

    return-void
.end method

.method private a(Landroid/graphics/Paint;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/google/glass/maps/c/i;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v0

    iget v1, p0, Lcom/google/glass/maps/c/i;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/c/i;->c:F

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/c/i;->d:F

    iget v0, p0, Lcom/google/glass/maps/c/i;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/glass/maps/c/i;->c:F

    iget v1, p0, Lcom/google/glass/maps/c/i;->b:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/google/glass/maps/c/i;->e:I

    iget v0, p0, Lcom/google/glass/maps/c/i;->e:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/glass/maps/c/i;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/glass/maps/c/i;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/glass/maps/c/i;->d:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/google/glass/maps/c/i;->f:I

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/glass/maps/c/i;->e:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/maps/c/i;->g:I

    iget v1, p0, Lcom/google/glass/maps/c/i;->g:I

    iget v2, p0, Lcom/google/glass/maps/c/i;->e:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/glass/maps/c/i;->h:I

    iget v1, p0, Lcom/google/glass/maps/c/i;->h:I

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/glass/maps/c/i;->i:I

    iget v1, p0, Lcom/google/glass/maps/c/i;->g:I

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/google/glass/maps/c/i;->j:I

    goto :goto_0
.end method


# virtual methods
.method public final chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 2

    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v1, p0, Lcom/google/glass/maps/c/i;->h:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/google/glass/maps/c/i;->h:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :cond_0
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p0, Lcom/google/glass/maps/c/i;->g:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/glass/maps/c/i;->g:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :cond_1
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v1, p0, Lcom/google/glass/maps/c/i;->i:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/google/glass/maps/c/i;->i:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    :cond_2
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, p0, Lcom/google/glass/maps/c/i;->j:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/google/glass/maps/c/i;->j:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_3
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0, p9}, Lcom/google/glass/maps/c/i;->a(Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/google/glass/maps/c/i;->a:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/google/glass/maps/c/i;->f:I

    iget v2, p0, Lcom/google/glass/maps/c/i;->e:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v0, p0, Lcom/google/glass/maps/c/i;->h:I

    add-int/2addr v0, p7

    int-to-float v0, v0

    invoke-virtual {p1, p5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/google/glass/maps/c/i;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/glass/maps/c/i;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/glass/maps/c/i;

    iget-object v1, p1, Lcom/google/glass/maps/c/i;->a:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/glass/maps/c/i;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/google/glass/maps/c/i;->b:F

    iget v2, p0, Lcom/google/glass/maps/c/i;->b:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/glass/maps/c/i;->a(Landroid/graphics/Paint;)V

    if-eqz p5, :cond_0

    iget v0, p0, Lcom/google/glass/maps/c/i;->h:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v0, p0, Lcom/google/glass/maps/c/i;->g:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, p0, Lcom/google/glass/maps/c/i;->i:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v0, p0, Lcom/google/glass/maps/c/i;->j:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_0
    iget v0, p0, Lcom/google/glass/maps/c/i;->f:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/c/i;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/maps/c/i;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
