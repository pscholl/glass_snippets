.class public final Lcom/google/android/maps/driveabout/c/t;
.super Lcom/google/android/maps/driveabout/util/d;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/location/u;

.field private b:Ljava/util/List;

.field private c:Ljava/util/Iterator;

.field private d:Lcom/google/android/maps/driveabout/c/u;

.field private e:J

.field private f:J

.field private g:Lcom/google/android/maps/driveabout/h/j;

.field private volatile h:F

.field private volatile i:Z

.field private volatile j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const-string v0, "EventLogPlayerThread"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/util/d;-><init>(Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/google/android/maps/driveabout/c/t;->e:J

    iput-wide v2, p0, Lcom/google/android/maps/driveabout/c/t;->f:J

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/maps/driveabout/c/t;->h:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/c/t;->i:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/c/t;->j:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/c/t;->k:Z

    new-instance v0, Lcom/google/android/maps/driveabout/location/u;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/location/u;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/t;->a:Lcom/google/android/maps/driveabout/location/u;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/c/t;->start()V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/maps/driveabout/c/t;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/c/t;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/google/android/maps/driveabout/h/j;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/t;->a:Lcom/google/android/maps/driveabout/location/u;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/location/u;->a(Lcom/google/android/maps/driveabout/h/j;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/t;->a:Lcom/google/android/maps/driveabout/location/u;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/location/u;->b(Lcom/google/android/maps/driveabout/h/j;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/c/t;->b(Lcom/google/android/maps/driveabout/h/j;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/c/t;->c(Lcom/google/android/maps/driveabout/h/j;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/c/t;->d(Lcom/google/android/maps/driveabout/h/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/google/android/maps/driveabout/h/j;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p0, Lcom/google/android/maps/driveabout/c/k;

    if-eqz v2, :cond_1

    const-string v0, "EventLogPlayer"

    const-string v2, "MOCKING NETWORK LOST"

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Z)V

    move v0, v1

    :cond_0
    return v0

    :cond_1
    instance-of v2, p0, Lcom/google/android/maps/driveabout/c/l;

    if-eqz v2, :cond_0

    const-string v2, "EventLogPlayer"

    const-string v3, "MOCKING NETWORK REGAINED"

    invoke-static {v2, v3}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static c(Lcom/google/android/maps/driveabout/h/j;)Z
    .locals 2

    instance-of v0, p0, Lcom/google/android/maps/driveabout/c/n;

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p0, Lcom/google/android/maps/driveabout/c/n;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/c/n;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static d(Lcom/google/android/maps/driveabout/h/j;)Z
    .locals 1

    instance-of v0, p0, Lcom/google/android/maps/driveabout/c/o;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/t;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/t;->c:Ljava/util/Iterator;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/c/t;->f:J

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/c/t;->e:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/t;->g:Lcom/google/android/maps/driveabout/h/j;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/c/t;->f()Lcom/google/android/maps/driveabout/h/j;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()Lcom/google/android/maps/driveabout/h/j;
    .locals 7

    const/4 v0, 0x0

    const/high16 v6, 0x3f00

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/c/t;->c:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/t;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/h/j;

    :cond_0
    if-eqz v0, :cond_7

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/t;->g:Lcom/google/android/maps/driveabout/h/j;

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/c/t;->f:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/t;->g:Lcom/google/android/maps/driveabout/h/j;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/h/j;->g()Z

    move-result v0

    if-nez v0, :cond_2

    move-wide v0, v2

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/android/maps/driveabout/c/t;->e:J

    iget-object v4, p0, Lcom/google/android/maps/driveabout/c/t;->g:Lcom/google/android/maps/driveabout/h/j;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/h/j;->d()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/t;->g:Lcom/google/android/maps/driveabout/h/j;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/h/j;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/c/t;->f:J

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/t;->g:Lcom/google/android/maps/driveabout/h/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/t;->g:Lcom/google/android/maps/driveabout/h/j;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/h/j;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/t;->g:Lcom/google/android/maps/driveabout/h/j;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/h/j;->f()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/c/t;->f:J

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    move-wide v0, v2

    :cond_3
    long-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/c/t;->h:F

    div-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-long v0, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/t;->g:Lcom/google/android/maps/driveabout/h/j;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/h/j;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/t;->g:Lcom/google/android/maps/driveabout/h/j;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/h/j;->h()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gez v4, :cond_5

    move-wide v0, v2

    :cond_5
    long-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/c/t;->h:F

    div-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-long v0, v0

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/google/android/maps/driveabout/c/t;->g:Lcom/google/android/maps/driveabout/h/j;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/h/j;->g()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/c/t;->f:J

    cmp-long v2, v4, v2

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/c/t;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/c/t;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/t;->g:Lcom/google/android/maps/driveabout/h/j;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/c/t;->e:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_8
    move-wide v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    const-wide/16 v4, 0x0

    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/c/t;->k:Z

    if-nez v0, :cond_4

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/c/t;->k:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/c/t;->j:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/c/t;->e:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/c/t;->e:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/c/t;->j:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/c/t;->e:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_6

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/c/t;->k:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/t;->d:Lcom/google/android/maps/driveabout/c/u;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/t;->d:Lcom/google/android/maps/driveabout/c/u;

    :cond_5
    return-void

    :cond_6
    :try_start_3
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/c/t;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/t;->g:Lcom/google/android/maps/driveabout/h/j;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_8

    :try_start_4
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/c/t;->a(Lcom/google/android/maps/driveabout/h/j;)Z

    :cond_8
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/c/t;->f()Lcom/google/android/maps/driveabout/h/j;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "EventLogPlayer"

    const-string v1, "EVENT LOG REPLAY COMPLETED"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/c/t;->i:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/c/t;->e()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/h/f;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/h/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/c/t;->a(Ljava/util/List;)V

    return-void
.end method

.method public final b()Lcom/google/android/maps/driveabout/location/u;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/t;->a:Lcom/google/android/maps/driveabout/location/u;

    return-object v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/c/t;->j:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/c/t;->k:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
