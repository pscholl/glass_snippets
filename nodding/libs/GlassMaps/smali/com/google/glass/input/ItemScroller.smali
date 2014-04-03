.class public final Lcom/google/glass/input/ItemScroller;
.super Lcom/google/glass/input/q;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private b:F

.field private c:F

.field private d:F

.field private e:Landroid/animation/ValueAnimator;

.field private f:Landroid/animation/ValueAnimator;

.field private g:F

.field private h:Z

.field private i:Lcom/google/glass/input/k;

.field private j:F

.field private k:F

.field private l:Z

.field private m:Z

.field private n:Lcom/google/glass/input/ItemScroller$SwipeAxis;

.field private o:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/ItemScroller;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/input/k;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/input/q;-><init>()V

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/glass/input/ItemScroller;->g:F

    iput-object p1, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    new-instance v0, Lcom/google/glass/input/f;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/input/f;-><init>(Lcom/google/glass/input/ItemScroller;Lcom/google/glass/input/k;)V

    iput-object v0, p0, Lcom/google/glass/input/ItemScroller;->o:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->a()V

    return-void
.end method

.method private static a(FF)F
    .locals 2

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    neg-float v0, v0

    mul-float/2addr v0, p1

    neg-float v1, p0

    div-float v0, v1, v0

    return v0
.end method

.method private a(FZ)F
    .locals 2

    invoke-static {p2}, Lcom/google/glass/input/ItemScroller;->b(Z)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/glass/input/ItemScroller;->c(Z)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/glass/input/ItemScroller;)F
    .locals 1

    iget v0, p0, Lcom/google/glass/input/ItemScroller;->g:F

    return v0
.end method

.method static synthetic a(Lcom/google/glass/input/ItemScroller;F)F
    .locals 0

    iput p1, p0, Lcom/google/glass/input/ItemScroller;->j:F

    return p1
.end method

.method static synthetic a(Lcom/google/glass/input/ItemScroller;FZ)F
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/glass/input/ItemScroller;->a(FZ)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/glass/input/ItemScroller;Z)F
    .locals 1

    invoke-static {p1}, Lcom/google/glass/input/ItemScroller;->b(Z)F

    move-result v0

    return v0
.end method

.method private a()V
    .locals 3

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/glass/input/ItemScroller;->e:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/glass/input/g;

    invoke-direct {v1, p0}, Lcom/google/glass/input/g;-><init>(Lcom/google/glass/input/ItemScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/glass/input/ItemScroller;->f:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->f:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->f:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->f:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/glass/input/h;

    invoke-direct {v1, p0}, Lcom/google/glass/input/h;-><init>(Lcom/google/glass/input/ItemScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->f:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/glass/input/i;

    invoke-direct {v1, p0}, Lcom/google/glass/input/i;-><init>(Lcom/google/glass/input/ItemScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/input/ItemScroller;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private a(FJ)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/input/ItemScroller;->a(FJZ)Z

    move-result v0

    return v0
.end method

.method private a(FJZ)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v3}, Lcom/google/glass/input/k;->a()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-direct {p0, p1}, Lcom/google/glass/input/ItemScroller;->c(F)V

    cmpl-float v2, p1, v4

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->c()Z

    :goto_0
    return v0

    :cond_0
    iput-boolean p4, p0, Lcom/google/glass/input/ItemScroller;->m:Z

    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->e:Landroid/animation/ValueAnimator;

    new-array v3, v5, [F

    aput v4, v3, v0

    aput p1, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    move v0, v1

    goto :goto_0
.end method

.method private b(FZ)F
    .locals 2

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v0}, Lcom/google/glass/input/k;->a()F

    move-result v0

    add-float/2addr v0, p1

    invoke-direct {p0, v0, p2}, Lcom/google/glass/input/ItemScroller;->a(FZ)F

    move-result v0

    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v1}, Lcom/google/glass/input/k;->a()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method static synthetic b(Lcom/google/glass/input/ItemScroller;Z)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/glass/input/ItemScroller;->c(Z)F

    move-result v0

    return v0
.end method

.method private static b(Z)F
    .locals 1

    if-eqz p0, :cond_0

    const v0, -0x41051eb8

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(FF)I
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    neg-float v0, v0

    mul-float/2addr v0, p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, p2}, Lcom/google/glass/input/ItemScroller;->a(FF)F

    move-result v1

    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v2}, Lcom/google/glass/input/k;->a()F

    move-result v2

    mul-float v3, p1, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x3f00

    mul-float/2addr v0, v3

    mul-float/2addr v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/glass/input/ItemScroller;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->f:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private b()V
    .locals 5

    const v4, 0x3ea8f5c3

    iget v0, p0, Lcom/google/glass/input/ItemScroller;->g:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->f:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v3}, Lcom/google/glass/input/k;->c()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v4, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput v4, p0, Lcom/google/glass/input/ItemScroller;->g:F

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/glass/input/ItemScroller;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/input/ItemScroller;->c(F)V

    return-void
