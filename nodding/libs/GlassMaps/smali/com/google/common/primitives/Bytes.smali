.class public final Lcom/google/common/primitives/Bytes;
.super Ljava/lang/Object;


# direct methods
.method public static a(B)I
    .locals 0

    return p0
.end method

.method static synthetic a([BBII)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->c([BBII)I

    move-result v0

    return v0
.end method

.method static synthetic b([BBII)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->d([BBII)I

    move-result v0

    return v0
.end method

.method private static c([BBII)I
    .locals 2

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static d([BBII)I
    .locals 2

    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
