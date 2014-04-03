.class public final Lcom/google/android/maps/driveabout/e/t;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:F

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/android/maps/driveabout/e/ap;

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:F


# direct methods
.method private constructor <init>(ILjava/lang/String;ILjava/lang/String;Lcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/e/t;->a:I

    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/t;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/maps/driveabout/e/t;->c:I

    const/high16 v0, 0x3f80

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/e/t;->d:F

    iput-object p4, p0, Lcom/google/android/maps/driveabout/e/t;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/e/t;->f:Lcom/google/android/maps/driveabout/e/ap;

    iput p6, p0, Lcom/google/android/maps/driveabout/e/t;->g:I

    iput-object p7, p0, Lcom/google/android/maps/driveabout/e/t;->h:Ljava/lang/String;

    iput p8, p0, Lcom/google/android/maps/driveabout/e/t;->i:F

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;Lcom/google/android/maps/driveabout/e/ap;Ljava/lang/String;Ljava/util/List;)V
    .locals 9

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/e/t;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    :cond_0
    const/4 v4, 0x0

    invoke-static {v1}, Lcom/google/android/maps/driveabout/e/t;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v0, 0x0

    invoke-static {v1}, Lcom/google/android/maps/driveabout/e/t;->d(I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/google/android/maps/driveabout/e/aq;->a(I)Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v5

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v6

    invoke-static {v6, p3}, Lcom/google/android/maps/driveabout/e/z;->a(I[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    aget-object v0, p3, v6

    :cond_2
    move-object v7, v0

    :goto_0
    const/4 v8, 0x0

    invoke-static {v1}, Lcom/google/android/maps/driveabout/e/t;->e(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/z;->a(I)F

    move-result v8

    :cond_3
    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x8

    if-eq v1, v0, :cond_5

    new-instance v0, Lcom/google/android/maps/driveabout/e/t;

    xor-int/lit8 v1, v1, 0x8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/e/t;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;F)V

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/maps/driveabout/e/t;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/high16 v8, -0x4080

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/e/t;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;F)V

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_4
    invoke-static {v1}, Lcom/google/android/maps/driveabout/e/t;->a(I)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, p5

    move-object v5, p4

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/google/android/maps/driveabout/e/t;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/e/t;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;F)V

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move-object v7, v0

    goto :goto_0
.end method

.method private static a(I)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/t;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/t;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private static c(I)Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private static d(I)Z
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private static e(I)Z
    .locals 1

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private static f(I)Z
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/t;->a:I

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/t;->a(I)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/t;->a:I

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/t;->b(I)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/t;->a:I

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/t;->c(I)Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/t;->a:I

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/t;->f(I)Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/t;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    check-cast p1, Lcom/google/android/maps/driveabout/e/t;

    iget v2, p0, Lcom/google/android/maps/driveabout/e/t;->a:I

    iget v3, p1, Lcom/google/android/maps/driveabout/e/t;->a:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/maps/driveabout/e/t;->i:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/maps/driveabout/e/t;->i:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/t;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/t;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/t;->f:Lcom/google/android/maps/driveabout/e/ap;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/t;->f:Lcom/google/android/maps/driveabout/e/ap;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/t;->h:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/t;->h:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_4
    iget v2, p0, Lcom/google/android/maps/driveabout/e/t;->c:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/maps/driveabout/e/t;->c:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/t;->e:Ljava/lang/String;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/t;->e:Ljava/lang/String;

    if-nez v2, :cond_8

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/t;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/e/t;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/t;->f:Lcom/google/android/maps/driveabout/e/ap;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/e/t;->f:Lcom/google/android/maps/driveabout/e/ap;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/e/ap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/t;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/e/t;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/t;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/e/t;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/t;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Lcom/google/android/maps/driveabout/e/ap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/t;->f:Lcom/google/android/maps/driveabout/e/ap;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/e/t;->a:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/maps/driveabout/e/t;->i:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/t;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/t;->f:Lcom/google/android/maps/driveabout/e/ap;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/t;->h:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/maps/driveabout/e/t;->c:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/t;->e:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/t;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/t;->f:Lcom/google/android/maps/driveabout/e/ap;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ap;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/t;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/t;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3
.end method
