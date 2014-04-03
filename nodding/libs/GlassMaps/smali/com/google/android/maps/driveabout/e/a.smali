.class public final Lcom/google/android/maps/driveabout/e/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/e/ab;

.field private final b:I

.field private final c:F

.field private final d:Lcom/google/android/maps/driveabout/e/ab;

.field private final e:F

.field private final f:F

.field private final g:F


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/e/ab;IFLcom/google/android/maps/driveabout/e/ab;FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/a;->a:Lcom/google/android/maps/driveabout/e/ab;

    iput p2, p0, Lcom/google/android/maps/driveabout/e/a;->b:I

    iput p3, p0, Lcom/google/android/maps/driveabout/e/a;->c:F

    iput-object p4, p0, Lcom/google/android/maps/driveabout/e/a;->d:Lcom/google/android/maps/driveabout/e/ab;

    iput p5, p0, Lcom/google/android/maps/driveabout/e/a;->e:F

    iput p6, p0, Lcom/google/android/maps/driveabout/e/a;->f:F

    iput p7, p0, Lcom/google/android/maps/driveabout/e/a;->g:F

    return-void
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/e/av;I)Lcom/google/android/maps/driveabout/e/a;
    .locals 8

    const/high16 v0, 0x7fc0

    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/e/ab;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/e/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/e/z;->d(I)F

    move-result v3

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2}, Lcom/google/android/maps/driveabout/e/a;->b(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/e/ab;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v4

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/z;->d(I)F

    move-result v5

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/z;->a(I)F

    move-result v6

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/z;->a(I)F

    move-result v7

    :goto_1
    new-instance v0, Lcom/google/android/maps/driveabout/e/a;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/e/a;-><init>(Lcom/google/android/maps/driveabout/e/ab;IFLcom/google/android/maps/driveabout/e/ab;FFF)V

    return-object v0

    :cond_0
    move v7, v0

    move v6, v0

    move v5, v0

    goto :goto_1

    :cond_1
    move v3, v0

    goto :goto_0
.end method

.method private static a(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private static b(I)Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/e/z;->a(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/a;->a:Lcom/google/android/maps/driveabout/e/ab;

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

    check-cast p1, Lcom/google/android/maps/driveabout/e/a;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/a;->d:Lcom/google/android/maps/driveabout/e/ab;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/a;->d:Lcom/google/android/maps/driveabout/e/ab;

    if-nez v2, :cond_0

    :cond_2
    iget v2, p0, Lcom/google/android/maps/driveabout/e/a;->f:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/maps/driveabout/e/a;->f:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/maps/driveabout/e/a;->e:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/maps/driveabout/e/a;->e:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/maps/driveabout/e/a;->g:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/maps/driveabout/e/a;->g:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/maps/driveabout/e/a;->b:I

    iget v3, p1, Lcom/google/android/maps/driveabout/e/a;->b:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/a;->a:Lcom/google/android/maps/driveabout/e/ab;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/a;->a:Lcom/google/android/maps/driveabout/e/ab;

    if-nez v2, :cond_0

    :cond_3
    iget v2, p0, Lcom/google/android/maps/driveabout/e/a;->c:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/maps/driveabout/e/a;->c:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_6

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/a;->d:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/e/a;->d:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/e/ab;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/a;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/e/a;->a:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/e/ab;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/a;->d:Lcom/google/android/maps/driveabout/e/ab;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/maps/driveabout/e/a;->f:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/maps/driveabout/e/a;->e:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/maps/driveabout/e/a;->g:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/maps/driveabout/e/a;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/a;->a:Lcom/google/android/maps/driveabout/e/ab;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/e/a;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/a;->d:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ab;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/a;->a:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ab;->hashCode()I

    move-result v1

    goto :goto_1
.end method
