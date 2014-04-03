.class public final Lcom/google/glass/maps/opengl/i;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:F

.field private j:F

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/glass/maps/opengl/i;->d:I

    iput-boolean v0, p0, Lcom/google/glass/maps/opengl/i;->e:Z

    iput-boolean v0, p0, Lcom/google/glass/maps/opengl/i;->f:Z

    iput-boolean v0, p0, Lcom/google/glass/maps/opengl/i;->g:Z

    iput-boolean v1, p0, Lcom/google/glass/maps/opengl/i;->h:Z

    iput v1, p0, Lcom/google/glass/maps/opengl/i;->k:I

    return-void
.end method

.method public static a(I)I
    .locals 2

    add-int/lit8 v0, p0, -0x1

    shr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0}, Lcom/google/glass/maps/opengl/i;->a(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/glass/maps/opengl/i;->a(I)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private static b(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized b(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/glass/maps/opengl/i;->d:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/glass/maps/opengl/j;->a()I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/opengl/i;->d:I

    :cond_0
    iget v0, p0, Lcom/google/glass/maps/opengl/i;->d:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-boolean v0, p0, Lcom/google/glass/maps/opengl/i;->e:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x2802

    const v1, 0x46240400

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    :goto_0
    iget-boolean v0, p0, Lcom/google/glass/maps/opengl/i;->f:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x2803

    const v1, 0x46240400

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    :goto_1
    iget-boolean v0, p0, Lcom/google/glass/maps/opengl/i;->h:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/glass/maps/opengl/i;->g:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x2801

    const v1, 0x461c0c00

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    :goto_2
    const/16 v0, 0x2800

    const v1, 0x46180400

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    :goto_3
    iput p1, p0, Lcom/google/glass/maps/opengl/i;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/16 v0, 0x2802

    const v1, 0x47012f00

    :try_start_1
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const/16 v0, 0x2803

    const v1, 0x47012f00

    :try_start_2
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x2801

    const v1, 0x46180400

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    goto :goto_2

    :cond_4
    const/16 v0, 0x2801

    const/high16 v1, 0x4618

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    const/high16 v1, 0x4618

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private static b(Landroid/graphics/Bitmap;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, -0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lcom/google/glass/maps/opengl/i;->d:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/glass/maps/opengl/i;->a:I

    iget v1, p0, Lcom/google/glass/maps/opengl/i;->d:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)V
    .locals 3

    invoke-static {p1, p2, p3}, Lcom/google/glass/maps/opengl/i;->b(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/maps/opengl/i;->a(Landroid/graphics/Bitmap;II)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/glass/maps/opengl/i;->a(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;II)V
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/glass/maps/opengl/i;->b(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/glass/maps/opengl/i;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    int-to-float v2, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/google/glass/maps/opengl/i;->i:F

    int-to-float v2, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/google/glass/maps/opengl/i;->j:F

    iput p2, p0, Lcom/google/glass/maps/opengl/i;->b:I

    iput p3, p0, Lcom/google/glass/maps/opengl/i;->c:I

    const/16 v2, 0xde1

    invoke-direct {p0, v2}, Lcom/google/glass/maps/opengl/i;->b(I)V

    iget v2, p0, Lcom/google/glass/maps/opengl/i;->a:I

    invoke-static {v2, v1, p1, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    iget-boolean v1, p0, Lcom/google/glass/maps/opengl/i;->g:Z

    if-eqz v1, :cond_0

    const v1, 0x8192

    const/16 v2, 0x1102

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glHint(II)V

    iget v1, p0, Lcom/google/glass/maps/opengl/i;->a:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/maps/opengl/i;->g:Z

    return-void
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/opengl/i;->i:F

    return v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/opengl/i;->j:F

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/opengl/i;->b:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/opengl/i;->c:I

    return v0
.end method

.method public final declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/glass/maps/opengl/i;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/opengl/i;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/glass/maps/opengl/i;->k:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/glass/f/a;->a(Z)V

    iget v0, p0, Lcom/google/glass/maps/opengl/i;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/glass/maps/opengl/i;->k:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/glass/maps/opengl/i;->d:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/glass/maps/opengl/i;->d:I

    invoke-static {v0}, Lcom/google/glass/maps/opengl/j;->a(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/opengl/i;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
