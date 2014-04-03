.class public Lcom/google/glass/util/x;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/google/glass/logging/i;

.field private static final c:Ljava/util/concurrent/Executor;

.field private static final d:Landroid/os/Handler;

.field private static e:Ljava/util/List;

.field private static f:Ljava/util/List;

.field private static g:I

.field private static final h:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/google/glass/util/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/x;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/glass/util/x;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/x;->b:Lcom/google/glass/logging/i;

    const/16 v0, 0xa

    new-instance v1, Lcom/google/glass/a/c;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/glass/util/x;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/glass/a/c;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/x;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/glass/util/x;->d:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/glass/util/x;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/glass/util/x;->f:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Lcom/google/glass/util/x;->g:I

    new-instance v0, Lcom/google/glass/util/y;

    invoke-direct {v0}, Lcom/google/glass/util/y;-><init>()V

    sput-object v0, Lcom/google/glass/util/x;->h:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IFFI)F
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/high16 v0, 0x7f80

    const/high16 v5, 0x447a

    const/high16 v4, 0x4020

    const/4 v1, 0x0

    if-ltz p3, :cond_0

    sub-int v2, p3, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmpl-float v0, p2, v1

    if-lez v0, :cond_2

    int-to-float v0, p3

    add-float/2addr v0, v4

    sub-float/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v5

    div-float/2addr v0, p2

    goto :goto_0

    :cond_2
    cmpg-float v0, p2, v1

    if-gez v0, :cond_3

    int-to-float v0, p3

    sub-float/2addr v0, v4

    sub-float v0, p1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v5

    neg-float v1, p2

    div-float/2addr v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/google/glass/util/x;->i()V

    return-void
.end method

