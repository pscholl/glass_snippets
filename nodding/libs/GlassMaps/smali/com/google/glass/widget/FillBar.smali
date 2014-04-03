.class public Lcom/google/glass/widget/FillBar;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Landroid/view/View;

.field private b:F

.field private c:F

.field private d:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/widget/FillBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/FillBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/FillBar;->d:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/d/c;->background_dark_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/FillBar;->setBackgroundColor(I)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/widget/FillBar;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->a:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/FillBar;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static a(FF)F
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    add-float v2, p0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private a(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/glass/widget/FillBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method private f()V
    .locals 4

    iget v0, p0, Lcom/google/glass/widget/FillBar;->b:F

    iget v1, p0, Lcom/google/glass/widget/FillBar;->c:F

    invoke-static {v0, v1}, Lcom/google/glass/widget/FillBar;->a(FF)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/glass/widget/FillBar;->a(F)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/widget/FillBar;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/i;

    invoke-interface {v0, v2}, Lcom/google/glass/widget/i;->a(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/glass/widget/i;)V
    .locals 1

    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/google/glass/widget/FillBar;->b:F

    iget v1, p0, Lcom/google/glass/widget/FillBar;->c:F

    invoke-static {v0, v1}, Lcom/google/glass/widget/FillBar;->a(FF)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    iget v0, p0, Lcom/google/glass/widget/FillBar;->b:F

    iget v1, p0, Lcom/google/glass/widget/FillBar;->c:F

    invoke-static {v0, v1}, Lcom/google/glass/widget/FillBar;->a(FF)F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lcom/google/glass/widget/FillBar;->c:F

    return v0
.end method

.method public final d()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/glass/widget/FillBar;->c:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/glass/widget/FillBar;->b:F

    iget v1, p0, Lcom/google/glass/widget/FillBar;->c:F

    invoke-static {v0, v1}, Lcom/google/glass/widget/FillBar;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/FillBar;->b:F

    iput v2, p0, Lcom/google/glass/widget/FillBar;->c:F

    invoke-direct {p0}, Lcom/google/glass/widget/FillBar;->f()V

    :cond_0
    return-void
.end method

.method public final e()I
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/glass/widget/FillBar;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/glass/widget/FillBar;->c:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/widget/FillBar;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/glass/widget/FillBar;->c:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/glass/widget/FillBar;->b:F

    iget v1, p0, Lcom/google/glass/widget/FillBar;->c:F

    invoke-static {v0, v1}, Lcom/google/glass/widget/FillBar;->a(FF)F

    move-result v0

    iget v1, p0, Lcom/google/glass/widget/FillBar;->b:F

    iget v2, p0, Lcom/google/glass/widget/FillBar;->c:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/glass/widget/FillBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v2, v0

    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget v0, p0, Lcom/google/glass/widget/FillBar;->b:F

    iget v1, p0, Lcom/google/glass/widget/FillBar;->c:F

    invoke-static {v0, v1}, Lcom/google/glass/widget/FillBar;->a(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/glass/widget/FillBar;->a(F)V

    return-void
.end method

.method public setFillOffset(F)V
    .locals 0

    iput p1, p0, Lcom/google/glass/widget/FillBar;->c:F

    invoke-direct {p0}, Lcom/google/glass/widget/FillBar;->f()V

    return-void
.end method

.method public setFillValue(F)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v0, p1, v3

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    :goto_1
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    iput p1, p0, Lcom/google/glass/widget/FillBar;->b:F

    iput v3, p0, Lcom/google/glass/widget/FillBar;->c:F

    invoke-direct {p0}, Lcom/google/glass/widget/FillBar;->f()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setToMax()V
    .locals 1

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/glass/widget/FillBar;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/FillBar;->c:F

    invoke-direct {p0}, Lcom/google/glass/widget/FillBar;->f()V

    return-void
.end method

.method public setToMin()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/FillBar;->b:F

    iput v0, p0, Lcom/google/glass/widget/FillBar;->c:F

    invoke-direct {p0}, Lcom/google/glass/widget/FillBar;->f()V

    return-void
.end method
