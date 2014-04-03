.class public final Lcom/google/android/maps/driveabout/location/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/location/t;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/location/Location;

.field private g:Landroid/location/Location;

.field private h:F

.field private i:Lcom/google/android/maps/driveabout/location/r;

.field private j:Lcom/google/android/maps/driveabout/location/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/location/u;->h:F

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/location/u;->c:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->a:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->b:Ljava/util/List;

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/location/u;->d:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/location/u;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    const-string v0, "gps"

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->f:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "network"

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->g:Landroid/location/Location;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/location/u;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/location/u;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public final declared-synchronized a(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/v;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/location/v;->b:Lcom/google/android/maps/driveabout/location/b;

    if-ne v0, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;JFLcom/google/android/maps/driveabout/location/b;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/maps/driveabout/location/v;

    invoke-direct {v0, p1, p5}, Lcom/google/android/maps/driveabout/location/v;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/u;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/u;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/location/GpsStatus$Listener;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/maps/driveabout/h/j;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    instance-of v2, p1, Lcom/google/android/maps/driveabout/c/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    check-cast p1, Lcom/google/android/maps/driveabout/c/f;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/f;->b()Ljava/lang/String;

    move-result-object v2

    instance-of v0, p1, Lcom/google/android/maps/driveabout/c/e;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/google/android/maps/driveabout/c/e;

    new-instance v3, Landroid/location/Location;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/e;->a()Landroid/location/Location;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v3, v2}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/u;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setTime(J)V

    :cond_1
    const-string v0, "gps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object v3, p0, Lcom/google/android/maps/driveabout/location/u;->f:Landroid/location/Location;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/v;

    iget-object v5, v0, Lcom/google/android/maps/driveabout/location/v;->a:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v0, v0, Lcom/google/android/maps/driveabout/location/v;->b:Lcom/google/android/maps/driveabout/location/b;

    invoke-interface {v0, v3}, Lcom/google/android/maps/driveabout/location/b;->onLocationChanged(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    const-string v0, "network"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v3, p0, Lcom/google/android/maps/driveabout/location/u;->g:Landroid/location/Location;

    goto :goto_1

    :cond_5
    instance-of v0, p1, Lcom/google/android/maps/driveabout/c/h;

    if-eqz v0, :cond_9

    const-string v0, "gps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/u;->d:Z

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/v;

    iget-object v4, v0, Lcom/google/android/maps/driveabout/location/v;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v0, v0, Lcom/google/android/maps/driveabout/location/v;->b:Lcom/google/android/maps/driveabout/location/b;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/location/b;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    const-string v0, "network"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/u;->e:Z

    goto :goto_3

    :cond_9
    instance-of v0, p1, Lcom/google/android/maps/driveabout/c/g;

    if-eqz v0, :cond_d

    const-string v0, "gps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/u;->d:Z

    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/v;

    iget-object v4, v0, Lcom/google/android/maps/driveabout/location/v;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v0, v0, Lcom/google/android/maps/driveabout/location/v;->b:Lcom/google/android/maps/driveabout/location/b;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/location/b;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    const-string v0, "network"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/u;->e:Z

    goto :goto_5

    :cond_d
    instance-of v0, p1, Lcom/google/android/maps/driveabout/c/i;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/google/android/maps/driveabout/c/i;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/v;

    iget-object v4, v0, Lcom/google/android/maps/driveabout/location/v;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v0, v0, Lcom/google/android/maps/driveabout/location/v;->b:Lcom/google/android/maps/driveabout/location/b;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/i;->a()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/i;->c()Landroid/os/Bundle;

    move-result-object v5

    invoke-interface {v0, v2, v4, v5}, Lcom/google/android/maps/driveabout/location/b;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_7

    :cond_f
    instance-of v0, p1, Lcom/google/android/maps/driveabout/c/m;

    if-eqz v0, :cond_11

    check-cast p1, Lcom/google/android/maps/driveabout/c/m;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/m;->a()Lcom/google/android/maps/driveabout/location/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/z;->c()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/location/u;->h:F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->j:Lcom/google/android/maps/driveabout/location/b;

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/m;->a()Lcom/google/android/maps/driveabout/location/z;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/location/u;->c:Z

    if-eqz v2, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/location/z;->a(J)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->j:Lcom/google/android/maps/driveabout/location/b;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/m;->a()Lcom/google/android/maps/driveabout/location/z;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/location/b;->a(Lcom/google/android/maps/driveabout/location/z;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_11
    move v0, v1

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->j:Lcom/google/android/maps/driveabout/location/b;

    return-void
.end method

.method public final declared-synchronized b(Landroid/location/GpsStatus$Listener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/u;->j:Lcom/google/android/maps/driveabout/location/b;

    return-void
.end method

.method public final declared-synchronized b(Lcom/google/android/maps/driveabout/h/j;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/c/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    check-cast p1, Lcom/google/android/maps/driveabout/c/d;

    new-instance v0, Lcom/google/android/maps/driveabout/location/r;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/d;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/d;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/r;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->i:Lcom/google/android/maps/driveabout/location/r;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsStatus$Listener;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/d;->a()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/u;->d:Z

    :goto_0
    return v0

    :cond_0
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/u;->e:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized c()Lcom/google/android/maps/driveabout/location/r;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/u;->i:Lcom/google/android/maps/driveabout/location/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/maps/driveabout/location/u;->h:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method
