.class public Lcom/google/glass/widget/RotatingTipsView;
.super Lcom/google/glass/widget/TipsView;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/animation/Animator$AnimatorListener;

.field private c:Ljava/util/List;

.field private d:Ljava/lang/String;

.field private e:F

.field private f:Landroid/graphics/Typeface;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/RotatingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/RotatingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/TipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/google/glass/widget/am;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/am;-><init>(Lcom/google/glass/widget/RotatingTipsView;)V

    iput-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/glass/widget/an;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/an;-><init>(Lcom/google/glass/widget/RotatingTipsView;)V

    iput-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->b:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/google/glass/widget/RotatingTipsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->f()V

    return-void
.end method

.method private a(Ljava/lang/String;FLandroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/RotatingTipsView;->d:Ljava/lang/String;

    iput p2, p0, Lcom/google/glass/widget/RotatingTipsView;->e:F

    iput-object p3, p0, Lcom/google/glass/widget/RotatingTipsView;->f:Landroid/graphics/Typeface;

    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->h()V

    return-void
.end method

.method static synthetic b(Lcom/google/glass/widget/RotatingTipsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->g()V

    return-void
.end method

.method static synthetic c(Lcom/google/glass/widget/RotatingTipsView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/d/d;->small_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/google/glass/widget/RotatingTipsView;)F
    .locals 1

    iget v0, p0, Lcom/google/glass/widget/RotatingTipsView;->e:F

    return v0
.end method

.method private e()Landroid/graphics/Typeface;
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/glass/widget/aj;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/google/glass/widget/RotatingTipsView;)Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->f:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private f()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->b()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->c()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/widget/RotatingTipsView;->a(Ljava/lang/String;FLandroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic f(Lcom/google/glass/widget/RotatingTipsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->i()V

    return-void
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->c:Ljava/util/List;

    iget v1, p0, Lcom/google/glass/widget/RotatingTipsView;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->d()F

    move-result v1

    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->e()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/widget/RotatingTipsView;->a(Ljava/lang/String;FLandroid/graphics/Typeface;)V

    iget v0, p0, Lcom/google/glass/widget/RotatingTipsView;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/widget/RotatingTipsView;->g:I

    iget v0, p0, Lcom/google/glass/widget/RotatingTipsView;->g:I

    iget-object v1, p0, Lcom/google/glass/widget/RotatingTipsView;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/RotatingTipsView;->g:I

    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/RotatingTipsView;->b:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private i()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
