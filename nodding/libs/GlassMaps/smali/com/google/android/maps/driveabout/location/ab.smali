.class public final Lcom/google/android/maps/driveabout/location/ab;
.super Lcom/google/android/maps/driveabout/location/d;


# instance fields
.field private final c:Landroid/os/Handler;

.field private final d:Lcom/google/googlenav/common/a;

.field private e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

.field private f:J

.field private final g:[F

.field private h:I

.field private i:Lcom/google/android/maps/driveabout/util/j;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/location/b;Landroid/os/Handler;Lcom/google/googlenav/common/a;)V
    .locals 2

    const-string v0, "da_tunnel_heartbeat"

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/location/d;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/location/ab;->h:I

    new-instance v0, Lcom/google/android/maps/driveabout/location/ac;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/location/ac;-><init>(Lcom/google/android/maps/driveabout/location/ab;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->j:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/location/ab;->c:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/location/ab;->d:Lcom/google/googlenav/common/a;

    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->g:[F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->g:[F

    const/high16 v1, -0x4080

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method private static a([F)F
    .locals 8

    const/4 v0, 0x0

    const/high16 v2, -0x4080

    const/4 v1, 0x0

    array-length v4, p0

    move v3, v0

    move v7, v1

    move v1, v0

    move v0, v7

    :goto_0
    if-ge v3, v4, :cond_1

    aget v5, p0, v3

    cmpl-float v6, v5, v2

    if-eqz v6, :cond_0

    add-float/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ge v1, v3, :cond_2

    move v0, v2

    :goto_1
    return v0

    :cond_2
    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_1
.end method

.method private static a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;F)Lcom/google/android/maps/driveabout/location/DriveAboutLocation;
    .locals 8

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/e/ab;->a(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->h()Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/nav/aa;->a()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/nav/aa;)D

    move-result-wide v6

    double-to-float v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/e/af;

    move-result-object v4

    float-to-double v6, v3

    invoke-virtual {v5, v6, v7}, Lcom/google/android/maps/driveabout/nav/w;->a(D)I

    move-result v6

    if-ltz v6, :cond_1

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-lt v6, v7, :cond_2

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v6}, Lcom/google/android/maps/driveabout/e/af;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v7

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v4, v2}, Lcom/google/android/maps/driveabout/e/af;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v4

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/nav/w;->b(I)D

    move-result-wide v5

    double-to-float v2, v5

    sub-float v2, v3, v2

    invoke-virtual {v7, v4}, Lcom/google/android/maps/driveabout/e/ab;->c(Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v3

    div-float/2addr v2, v3

    cmpg-float v3, v2, v0

    if-gez v3, :cond_3

    :goto_1
    invoke-virtual {v7, v4, v0}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;F)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    new-instance v0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ab;->b()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setLatitude(D)V

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ab;->d()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setLongitude(D)V

    invoke-static {v7, v4}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setBearing(F)V

    goto :goto_0

    :cond_3
    cmpl-float v0, v2, v1

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private a(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/ab;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/ab;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static a(Landroid/location/Location;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->f()Lcom/google/android/maps/driveabout/e/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/an;->h()Z

    move-result v0

    goto :goto_0
.end method

.method private d()J
    .locals 4

    const-wide/16 v0, 0x7d0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/ab;->i:Lcom/google/android/maps/driveabout/util/j;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/j;->l()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/ab;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/util/l;->a()Lcom/google/android/maps/driveabout/util/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->i:Lcom/google/android/maps/driveabout/util/j;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/ab;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/location/ab;->a(J)V

    return-void
.end method

.method final c()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/location/ab;->a(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->g:[F

    invoke-static {v0}, Lcom/google/android/maps/driveabout/location/ab;->a([F)F

    move-result v0

    const/high16 v1, -0x4080

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x4000

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/ab;->g:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([FF)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/ab;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v1

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/location/ab;->f:J

    sub-long v4, v1, v4

    long-to-float v4, v4

    const v5, 0x3a83126f

    mul-float/2addr v4, v5

    mul-float/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/location/ab;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-static {v4, v3}, Lcom/google/android/maps/driveabout/location/ab;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;F)Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/google/android/maps/driveabout/location/ab;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v5}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setTime(J)V

    invoke-virtual {v4, v1, v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a(J)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/ab;->i:Lcom/google/android/maps/driveabout/util/j;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/util/j;->n()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setAccuracy(F)V

    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setSpeed(F)V

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->d(Z)V

    const-string v1, "TunnelProjectorLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Generated: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", speed:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " m:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v4}, Lcom/google/android/maps/driveabout/location/d;->onLocationChanged(Landroid/location/Location;)V

    goto/16 :goto_0
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3

    instance-of v0, p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/maps/driveabout/util/l;->a()Lcom/google/android/maps/driveabout/util/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->i:Lcom/google/android/maps/driveabout/util/j;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/ab;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/location/ab;->a(J)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/ab;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/ab;->f:J

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/ab;->g:[F

    iget v2, p0, Lcom/google/android/maps/driveabout/location/ab;->h:I

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getSpeed()F

    move-result v0

    :goto_1
    aput v0, v1, v2

    iget v0, p0, Lcom/google/android/maps/driveabout/location/ab;->h:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/google/android/maps/driveabout/location/ab;->h:I

    goto :goto_0

    :cond_2
    const/high16 v0, -0x4080

    goto :goto_1
.end method
