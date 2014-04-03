.class public final Lcom/google/android/maps/driveabout/util/b;
.super Ljava/lang/Object;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/datarequest/DataRequestDispatcher;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/google/android/maps/driveabout/util/b;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/capabilities/a;->a()Lcom/google/googlenav/capabilities/a;

    move-result-object v4

    new-instance v0, Lcom/google/googlenav/datarequest/f;

    invoke-direct {v0}, Lcom/google/googlenav/datarequest/f;-><init>()V

    invoke-static {}, Lcom/google/android/maps/driveabout/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/googlenav/datarequest/f;->a(Ljava/lang/String;)Lcom/google/googlenav/datarequest/f;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/common/b;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/googlenav/datarequest/f;->b(Ljava/lang/String;)Lcom/google/googlenav/datarequest/f;

    move-result-object v0

    invoke-static {}, Lcom/google/android/maps/driveabout/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/googlenav/datarequest/f;->c(Ljava/lang/String;)Lcom/google/googlenav/datarequest/f;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/common/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/googlenav/datarequest/f;->d(Ljava/lang/String;)Lcom/google/googlenav/datarequest/f;

    move-result-object v5

    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Lcom/google/googlenav/datarequest/f;->a(Z)Lcom/google/googlenav/datarequest/f;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/google/googlenav/datarequest/f;->b(Z)Lcom/google/googlenav/datarequest/f;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/maps/driveabout/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/googlenav/datarequest/f;->e(Ljava/lang/String;)Lcom/google/googlenav/datarequest/f;

    move-result-object v0

    invoke-virtual {v4, p0}, Lcom/google/googlenav/capabilities/a;->a(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/googlenav/datarequest/f;->c(Z)Lcom/google/googlenav/datarequest/f;

    move-result-object v0

    invoke-virtual {v4, p0}, Lcom/google/googlenav/capabilities/a;->b(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/googlenav/datarequest/f;->e(Z)Lcom/google/googlenav/datarequest/f;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/googlenav/capabilities/a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Lcom/google/googlenav/datarequest/f;->d(Z)Lcom/google/googlenav/datarequest/f;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/datarequest/f;->a(I)Lcom/google/googlenav/datarequest/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/datarequest/f;->f(Ljava/lang/String;)Lcom/google/googlenav/datarequest/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/f;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method
