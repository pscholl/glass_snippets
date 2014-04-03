.class final Lcom/google/android/maps/driveabout/store/ak;
.super Lcom/google/android/maps/driveabout/store/e;


# instance fields
.field final synthetic d:Lcom/google/android/maps/driveabout/store/aj;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/store/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/ak;->d:Lcom/google/android/maps/driveabout/store/aj;

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/e;-><init>(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)V

    return-void
.end method


# virtual methods
.method protected final b(I)Lcom/google/android/maps/driveabout/e/au;
    .locals 7

    const/16 v3, 0x100

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ak;->b:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/e/n;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/store/ak;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/ak;->b()I

    move-result v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/ak;->b:[[B

    aget-object v5, v4, p1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/ak;->d:Lcom/google/android/maps/driveabout/store/aj;

    iget-object v6, v4, Lcom/google/android/maps/driveabout/store/aj;->a:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/e/n;-><init>(Lcom/google/android/maps/driveabout/e/av;III[BLcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)V

    goto :goto_0
.end method

.method protected final c(I)[B
    .locals 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ak;->b:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ak;->b:[[B

    aget-object v0, v0, p1

    array-length v0, v0

    add-int/lit8 v0, v0, 0x20

    invoke-direct {v7, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/store/ak;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/ak;->b()I

    move-result v1

    const/16 v2, 0x100

    const/16 v3, 0x100

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/ak;->b:[[B

    aget-object v4, v4, p1

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/e/n;->a(Lcom/google/android/maps/driveabout/e/av;III[BLjava/io/DataOutput;)V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method
