.class public final Lcom/google/glass/util/s;
.super Ljava/lang/Object;


# direct methods
.method private static a(I)I
    .locals 3

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/s;->a(III)I

    move-result v0

    return v0
.end method

.method private static a(III)I
    .locals 2

    mul-int/lit16 v0, p0, 0x12b

    mul-int/lit16 v1, p1, 0x24b

    add-int/2addr v0, v1

    mul-int/lit8 v1, p2, 0x72

    add-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private static a(IIIIII)I
    .locals 2

    sub-int v0, p0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p1, p4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    sub-int v1, p2, p5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static a(II)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/google/glass/util/s;->b(II)I

    move-result v0

    const/16 v1, 0x7d

    if-le v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/google/glass/util/s;->c(II)I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(II)I
    .locals 2

    invoke-static {p0}, Lcom/google/glass/util/s;->a(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/glass/util/s;->a(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method private static c(II)I
    .locals 6

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/google/glass/util/s;->a(IIIIII)I

    move-result v0

    return v0
.end method
