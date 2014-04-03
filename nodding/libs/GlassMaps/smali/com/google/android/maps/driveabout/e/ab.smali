.class public final Lcom/google/android/maps/driveabout/e/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iput p2, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iput p2, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iput p3, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    return-void
.end method

.method public static a(D)D
    .locals 4

    const-wide v0, 0x41731680b1202bfeL

    const-wide v2, 0x3f91df46a2529d39L

    mul-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x41c0

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)D
    .locals 5

    invoke-virtual {p1, p0}, Lcom/google/android/maps/driveabout/e/ab;->f(Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    iget v1, v0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    int-to-double v1, v1

    iget v0, v0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    int-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a63c1f8L

    mul-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const-wide v2, 0x4076800000000000L

    add-double/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)F
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;ZLcom/google/android/maps/driveabout/e/ab;)V

    invoke-virtual {p2, p3}, Lcom/google/android/maps/driveabout/e/ab;->c(Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v0

    return v0
.end method

.method public static a(DD)Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/e/ab;->b(DD)V

    return-object v0
.end method

.method public static a(II)Lcom/google/android/maps/driveabout/e/ab;
    .locals 6

    const-wide v4, 0x3e7ad7f29abcaf48L

    int-to-double v0, p0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/e/ab;->a(DD)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/ab;
    .locals 4

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v3, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/e/ab;-><init>(III)V

    return-object v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/m;)Lcom/google/android/maps/driveabout/e/ab;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/m;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/m;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/e/ab;->b(II)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/ab;
    .locals 3

    iget v0, p1, Lcom/google/android/maps/driveabout/e/av;->c:I

    if-gez v0, :cond_0

    iget v0, p1, Lcom/google/android/maps/driveabout/e/av;->c:I

    neg-int v0, v0

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v1

    shr-int/2addr v1, v0

    iget v2, p1, Lcom/google/android/maps/driveabout/e/av;->a:I

    add-int/2addr v1, v2

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v2

    shr-int v0, v2, v0

    iget v2, p1, Lcom/google/android/maps/driveabout/e/av;->b:I

    add-int/2addr v2, v0

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lcom/google/android/maps/driveabout/e/av;->c:I

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v1

    shl-int/2addr v1, v0

    iget v2, p1, Lcom/google/android/maps/driveabout/e/av;->a:I

    add-int/2addr v1, v2

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v2

    shl-int v0, v2, v0

    iget v2, p1, Lcom/google/android/maps/driveabout/e/av;->b:I

    add-int/2addr v2, v0

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    goto :goto_0
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/ab;FLcom/google/android/maps/driveabout/e/ab;)V
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Lcom/google/android/maps/driveabout/e/ab;->c:I

    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;FLcom/google/android/maps/driveabout/e/ab;)V
    .locals 2

    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->c:I

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/maps/driveabout/e/ab;->c:I

    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/ab;->c:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/maps/driveabout/e/ab;->c:I

    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;ZLcom/google/android/maps/driveabout/e/ab;)V
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/google/android/maps/driveabout/e/ab;->c(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v0

    if-eqz p3, :cond_2

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    invoke-virtual {p4, p0}, Lcom/google/android/maps/driveabout/e/ab;->b(Lcom/google/android/maps/driveabout/e/ab;)V

    :goto_0
    return-void

    :cond_0
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    invoke-virtual {p4, p1}, Lcom/google/android/maps/driveabout/e/ab;->b(Lcom/google/android/maps/driveabout/e/ab;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, v0, p4}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;FLcom/google/android/maps/driveabout/e/ab;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, v0, p4}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;FLcom/google/android/maps/driveabout/e/ab;)V

    goto :goto_0
.end method

.method static a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/e/av;[II)V
    .locals 6

    const/4 v5, 0x0

    mul-int/lit8 v0, p3, 0x3

    iget v1, p1, Lcom/google/android/maps/driveabout/e/av;->c:I

    if-gez v1, :cond_0

    iget v1, p1, Lcom/google/android/maps/driveabout/e/av;->c:I

    neg-int v1, v1

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int/2addr v3, v1

    iget v4, p1, Lcom/google/android/maps/driveabout/e/av;->a:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int v1, v3, v1

    iget v3, p1, Lcom/google/android/maps/driveabout/e/av;->b:I

    add-int/2addr v1, v3

    aput v1, p2, v2

    aput v5, p2, v0

    :goto_0
    return-void

    :cond_0
    iget v1, p1, Lcom/google/android/maps/driveabout/e/av;->c:I

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int/2addr v3, v1

    iget v4, p1, Lcom/google/android/maps/driveabout/e/av;->a:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int v1, v3, v1

    iget v3, p1, Lcom/google/android/maps/driveabout/e/av;->b:I

    add-int/2addr v1, v3

    aput v1, p2, v2

    aput v5, p2, v0

    goto :goto_0
