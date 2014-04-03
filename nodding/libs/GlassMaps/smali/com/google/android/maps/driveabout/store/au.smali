.class public final Lcom/google/android/maps/driveabout/store/au;
.super Lcom/google/android/maps/driveabout/store/i;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;ILjava/util/Locale;Ljava/io/File;)V
    .locals 10

    const-string v2, "lts"

    new-instance v3, Lcom/google/android/maps/driveabout/store/al;

    const/16 v0, 0x100

    invoke-direct {v3, v0}, Lcom/google/android/maps/driveabout/store/al;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/maps/driveabout/store/i;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Lcom/google/android/maps/driveabout/store/bs;Lcom/google/android/maps/driveabout/store/v;IZILjava/util/Locale;Ljava/io/File;)V

    return-void
.end method

.method static a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/e/ap;Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/j;
    .locals 12

    const/4 v8, 0x7

    const/4 v0, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v10, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v5, v10}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/util/f;->b(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/e/av;->e()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/e/al;->a(Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v4, v10}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5}, Lcom/google/android/maps/driveabout/store/au;->a(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/store/au;->a(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/store/au;->a(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v8}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v8}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    div-int/lit8 v9, v0, 0xa

    :goto_1
    const-string v4, ""

    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    new-array v11, v10, [I

    new-instance v0, Lcom/google/android/maps/driveabout/e/ac;

    move-object v1, p2

    move-object v8, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/maps/driveabout/e/ac;-><init>(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/ab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/e/ap;II[I)V

    goto :goto_0

    :cond_3
    move v9, v10

    goto :goto_1
.end method

.method private static a(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/e/av;Z)Lcom/google/android/maps/driveabout/e/au;
    .locals 2

    instance-of v0, p1, Lcom/google/android/maps/driveabout/store/aw;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "DashServerLayerTileStore only supports LayerCoords"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/e/av;Z)Lcom/google/android/maps/driveabout/e/au;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/store/bt;)V
    .locals 2

    instance-of v0, p1, Lcom/google/android/maps/driveabout/store/aw;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "DashServerLayerTileStore only supports LayerCoords"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/store/bt;)V

    return-void
.end method

.method public final b()Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->LAYER:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    return-object v0
.end method

.method protected final g()Lcom/google/android/maps/driveabout/store/m;
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/store/av;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/au;->d:Lcom/google/googlenav/common/a;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/store/av;-><init>(Lcom/google/googlenav/common/a;)V

    return-object v0
.end method
