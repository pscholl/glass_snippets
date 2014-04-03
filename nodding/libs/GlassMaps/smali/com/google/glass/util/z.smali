.class public abstract Lcom/google/glass/util/z;
.super Ljava/lang/Object;


# instance fields
.field a:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field b:F
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final c:Landroid/os/AsyncTask;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/glass/util/u;

.field private f:Landroid/view/View;

.field private g:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

.field private h:J

.field private i:Z

.field private j:Lcom/google/glass/util/ac;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/glass/util/aa;

    invoke-direct {v0, p0}, Lcom/google/glass/util/aa;-><init>(Lcom/google/glass/util/z;)V

    iput-object v0, p0, Lcom/google/glass/util/z;->c:Landroid/os/AsyncTask;

    new-instance v0, Lcom/google/glass/util/u;

    invoke-direct {v0}, Lcom/google/glass/util/u;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/z;->e:Lcom/google/glass/util/u;

    iput-object v1, p0, Lcom/google/glass/util/z;->f:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/util/z;->a:I

    iput-object v1, p0, Lcom/google/glass/util/z;->g:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    const/high16 v0, 0x7f80

    iput v0, p0, Lcom/google/glass/util/z;->b:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/util/z;->h:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/util/z;->i:Z

    invoke-static {p1}, Lcom/google/glass/f/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/glass/util/z;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/google/glass/util/z;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/glass/util/z;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/google/glass/util/z;)Lcom/google/glass/util/u;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/z;->e:Lcom/google/glass/util/u;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/util/z;->f:Landroid/view/View;

    return-void
.end method

.method protected static a(Landroid/view/View;Z)V
    .locals 4

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/d/g;->horizontal_scroll_deferred_load_animation_duration_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/glass/util/z;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/util/z;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/util/z;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/util/z;->a(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private a(Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iget-boolean v0, p0, Lcom/google/glass/util/z;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/util/z;->i:Z

    invoke-static {}, Lcom/google/glass/util/x;->c()I

    iget-object v0, p0, Lcom/google/glass/util/z;->c:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/glass/util/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/util/z;->h()V

    return-void
.end method

.method static synthetic c(Lcom/google/glass/util/z;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/z;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/google/glass/util/z;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/z;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/google/glass/util/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/util/z;->g()V

    return-void
.end method

.method static synthetic f(Lcom/google/glass/util/z;)Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/z;->g:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    return-object v0
.end method

.method static synthetic g(Lcom/google/glass/util/z;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/glass/util/z;->h:J

    return-wide v0
.end method

.method private g()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/glass/util/z;->f:Landroid/view/View;

    invoke-static {v0}, Lcom/google/glass/f/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/glass/util/z;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v2

    :goto_0
    if-eqz v1, :cond_0

    const-class v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    sget v3, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iput-object v2, p0, Lcom/google/glass/util/z;->f:Landroid/view/View;

    :goto_1
    return-void

    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/glass/util/z;->a:I

    iget v0, p0, Lcom/google/glass/util/z;->a:I

    if-gez v0, :cond_2

    invoke-static {}, Lcom/google/glass/util/x;->b()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Deferred task scheduled for unloaded view: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/glass/util/z;->f:Landroid/view/View;

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    const-class v1, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lcom/google/glass/f/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    iput-object v0, p0, Lcom/google/glass/util/z;->g:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    iput-object v2, p0, Lcom/google/glass/util/z;->f:Landroid/view/View;

    goto :goto_1
.end method

.method private h()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iget-boolean v1, p0, Lcom/google/glass/util/z;->i:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/google/glass/util/z;->i:Z

    invoke-static {}, Lcom/google/glass/util/x;->d()I

    invoke-static {}, Lcom/google/glass/util/x;->e()I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/glass/f/a;->a(Z)V

    invoke-static {}, Lcom/google/glass/util/x;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/google/glass/util/x;->h()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/google/glass/util/x;->g()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private i()Landroid/os/AsyncTask$Status;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/z;->c:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract a(Lcom/google/glass/util/u;)Ljava/lang/Object;
.end method

.method protected final a(Landroid/view/View;ZZ)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/high16 v0, 0x3f80

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/d/g;->horizontal_scroll_deferred_load_animation_duration_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/util/ab;

    invoke-direct {v1, p0, p1, p3}, Lcom/google/glass/util/ab;-><init>(Lcom/google/glass/util/z;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public final a(Lcom/google/glass/util/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/util/z;->j:Lcom/google/glass/util/ac;

    return-void
.end method

.method protected abstract a(Ljava/lang/Object;)V
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/z;->e:Lcom/google/glass/util/u;

    invoke-virtual {v0}, Lcom/google/glass/util/u;->a()V

    iget-object v0, p0, Lcom/google/glass/util/z;->c:Landroid/os/AsyncTask;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method protected final a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/z;->e:Lcom/google/glass/util/u;

    invoke-virtual {v0}, Lcom/google/glass/util/u;->b()Z

    move-result v0

    return v0
.end method

.method protected final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/z;->j:Lcom/google/glass/util/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/z;->j:Lcom/google/glass/util/ac;

    invoke-interface {v0, p1}, Lcom/google/glass/util/ac;->a(Z)V

    :cond_0
    return-void
.end method

.method protected final b()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/glass/util/z;->i()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final c()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/glass/util/z;->i()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/z;->d:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method protected abstract f()V
.end method