.end method

.method private c(FF)F
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/glass/input/ItemScroller;->b(FF)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v1}, Lcom/google/glass/input/k;->a()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method static synthetic c(Lcom/google/glass/input/ItemScroller;)F
    .locals 1

    iget v0, p0, Lcom/google/glass/input/ItemScroller;->j:F

    return v0
.end method

.method private c(Z)F
    .locals 2

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v0}, Lcom/google/glass/input/k;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    if-eqz p1, :cond_0

    const v1, 0x3efae148

    add-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method private c(F)V
    .locals 0

    iput p1, p0, Lcom/google/glass/input/ItemScroller;->k:F

    return-void
.end method

.method private c()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v5, 0x3f80

    iget v2, p0, Lcom/google/glass/input/ItemScroller;->g:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->f:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v4}, Lcom/google/glass/input/k;->c()F

    move-result v4

    aput v4, v3, v0

    aput v5, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput v5, p0, Lcom/google/glass/input/ItemScroller;->g:F

    move v0, v1

    goto :goto_0
.end method

.method private d(F)F
    .locals 3

    const/high16 v0, 0x4120

    invoke-direct {p0, p1, v0}, Lcom/google/glass/input/ItemScroller;->c(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41a0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    mul-float v0, p1, p1

    const/high16 v1, 0x4220

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/glass/input/ItemScroller;)Lcom/google/glass/input/k;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    return-object v0
.end method

.method private d()Z
    .locals 2

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v0}, Lcom/google/glass/input/k;->a()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/google/glass/input/ItemScroller;)F
    .locals 1

    iget v0, p0, Lcom/google/glass/input/ItemScroller;->k:F

    return v0
.end method

.method private e(F)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->i()V

    invoke-direct {p0, p1}, Lcom/google/glass/input/ItemScroller;->d(F)F

    move-result v0

    invoke-static {p1, v0}, Lcom/google/glass/input/ItemScroller;->a(FF)F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-long v1, v1

    invoke-direct {p0, p1, v0}, Lcom/google/glass/input/ItemScroller;->c(FF)F

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/input/ItemScroller;->a(FJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->b()V

    :cond_0
    return-void
.end method

.method private e()Z
    .locals 2

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v0}, Lcom/google/glass/input/k;->a()F

    move-result v0

    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v1}, Lcom/google/glass/input/k;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(F)Z
    .locals 8

    const-wide/16 v6, 0x64

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/high16 v3, 0x3f80

    const/4 v0, 0x0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    cmpl-float v1, p1, v3

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/glass/input/ItemScroller;->k:F

    add-float/2addr v1, v3

    invoke-direct {p0, v1, v0}, Lcom/google/glass/input/ItemScroller;->b(FZ)F

    move-result v0

    invoke-direct {p0, v0, v6, v7}, Lcom/google/glass/input/ItemScroller;->a(FJ)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v1, -0x4080

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/glass/input/ItemScroller;->k:F

    sub-float/2addr v1, v3

    invoke-direct {p0, v1, v0}, Lcom/google/glass/input/ItemScroller;->b(FZ)F

    move-result v0

    invoke-direct {p0, v0, v6, v7}, Lcom/google/glass/input/ItemScroller;->a(FJ)Z

    move-result v0

    goto :goto_0

    :cond_2
    cmpl-float v1, p1, v5

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v1}, Lcom/google/glass/input/k;->c()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3

    iget v1, p0, Lcom/google/glass/input/ItemScroller;->k:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v1}, Lcom/google/glass/input/k;->a()F

    move-result v1

    iget v2, p0, Lcom/google/glass/input/ItemScroller;->k:F

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v2, v1}, Lcom/google/glass/input/k;->a(F)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, Lcom/google/glass/input/ItemScroller;->a(Z)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/google/glass/input/ItemScroller;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->c()Z

    move-result v0

    return v0
