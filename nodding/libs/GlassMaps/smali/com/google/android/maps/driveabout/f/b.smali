.class public final Lcom/google/android/maps/driveabout/f/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/maps/driveabout/g/e;)F
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/g/e;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/g/e;->b(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/g/e;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/e/ad;->b(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/maps/driveabout/f/b;->a(Lcom/google/android/maps/driveabout/g/e;)F

    move-result v0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/f/b;->b(Lcom/google/android/maps/driveabout/g/e;)F

    move-result v1

    sub-float v0, v1, v0

    float-to-int v0, v0

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x168

    :cond_0
    const/16 v1, 0xb4

    if-le v0, v1, :cond_1

    add-int/lit16 v0, v0, -0x168

    :cond_1
    return v0
.end method

.method public static b(Lcom/google/android/maps/driveabout/g/e;)F
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/g/e;->b(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/g/e;->b(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/e/ad;->b(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v0

    goto :goto_0
.end method

.method public static c(Lcom/google/android/maps/driveabout/g/e;)I
    .locals 5

    invoke-static {p0}, Lcom/google/android/maps/driveabout/f/b;->b(Lcom/google/android/maps/driveabout/g/e;)F

    move-result v0

    float-to-double v1, v0

    const-wide v3, 0x4075180000000000L

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_0

    float-to-double v1, v0

    const-wide v3, 0x4036800000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    float-to-double v1, v0

    const-wide v3, 0x4050e00000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    float-to-double v1, v0

    const-wide v3, 0x405c200000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    float-to-double v1, v0

    const-wide v3, 0x4063b00000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    float-to-double v1, v0

    const-wide v3, 0x4069500000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    float-to-double v1, v0

    const-wide v3, 0x406ef00000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_6

    const/4 v0, 0x6

    goto :goto_0

    :cond_6
    float-to-double v0, v0

    const-wide v2, 0x4072480000000000L

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_0

    :cond_7
    const/16 v0, 0x8

    goto :goto_0
.end method
