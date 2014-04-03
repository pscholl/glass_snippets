.class public final Lcom/google/glass/maps/b/n;
.super Ljava/lang/Object;


# static fields
.field private static final a:D


# instance fields
.field private final b:Lcom/google/glass/util/o;

.field private c:Lcom/google/glass/maps/b/g;

.field private d:Lcom/google/glass/maps/b/g;

.field private e:Lcom/google/glass/maps/b/g;

.field private f:Landroid/view/animation/Interpolator;

.field private g:Landroid/view/animation/Interpolator;

.field private h:J

.field private i:J

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    sput-wide v0, Lcom/google/glass/maps/b/n;->a:D

    return-void
.end method

.method constructor <init>(Lcom/google/glass/util/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/n;->f:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/n;->g:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/b/n;->j:Z

    iput-object p1, p0, Lcom/google/glass/maps/b/n;->b:Lcom/google/glass/util/o;

    sget-object v0, Lcom/google/glass/maps/b/f;->b:Lcom/google/glass/maps/b/g;

    iput-object v0, p0, Lcom/google/glass/maps/b/n;->c:Lcom/google/glass/maps/b/g;

    return-void
.end method

.method private static a(DDF)D
    .locals 4

    sub-double v0, p2, p0

    float-to-double v2, p4

    mul-double/2addr v0, v2

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private static a(FFF)F
    .locals 1

    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private static a(Lcom/google/glass/maps/b/g;F)Lcom/google/glass/maps/b/g;
    .locals 6

    new-instance v0, Lcom/google/glass/maps/b/g;

    invoke-virtual {p0}, Lcom/google/glass/maps/b/g;->b()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/maps/b/g;->a()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/glass/maps/b/g;->c()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/glass/maps/b/g;->e()F

    move-result v5

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/b/g;-><init>(Lcom/google/android/maps/driveabout/e/ab;FFFF)V

    return-object v0
.end method

.method private a(Lcom/google/glass/maps/b/g;Lcom/google/glass/maps/b/g;F)Lcom/google/glass/maps/b/g;
    .locals 11

    const/high16 v9, 0x4334

    const-wide/high16 v7, 0x4000

    const/high16 v10, 0x43b4

    invoke-virtual {p1}, Lcom/google/glass/maps/b/g;->a()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/glass/maps/b/g;->a()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/glass/maps/b/g;->b()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/glass/maps/b/g;->b()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/b/n;->g:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;F)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/b/n;->g:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    invoke-virtual {p1}, Lcom/google/glass/maps/b/g;->a()F

    move-result v0

    neg-float v0, v0

    float-to-double v2, v0

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/google/glass/maps/b/g;->a()F

    move-result v0

    neg-float v0, v0

    float-to-double v4, v0

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/glass/maps/b/n;->a(DDF)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    neg-double v2, v2

    sget-wide v4, Lcom/google/glass/maps/b/n;->a:D

    mul-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {p1}, Lcom/google/glass/maps/b/g;->c()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/glass/maps/b/g;->c()F

    move-result v3

    invoke-static {v0, v3, v6}, Lcom/google/glass/maps/b/n;->a(FFF)F

    move-result v3

    invoke-virtual {p1}, Lcom/google/glass/maps/b/g;->e()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/glass/maps/b/g;->e()F

    move-result v4

    invoke-static {v0, v4, v6}, Lcom/google/glass/maps/b/n;->a(FFF)F

    move-result v5

    invoke-virtual {p1}, Lcom/google/glass/maps/b/g;->d()F

    move-result v4

    invoke-virtual {p2}, Lcom/google/glass/maps/b/g;->d()F

    move-result v0

    cmpl-float v7, v4, v0

    if-lez v7, :cond_3

    sub-float v7, v4, v0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_0

    sub-float/2addr v4, v10

    :cond_0
    :goto_1
    invoke-static {v4, v0, v6}, Lcom/google/glass/maps/b/n;->a(FFF)F

    move-result v4

    float-to-double v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v0, v6, v8

    if-gez v0, :cond_1

    add-float/2addr v4, v10

    :cond_1
    new-instance v0, Lcom/google/glass/maps/b/g;

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/b/g;-><init>(Lcom/google/android/maps/driveabout/e/ab;FFFF)V

    return-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/maps/b/g;->b()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/glass/maps/b/g;->b()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/b/n;->f:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;F)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    goto :goto_0

    :cond_3
    sub-float v7, v0, v4

    cmpl-float v7, v7, v9

    if-lez v7, :cond_0

    sub-float/2addr v0, v10

    goto :goto_1
