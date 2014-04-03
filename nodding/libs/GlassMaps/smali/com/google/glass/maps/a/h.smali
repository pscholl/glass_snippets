.class public final Lcom/google/glass/maps/a/h;
.super Lcom/google/glass/maps/a/a;


# instance fields
.field private final a:Landroid/location/LocationManager;

.field private b:Landroid/location/GpsStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/a/h;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 2

    new-instance v0, Lcom/google/glass/location/f;

    invoke-static {}, Lcom/google/glass/util/q;->a()Lcom/google/glass/util/o;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/google/glass/location/f;-><init>(Landroid/location/LocationManager;Lcom/google/glass/util/o;)V

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/a/a;-><init>(Landroid/content/Context;Lcom/google/glass/location/f;)V

    iput-object p2, p0, Lcom/google/glass/maps/a/h;->a:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/a/h;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/a/h;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/a/h;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public final a(Ljava/lang/String;JFLcom/google/android/maps/driveabout/location/b;)V
    .locals 6

    iget-object v0, p0, Lcom/google/glass/maps/a/h;->a:Landroid/location/LocationManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method

.method public final a(Landroid/location/GpsStatus$Listener;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/a/h;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/location/GpsStatus$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/a/h;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/a/h;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/google/android/maps/driveabout/location/r;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/maps/a/h;->a:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/google/glass/maps/a/h;->b:Landroid/location/GpsStatus;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/maps/a/h;->b:Landroid/location/GpsStatus;

    iget-object v1, p0, Lcom/google/glass/maps/a/h;->b:Landroid/location/GpsStatus;

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/location/r;

    invoke-direct {v0, v2, v1}, Lcom/google/android/maps/driveabout/location/r;-><init>(II)V

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
