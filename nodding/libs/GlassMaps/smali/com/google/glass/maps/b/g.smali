.class public final Lcom/google/glass/maps/b/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/e/ab;

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/e/ab;FFFF)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/b/g;->a:Lcom/google/android/maps/driveabout/e/ab;

    const/high16 v0, 0x41a8

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/b/g;->b:F

    iput p3, p0, Lcom/google/glass/maps/b/g;->c:F

    iput p4, p0, Lcom/google/glass/maps/b/g;->d:F

    iput p5, p0, Lcom/google/glass/maps/b/g;->e:F

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/b/g;->b:F

    return v0
.end method

.method public final b()Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/b/g;->a:Lcom/google/android/maps/driveabout/e/ab;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    return-object v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/b/g;->c:F

    return v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/b/g;->d:F

    return v0
.end method

.method public final e()F
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/b/g;->e:F

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/glass/maps/b/g;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/glass/maps/b/g;

    iget-object v2, p0, Lcom/google/glass/maps/b/g;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v3, p1, Lcom/google/glass/maps/b/g;->a:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/e/ab;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/glass/maps/b/g;->b:F

    iget v3, p1, Lcom/google/glass/maps/b/g;->b:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/glass/maps/b/g;->c:F

    iget v3, p1, Lcom/google/glass/maps/b/g;->c:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/glass/maps/b/g;->d:F

    iget v3, p1, Lcom/google/glass/maps/b/g;->d:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/glass/maps/b/g;->e:F

    iget v3, p1, Lcom/google/glass/maps/b/g;->e:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/glass/maps/b/g;->b:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/google/glass/maps/b/g;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/google/glass/maps/b/g;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/google/glass/maps/b/g;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/google/glass/maps/b/g;->a:Lcom/google/android/maps/driveabout/e/ab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/b/g;->a:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ab;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/b/g;->a:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " zoom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/maps/b/g;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " viewingAngle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/maps/b/g;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bearing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/maps/b/g;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lookAhead:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/maps/b/g;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