.end method

.method private a(Lcom/google/glass/maps/b/g;Lcom/google/glass/maps/b/g;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/glass/maps/b/n;->j:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Lcom/google/glass/maps/b/g;->a()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/glass/maps/b/g;->a()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x4040

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/google/glass/maps/b/g;->b()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/glass/maps/b/g;->b()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/e/ab;->d(Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v2

    invoke-virtual {p2}, Lcom/google/glass/maps/b/g;->a()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/glass/maps/b/g;->a()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    rsub-int/lit8 v3, v3, 0x1e

    shl-int v3, v1, v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/google/glass/maps/b/g;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/b/n;->c:Lcom/google/glass/maps/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/b/n;->c:Lcom/google/glass/maps/b/g;

    invoke-static {v0, p1}, Lcom/google/glass/maps/b/n;->a(Lcom/google/glass/maps/b/g;F)Lcom/google/glass/maps/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/n;->c:Lcom/google/glass/maps/b/g;

    iget-object v0, p0, Lcom/google/glass/maps/b/n;->d:Lcom/google/glass/maps/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/b/n;->d:Lcom/google/glass/maps/b/g;

    invoke-static {v0, p1}, Lcom/google/glass/maps/b/n;->a(Lcom/google/glass/maps/b/g;F)Lcom/google/glass/maps/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/n;->d:Lcom/google/glass/maps/b/g;

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/b/n;->e:Lcom/google/glass/maps/b/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/b/n;->e:Lcom/google/glass/maps/b/g;

    invoke-static {v0, p1}, Lcom/google/glass/maps/b/n;->a(Lcom/google/glass/maps/b/g;F)Lcom/google/glass/maps/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/n;->e:Lcom/google/glass/maps/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/b/n;->f:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/glass/maps/b/g;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/glass/maps/b/n;->c:Lcom/google/glass/maps/b/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/b/n;->d:Lcom/google/glass/maps/b/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/b/n;->e:Lcom/google/glass/maps/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/glass/maps/b/g;J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/b/n;->c:Lcom/google/glass/maps/b/g;

    invoke-direct {p0, v0, p1}, Lcom/google/glass/maps/b/n;->a(Lcom/google/glass/maps/b/g;Lcom/google/glass/maps/b/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/glass/maps/b/n;->a(Lcom/google/glass/maps/b/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/maps/b/n;->c:Lcom/google/glass/maps/b/g;

    iput-object v0, p0, Lcom/google/glass/maps/b/n;->d:Lcom/google/glass/maps/b/g;

    iput-object p1, p0, Lcom/google/glass/maps/b/n;->e:Lcom/google/glass/maps/b/g;

    iput-wide p2, p0, Lcom/google/glass/maps/b/n;->i:J

    iget-object v0, p0, Lcom/google/glass/maps/b/n;->b:Lcom/google/glass/util/o;

    invoke-interface {v0}, Lcom/google/glass/util/o;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/b/n;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/maps/b/n;->j:Z

    return-void
.end method

.method final declared-synchronized a(J)Z
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/maps/b/ac;->b()V

    iget-object v1, p0, Lcom/google/glass/maps/b/n;->d:Lcom/google/glass/maps/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-wide v1, p0, Lcom/google/glass/maps/b/n;->h:J

    iget-wide v3, p0, Lcom/google/glass/maps/b/n;->i:J

    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/maps/b/n;->e:Lcom/google/glass/maps/b/g;

    iput-object v1, p0, Lcom/google/glass/maps/b/n;->c:Lcom/google/glass/maps/b/g;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/maps/b/n;->d:Lcom/google/glass/maps/b/g;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/maps/b/n;->e:Lcom/google/glass/maps/b/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-wide v0, p0, Lcom/google/glass/maps/b/n;->h:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/google/glass/maps/b/n;->i:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/glass/maps/b/n;->d:Lcom/google/glass/maps/b/g;

    iget-object v2, p0, Lcom/google/glass/maps/b/n;->e:Lcom/google/glass/maps/b/g;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/glass/maps/b/n;->a(Lcom/google/glass/maps/b/g;Lcom/google/glass/maps/b/g;F)Lcom/google/glass/maps/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/n;->c:Lcom/google/glass/maps/b/g;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/b/n;->g:Landroid/view/animation/Interpolator;

    return-void
.end method
