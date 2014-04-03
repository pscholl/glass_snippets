.class public final Lcom/google/glass/maps/v;
.super Lcom/google/glass/maps/b/t;


# instance fields
.field private final a:Lcom/google/glass/maps/z;

.field private final b:Lcom/google/glass/maps/z;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field private e:[Lcom/google/glass/maps/x;

.field private f:[Lcom/google/glass/maps/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/glass/maps/v;->a()Lcom/google/glass/maps/b/v;

    move-result-object v4

    sget v5, Lcom/google/glass/maps/bl;->maps_markers:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/b/t;-><init>(Landroid/content/Context;IILcom/google/glass/maps/b/v;I)V

    new-instance v0, Lcom/google/glass/maps/z;

    invoke-direct {v0, v6}, Lcom/google/glass/maps/z;-><init>(Lcom/google/glass/maps/w;)V

    iput-object v0, p0, Lcom/google/glass/maps/v;->a:Lcom/google/glass/maps/z;

    new-instance v0, Lcom/google/glass/maps/z;

    invoke-direct {v0, v6}, Lcom/google/glass/maps/z;-><init>(Lcom/google/glass/maps/w;)V

    iput-object v0, p0, Lcom/google/glass/maps/v;->b:Lcom/google/glass/maps/z;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/v;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/v;->d:Ljava/util/List;

    return-void
.end method

.method private static a()Lcom/google/glass/maps/b/v;
    .locals 2

    new-instance v0, Lcom/google/glass/maps/b/v;

    invoke-direct {v0}, Lcom/google/glass/maps/b/v;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/glass/maps/b/v;->c:I

    const v1, 0x3fa66666

    iput v1, v0, Lcom/google/glass/maps/b/v;->d:F

    return-object v0
.end method

.method private a(Lcom/google/glass/maps/z;)V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/glass/maps/v;->c()Lcom/google/glass/maps/b/k;

    move-result-object v2

    iget-object v0, p0, Lcom/google/glass/maps/v;->e:[Lcom/google/glass/maps/x;

    invoke-static {p1}, Lcom/google/glass/maps/z;->c(Lcom/google/glass/maps/z;)[Lcom/google/glass/maps/x;

    move-result-object v3

    if-eq v0, v3, :cond_1

    invoke-static {p1}, Lcom/google/glass/maps/z;->c(Lcom/google/glass/maps/z;)[Lcom/google/glass/maps/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/v;->e:[Lcom/google/glass/maps/x;

    iget-object v0, p0, Lcom/google/glass/maps/v;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/r;

    invoke-virtual {v2, v0}, Lcom/google/glass/maps/b/k;->b(Lcom/google/glass/maps/b/r;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/v;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/glass/maps/v;->e:[Lcom/google/glass/maps/x;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/glass/maps/v;->e:[Lcom/google/glass/maps/x;

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    new-instance v6, Lcom/google/glass/maps/b/r;

    iget-object v7, v5, Lcom/google/glass/maps/x;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v5, v5, Lcom/google/glass/maps/x;->a:I

    invoke-direct {v6, v7, v5, v1, v1}, Lcom/google/glass/maps/b/r;-><init>(Lcom/google/android/maps/driveabout/e/ab;IIZ)V

    invoke-virtual {v2, v6}, Lcom/google/glass/maps/b/k;->a(Lcom/google/glass/maps/b/r;)V

    iget-object v5, p0, Lcom/google/glass/maps/v;->c:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/v;->f:[Lcom/google/glass/maps/y;

    invoke-static {p1}, Lcom/google/glass/maps/z;->d(Lcom/google/glass/maps/z;)[Lcom/google/glass/maps/y;

    move-result-object v3

    if-eq v0, v3, :cond_3

    invoke-static {p1}, Lcom/google/glass/maps/z;->d(Lcom/google/glass/maps/z;)[Lcom/google/glass/maps/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/v;->f:[Lcom/google/glass/maps/y;

    iget-object v0, p0, Lcom/google/glass/maps/v;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/s;

    invoke-virtual {v2, v0}, Lcom/google/glass/maps/b/k;->b(Lcom/google/glass/maps/b/s;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/v;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/glass/maps/v;->f:[Lcom/google/glass/maps/y;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/google/glass/maps/v;->f:[Lcom/google/glass/maps/y;

    array-length v4, v3

    move v0, v1

    :goto_3
    if-ge v0, v4, :cond_3

    aget-object v1, v3, v0

    new-instance v5, Lcom/google/glass/maps/b/s;

    iget-object v6, v1, Lcom/google/glass/maps/y;->a:Lcom/google/android/maps/driveabout/e/af;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/google/glass/maps/b/ao;->a(Lcom/google/android/maps/driveabout/e/af;Ljava/util/List;)Lcom/google/glass/maps/b/h;

    move-result-object v6

    iget v7, v1, Lcom/google/glass/maps/y;->b:F

    invoke-direct {v5, v6, v7}, Lcom/google/glass/maps/b/s;-><init>(Lcom/google/glass/maps/b/h;F)V

    iget v1, v1, Lcom/google/glass/maps/y;->c:I

    invoke-virtual {v5, v1}, Lcom/google/glass/maps/b/s;->a(I)V

    invoke-virtual {v2, v5}, Lcom/google/glass/maps/b/k;->a(Lcom/google/glass/maps/b/s;)V

    iget-object v1, p0, Lcom/google/glass/maps/v;->d:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private declared-synchronized g()Lcom/google/glass/maps/z;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/v;->b:Lcom/google/glass/maps/z;

    iget-object v1, p0, Lcom/google/glass/maps/v;->a:Lcom/google/glass/maps/z;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/z;->a(Lcom/google/glass/maps/z;)V

    iget-object v0, p0, Lcom/google/glass/maps/v;->b:Lcom/google/glass/maps/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    invoke-direct {p0}, Lcom/google/glass/maps/v;->g()Lcom/google/glass/maps/z;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/z;->b(Lcom/google/glass/maps/z;)Lcom/google/glass/maps/b/g;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/glass/maps/v;->a(Lcom/google/glass/maps/z;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/ab;F)V
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Lcom/google/glass/maps/b/g;

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/b/g;-><init>(Lcom/google/android/maps/driveabout/e/ab;FFFF)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/maps/v;->a:Lcom/google/glass/maps/z;

    invoke-static {v1, v0}, Lcom/google/glass/maps/z;->a(Lcom/google/glass/maps/z;Lcom/google/glass/maps/b/g;)Lcom/google/glass/maps/b/g;

    iget-object v1, p0, Lcom/google/glass/maps/v;->a:Lcom/google/glass/maps/z;

    invoke-static {v1, p2}, Lcom/google/glass/maps/z;->a(Lcom/google/glass/maps/z;F)F

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/glass/maps/v;->c()Lcom/google/glass/maps/b/k;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/maps/v;->c()Lcom/google/glass/maps/b/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/maps/b/k;->a()Lcom/google/glass/maps/b/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/b/n;->a(Lcom/google/glass/maps/b/g;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a([Lcom/google/glass/maps/x;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/v;->a:Lcom/google/glass/maps/z;

    invoke-static {v0, p1}, Lcom/google/glass/maps/z;->a(Lcom/google/glass/maps/z;[Lcom/google/glass/maps/x;)[Lcom/google/glass/maps/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a([Lcom/google/glass/maps/y;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/v;->a:Lcom/google/glass/maps/z;

    invoke-static {v0, p1}, Lcom/google/glass/maps/z;->a(Lcom/google/glass/maps/z;[Lcom/google/glass/maps/y;)[Lcom/google/glass/maps/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/google/glass/maps/b/t;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    iget-object v0, p0, Lcom/google/glass/maps/v;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/glass/maps/v;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/google/glass/maps/v;->e:[Lcom/google/glass/maps/x;

    iput-object v1, p0, Lcom/google/glass/maps/v;->f:[Lcom/google/glass/maps/y;

    invoke-virtual {p0}, Lcom/google/glass/maps/v;->c()Lcom/google/glass/maps/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/b/k;->a()Lcom/google/glass/maps/b/n;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/d/b;

    invoke-direct {v1}, Lcom/google/glass/maps/d/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/b/n;->a(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/google/glass/maps/d/b;

    invoke-direct {v1}, Lcom/google/glass/maps/d/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/b/n;->b(Landroid/view/animation/Interpolator;)V

    invoke-direct {p0}, Lcom/google/glass/maps/v;->g()Lcom/google/glass/maps/z;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/z;->b(Lcom/google/glass/maps/z;)Lcom/google/glass/maps/b/g;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/google/glass/maps/z;->b(Lcom/google/glass/maps/z;)Lcom/google/glass/maps/b/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/b/n;->a(Lcom/google/glass/maps/b/g;)V

    :cond_0
    return-void
.end method
