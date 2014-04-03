.class public final Lcom/google/android/maps/driveabout/nav/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Lcom/google/android/maps/driveabout/nav/w;

.field private final b:I

.field private final c:Lcom/google/android/maps/driveabout/nav/ah;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:I

.field private final j:Z

.field private final k:Lcom/google/android/maps/driveabout/nav/w;


# direct methods
.method constructor <init>([Lcom/google/android/maps/driveabout/nav/w;ILcom/google/android/maps/driveabout/nav/ah;IIIIZIZLcom/google/android/maps/driveabout/nav/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/p;->a:[Lcom/google/android/maps/driveabout/nav/w;

    iput p2, p0, Lcom/google/android/maps/driveabout/nav/p;->b:I

    iput-object p3, p0, Lcom/google/android/maps/driveabout/nav/p;->c:Lcom/google/android/maps/driveabout/nav/ah;

    iput p4, p0, Lcom/google/android/maps/driveabout/nav/p;->d:I

    iput p5, p0, Lcom/google/android/maps/driveabout/nav/p;->e:I

    iput p6, p0, Lcom/google/android/maps/driveabout/nav/p;->f:I

    iput p7, p0, Lcom/google/android/maps/driveabout/nav/p;->g:I

    iput-boolean p8, p0, Lcom/google/android/maps/driveabout/nav/p;->h:Z

    iput p9, p0, Lcom/google/android/maps/driveabout/nav/p;->i:I

    iput-boolean p10, p0, Lcom/google/android/maps/driveabout/nav/p;->j:Z

    iput-object p11, p0, Lcom/google/android/maps/driveabout/nav/p;->k:Lcom/google/android/maps/driveabout/nav/w;

    return-void
.end method

.method private l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->a:[Lcom/google/android/maps/driveabout/nav/w;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/p;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/p;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/p;->e:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a(F)Lcom/google/android/maps/driveabout/e/ar;
    .locals 9

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/p;->d:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->a:[Lcom/google/android/maps/driveabout/nav/w;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/e/af;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/p;->d:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/nav/w;->b(I)D

    move-result-wide v3

    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/e/af;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/e/ab;->b()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/maps/driveabout/e/ab;->a(D)D

    move-result-wide v5

    float-to-double v7, p1

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/google/android/maps/driveabout/nav/w;->a(D)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    new-instance v0, Lcom/google/android/maps/driveabout/e/ar;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/e/ar;-><init>(Lcom/google/android/maps/driveabout/e/af;II)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/maps/driveabout/e/ar;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/ar;-><init>(Lcom/google/android/maps/driveabout/e/af;I)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/p;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/p;->g:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/p;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/p;->f:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/p;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/p;->d:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final e()[Lcom/google/android/maps/driveabout/nav/w;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->a:[Lcom/google/android/maps/driveabout/nav/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->a:[Lcom/google/android/maps/driveabout/nav/w;

    invoke-virtual {v0}, [Lcom/google/android/maps/driveabout/nav/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/nav/w;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lcom/google/android/maps/driveabout/nav/w;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/p;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->a:[Lcom/google/android/maps/driveabout/nav/w;

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/p;->b:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Lcom/google/android/maps/driveabout/nav/ah;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/p;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->c:Lcom/google/android/maps/driveabout/nav/ah;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Lcom/google/android/maps/driveabout/nav/w;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->k:Lcom/google/android/maps/driveabout/nav/w;

    return-object v0
.end method

.method public final i()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/p;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/p;->i:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/p;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/p;->j:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final k()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/p;->b:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "[numRoutes:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->a:[Lcom/google/android/maps/driveabout/nav/w;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " curRoute:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/p;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " curStep:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->c:Lcom/google/android/maps/driveabout/nav/ah;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " curSegment:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/p;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " metersToNextStep:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/p;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " metersRemaining:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/p;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " secondsRemaining:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/p;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " areAlternatesStale:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/nav/p;->h:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " trafficStatus:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/p;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " onRoute:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/nav/p;->j:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " hasPathfinderRoute:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->k:Lcom/google/android/maps/driveabout/nav/w;

    if-nez v0, :cond_2

    const-string v0, "false"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->a:[Lcom/google/android/maps/driveabout/nav/w;

    array-length v0, v0

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->c:Lcom/google/android/maps/driveabout/nav/ah;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->i()I

    move-result v0

    goto :goto_1

    :cond_2
    const-string v0, "true"

    goto :goto_2
.end method
