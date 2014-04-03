.class public final Lcom/google/android/maps/driveabout/store/bb;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private b:I

.field private c:Z

.field private d:[B

.field private e:Ljava/lang/ref/WeakReference;

.field private final f:Ljava/util/concurrent/CountDownLatch;

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->f:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->a:Ljava/util/ArrayList;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/store/bb;->h:J

    return-void
.end method

.method private i()Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bb;->d:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bb;->d:[B

    array-length v3, v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iput v4, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/store/bb;->d:[B

    :cond_0
    return-object v0
.end method


# virtual methods
.method final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/maps/driveabout/store/bb;->h:J

    return-void
.end method

.method final a(Lcom/google/android/maps/driveabout/store/bd;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bb;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/store/bb;->c:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/bb;->c:Z

    return v0
.end method

.method final a(Lcom/google/googlenav/common/io/b/a;)Z
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v6}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_3

    if-eqz v3, :cond_3

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/maps/driveabout/store/bb;->g:J

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v7}, Lcom/google/googlenav/common/io/b/a;->c(I)[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/store/bb;->d:[B

    const/4 v2, 0x2

    iput v2, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    :goto_0
    iget v2, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    if-eq v2, v0, :cond_2

    :goto_1
    return v0

    :cond_0
    const-string v3, "application/binary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v7}, Lcom/google/googlenav/common/io/b/a;->c(I)[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/store/bb;->d:[B

    iput v6, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    goto :goto_0

    :cond_1
    const-string v3, "ResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled content-type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const/16 v3, 0x130

    if-ne v2, v3, :cond_4

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_4
    iput v0, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    goto :goto_2
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    return v0
.end method

.method public final d()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    if-nez v0, :cond_1

    iget v2, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bb;->d:[B

    if-eqz v2, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_1
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bb;->d:[B

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/bb;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/store/bb;->e:Ljava/lang/ref/WeakReference;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/bb;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/store/bc;

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/store/bc;-><init>(Lcom/google/android/maps/driveabout/store/bb;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method final f()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/store/bb;->g:J

    return-wide v0
.end method

.method final g()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/store/bb;->h:J

    return-wide v0
.end method

.method final h()V
    .locals 3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bb;->a:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/bd;

    invoke-interface {v0, p0}, Lcom/google/android/maps/driveabout/store/bd;->a(Lcom/google/android/maps/driveabout/store/bb;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
