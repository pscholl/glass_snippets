.class public final Lcom/google/android/maps/driveabout/e/z;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)F
    .locals 2

    int-to-float v0, p0

    const/high16 v1, 0x4100

    div-float/2addr v0, v1

    return v0
.end method

.method public static a(I[BI)V
    .locals 3

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    return-void
.end method

.method public static a(II)Z
    .locals 1

    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(I[Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-ltz p0, :cond_0

    array-length v0, p1

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)F
    .locals 2

    int-to-float v0, p0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    return v0
.end method

.method public static c(I)F
    .locals 2

    int-to-float v0, p0

    const/high16 v1, 0x4080

    div-float/2addr v0, v1

    return v0
.end method

.method public static d(I)F
    .locals 2

    int-to-float v0, p0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    return v0
.end method
