.class public Lcom/google/glass/voice/WaveformSoundLevelsView;
.super Landroid/view/View;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private final b:[F

.field private final c:[F

.field private d:Landroid/graphics/Paint;

.field private e:F

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/Matrix;

.field private i:I

.field private final j:Landroid/graphics/Bitmap;

.field private k:I

.field private l:Landroid/graphics/Bitmap;

.field private m:Lcom/google/glass/voice/network/h;

.field private n:Lcom/google/glass/voice/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/WaveformSoundLevelsView;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/WaveformSoundLevelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/voice/WaveformSoundLevelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0xbb8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->b:[F

    const/16 v0, 0x2ee0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->c:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->e:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->f:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->h:Landroid/graphics/Matrix;

    new-instance v0, Lcom/google/glass/voice/ac;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/ac;-><init>(Lcom/google/glass/voice/WaveformSoundLevelsView;Lcom/google/glass/voice/ab;)V

    iput-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->n:Lcom/google/glass/voice/ac;

    invoke-virtual {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/g/c;->voice_input_sound_level_circle:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->j:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->k:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->g:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->d:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->d:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private a()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->c()V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 12

    const-wide v10, 0x401921fb54442d18L

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->c:[F

    array-length v0, v0

    add-int/lit8 v1, v0, -0x2

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0xbb8

    if-ge v0, v4, :cond_0

    int-to-float v4, v0

    const v5, 0x453b8000

    div-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v4, v10

    double-to-float v4, v4

    iget v5, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->e:F

    add-float/2addr v4, v5

    const/high16 v5, 0x42a0

    iget-object v6, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->b:[F

    aget v6, v6, v0

    add-float/2addr v5, v6

    float-to-double v6, v5

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    float-to-double v8, v2

    add-double/2addr v6, v8

    double-to-float v6, v6

    float-to-double v7, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v7

    float-to-double v7, v3

    add-double/2addr v4, v7

    double-to-float v4, v4

    iget-object v5, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->c:[F

    aput v6, v5, v1

    iget-object v5, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->c:[F

    add-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->c:[F

    array-length v8, v8

    rem-int/2addr v7, v8

    aput v4, v5, v7

    iget-object v5, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->c:[F

    add-int/lit8 v7, v1, 0x2

    iget-object v8, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->c:[F

    array-length v8, v8

    rem-int/2addr v7, v8

    aput v6, v5, v7

    iget-object v5, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->c:[F

    add-int/lit8 v6, v1, 0x3

    iget-object v7, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->c:[F

    array-length v7, v7

    rem-int/2addr v6, v7

    aput v4, v5, v6

    add-int/lit8 v1, v1, 0x4

    iget-object v4, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->c:[F

    array-length v4, v4

    rem-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->c:[F

    iget-object v1, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->e:F

    const v1, 0x3bab92a6

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->e:F

    iget v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->e:F

    float-to-double v0, v0

    cmpl-double v0, v0, v10

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->e:F

    float-to-double v0, v0

    sub-double/2addr v0, v10

    double-to-float v0, v0

    iput v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->e:F

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V
    .locals 4

    const/4 v3, 0x0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->g:Landroid/graphics/Rect;

    add-int v1, p4, p5

    add-int v2, p4, p5

    invoke-virtual {v0, p4, p4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->g:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->n:Lcom/google/glass/voice/ac;

    invoke-virtual {v0}, Lcom/google/glass/voice/ac;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->n:Lcom/google/glass/voice/ac;

    invoke-virtual {v0}, Lcom/google/glass/voice/ac;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .locals 14

    const/4 v0, 0x0

    const v13, 0x453b8000

    const/high16 v12, 0x41a0

    const-wide v10, 0x401921fb54442d18L

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4034

    mul-double/2addr v1, v3

    double-to-int v1, v1

    mul-int/lit16 v2, v1, 0x96

    const/high16 v1, 0x4220

    iget v3, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->i:I

    int-to-float v3, v3

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    mul-float/2addr v3, v1

    move v1, v0

    :goto_0
    const/16 v4, 0x96

    if-ge v1, v4, :cond_1

    add-int v4, v2, v1

    rem-int/lit16 v4, v4, 0xbb8

    int-to-float v5, v4

    div-float/2addr v5, v13

    float-to-double v5, v5

    mul-double/2addr v5, v10

    double-to-float v5, v5

    float-to-double v6, v3

    mul-float/2addr v5, v12

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v5, v6, v8

    double-to-float v5, v5

    iget-object v6, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->b:[F

    aget v6, v6, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v7, v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->b:[F

    aput v5, v6, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v1, 0xbb8

    if-ge v0, v1, :cond_3

    int-to-float v1, v0

    div-float/2addr v1, v13

    float-to-double v1, v1

    mul-double/2addr v1, v10

    double-to-float v1, v1

    const-wide/high16 v2, 0x4010

    mul-float/2addr v1, v12

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v1, v2, v4

    double-to-float v1, v1

    const v2, 0x3f666666

    iget-object v3, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->b:[F

    aget v3, v3, v0

    mul-float/2addr v2, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget-object v2, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->b:[F

    aput v1, v2, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->b:[F

    aput v2, v1, v0

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->a()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->c()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->m:Lcom/google/glass/voice/network/h;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->i:I

    if-le v0, v1, :cond_3

    iget v1, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->i:I

    iget v2, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->i:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->i:I

    :goto_1
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->k:I

    rsub-int v0, v0, 0xb0

    iget v1, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->i:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->k:I

    add-int v5, v0, v1

    invoke-virtual {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->getWidth()I

    move-result v0

    sub-int/2addr v0, v5

    div-int/lit8 v4, v0, 0x2

    iget-object v2, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->j:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->l:Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/WaveformSoundLevelsView;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V

    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->d()V

    invoke-direct {p0, p1}, Lcom/google/glass/voice/WaveformSoundLevelsView;->a(Landroid/graphics/Canvas;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->m:Lcom/google/glass/voice/network/h;

    invoke-interface {v0}, Lcom/google/glass/voice/network/h;->a()I

    move-result v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->i:I

    int-to-float v0, v0

    const v1, 0x3f733333

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->i:I

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->j:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->l:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->c()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->a()V

    goto :goto_0
.end method

.method public setLevelSource(Lcom/google/glass/voice/network/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->m:Lcom/google/glass/voice/network/h;

    return-void
.end method
