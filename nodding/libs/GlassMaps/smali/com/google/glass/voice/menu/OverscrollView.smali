.class public Lcom/google/glass/voice/menu/OverscrollView;
.super Landroid/widget/ScrollView;


# instance fields
.field private a:Z

.field private b:Z

.field private c:F

.field private d:Landroid/animation/ValueAnimator;

.field private e:Lcom/google/glass/voice/menu/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/menu/OverscrollView;->d:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/glass/voice/menu/OverscrollView;->d:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/glass/voice/menu/OverscrollView;->d:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/glass/voice/menu/OverscrollView;->d:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/glass/voice/menu/c;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/menu/c;-><init>(Lcom/google/glass/voice/menu/OverscrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private a()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/OverscrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/glass/voice/menu/OverscrollView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/OverscrollView;->c(F)V

    return-void
.end method

.method private b(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/OverscrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private b()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->a()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()F
    .locals 2

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/OverscrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->a()I

    move-result v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0
.end method

.method private c(F)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->e()I

    move-result v1

    iput p1, p0, Lcom/google/glass/voice/menu/OverscrollView;->c:F

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->e()I

    move-result v2

    iget v0, p0, Lcom/google/glass/voice/menu/OverscrollView;->c:F

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->c()F

    move-result v3

    mul-float/2addr v0, v3

    cmpg-float v3, v0, v5

    if-gez v3, :cond_2

    invoke-virtual {p0, v4, v4}, Lcom/google/glass/voice/menu/OverscrollView;->scrollTo(II)V

    neg-float v0, v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/OverscrollView;->b(F)V

    :goto_0
    if-eq v2, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/menu/OverscrollView;->e:Lcom/google/glass/voice/menu/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/menu/OverscrollView;->e:Lcom/google/glass/voice/menu/d;

    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/voice/menu/OverscrollView;->b:Z

    if-eqz v0, :cond_1

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, v4}, Lcom/google/glass/voice/menu/OverscrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->d()I

    move-result v3

    if-gez v3, :cond_3

    invoke-virtual {p0, v4, v4}, Lcom/google/glass/voice/menu/OverscrollView;->scrollTo(II)V

    neg-float v0, v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/OverscrollView;->b(F)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->d()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->d()I

    move-result v3

    invoke-virtual {p0, v4, v3}, Lcom/google/glass/voice/menu/OverscrollView;->scrollTo(II)V

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->d()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    neg-float v0, v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/OverscrollView;->b(F)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v5}, Lcom/google/glass/voice/menu/OverscrollView;->b(F)V

    float-to-int v0, v0

    invoke-virtual {p0, v4, v0}, Lcom/google/glass/voice/menu/OverscrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method private d()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/OverscrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private d(F)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/glass/voice/menu/OverscrollView;->a:Z

    if-eqz v0, :cond_2

    const v0, -0x41051eb8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    const v2, 0x3efae148

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/OverscrollView;->c(F)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->c()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->c()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->a()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1
.end method

.method private e()I
    .locals 1

    iget v0, p0, Lcom/google/glass/voice/menu/OverscrollView;->c:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(F)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->b()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/menu/OverscrollView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/glass/voice/menu/OverscrollView;->c:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_3

    iget v0, p0, Lcom/google/glass/voice/menu/OverscrollView;->c:F

    neg-float v0, v0

    :cond_2
    :goto_1
    const/high16 v1, 0x3f80

    const v2, 0x3efae148

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/google/glass/voice/menu/OverscrollView;->c:F

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/OverscrollView;->d(F)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/google/glass/voice/menu/OverscrollView;->c:F

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget v0, p0, Lcom/google/glass/voice/menu/OverscrollView;->c:F

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_1
.end method

.method public setListener(Lcom/google/glass/voice/menu/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/menu/OverscrollView;->e:Lcom/google/glass/voice/menu/d;

    return-void
.end method

.method public setShouldHighlightSelectedItem(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/glass/voice/menu/OverscrollView;->b:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/glass/voice/menu/OverscrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->e()I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/glass/voice/menu/OverscrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iput-boolean p1, p0, Lcom/google/glass/voice/menu/OverscrollView;->b:Z

    return-void
.end method

.method public setShouldOverscroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/voice/menu/OverscrollView;->a:Z

    return-void
.end method
