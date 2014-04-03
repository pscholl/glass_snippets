.class public final Lcom/google/android/maps/driveabout/util/f;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/m;
    .locals 3

    new-instance v0, Lcom/google/android/maps/driveabout/e/m;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ab;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ab;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/m;-><init>(II)V

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/e/m;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    new-instance v0, Lcom/google/android/maps/driveabout/e/m;

    invoke-direct {v0, v2, v1}, Lcom/google/android/maps/driveabout/e/m;-><init>(II)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    new-instance v0, Lcom/google/android/maps/driveabout/e/m;

    invoke-direct {v0, v2, v1}, Lcom/google/android/maps/driveabout/e/m;-><init>(II)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/google/android/maps/driveabout/util/f;->b(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/util/f;->a(Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/m;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/location/Location;)Lcom/google/googlenav/c/a;
    .locals 6

    const-wide v4, 0x412e848000000000L

    new-instance v0, Lcom/google/googlenav/c/a;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/c/a;-><init>(II)V

    return-object v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/m;)Lcom/google/googlenav/common/io/b/a;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/i/a/a/b/l;->b:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/m;->a()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/m;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    new-instance v1, Lcom/google/googlenav/common/io/b/a;

    sget-object v2, Lcom/google/i/a/a/b/l;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    const/4 v2, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    return-object v1
.end method

.method public static b(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/e/ab;
    .locals 5

    const/high16 v4, 0x2000

    const/4 v3, 0x1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    rsub-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, -0x7

    shl-int v0, v3, v0

    mul-int/2addr v1, v0

    sub-int/2addr v1, v4

    mul-int/2addr v0, v2

    sub-int v0, v4, v0

    new-instance v2, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v2, v1, v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    return-object v2
.end method

.method public static b(Lcom/google/android/maps/driveabout/e/m;)Lcom/google/googlenav/common/io/b/a;
    .locals 3

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/i/a/a/b/l;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/m;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/m;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    return-object v0
.end method