.end method

.method public static b(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)F
    .locals 4

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    int-to-float v0, v0

    iget v1, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    int-to-float v1, v1

    iget v2, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    int-to-float v2, v2

    iget v3, p1, Lcom/google/android/maps/driveabout/e/ab;->c:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public static b(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)F
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;ZLcom/google/android/maps/driveabout/e/ab;)V

    invoke-virtual {p2, p3}, Lcom/google/android/maps/driveabout/e/ab;->d(Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v0

    return v0
.end method

.method public static b(II)Lcom/google/android/maps/driveabout/e/ab;
    .locals 6

    const-wide v4, 0x3eb0c6f7a0b5ed8dL

    int-to-double v0, p0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/e/ab;->a(DD)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/android/maps/driveabout/e/ab;FLcom/google/android/maps/driveabout/e/ab;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ab;->i()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float v0, v1, v0

    float-to-int v0, v0

    iput v0, p2, Lcom/google/android/maps/driveabout/e/ab;->c:I

    return-void
.end method

.method public static b(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/ab;->c:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/maps/driveabout/e/ab;->c:I

    return-void
.end method

.method static b(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/e/av;[II)V
    .locals 5

    mul-int/lit8 v0, p3, 0x3

    iget v1, p1, Lcom/google/android/maps/driveabout/e/av;->c:I

    if-gez v1, :cond_0

    iget v1, p1, Lcom/google/android/maps/driveabout/e/av;->c:I

    neg-int v1, v1

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int/2addr v3, v1

    iget v4, p1, Lcom/google/android/maps/driveabout/e/av;->a:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int/2addr v3, v1

    iget v4, p1, Lcom/google/android/maps/driveabout/e/av;->b:I

    add-int/2addr v3, v4

    aput v3, p2, v2

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    shr-int v1, v2, v1

    aput v1, p2, v0

    :goto_0
    return-void

    :cond_0
    iget v1, p1, Lcom/google/android/maps/driveabout/e/av;->c:I

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int/2addr v3, v1

    iget v4, p1, Lcom/google/android/maps/driveabout/e/av;->a:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int/2addr v3, v1

    iget v4, p1, Lcom/google/android/maps/driveabout/e/av;->b:I

    add-int/2addr v3, v4

    aput v3, p2, v2

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    shl-int v1, v2, v1

    aput v1, p2, v0

    goto :goto_0
.end method

.method public static c(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)F
    .locals 7

    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p1, Lcom/google/android/maps/driveabout/e/ab;->c:I

    iget v3, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v4, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v5, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p2, Lcom/google/android/maps/driveabout/e/ab;->c:I

    iget v6, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v3, v0

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v5

    add-float/2addr v3, v4

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    div-float v0, v3, v0

    return v0
.end method

.method public static c(II)Lcom/google/android/maps/driveabout/e/ab;
    .locals 6

    const-wide v4, 0x3ee4f8b588e368f1L

    int-to-double v0, p0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/e/ab;->a(DD)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    return-object v0
.end method

.method private static d(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    int-to-long v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    int-to-long v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    int-to-long v5, v5

    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    int-to-long v7, v7

    move-object/from16 v0, p1

    iget v9, v0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    int-to-long v9, v9

    move-object/from16 v0, p1

    iget v11, v0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    int-to-long v11, v11

    mul-long v13, v3, v11

    mul-long v15, v5, v9

    sub-long/2addr v13, v15

    long-to-int v13, v13

    move-object/from16 v0, p2

    iput v13, v0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    mul-long/2addr v5, v7

    mul-long/2addr v11, v1

    sub-long/2addr v5, v11

    long-to-int v5, v5

    move-object/from16 v0, p2

    iput v5, v0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    mul-long/2addr v1, v9

    mul-long/2addr v3, v7

    sub-long/2addr v1, v3

    long-to-int v1, v1

    move-object/from16 v0, p2

    iput v1, v0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    return-void
.end method

.method private j(Lcom/google/android/maps/driveabout/e/ab;)I
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/ab;->c:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ab;->b()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/ab;F)Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;FLcom/google/android/maps/driveabout/e/ab;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    return-void
.end method

.method public final a([II)V
    .locals 3

    mul-int/lit8 v0, p2, 0x3

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    aput v1, p1, v0

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    aput v1, p1, v0

    return-void
.end method

.method public final b()D
    .locals 6

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    int-to-double v0, v0

    const-wide v2, 0x3e3921fb54442d18L

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide v4, 0x3fe921fb54442d18L

    sub-double/2addr v0, v4

    mul-double/2addr v0, v2

    const-wide v2, 0x404ca5dc1a63c1f8L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public final b(DD)V
    .locals 8

    const-wide v6, 0x41a45f306dc9c883L

    const-wide v2, 0x3f91df46a2529d39L

    mul-double v0, p1, v2

    mul-double/2addr v2, p3

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v0, v4

    const-wide v4, 0x3fe921fb54442d18L

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/maps/driveabout/e/ab;->d(II)V

    return-void
.end method

.method public final b(Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 1

    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->c:I

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    return-void
.end method

.method public final c(Lcom/google/android/maps/driveabout/e/ab;)F
    .locals 4

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v2, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    iget v3, p1, Lcom/google/android/maps/driveabout/e/ab;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final c()I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ab;->d()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/e/ab;->j(Lcom/google/android/maps/driveabout/e/ab;)I

    move-result v0

    return v0
.end method

.method public final d()D
    .locals 6

    const-wide v4, 0x4076800000000000L

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    int-to-double v0, v0

    const-wide v2, 0x3e3921fb54442d18L

    mul-double/2addr v0, v2

    const-wide v2, 0x404ca5dc1a63c1f8L

    mul-double/2addr v0, v2

    :goto_0
    const-wide v2, 0x4066800000000000L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    sub-double/2addr v0, v4

    goto :goto_0

    :cond_0
    :goto_1
    const-wide v2, -0x3f99800000000000L

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    add-double/2addr v0, v4

    goto :goto_1

    :cond_1
    return-wide v0
.end method

.method public final d(Lcom/google/android/maps/driveabout/e/ab;)F
    .locals 4

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v2, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    iget v3, p1, Lcom/google/android/maps/driveabout/e/ab;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public final d(II)V
    .locals 1

    iput p1, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iput p2, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    return-void
.end method

.method public final e()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ab;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/e/ab;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final e(Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/ab;
    .locals 5

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v2, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v3, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    iget v4, p1, Lcom/google/android/maps/driveabout/e/ab;->c:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/e/ab;-><init>(III)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/maps/driveabout/e/ab;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/maps/driveabout/e/ab;

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v2, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v2, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    iget v2, p1, Lcom/google/android/maps/driveabout/e/ab;->c:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    return v0
.end method

.method public final f(Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/ab;
    .locals 5

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v2, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v3, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    iget v4, p1, Lcom/google/android/maps/driveabout/e/ab;->c:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/e/ab;-><init>(III)V

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    return v0
.end method

.method public final g(Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/android/maps/driveabout/e/ab;->d(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    return v0
.end method

.method public final h(Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 3

    const/high16 v2, 0x4000

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iput v0, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iput v0, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    iput v0, p1, Lcom/google/android/maps/driveabout/e/ab;->c:I

    :goto_0
    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    const/high16 v1, -0x2000

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    goto :goto_0

    :cond_0
    :goto_1
    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    const/high16 v1, 0x2000

    if-lt v0, v1, :cond_1

    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    sub-int/2addr v0, v2

    iput v0, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    shr-int/lit8 v3, v2, 0xd

    xor-int/2addr v0, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v3, v0, 0x8

    xor-int/2addr v1, v3

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    shr-int/lit8 v3, v1, 0xd

    xor-int/2addr v2, v3

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    shr-int/lit8 v3, v2, 0xc

    xor-int/2addr v0, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v3, v0, 0x10

    xor-int/2addr v1, v3

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    shr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    shr-int/lit8 v3, v2, 0x3

    xor-int/2addr v0, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v3, v0, 0xa

    xor-int/2addr v1, v3

    sub-int v0, v2, v0

    sub-int/2addr v0, v1

    shr-int/lit8 v1, v1, 0xf

    xor-int/2addr v0, v1

    return v0
.end method

.method public final i()F
    .locals 4

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final i(Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 4

    const/high16 v3, 0x2000

    const v2, 0x1fffffff

    const/high16 v1, -0x2000

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-ge v0, v1, :cond_0

    iput v1, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    :goto_0
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-ge v0, v1, :cond_2

    iput v1, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    :goto_1
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    iput v0, p1, Lcom/google/android/maps/driveabout/e/ab;->c:I

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-lt v0, v3, :cond_1

    iput v2, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iput v0, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-lt v0, v3, :cond_3

    iput v2, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iput v0, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    goto :goto_1
.end method

.method public final j()Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%f,%f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ab;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ab;->d()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
