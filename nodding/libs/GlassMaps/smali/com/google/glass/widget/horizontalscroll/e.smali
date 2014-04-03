.class final Lcom/google/glass/widget/horizontalscroll/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/input/k;


# instance fields
.field final synthetic a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->c(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v0

    return v0
.end method

.method public final a(F)V
    .locals 11

    const/4 v10, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->k()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v2, "setItem(%s) while deactivated."

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->e(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->k()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v2, "setItem(%s) while suppressing view updates."

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->c(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v2

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->f(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)D

    move-result-wide v3

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d()Z

    move-result v5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x41cdcd6500000000L

    div-double/2addr v6, v8

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;F)F

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0, v6, v7}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;D)D

    const-wide/16 v8, 0x0

    cmpl-double v0, v3, v8

    if-lez v0, :cond_3

    cmpl-double v0, v6, v3

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    iget-object v8, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v8}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->c(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v8

    sub-float/2addr v8, v2

    float-to-double v8, v8

    sub-double v3, v6, v3

    div-double v3, v8, v3

    double-to-float v3, v3

    invoke-static {v0, v3}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;F)F

    :cond_3
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->c(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v3, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v3}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->g(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v3}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->h(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)I

    move-result v3

    if-ltz v0, :cond_4

    if-lt v0, v3, :cond_5

    :cond_4
    invoke-static {}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->k()Lcom/google/glass/logging/i;

    move-result-object v4

    const-string v6, "Invalid position reported from item scroller; item count: %s; reported position: %s (rounded to %s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-gez v0, :cond_9

    move v0, v1

    :cond_5
    :goto_1
    int-to-float v3, v0

    iget-object v4, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v4}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->c(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4420

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v4}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->i(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)I

    move-result v4

    if-eq v4, v0, :cond_6

    iget-object v4, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v4, v0, v10}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;IZ)V

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->j(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/f/a;->a(Z)V

    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->k(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    :cond_6
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->l(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)I

    move-result v0

    if-eq v0, v3, :cond_7

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->m(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;IF)V

    :cond_7
    if-eqz v5, :cond_b

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->n(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->o(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/widget/horizontalscroll/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->c(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->o(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/widget/horizontalscroll/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->c(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/horizontalscroll/h;->a(F)V

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v0, v3, -0x1

    goto :goto_1

    :cond_a
    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->k(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    goto :goto_2
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->g(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->h(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)I

    move-result v0

    goto :goto_0
.end method

.method public final b(F)V
    .locals 5

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->k()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "setScale(%s) while deactivated."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->m(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d()Z

    move-result v0

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->l(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;IF)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->n(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->o(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/widget/horizontalscroll/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->o(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/widget/horizontalscroll/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/horizontalscroll/h;->b(F)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->k(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    goto :goto_1
.end method

.method public final c()F
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/e;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->m(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v0

    return v0
.end method
