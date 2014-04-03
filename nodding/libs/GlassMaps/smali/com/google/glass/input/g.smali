.class final Lcom/google/glass/input/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/google/glass/input/ItemScroller;


# direct methods
.method constructor <init>(Lcom/google/glass/input/ItemScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/input/g;->a:Lcom/google/glass/input/ItemScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    cmpl-float v3, v3, v9

    if-nez v3, :cond_1

    iget-object v1, p0, Lcom/google/glass/input/g;->a:Lcom/google/glass/input/ItemScroller;

    invoke-static {v1, v0}, Lcom/google/glass/input/ItemScroller;->a(Lcom/google/glass/input/ItemScroller;F)F

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/google/glass/input/g;->a:Lcom/google/glass/input/ItemScroller;

    invoke-static {v3}, Lcom/google/glass/input/ItemScroller;->c(Lcom/google/glass/input/ItemScroller;)F

    move-result v3

    sub-float v3, v0, v3

    iget-object v4, p0, Lcom/google/glass/input/g;->a:Lcom/google/glass/input/ItemScroller;

    invoke-static {v4}, Lcom/google/glass/input/ItemScroller;->d(Lcom/google/glass/input/ItemScroller;)Lcom/google/glass/input/k;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/glass/input/k;->a()F

    move-result v4

    add-float/2addr v4, v3

    iget-object v5, p0, Lcom/google/glass/input/g;->a:Lcom/google/glass/input/ItemScroller;

    invoke-static {v5, v0}, Lcom/google/glass/input/ItemScroller;->a(Lcom/google/glass/input/ItemScroller;F)F

    iget-object v0, p0, Lcom/google/glass/input/g;->a:Lcom/google/glass/input/ItemScroller;

    iget-object v5, p0, Lcom/google/glass/input/g;->a:Lcom/google/glass/input/ItemScroller;

    invoke-static {v5}, Lcom/google/glass/input/ItemScroller;->e(Lcom/google/glass/input/ItemScroller;)F

    move-result v5

    sub-float v3, v5, v3

    invoke-static {v0, v3}, Lcom/google/glass/input/ItemScroller;->b(Lcom/google/glass/input/ItemScroller;F)V

    iget-object v0, p0, Lcom/google/glass/input/g;->a:Lcom/google/glass/input/ItemScroller;

    invoke-static {v0, v4, v2}, Lcom/google/glass/input/ItemScroller;->a(Lcom/google/glass/input/ItemScroller;FZ)F

    move-result v4

    iget-object v0, p0, Lcom/google/glass/input/g;->a:Lcom/google/glass/input/ItemScroller;

    invoke-static {v0, v2}, Lcom/google/glass/input/ItemScroller;->a(Lcom/google/glass/input/ItemScroller;Z)F

    move-result v0

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/input/g;->a:Lcom/google/glass/input/ItemScroller;

    invoke-static {v0, v2}, Lcom/google/glass/input/ItemScroller;->b(Lcom/google/glass/input/ItemScroller;Z)F

    move-result v0

    cmpl-float v0, v4, v0

    if-nez v0, :cond_7

    :cond_2
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/google/glass/input/g;->a:Lcom/google/glass/input/ItemScroller;

    invoke-static {v3}, Lcom/google/glass/input/ItemScroller;->d(Lcom/google/glass/input/ItemScroller;)Lcom/google/glass/input/k;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/google/glass/input/k;->a(F)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0xfa

    cmp-long v3, v5, v7

    if-gtz v3, :cond_8

    move v3, v2

    :goto_2
    if-nez v0, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/google/glass/input/g;->a:Lcom/google/glass/input/ItemScroller;

    invoke-static {v3}, Lcom/google/glass/input/ItemScroller;->f(Lcom/google/glass/input/ItemScroller;)Z

    :cond_4
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/glass/input/g;->a:Lcom/google/glass/input/ItemScroller;

    const-string v3, "hitEdge: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Lcom/google/glass/input/ItemScroller;->a(Lcom/google/glass/input/ItemScroller;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/input/g;->a:Lcom/google/glass/input/ItemScroller;

    invoke-static {v0}, Lcom/google/glass/input/ItemScroller;->g(Lcom/google/glass/input/ItemScroller;)V

    :cond_5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v2, 0x3f80

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/g;->a:Lcom/google/glass/input/ItemScroller;

    invoke-static {v0}, Lcom/google/glass/input/ItemScroller;->h(Lcom/google/glass/input/ItemScroller;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/glass/input/g;->a:Lcom/google/glass/input/ItemScroller;

    const-string v2, "fling finished, snapping to nearest item"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/glass/input/ItemScroller;->a(Lcom/google/glass/input/ItemScroller;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/input/g;->a:Lcom/google/glass/input/ItemScroller;

    invoke-static {v0}, Lcom/google/glass/input/ItemScroller;->d(Lcom/google/glass/input/ItemScroller;)Lcom/google/glass/input/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/input/g;->a:Lcom/google/glass/input/ItemScroller;

    invoke-static {v1}, Lcom/google/glass/input/ItemScroller;->d(Lcom/google/glass/input/ItemScroller;)Lcom/google/glass/input/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/input/k;->a()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/google/glass/input/k;->a(F)V

    :cond_6
    iget-object v0, p0, Lcom/google/glass/input/g;->a:Lcom/google/glass/input/ItemScroller;

    invoke-static {v0, v9}, Lcom/google/glass/input/ItemScroller;->b(Lcom/google/glass/input/ItemScroller;F)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    move v3, v1

    goto :goto_2
.end method
