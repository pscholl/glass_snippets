.class public Lcom/google/glass/voice/BitmapSoundLevelsView;
.super Landroid/view/View;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private final b:Landroid/graphics/Paint;

.field private c:I

.field private final d:Landroid/graphics/Bitmap;

.field private e:I

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/Matrix;

.field private i:Lcom/google/glass/voice/network/h;

.field private j:Lcom/google/glass/voice/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/BitmapSoundLevelsView;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/BitmapSoundLevelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/voice/BitmapSoundLevelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->h:Landroid/graphics/Matrix;

    new-instance v0, Lcom/google/glass/voice/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/j;-><init>(Lcom/google/glass/voice/BitmapSoundLevelsView;Lcom/google/glass/voice/i;)V

    iput-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->j:Lcom/google/glass/voice/j;

    invoke-virtual {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/g/c;->voice_input_sound_level_circle:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->d:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->e:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->g:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method private a()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->c()V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V
    .locals 4

    const/4 v3, 0x0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->g:Landroid/graphics/Rect;

    add-int v1, p4, p5

    add-int v2, p4, p5

    invoke-virtual {v0, p4, p4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->g:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/BitmapSoundLevelsView;->a:Lcom/google/glass/logging/i;

    const-string v1, "startAnimator()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->j:Lcom/google/glass/voice/j;

    invoke-virtual {v0}, Lcom/google/glass/voice/j;->a()V
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
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/BitmapSoundLevelsView;->a:Lcom/google/glass/logging/i;

    const-string v1, "stopAnimator()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->j:Lcom/google/glass/voice/j;

    invoke-virtual {v0}, Lcom/google/glass/voice/j;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->a()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->c()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->i:Lcom/google/glass/voice/network/h;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->c:I

    if-le v0, v1, :cond_2

    iget v1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->c:I

    iget v2, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->c:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->c:I

    :goto_1
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->e:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->c:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->e:I

    add-int v5, v0, v1

    invoke-virtual {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->getWidth()I

    move-result v0

    sub-int/2addr v0, v5

    div-int/lit8 v4, v0, 0x2

    iget-object v2, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->d:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->f:Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/BitmapSoundLevelsView;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->i:Lcom/google/glass/voice/network/h;

    invoke-interface {v0}, Lcom/google/glass/voice/network/h;->a()I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->c:I

    int-to-float v0, v0

    const v1, 0x3f733333

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->c:I

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
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->d:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->f:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->c()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/google/glass/voice/BitmapSoundLevelsView;->a:Lcom/google/glass/logging/i;

    const-string v1, "Ignoring setEnabled call; already in requested state."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->a()V

    goto :goto_0
.end method

.method public setLevelSource(Lcom/google/glass/voice/network/h;)V
    .locals 3

    sget-object v0, Lcom/google/glass/voice/BitmapSoundLevelsView;->a:Lcom/google/glass/logging/i;

    const-string v1, "Speech source set"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->i:Lcom/google/glass/voice/network/h;

    return-void
.end method
