.class public final Lcom/google/glass/maps/d/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 2

    invoke-static {p0}, Lcom/google/glass/maps/d/a;->h(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const-wide/16 v0, 0x190

    invoke-static {p0, v0, v1}, Lcom/google/glass/maps/d/a;->a(Landroid/view/View;J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/view/View;J)Landroid/view/ViewPropertyAnimator;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/google/glass/maps/d/b;

    invoke-direct {v1}, Lcom/google/glass/maps/d/b;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/glass/maps/d/a;->g(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/google/glass/maps/d/a;->a(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void
.end method

.method public static b(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 2

    invoke-static {p0}, Lcom/google/glass/maps/d/a;->h(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    const-wide/16 v0, 0xc8

    invoke-static {p0, v0, v1}, Lcom/google/glass/maps/d/a;->a(Landroid/view/View;J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 2

    const-wide/16 v0, 0xc8

    invoke-static {p0, v0, v1}, Lcom/google/glass/maps/d/a;->a(Landroid/view/View;J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/d/c;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/d/c;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 2

    invoke-static {p0}, Lcom/google/glass/maps/d/a;->h(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    const-wide/16 v0, 0xc8

    invoke-static {p0, v0, v1}, Lcom/google/glass/maps/d/a;->a(Landroid/view/View;J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 2

    const-wide/16 v0, 0xc8

    invoke-static {p0, v0, v1}, Lcom/google/glass/maps/d/a;->a(Landroid/view/View;J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/d/c;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/d/c;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static f(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 2

    const-wide/16 v0, 0x190

    invoke-static {p0, v0, v1}, Lcom/google/glass/maps/d/a;->a(Landroid/view/View;J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static g(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 2

    invoke-static {p0}, Lcom/google/glass/maps/d/a;->f(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/d/c;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/d/c;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static h(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
