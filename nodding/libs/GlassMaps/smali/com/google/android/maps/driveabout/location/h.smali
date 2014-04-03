.class final Lcom/google/android/maps/driveabout/location/h;
.super Ljava/lang/Object;


# instance fields
.field a:D

.field b:D

.field c:D

.field d:Lcom/google/android/maps/driveabout/e/ab;

.field e:D

.field f:Z

.field g:D

.field h:D

.field i:Z

.field j:D

.field k:D

.field final l:Lcom/google/android/maps/driveabout/nav/w;

.field final m:Lcom/google/android/maps/driveabout/util/j;


# direct methods
.method constructor <init>(Landroid/location/Location;Lcom/google/android/maps/driveabout/location/h;Lcom/google/android/maps/driveabout/util/j;Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/maps/driveabout/location/h;->m:Lcom/google/android/maps/driveabout/util/j;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/location/h;->l:Lcom/google/android/maps/driveabout/nav/w;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/e/ab;->a(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->a:D

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->b:D

    if-nez p2, :cond_0

    const-wide/high16 v0, 0x4000

    :goto_0
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->c:D

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v3, v0

    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Lcom/google/android/maps/driveabout/e/ab;->a(DD)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/h;->d:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/h;->m:Lcom/google/android/maps/driveabout/util/j;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/j;->f()I

    move-result v0

    int-to-double v0, v0

    add-double/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->e:D

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->g:D

    if-nez p2, :cond_2

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->g:D

    move-wide v5, v0

    :goto_2
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    double-to-float v5, v5

    iget-wide v6, p0, Lcom/google/android/maps/driveabout/location/h;->g:D

    double-to-float v6, v6

    invoke-static {v5, v6}, Lcom/google/android/maps/driveabout/e/ad;->a(FF)F

    move-result v5

    float-to-double v5, v5

    iget-object v7, p0, Lcom/google/android/maps/driveabout/location/h;->m:Lcom/google/android/maps/driveabout/util/j;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/util/j;->g()I

    move-result v7

    int-to-double v7, v7

    invoke-static/range {v0 .. v8}, Lcom/google/android/maps/driveabout/location/h;->a(ZDDDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->h:D

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->h:D

    const-wide/high16 v2, 0x4059

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->h:D

    :goto_3
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->h:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/h;->f:Z

    :goto_4
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/h;->c:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->j:D

    const-wide/high16 v0, 0x4034

    const-wide/high16 v2, 0x4049

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/location/h;->j:D

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->k:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/h;->i:Z

    :goto_5
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->b:D

    iget-wide v2, p2, Lcom/google/android/maps/driveabout/location/h;->b:D

    sub-double/2addr v0, v2

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/location/m;->a()F

    move-result v0

    float-to-double v3, v0

    goto/16 :goto_1

    :cond_2
    iget-wide v0, p2, Lcom/google/android/maps/driveabout/location/h;->g:D

    move-wide v5, v0

    goto :goto_2

    :cond_3
    const-wide/high16 v0, 0x4059

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_6

    iget-boolean v0, p2, Lcom/google/android/maps/driveabout/location/h;->f:Z

    if-eqz v0, :cond_6

    iget-wide v0, p2, Lcom/google/android/maps/driveabout/location/h;->g:D

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->g:D

    iget-object v0, p2, Lcom/google/android/maps/driveabout/location/h;->d:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/h;->d:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/ab;->c(Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/h;->a:D

    div-double/2addr v0, v2

    iget-wide v2, p2, Lcom/google/android/maps/driveabout/location/h;->h:D

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->h:D

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->h:D

    const-wide/high16 v2, 0x4059

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->h:D

    :goto_6
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->h:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/h;->f:Z

    goto :goto_4

    :cond_5
    const-wide/high16 v0, 0x4059

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/h;->f:Z

    goto :goto_4

    :cond_7
    if-eqz p2, :cond_8

    iget-boolean v0, p2, Lcom/google/android/maps/driveabout/location/h;->i:Z

    if-eqz v0, :cond_8

    iget-wide v0, p2, Lcom/google/android/maps/driveabout/location/h;->j:D

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->j:D

    const-wide/high16 v0, 0x4049

    iget-wide v2, p2, Lcom/google/android/maps/driveabout/location/h;->k:D

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/location/h;->j:D

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->k:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/h;->i:Z

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/h;->i:Z

    goto :goto_5
.end method

.method private static a(ZDDDD)D
    .locals 10

    const-wide v0, 0x4046800000000000L

    const-wide/high16 v2, 0x3ff0

    neg-double v4, p3

    const-wide/high16 v6, 0x403e

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double/2addr v2, v0

    const-wide/high16 v0, 0x4010

    div-double v4, p5, v0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4034

    neg-double v6, p1

    const-wide/high16 v8, 0x4000

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v0, v6

    :cond_0
    add-double/2addr v2, v4

    add-double/2addr v0, v2

    add-double v0, v0, p7

    return-wide v0
.end method

.method private b(Lcom/google/android/maps/driveabout/nav/aa;Lcom/google/android/maps/driveabout/e/ab;D)D
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aa;->b()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/e/ab;->c(Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/h;->a:D

    iget-object v4, p0, Lcom/google/android/maps/driveabout/location/h;->m:Lcom/google/android/maps/driveabout/util/j;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/util/j;->f()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aa;->c()D

    move-result-wide v2

    double-to-float v2, v2

    double-to-float v3, p3

    invoke-static {v2, v3}, Lcom/google/android/maps/driveabout/e/ad;->a(FF)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/h;->m:Lcom/google/android/maps/driveabout/util/j;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/util/j;->g()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, -0x4020

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v0, v4

    return-wide v0
.end method


# virtual methods
.method final a()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->a:D

    return-wide v0
.end method

.method final a(D)D
    .locals 4

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/h;->j:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/h;->k:D

    div-double/2addr v0, v2

    neg-double v2, v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method final a(Lcom/google/android/maps/driveabout/e/ab;DLcom/google/android/maps/driveabout/e/an;)D
    .locals 10

    const-wide v8, 0x400ccccccccccccdL

    const-wide/high16 v6, 0x4000

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/h;->d:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/e/ab;->c(Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/h;->a:D

    div-double v2, v0, v2

    const-wide v0, 0x3ffccccccccccccdL

    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/e/an;->i()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/e/an;->g()I

    move-result v4

    const/16 v5, 0x40

    if-lt v4, v5, :cond_0

    add-double/2addr v0, v8

    :cond_0
    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/e/an;->g()I

    move-result v4

    const/16 v5, 0x80

    if-lt v4, v5, :cond_1

    add-double/2addr v0, v8

    :cond_1
    const-wide/16 v4, 0x0

    sub-double v0, v2, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/h;->e:D

    div-double/2addr v0, v2

    neg-double v2, v0

    mul-double/2addr v0, v2

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/h;->f:Z

    if-eqz v0, :cond_2

    double-to-float v0, p2

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/location/h;->g:D

    double-to-float v1, v4

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/e/ad;->a(FF)F

    move-result v0

    float-to-double v0, v0

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/location/h;->h:D

    div-double/2addr v0, v4

    neg-double v4, v0

    mul-double/2addr v0, v4

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    :goto_0
    mul-double/2addr v0, v2

    return-wide v0

    :cond_2
    const-wide/high16 v0, 0x3ff0

    goto :goto_0
.end method

.method final a(Lcom/google/android/maps/driveabout/nav/aa;Lcom/google/android/maps/driveabout/e/ab;D)D
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/location/h;->b(Lcom/google/android/maps/driveabout/nav/aa;Lcom/google/android/maps/driveabout/e/ab;D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method final a(Lcom/google/android/maps/driveabout/e/ab;D)Lcom/google/android/maps/driveabout/nav/aa;
    .locals 9

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/h;->l:Lcom/google/android/maps/driveabout/nav/w;

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/location/h;->a:D

    iget-wide v5, p0, Lcom/google/android/maps/driveabout/location/h;->k:D

    const-wide/high16 v7, 0x4008

    mul-double/2addr v5, v7

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/h;->m:Lcom/google/android/maps/driveabout/util/j;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/util/j;->f()I

    move-result v3

    int-to-double v7, v3

    add-double/2addr v5, v7

    mul-double/2addr v1, v5

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/h;->l:Lcom/google/android/maps/driveabout/nav/w;

    invoke-virtual {v3, p1, v1, v2, v0}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/e/ab;DZ)[Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v6

    const-wide/high16 v2, -0x10

    move v5, v0

    :goto_0
    array-length v0, v6

    if-ge v5, v0, :cond_0

    aget-object v0, v6, v5

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/location/h;->b(Lcom/google/android/maps/driveabout/nav/aa;Lcom/google/android/maps/driveabout/e/ab;D)D

    move-result-wide v0

    cmpl-double v7, v0, v2

    if-lez v7, :cond_1

    aget-object v2, v6, v5

    :goto_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v4, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    return-object v4

    :cond_1
    move-wide v0, v2

    move-object v2, v4

    goto :goto_1
.end method

.method final b(D)D
    .locals 4

    const-wide/high16 v0, 0x3ff0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/h;->m:Lcom/google/android/maps/driveabout/util/j;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/j;->h()D

    move-result-wide v2

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationModel[mTimeSinceLastUpdate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/location/h;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPositionMean:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/h;->d:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPositionStdMeters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/location/h;->e:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDistanceMeanMeters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/h;->i:Z

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/h;->j:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDistanceStdMeters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/h;->i:Z

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/h;->k:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mBearingMeanDeg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/location/h;->g:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mBearingStdDeg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/location/h;->h:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "--"

    goto :goto_0

    :cond_1
    const-string v0, "--"

    goto :goto_1
.end method
