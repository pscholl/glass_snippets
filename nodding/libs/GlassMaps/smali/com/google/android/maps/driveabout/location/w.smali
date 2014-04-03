.class public final Lcom/google/android/maps/driveabout/location/w;
.super Lcom/google/android/maps/driveabout/location/d;


# instance fields
.field private final c:Lcom/google/android/maps/driveabout/location/y;

.field private final d:Lcom/google/googlenav/d/a;

.field private e:Landroid/location/Location;

.field private f:Z

.field private g:F


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "driveabout_orientation_filter"

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/location/d;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    new-instance v0, Lcom/google/android/maps/driveabout/location/y;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/location/y;-><init>(Lcom/google/android/maps/driveabout/location/x;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/w;->c:Lcom/google/android/maps/driveabout/location/y;

    new-instance v0, Lcom/google/googlenav/d/a;

    invoke-direct {v0, v2}, Lcom/google/googlenav/d/a;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/w;->d:Lcom/google/googlenav/d/a;

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/location/w;->f:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/location/w;->g:F

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 5

    new-instance v1, Lcom/google/android/maps/driveabout/location/z;

    invoke-direct {v1, p1}, Lcom/google/android/maps/driveabout/location/z;-><init>(Lcom/google/android/maps/driveabout/location/z;)V

    const-string v0, "driveabout_orientation_filter"

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/location/z;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/z;->c()F

    move-result v2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/w;->f:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41f0

    :goto_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/w;->e:Landroid/location/Location;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/w;->e:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/google/android/maps/driveabout/location/w;->g:F

    const v4, 0x3e4ccccd

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/w;->e:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getBearing()F

    move-result v3

    invoke-static {v3, v2}, Lcom/google/android/maps/driveabout/e/ad;->a(FF)F

    move-result v2

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/w;->c:Lcom/google/android/maps/driveabout/location/y;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/w;->e:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/location/y;->a(F)F

    move-result v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/location/w;->f:Z

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/location/z;->a(F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/w;->d:Lcom/google/googlenav/d/a;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/z;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/z;->d()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/googlenav/d/a;->a(JF)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/location/z;->b(F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/w;->b:Lcom/google/android/maps/driveabout/location/b;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/location/b;->a(Lcom/google/android/maps/driveabout/location/z;)V

    return-void

    :cond_0
    const/high16 v0, 0x41c8

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/w;->c:Lcom/google/android/maps/driveabout/location/y;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/z;->c()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/location/y;->a(F)F

    move-result v0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/location/w;->f:Z

    goto :goto_1
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/w;->e:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/location/w;->g:F

    :cond_0
    return-void
.end method
