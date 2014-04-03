.class final Lcom/google/glass/maps/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/location/b;


# instance fields
.field a:Lcom/google/android/maps/driveabout/location/b;

.field final synthetic b:Lcom/google/glass/maps/a/d;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/a/d;Lcom/google/android/maps/driveabout/location/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/a/e;->b:Lcom/google/glass/maps/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/glass/maps/a/e;->a:Lcom/google/android/maps/driveabout/location/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/a/e;->a:Lcom/google/android/maps/driveabout/location/b;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/location/b;->a(Lcom/google/android/maps/driveabout/location/z;)V

    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 5

    const-string v0, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "visible_satellites"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "satellites"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/a/e;->b:Lcom/google/glass/maps/a/d;

    new-instance v1, Lcom/google/android/maps/driveabout/location/r;

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "visible_satellites"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "satellites"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/driveabout/location/r;-><init>(II)V

    invoke-static {v0, v1}, Lcom/google/glass/maps/a/d;->a(Lcom/google/glass/maps/a/d;Lcom/google/android/maps/driveabout/location/r;)Lcom/google/android/maps/driveabout/location/r;

    iget-object v0, p0, Lcom/google/glass/maps/a/e;->b:Lcom/google/glass/maps/a/d;

    invoke-static {v0}, Lcom/google/glass/maps/a/d;->a(Lcom/google/glass/maps/a/d;)V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/a/e;->a:Lcom/google/android/maps/driveabout/location/b;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/location/b;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/a/e;->a:Lcom/google/android/maps/driveabout/location/b;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/location/b;->onProviderDisabled(Ljava/lang/String;)V

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/a/e;->a:Lcom/google/android/maps/driveabout/location/b;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/location/b;->onProviderEnabled(Ljava/lang/String;)V

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/a/e;->a:Lcom/google/android/maps/driveabout/location/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/location/b;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
