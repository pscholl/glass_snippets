.class public Lcom/google/glass/widget/ValueSlider;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/google/glass/widget/i;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lcom/google/glass/widget/FillBar;

.field private c:Ljava/util/Map;

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:F

.field private i:Ljava/util/List;

.field private j:Lcom/google/glass/util/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/widget/ValueSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/ValueSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/glass/widget/ValueSlider;->h:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/ValueSlider;->i:Ljava/util/List;

    invoke-static {}, Lcom/google/glass/widget/ValueSlider;->b()Lcom/google/glass/util/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/ValueSlider;->j:Lcom/google/glass/util/o;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ValueSlider;->setOrientation(I)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ValueSlider;->setGravity(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/widget/ValueSlider;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ValueSlider;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->a:Landroid/widget/ImageView;

    const/16 v1, 0x28

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v0, Lcom/google/glass/widget/FillBar;

    invoke-direct {v0, p1}, Lcom/google/glass/widget/FillBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/widget/ValueSlider;->b:Lcom/google/glass/widget/FillBar;

    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->b:Lcom/google/glass/widget/FillBar;

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ValueSlider;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->b:Lcom/google/glass/widget/FillBar;

    invoke-virtual {v0, p0}, Lcom/google/glass/widget/FillBar;->a(Lcom/google/glass/widget/i;)V

    return-void
.end method

.method private static b()Lcom/google/glass/util/o;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/google/glass/util/p;

    invoke-direct {v0}, Lcom/google/glass/util/p;-><init>()V

    return-object v0
.end method

.method private c()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/glass/widget/ValueSlider;->h:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/glass/widget/ValueSlider;->f:I

    iget v1, p0, Lcom/google/glass/widget/ValueSlider;->h:F

    iget v2, p0, Lcom/google/glass/widget/ValueSlider;->e:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/google/glass/widget/ValueSlider;->f:I

    iget v1, p0, Lcom/google/glass/widget/ValueSlider;->e:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    iget v1, p0, Lcom/google/glass/widget/ValueSlider;->f:I

    if-nez v1, :cond_3

    iget v1, p0, Lcom/google/glass/widget/ValueSlider;->h:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/glass/widget/ValueSlider;->f:I

    :cond_2
    :goto_0
    iget v1, p0, Lcom/google/glass/widget/ValueSlider;->f:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/widget/ValueSlider;->d()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/widget/ValueSlider;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/aq;

    iget v3, p0, Lcom/google/glass/widget/ValueSlider;->f:I

    invoke-interface {v0, v3}, Lcom/google/glass/widget/aq;->a(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/google/glass/widget/ValueSlider;->f:I

    iget v2, p0, Lcom/google/glass/widget/ValueSlider;->e:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/google/glass/widget/ValueSlider;->h:F

    const/high16 v2, 0x3f80

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget v1, p0, Lcom/google/glass/widget/ValueSlider;->e:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/glass/widget/ValueSlider;->f:I

    goto :goto_0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->c:Ljava/util/Map;

    iget v1, p0, Lcom/google/glass/widget/ValueSlider;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/glass/widget/ValueSlider;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/glass/widget/ValueSlider;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->b:Lcom/google/glass/widget/FillBar;

    invoke-virtual {v0}, Lcom/google/glass/widget/FillBar;->e()I

    move-result v0

    return v0
.end method

.method public final a(F)V
    .locals 1

    iget v0, p0, Lcom/google/glass/widget/ValueSlider;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/glass/widget/ValueSlider;->h:F

    invoke-direct {p0}, Lcom/google/glass/widget/ValueSlider;->c()V

    :cond_0
    return-void
.end method

.method public final a(IZ)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->j:Lcom/google/glass/util/o;

    invoke-interface {v0}, Lcom/google/glass/util/o;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/widget/ValueSlider;->g:J

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->b:Lcom/google/glass/widget/FillBar;

    invoke-virtual {v0}, Lcom/google/glass/widget/FillBar;->d()V

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/Map;III)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p3, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    add-int/lit8 v0, p3, -0x1

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput-object p1, p0, Lcom/google/glass/widget/ValueSlider;->c:Ljava/util/Map;

    iput p2, p0, Lcom/google/glass/widget/ValueSlider;->d:I

    iput p3, p0, Lcom/google/glass/widget/ValueSlider;->e:I

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/google/glass/widget/ValueSlider;->b:Lcom/google/glass/widget/FillBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/glass/widget/FillBar;->setFillValue(F)V

    :goto_1
    iget v3, p0, Lcom/google/glass/widget/ValueSlider;->f:I

    if-ne v3, v0, :cond_3

    :goto_2
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-direct {p0}, Lcom/google/glass/widget/ValueSlider;->d()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v3, p3, -0x1

    if-ne v0, v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/widget/ValueSlider;->b:Lcom/google/glass/widget/FillBar;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/google/glass/widget/FillBar;->setFillValue(F)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/glass/widget/ValueSlider;->b:Lcom/google/glass/widget/FillBar;

    int-to-float v4, v0

    add-int/lit8 v5, p3, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/google/glass/widget/FillBar;->setFillValue(F)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public final a(Lcom/google/glass/input/SwipeDirection;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->j:Lcom/google/glass/util/o;

    invoke-interface {v0}, Lcom/google/glass/util/o;->a()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/widget/ValueSlider;->g:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xc8

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/glass/widget/ValueSlider;->b:Lcom/google/glass/widget/FillBar;

    invoke-virtual {v3}, Lcom/google/glass/widget/FillBar;->c()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3ea8f5c3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    move v3, v1

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    sget-object v0, Lcom/google/glass/input/SwipeDirection;->LEFT:Lcom/google/glass/input/SwipeDirection;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->b:Lcom/google/glass/widget/FillBar;

    invoke-virtual {v0}, Lcom/google/glass/widget/FillBar;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->b:Lcom/google/glass/widget/FillBar;

    invoke-virtual {v0}, Lcom/google/glass/widget/FillBar;->setToMin()V

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/google/glass/input/SwipeDirection;->RIGHT:Lcom/google/glass/input/SwipeDirection;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->b:Lcom/google/glass/widget/FillBar;

    invoke-virtual {v0}, Lcom/google/glass/widget/FillBar;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->b:Lcom/google/glass/widget/FillBar;

    invoke-virtual {v0}, Lcom/google/glass/widget/FillBar;->setToMax()V

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public final b(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->b:Lcom/google/glass/widget/FillBar;

    iget-object v1, p0, Lcom/google/glass/widget/ValueSlider;->b:Lcom/google/glass/widget/FillBar;

    invoke-virtual {v1}, Lcom/google/glass/widget/FillBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/FillBar;->setFillOffset(F)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->b:Lcom/google/glass/widget/FillBar;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sub-int v2, p4, p2

    int-to-float v2, v2

    const/high16 v3, 0x3f50

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/google/glass/widget/ValueSlider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/d/d;->fill_bar_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/FillBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method