.end method

.method private g(F)V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v1}, Lcom/google/glass/input/k;->a()F

    move-result v1

    add-float/2addr v1, p1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/glass/input/ItemScroller;->a(FZ)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/glass/input/k;->a(F)V

    iget v0, p0, Lcom/google/glass/input/ItemScroller;->k:F

    sub-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->c(F)V

    return-void
.end method

.method static synthetic g(Lcom/google/glass/input/ItemScroller;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->h()V

    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic h(Lcom/google/glass/input/ItemScroller;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/input/ItemScroller;->m:Z

    return v0
.end method

.method static synthetic i(Lcom/google/glass/input/ItemScroller;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->o:Landroid/os/Handler;

    return-object v0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method private j()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/glass/input/ItemScroller;->g:F

    const v3, 0x3ea8f5c3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/glass/input/ItemScroller;->d:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->f()Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/google/glass/input/ItemScroller;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x443b8000

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    move v0, v1

    :goto_2
    iget v3, p0, Lcom/google/glass/input/ItemScroller;->d:F

    const/high16 v4, 0x4120

    invoke-direct {p0, v3, v4}, Lcom/google/glass/input/ItemScroller;->b(FF)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v4}, Lcom/google/glass/input/k;->a()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x4000

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    move v3, v1

    :goto_3
    if-eqz v3, :cond_3

    if-nez v0, :cond_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v3, v2

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->i()V

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    int-to-float v1, p1

    invoke-interface {v0, v1}, Lcom/google/glass/input/k;->a(F)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->c(F)V

    return-void
.end method

.method public final a(IFFFFII)Z
    .locals 5

    const/4 v0, 0x0

    const/high16 v2, -0x4080

    sget-object v1, Lcom/google/glass/util/Labs$Feature;->NON_MCKENZIAN:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->a(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    mul-float/2addr p2, v2

    mul-float/2addr p4, v2

    :cond_0
    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->n:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    sget-object v2, Lcom/google/glass/input/ItemScroller$SwipeAxis;->NONE:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    if-ne v1, v2, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    sget-object v1, Lcom/google/glass/input/ItemScroller$SwipeAxis;->VERTICAL:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    iput-object v1, p0, Lcom/google/glass/input/ItemScroller;->n:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    :cond_1
    :goto_0
    int-to-float v1, p1

    iget v2, p0, Lcom/google/glass/input/ItemScroller;->c:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->n:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    sget-object v2, Lcom/google/glass/input/ItemScroller$SwipeAxis;->HORIZONTAL:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/google/glass/input/ItemScroller;->b:F

    sub-float/2addr v1, p2

    const v2, 0x44bb8000

    iget-object v3, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v3}, Lcom/google/glass/input/k;->c()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->f()Z

    move-result v3

    if-nez v3, :cond_4

    div-float v0, v1, v2

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->g(F)V

    div-float v0, p4, v2

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/glass/input/ItemScroller;->d:F

    :cond_2
    iput p2, p0, Lcom/google/glass/input/ItemScroller;->b:F

    int-to-float v0, p1

    iput v0, p0, Lcom/google/glass/input/ItemScroller;->c:F

    const/4 v0, 0x1

    return v0

    :cond_3
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    sget-object v1, Lcom/google/glass/input/ItemScroller$SwipeAxis;->HORIZONTAL:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    iput-object v1, p0, Lcom/google/glass/input/ItemScroller;->n:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v3}, Lcom/google/glass/input/k;->a()F

    move-result v3

    cmpg-float v3, v3, v0

    if-gez v3, :cond_6

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v0}, Lcom/google/glass/input/k;->a()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :cond_5
    :goto_2
    const/high16 v3, 0x3f80

    const v4, 0x3efae148

    div-float/2addr v0, v4

    sub-float v0, v3, v0

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v3}, Lcom/google/glass/input/k;->a()F

    move-result v3

    iget-object v4, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v4}, Lcom/google/glass/input/k;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v0}, Lcom/google/glass/input/k;->a()F

    move-result v0

    iget-object v3, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v3}, Lcom/google/glass/input/k;->b()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_2
