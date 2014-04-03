.class final Lcom/google/android/maps/driveabout/store/aa;
.super Ljava/lang/Object;


# instance fields
.field final a:[B

.field final b:I

.field c:I

.field d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit16 v0, p1, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/aa;->a:[B

    iput p1, p0, Lcom/google/android/maps/driveabout/store/aa;->b:I

    iput p2, p0, Lcom/google/android/maps/driveabout/store/aa;->c:I

    return-void
.end method

.method static a(J)[I
    .locals 10

    const/4 v0, 0x0

    const-wide/16 v8, 0x1fd3

    const/16 v7, 0x16

    const/4 v1, 0x3

    new-array v1, v1, [I

    invoke-static {p0, p1, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    rem-long v4, v2, v8

    long-to-int v4, v4

    aput v4, v1, v0

    invoke-static {v2, v3, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    const/4 v4, 0x1

    rem-long v5, v2, v8

    long-to-int v5, v5

    aput v5, v1, v4

    invoke-static {v2, v3, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    const/4 v4, 0x2

    rem-long/2addr v2, v8

    long-to-int v2, v2

    aput v2, v1, v4

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v2, v1, v0

    if-gez v2, :cond_0

    aget v2, v1, v0

    add-int/lit16 v2, v2, 0x1fd3

    aput v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/aa;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/aa;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State write lock needed to modify BloomFilters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private b(JI)V
    .locals 8

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/aa;->b()V

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/store/aa;->a(J)[I

    move-result-object v1

    mul-int/lit16 v2, p3, 0x400

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget v3, v1, v0

    shr-int/lit8 v3, v3, 0x3

    aget v4, v1, v0

    and-int/lit8 v4, v4, 0x7

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/aa;->a:[B

    add-int/2addr v3, v2

    aget-byte v6, v5, v3

    const/4 v7, 0x1

    shl-int v4, v7, v4

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 3

    mul-int/lit16 v0, p1, 0x400

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/aa;->a:[B

    const/16 v2, 0x3fc

    invoke-static {v1, v0, v2}, Lcom/google/android/maps/driveabout/store/y;->c([BII)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/aa;->a:[B

    add-int/lit16 v0, v0, 0x3fc

    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/store/y;->a([BII)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/aa;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/aa;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method final a(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/aa;->b()V

    iput p1, p0, Lcom/google/android/maps/driveabout/store/aa;->c:I

    return-void
.end method

.method final a(Lcom/google/android/maps/driveabout/store/ag;)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/aa;->b()V

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/ag;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/store/aa;->b(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/ag;->b()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/store/ag;->b(I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/ag;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/maps/driveabout/store/aa;->b(JI)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/ag;)I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/store/aa;->c:I

    if-lt v0, v1, :cond_2

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/ag;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/aa;->c:I

    :cond_2
    return-void
.end method

.method final a(Lcom/google/android/maps/driveabout/store/ay;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/maps/driveabout/store/aa;->c:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/aa;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/aa;->a:[B

    invoke-interface {p1, v0}, Lcom/google/android/maps/driveabout/store/ay;->b([B)V

    return-void
.end method

.method final a(Lcom/google/android/maps/driveabout/store/ay;I)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/store/aa;->d(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/aa;->a:[B

    mul-int/lit16 v1, p2, 0x400

    const/16 v2, 0x400

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/maps/driveabout/store/ay;->b([BII)V

    return-void
.end method

.method final a(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/aa;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method final a(JI)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/store/aa;->a(J)[I

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/google/android/maps/driveabout/store/aa;->a([II)Z

    move-result v0

    return v0
.end method

.method final a([II)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    mul-int/lit16 v3, p2, 0x400

    move v0, v1

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    aget v4, p1, v0

    shr-int/lit8 v4, v4, 0x3

    aget v5, p1, v0

    and-int/lit8 v5, v5, 0x7

    iget-object v6, p0, Lcom/google/android/maps/driveabout/store/aa;->a:[B

    add-int/2addr v4, v3

    aget-byte v4, v6, v4

    shl-int v5, v2, v5

    and-int/2addr v4, v5

    if-nez v4, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method final b(I)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/aa;->b()V

    mul-int/lit16 v0, p1, 0x400

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/aa;->a:[B

    add-int/lit16 v2, v0, 0x3fc

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method final b(Lcom/google/android/maps/driveabout/store/ay;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/aa;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/aa;->a:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/aa;->a:[B

    array-length v2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/maps/driveabout/store/ay;->a([BII)V

    return-void
.end method

.method final c(I)Z
    .locals 3

    mul-int/lit16 v0, p1, 0x400

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/aa;->a:[B

    const/16 v2, 0x3fc

    invoke-static {v1, v0, v2}, Lcom/google/android/maps/driveabout/store/y;->c([BII)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/aa;->a:[B

    add-int/lit16 v0, v0, 0x3fc

    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
