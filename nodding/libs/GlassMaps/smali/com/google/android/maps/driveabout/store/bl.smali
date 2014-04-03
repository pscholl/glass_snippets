.class final Lcom/google/android/maps/driveabout/store/bl;
.super Lcom/google/android/maps/driveabout/store/e;


# instance fields
.field final synthetic d:Lcom/google/android/maps/driveabout/store/bk;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/store/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/bl;->d:Lcom/google/android/maps/driveabout/store/bk;

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/e;-><init>(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)V

    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bl;->b:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bl;->b:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bl;->b:[[B

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/g/d;->a([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    return v0

    :catch_0
    move-exception v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected final b(I)Lcom/google/android/maps/driveabout/e/au;
    .locals 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bl;->b:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/store/bl;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bl;->b:[[B

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/common/b;->g()Lcom/google/googlenav/common/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v3

    const-wide/32 v5, 0x48190800

    add-long/2addr v3, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/g/d;->a(Lcom/google/android/maps/driveabout/e/av;[BIJ)Lcom/google/android/maps/driveabout/g/d;

    move-result-object v0

    goto :goto_0
.end method

.method protected final c(I)[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bl;->b:[[B

    aget-object v0, v0, p1

    return-object v0
.end method
