.class public Lcom/google/android/maps/driveabout/location/DriveAboutLocation;
.super Landroid/location/Location;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Lcom/google/android/maps/driveabout/e/an;

.field private e:Lcom/google/android/maps/driveabout/e/ab;

.field private f:Lcom/google/android/maps/driveabout/nav/aa;

.field private g:D

.field private h:I

.field private i:I

.field private j:J

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->g:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->h:I

    iput v2, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->i:I

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->k:Z

    instance-of v0, p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a:Z

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b:Z

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c:Z

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->f()Lcom/google/android/maps/driveabout/e/an;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->d:Lcom/google/android/maps/driveabout/e/an;

    iget-object v0, p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->e:Lcom/google/android/maps/driveabout/e/ab;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->e:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->h()Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->f:Lcom/google/android/maps/driveabout/nav/aa;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->j()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->g:D

    iget v0, p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->h:I

    iput v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->h:I

    iget v0, p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->i:I

    iput v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->i:I

    iget-wide v0, p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->j:J

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->j:J

    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->k:Z

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->k:Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->j:J

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/e/m;)F
    .locals 11

    const-wide v9, 0x3eb0c6f7a0b5ed8dL

    const/4 v0, 0x1

    new-array v8, v0, [F

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/m;->a()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v9

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/m;->b()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v9

    invoke-static/range {v0 .. v8}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    return v0
.end method

.method public final a(D)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->g:D

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->h:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->j:J

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/an;Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->d:Lcom/google/android/maps/driveabout/e/an;

    if-nez p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->e:Lcom/google/android/maps/driveabout/e/ab;

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->f:Lcom/google/android/maps/driveabout/nav/aa;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a:Z

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->i:I

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->h:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->h:I

    return v0
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->k:Z

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Lcom/google/android/maps/driveabout/e/an;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->d:Lcom/google/android/maps/driveabout/e/an;

    return-object v0
.end method

.method public final g()Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->e:Lcom/google/android/maps/driveabout/e/ab;

    return-object v0
.end method

.method public final h()Lcom/google/android/maps/driveabout/nav/aa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->f:Lcom/google/android/maps/driveabout/nav/aa;

    return-object v0
.end method

.method public final i()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->g:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->g:D

    return-wide v0
.end method

.method public final k()Lcom/google/android/maps/driveabout/e/m;
    .locals 8

    const-wide v6, 0x412e848000000000L

    const-wide/high16 v4, 0x3fe0

    new-instance v0, Lcom/google/android/maps/driveabout/e/m;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v6

    add-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/m;-><init>(II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DriveAboutLocation[mIsGps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsGpsAccurate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnRoad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnRteCon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->g:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNumSatInFix:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFixTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsProjected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
