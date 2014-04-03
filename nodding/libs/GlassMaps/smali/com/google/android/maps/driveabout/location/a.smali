.class public final Lcom/google/android/maps/driveabout/location/a;
.super Lcom/google/android/maps/driveabout/location/d;


# instance fields
.field private c:Z

.field private d:J

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 1

    const-string v0, "driveabout_bearing_noise_reduction"

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/location/d;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/location/a;->e:F

    return-void
.end method

.method private static a(Landroid/location/Location;F)F
    .locals 2

    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "receiver"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p1, 0x4120

    :cond_0
    return p1
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/location/a;->f:F

    iput v0, p0, Lcom/google/android/maps/driveabout/location/a;->g:F

    return-void
.end method

.method private a(Landroid/location/Location;)Z
    .locals 11

    const/4 v3, 0x0

    const v9, 0x3c8efa35

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/maps/driveabout/util/l;->a()Lcom/google/android/maps/driveabout/util/j;

    move-result-object v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/maps/driveabout/location/a;->d:J

    sub-long/2addr v5, v7

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/maps/driveabout/location/a;->d:J

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/util/j;->k()I

    move-result v0

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/a;->a()V

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/location/a;->e:F

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/location/a;->e:F

    :goto_1
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/util/j;->i()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3c23d70a

    mul-float/2addr v7, v8

    invoke-static {p1, v7}, Lcom/google/android/maps/driveabout/location/a;->a(Landroid/location/Location;F)F

    move-result v7

    cmpl-float v8, v0, v7

    if-lez v8, :cond_3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/a;->a()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/location/a;->e:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/google/android/maps/driveabout/location/a;->e:F

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/a;->a()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/a;->a()V

    move v2, v3

    goto :goto_0

    :cond_4
    cmpl-float v8, v0, v1

    if-lez v8, :cond_6

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    mul-float/2addr v1, v9

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v8

    mul-float/2addr v8, v9

    invoke-static {v8}, Landroid/util/FloatMath;->cos(F)F

    move-result v8

    mul-float/2addr v1, v0

    mul-float/2addr v0, v8

    :goto_2
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/util/j;->j()I

    move-result v4

    int-to-float v4, v4

    iget v8, p0, Lcom/google/android/maps/driveabout/location/a;->f:F

    neg-long v9, v5

    long-to-float v9, v9

    div-float/2addr v9, v4

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v1, v8

    iput v1, p0, Lcom/google/android/maps/driveabout/location/a;->f:F

    iget v1, p0, Lcom/google/android/maps/driveabout/location/a;->g:F

    neg-long v5, v5

    long-to-float v5, v5

    div-float v4, v5, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/location/a;->g:F

    iget v0, p0, Lcom/google/android/maps/driveabout/location/a;->f:F

    iget v1, p0, Lcom/google/android/maps/driveabout/location/a;->f:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/location/a;->g:F

    iget v4, p0, Lcom/google/android/maps/driveabout/location/a;->g:F

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    mul-float v1, v7, v7

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    move v0, v2

    :goto_3
    move v2, v0

    goto/16 :goto_0

    :cond_5
    move v0, v3

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2

    new-instance v1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-direct {v1, p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;-><init>(Landroid/location/Location;)V

    const-string v0, "driveabout_bearing_noise_reduction"

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setProvider(Ljava/lang/String;)V

    instance-of v0, p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/a;->b:Lcom/google/android/maps/driveabout/location/b;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/location/b;->onLocationChanged(Landroid/location/Location;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/location/a;->a(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/a;->c:Z

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->removeBearing()V

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/a;->c:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/a;->b:Lcom/google/android/maps/driveabout/location/b;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/location/b;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0
.end method
