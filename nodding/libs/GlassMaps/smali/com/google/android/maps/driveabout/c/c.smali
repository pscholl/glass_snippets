.class final Lcom/google/android/maps/driveabout/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/location/b;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/c/b;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/c/c;->a:Lcom/google/android/maps/driveabout/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/z;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/c/c;->a:Lcom/google/android/maps/driveabout/c/b;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/c/b;->a(Lcom/google/android/maps/driveabout/c/b;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/c/c;->a:Lcom/google/android/maps/driveabout/c/b;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/c/b;->b(Lcom/google/android/maps/driveabout/c/b;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/c;->a:Lcom/google/android/maps/driveabout/c/b;

    new-instance v1, Lcom/google/android/maps/driveabout/c/m;

    invoke-direct {v1, p1}, Lcom/google/android/maps/driveabout/c/m;-><init>(Lcom/google/android/maps/driveabout/location/z;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/c/b;->a(Lcom/google/android/maps/driveabout/h/j;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/c;->a:Lcom/google/android/maps/driveabout/c/b;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/z;->b()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/c/b;->a(Lcom/google/android/maps/driveabout/c/b;J)J

    :cond_0
    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/c;->a:Lcom/google/android/maps/driveabout/c/b;

    new-instance v1, Lcom/google/android/maps/driveabout/c/e;

    invoke-direct {v1, p1}, Lcom/google/android/maps/driveabout/c/e;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/c/b;->a(Lcom/google/android/maps/driveabout/h/j;)V

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/c;->a:Lcom/google/android/maps/driveabout/c/b;

    new-instance v1, Lcom/google/android/maps/driveabout/c/g;

    invoke-direct {v1, p1}, Lcom/google/android/maps/driveabout/c/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/c/b;->a(Lcom/google/android/maps/driveabout/h/j;)V

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/c;->a:Lcom/google/android/maps/driveabout/c/b;

    new-instance v1, Lcom/google/android/maps/driveabout/c/h;

    invoke-direct {v1, p1}, Lcom/google/android/maps/driveabout/c/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/c/b;->a(Lcom/google/android/maps/driveabout/h/j;)V

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/c;->a:Lcom/google/android/maps/driveabout/c/b;

    new-instance v1, Lcom/google/android/maps/driveabout/c/i;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/maps/driveabout/c/i;-><init>(Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/c/b;->a(Lcom/google/android/maps/driveabout/h/j;)V

    return-void
.end method