.end method

.method public final a(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    aput-object p2, v2, v1

    iget-boolean v2, p0, Lcom/google/glass/input/ItemScroller;->h:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/glass/input/j;->a:[I

    invoke-virtual {p2}, Lcom/google/glass/input/SwipeDirection;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    const/high16 v0, -0x4080

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->f(F)Z

    goto :goto_1

    :pswitch_1
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->f(F)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(IZ)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-ne p1, v1, :cond_1

    iput-boolean v1, p0, Lcom/google/glass/input/ItemScroller;->h:Z

    iput v0, p0, Lcom/google/glass/input/ItemScroller;->b:F

    iput v0, p0, Lcom/google/glass/input/ItemScroller;->d:F

    sget-object v0, Lcom/google/glass/input/ItemScroller$SwipeAxis;->NONE:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    iput-object v0, p0, Lcom/google/glass/input/ItemScroller;->n:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->i()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/input/q;->a(IZ)Z

    move-result v0

    return v0

    :cond_1
    if-le p1, v1, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    :cond_2
    if-eq p1, v3, :cond_0

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/glass/input/ItemScroller;->b:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v2

    iget v3, p0, Lcom/google/glass/input/ItemScroller;->d:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v0}, Lcom/google/glass/input/k;->c()F

    move-result v0

    const/high16 v3, 0x3f80

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/glass/input/ItemScroller;->l:Z

    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/glass/input/ItemScroller;->d:F

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->e(F)V

    :goto_2
    iput-boolean v2, p0, Lcom/google/glass/input/ItemScroller;->h:Z

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->c()Z

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->n:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    sget-object v3, Lcom/google/glass/input/ItemScroller$SwipeAxis;->HORIZONTAL:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    if-ne v0, v3, :cond_5

    iget v0, p0, Lcom/google/glass/input/ItemScroller;->b:F

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->f(F)Z

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v1}, Lcom/google/glass/input/ItemScroller;->a(Z)Z

    goto :goto_2
.end method

.method public final a(Z)Z
    .locals 4

    const/high16 v3, 0x3f80

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->i()V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v1}, Lcom/google/glass/input/k;->a()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v1, v0}, Lcom/google/glass/input/ItemScroller;->a(FZ)F

    move-result v0

    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v1}, Lcom/google/glass/input/k;->a()F

    move-result v1

    sub-float/2addr v0, v1

    const-wide/16 v1, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/input/ItemScroller;->a(FJ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/glass/input/ItemScroller;->c(F)V

    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v2}, Lcom/google/glass/input/k;->a()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v1, v2}, Lcom/google/glass/input/k;->a(F)V

    iput v3, p0, Lcom/google/glass/input/ItemScroller;->g:F

    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v1, v3}, Lcom/google/glass/input/k;->b(F)V

    goto :goto_0
.end method

.method public final b(F)I
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v0}, Lcom/google/glass/input/k;->a()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/input/ItemScroller;->d(F)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/input/ItemScroller;->b(FF)I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->i:Lcom/google/glass/input/k;

    invoke-interface {v1}, Lcom/google/glass/input/k;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->f(F)Z

    iget-boolean v0, p0, Lcom/google/glass/input/ItemScroller;->l:Z

    return v0
.end method
