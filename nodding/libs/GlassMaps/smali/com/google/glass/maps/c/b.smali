.class public final Lcom/google/glass/maps/c/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(I[F)V
    .locals 3

    const v2, 0x3b808081

    const/4 v0, 0x3

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x0

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x2

    and-int/lit16 v1, p0, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v2

    aput v1, p1, v0

    return-void
.end method

.method public static b(I[F)V
    .locals 3

    const v2, 0x3b808081

    const/4 v0, 0x0

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x2

    and-int/lit16 v1, p0, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v2

    aput v1, p1, v0

    return-void
.end method
