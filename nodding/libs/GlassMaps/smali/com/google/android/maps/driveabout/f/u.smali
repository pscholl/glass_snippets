.class public final Lcom/google/android/maps/driveabout/f/u;
.super Lcom/google/android/maps/driveabout/util/d;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/Looper;

.field private final c:Lcom/google/android/maps/driveabout/f/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/store/bv;)V
    .locals 1

    const-string v0, "RouteFinderThread"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/util/d;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/maps/driveabout/f/r;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/maps/driveabout/f/r;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/store/bv;Ljava/lang/Thread;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/f/u;->c:Lcom/google/android/maps/driveabout/f/r;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/f/u;->start()V

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/u;->a:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/f/u;->e()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/f/w;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/f/u;->c:Lcom/google/android/maps/driveabout/f/r;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/f/w;->a(Lcom/google/android/maps/driveabout/f/w;)Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/maps/driveabout/f/w;->b(Lcom/google/android/maps/driveabout/f/w;)Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/f/r;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/f/u;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/f/u;->a(Landroid/os/Message;)V

    return-void
.end method

.method private declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/f/u;->b:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/maps/driveabout/f/v;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/f/v;-><init>(Lcom/google/android/maps/driveabout/f/u;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/f/u;->a:Landroid/os/Handler;

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

.method private e()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/f/u;->f()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/u;->b:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/u;->b:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/f/u;->b:Landroid/os/Looper;

    :cond_0
    return-void
.end method

.method private final f()V
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called on RouteFinderThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "RouteFinderThread"

    const-string v1, "Starting RouteFinderThread"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/f/u;->d()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v0, "RouteFinderThread"

    const-string v1, "RouteFinderThread finished"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "RouteFinderThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set thread priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/f/t;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/u;->c:Lcom/google/android/maps/driveabout/f/r;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/f/r;->a(Lcom/google/android/maps/driveabout/f/t;)V

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 5

    const-string v0, "RouteFinderThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to find offline route from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/w;->j()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/u;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/f/u;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/maps/driveabout/f/w;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Lcom/google/android/maps/driveabout/f/w;-><init>(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;Lcom/google/android/maps/driveabout/f/v;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/u;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/f/u;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/f/u;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/u;->c:Lcom/google/android/maps/driveabout/f/r;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/f/r;->a()V

    return-void
.end method
