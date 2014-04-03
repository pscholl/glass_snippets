.class final Lcom/google/android/maps/driveabout/store/cc;
.super Lcom/google/android/maps/driveabout/store/e;


# instance fields
.field final synthetic d:Lcom/google/android/maps/driveabout/store/cb;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/store/cb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/cc;->d:Lcom/google/android/maps/driveabout/store/cb;

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/e;-><init>(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)V

    return-void
.end method


# virtual methods
.method protected final a(II)[B
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/e/bd;->f()I

    move-result v0

    add-int/2addr v0, p1

    new-array v0, v0, [B

    iget v1, p0, Lcom/google/android/maps/driveabout/store/cc;->a:I

    invoke-static {v1, p2, v0}, Lcom/google/android/maps/driveabout/e/bd;->a(II[B)V

    return-object v0
.end method

.method protected final b(I)Lcom/google/android/maps/driveabout/e/au;
    .locals 8

    const-wide/16 v6, -0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/cc;->b:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/cc;->d:Lcom/google/android/maps/driveabout/store/cb;

    iget-wide v0, v0, Lcom/google/android/maps/driveabout/store/cb;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->g()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/cc;->d:Lcom/google/android/maps/driveabout/store/cb;

    iget-wide v2, v2, Lcom/google/android/maps/driveabout/store/cb;->h:J

    add-long v4, v0, v2

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/store/cc;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/cc;->b:[[B

    aget-object v1, v1, p1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/cc;->d:Lcom/google/android/maps/driveabout/store/cb;

    iget-object v3, v3, Lcom/google/android/maps/driveabout/store/cb;->a:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    invoke-static/range {v0 .. v7}, Lcom/google/android/maps/driveabout/e/bd;->a(Lcom/google/android/maps/driveabout/e/av;[BILcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;JJ)Lcom/google/android/maps/driveabout/e/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/cc;->d:Lcom/google/android/maps/driveabout/store/cb;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/store/cb;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/e/au;->c(Lcom/google/googlenav/common/a;)V

    goto :goto_0

    :cond_1
    move-wide v4, v6

    goto :goto_1
.end method

.method protected final c(I)[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/cc;->b:[[B

    aget-object v0, v0, p1

    return-object v0
.end method