.method public static a(Landroid/view/View;Lcom/google/glass/util/z;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/glass/util/x;->b(Landroid/view/View;Lcom/google/glass/util/z;)V

    return-void
.end method

.method public static a(Lcom/google/glass/util/z;)V
    .locals 2

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    invoke-virtual {p0}, Lcom/google/glass/util/z;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/util/z;->f()V

    invoke-virtual {p0}, Lcom/google/glass/util/z;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/util/z;->b(Z)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/glass/util/x;->e:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/glass/util/z;->a(Lcom/google/glass/util/z;J)J

    sget-object v0, Lcom/google/glass/util/x;->d:Landroid/os/Handler;

    sget-object v1, Lcom/google/glass/util/x;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)V
    .locals 4

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/z;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/glass/util/z;->a(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;IFF)Z
    .locals 8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const v4, 0x7fffffff

    const/4 v2, 0x0

    const/4 v0, -0x1

    move v1, v2

    move v3, v4

    move v5, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/z;

    iget v6, v0, Lcom/google/glass/util/z;->b:F

    const/high16 v7, 0x437a

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v6, v0, Lcom/google/glass/util/z;->a:I

    if-ltz v6, :cond_5

    iget v0, v0, Lcom/google/glass/util/z;->a:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :goto_2
    if-ltz v5, :cond_2

    if-ge v0, v3, :cond_0

    :cond_2
    move v3, v0

    move v5, v1

    goto :goto_1

    :cond_3
    if-ltz v5, :cond_4

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/z;

    sget-object v1, Lcom/google/glass/util/x;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/glass/util/z;->a(Lcom/google/glass/util/z;Ljava/util/concurrent/Executor;)V

    invoke-interface {p0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_4
    return v2

    :cond_5
    move v0, v4

    goto :goto_2
.end method

.method static synthetic b()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/util/x;->b:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method private static b(Landroid/view/View;Lcom/google/glass/util/z;)V
    .locals 0

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    invoke-static {p1, p0}, Lcom/google/glass/util/z;->a(Lcom/google/glass/util/z;Landroid/view/View;)V

    invoke-static {p1}, Lcom/google/glass/util/x;->a(Lcom/google/glass/util/z;)V

    return-void
.end method

.method static synthetic c()I
    .locals 2

    sget v0, Lcom/google/glass/util/x;->g:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/google/glass/util/x;->g:I

    return v0
.end method

.method static synthetic d()I
    .locals 2

    sget v0, Lcom/google/glass/util/x;->g:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/google/glass/util/x;->g:I

    return v0
.end method

.method static synthetic e()I
    .locals 1

    sget v0, Lcom/google/glass/util/x;->g:I

    return v0
.end method

.method static synthetic f()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/google/glass/util/x;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/google/glass/util/x;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic h()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/google/glass/util/x;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private static i()V
    .locals 14

    const-wide/16 v12, 0x32

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/google/glass/util/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/glass/util/x;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v1, v2

    :goto_1
    sget-object v0, Lcom/google/glass/util/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    sget-object v0, Lcom/google/glass/util/x;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/z;

    invoke-virtual {v0}, Lcom/google/glass/util/z;->a()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Lcom/google/glass/util/z;->d(Lcom/google/glass/util/z;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/google/glass/util/z;->e(Lcom/google/glass/util/z;)V

    :cond_2
    invoke-virtual {v0}, Lcom/google/glass/util/z;->a()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/google/glass/util/x;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/google/glass/util/x;->e:Ljava/util/List;

    sget-object v1, Lcom/google/glass/util/x;->f:Ljava/util/List;

    sput-object v1, Lcom/google/glass/util/x;->e:Ljava/util/List;

    sput-object v0, Lcom/google/glass/util/x;->f:Ljava/util/List;

    sget-object v0, Lcom/google/glass/util/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    move v1, v2

    :goto_2
    sget-object v0, Lcom/google/glass/util/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_f

    sget-object v0, Lcom/google/glass/util/x;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/z;

    invoke-static {v0}, Lcom/google/glass/util/z;->f(Lcom/google/glass/util/z;)Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {v0}, Lcom/google/glass/util/z;->f(Lcom/google/glass/util/z;)Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v0

    move-object v1, v0

    :goto_3
    const/4 v0, -0x1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->e()F

    move-result v5

    invoke-virtual {v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->f()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->h()I

    move-result v6

    move v1, v2

    :goto_4
    sget-object v0, Lcom/google/glass/util/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    sget-object v0, Lcom/google/glass/util/x;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/z;

    iget v7, v0, Lcom/google/glass/util/z;->a:I

    invoke-static {v6, v5, v3, v7}, Lcom/google/glass/util/x;->a(IFFI)F

    move-result v7

    iput v7, v0, Lcom/google/glass/util/z;->b:F

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    move v0, v3

    move v1, v5

    move v3, v6

    :cond_7
    :goto_5
    sget v5, Lcom/google/glass/util/x;->g:I

    if-ge v5, v11, :cond_8

    sget-object v5, Lcom/google/glass/util/x;->e:Ljava/util/List;

    invoke-static {v5, v3, v1, v0}, Lcom/google/glass/util/x;->a(Ljava/util/List;IFF)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move v1, v2

    :goto_6
    sget-object v0, Lcom/google/glass/util/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    sget-object v0, Lcom/google/glass/util/x;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/z;

    invoke-static {v0}, Lcom/google/glass/util/z;->g(Lcom/google/glass/util/z;)J

    move-result-wide v7

    sub-long v7, v5, v7

    iget v3, v0, Lcom/google/glass/util/z;->b:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_9

    const-wide/16 v9, 0xbb8

    cmp-long v3, v7, v9

    if-lez v3, :cond_9

    sget-object v3, Lcom/google/glass/util/x;->b:Lcom/google/glass/logging/i;

    const-string v9, "Cancelling LEAKED task %s pending for %s ms"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v10, v11

    invoke-interface {v3, v9, v10}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v11}, Lcom/google/glass/util/z;->a(Z)V

    sget-object v3, Lcom/google/glass/util/x;->e:Ljava/util/List;

    add-int/lit8 v0, v1, -0x1

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v1, v0

    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_a
    const-wide/16 v0, 0x96

    sget v3, Lcom/google/glass/util/x;->g:I

    int-to-long v3, v3

    mul-long/2addr v3, v12

    add-long/2addr v0, v3

    move-wide v3, v5

    move-wide v7, v0

    :goto_7
    sget-object v0, Lcom/google/glass/util/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_d

    sget-object v0, Lcom/google/glass/util/x;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/z;

    invoke-static {v0}, Lcom/google/glass/util/z;->g(Lcom/google/glass/util/z;)J

    move-result-wide v9

    sub-long v9, v5, v9

    cmp-long v1, v9, v7

    if-gez v1, :cond_b

    invoke-static {v0}, Lcom/google/glass/util/z;->g(Lcom/google/glass/util/z;)J

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    move-wide v0, v3

    move-wide v3, v7

    :goto_8
    add-int/lit8 v2, v2, 0x1

    move-wide v7, v3

    move-wide v3, v0

    goto :goto_7

    :cond_b
    iget v1, v0, Lcom/google/glass/util/z;->b:F

    const/high16 v9, 0x437a

    cmpg-float v1, v1, v9

    if-gez v1, :cond_c

    move-wide v0, v3

    move-wide v3, v7

    goto :goto_8

    :cond_c
    sget-object v1, Lcom/google/glass/util/x;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/glass/util/z;->a(Lcom/google/glass/util/z;Ljava/util/concurrent/Executor;)V

    sget-object v1, Lcom/google/glass/util/x;->e:Ljava/util/List;

    add-int/lit8 v0, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-long/2addr v7, v12

    move v2, v0

    move-wide v0, v3

    move-wide v3, v7

    goto :goto_8

    :cond_d
    sget-object v0, Lcom/google/glass/util/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/google/glass/util/x;->d:Landroid/os/Handler;

    sget-object v1, Lcom/google/glass/util/x;->h:Ljava/lang/Runnable;

    const-wide/16 v9, 0x0

    add-long v2, v3, v7

    sub-long/2addr v2, v5

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_e
    move v1, v4

    move v3, v0

    move v0, v4

    goto/16 :goto_5

    :cond_f
    move-object v1, v3

    goto/16 :goto_3
.end method
