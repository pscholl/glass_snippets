.class public abstract Lcom/google/android/maps/driveabout/store/e;
.super Lcom/google/android/maps/driveabout/store/m;


# instance fields
.field protected a:I

.field protected b:[[B

.field final synthetic c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;


# direct methods
.method protected constructor <init>(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)V
    .locals 1

    const/16 v0, 0x8

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/m;-><init>(I)V

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/e;->b:[[B

    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 5

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    sget-object v1, Lcom/google/i/a/a/b/aa;->g:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v1, p1, v0}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/InputStream;Lcom/google/googlenav/common/io/b/a;)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/google/googlenav/common/e/a;->a(JJ)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/store/e;->a:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received tile response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/io/InputStream;)V
    .locals 13

    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v3, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/e;->c()I

    move-result v5

    move v0, v1

    :goto_0
    new-instance v4, Lcom/google/googlenav/common/io/b/a;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    sget-object v2, Lcom/google/i/a/a/b/aa;->g:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v2, p1, v4}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/InputStream;Lcom/google/googlenav/common/io/b/a;)I

    move-result v2

    if-ne v2, v3, :cond_1

    if-eq v0, v5, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "tiles, expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v7

    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    invoke-static {v9}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->e(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v2, v12}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v2, v12}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    :goto_1
    invoke-virtual {v4, v11}, Lcom/google/googlenav/common/io/b/a;->c(I)[B

    move-result-object v9

    if-eqz v9, :cond_4

    array-length v4, v9

    :goto_2
    invoke-virtual {p0, v4, v2}, Lcom/google/android/maps/driveabout/store/e;->a(II)[B

    move-result-object v2

    if-eqz v9, :cond_2

    array-length v10, v2

    sub-int/2addr v10, v4

    invoke-static {v9, v1, v2, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-lt v0, v5, :cond_5

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    move v4, v1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/store/e;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/e/av;->a()I

    move-result v10

    if-ne v8, v10, :cond_6

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v8

    if-ne v6, v8, :cond_6

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v6

    if-eq v7, v6, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Received wrong tile"

    invoke-static {v2, v4}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-nez v4, :cond_8

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "COMPACT-0 tile at coords: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/e;->b:[[B

    aput-object v2, v4, v0

    goto :goto_3
.end method

.method private static e()Z
    .locals 1

    invoke-static {}, Lcom/google/android/maps/driveabout/util/l;->a()Lcom/google/android/maps/driveabout/util/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/j;->A()Z

    move-result v0

    return v0
.end method

.method private f()Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;
    .locals 5

    sget-object v1, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->UNKNOWN:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/e;->c()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/store/e;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/p;->b()Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    move-result-object v2

    sget-object v3, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->UNKNOWN:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    if-eq v1, v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->getValue()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->getValue()I

    move-result v4

    if-ge v3, v4, :cond_1

    :cond_0
    move-object v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x6c

    return v0
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 12

    const/4 v1, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    new-instance v2, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/i/a/a/b/aa;->c:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    new-instance v3, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/i/a/a/b/aa;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v3, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    invoke-virtual {v3, v9, v2}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->a(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)I

    move-result v0

    invoke-virtual {v2, v9, v0}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->b(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)I

    move-result v0

    invoke-virtual {v2, v11, v0}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/e;->f()Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->getValue()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->c(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v10, v0}, Lcom/google/googlenav/common/io/b/a;->a(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->d(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v8, v10}, Lcom/google/googlenav/common/io/b/a;->a(II)V

    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v8, v1}, Lcom/google/googlenav/common/io/b/a;->a(II)V

    :cond_2
    invoke-static {}, Lcom/google/googlenav/e;->a()Lcom/google/googlenav/e;

    invoke-static {}, Lcom/google/googlenav/e;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2, v8, v11}, Lcom/google/googlenav/common/io/b/a;->a(II)V

    :cond_3
    invoke-static {}, Lcom/google/android/maps/driveabout/store/e;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v8, v8}, Lcom/google/googlenav/common/io/b/a;->a(II)V

    :cond_4
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/e;->f()Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    move-result-object v0

    sget-object v4, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->UNKNOWN:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    if-eq v0, v4, :cond_5

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/e;->f()Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->getValue()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/e;->c()I

    move-result v2

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_8

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/store/e;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v4

    new-instance v5, Lcom/google/googlenav/common/io/b/a;

    sget-object v6, Lcom/google/i/a/a/b/aa;->i:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v5, v6}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/av;->a()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    invoke-static {v7}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->e(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v11, v6}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    iget-object v6, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    iget-object v6, v6, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->a:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    iget v6, v6, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->mRequestType:I

    invoke-virtual {v5, v9, v6}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/google/android/maps/driveabout/store/e;->c:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;

    iget-object v7, v7, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->a:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    iget v7, v7, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->mTileVariant:I

    invoke-virtual {v5, v6, v7}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/av;->d()Lcom/google/android/maps/driveabout/e/k;

    move-result-object v6

    if-eqz v6, :cond_6

    const/4 v6, 0x6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/av;->d()Lcom/google/android/maps/driveabout/e/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/google/googlenav/e;->a()Lcom/google/googlenav/e;

    invoke-static {}, Lcom/google/googlenav/e;->b()Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x8

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/p;->e()I

    move-result v1

    invoke-virtual {v5, v4, v1}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    :cond_7
    const/16 v1, 0x9

    invoke-virtual {v3, v1, v5}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    invoke-static {p1, v3}, Lcom/google/googlenav/common/io/b/f;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/b/a;)V

    return-void
.end method

.method protected final a(Lcom/google/android/maps/driveabout/store/p;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/e;->c()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/store/e;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/av;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/av;->a()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 2

    invoke-static {p1}, Lcom/google/googlenav/common/io/b/f;->a(Ljava/io/DataInput;)Ljava/io/InputStream;

    move-result-object v1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/store/e;->a(Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/store/e;->b(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method protected a(II)[B
    .locals 1

    new-array v0, p1, [B

    return-object v0
.end method

.method protected b()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/store/e;->a:I

    return v0
.end method
