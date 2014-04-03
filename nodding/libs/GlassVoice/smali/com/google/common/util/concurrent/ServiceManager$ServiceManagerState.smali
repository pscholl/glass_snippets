.class final Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceManagerState"
.end annotation


# instance fields
.field final awaitHealthGuard:Lcom/google/common/util/concurrent/Monitor$Guard;

.field final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation
.end field

.field final monitor:Lcom/google/common/util/concurrent/Monitor;

.field final numberOfServices:I

.field final queuedListeners:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "queuedListeners"
    .end annotation
.end field

.field final stoppedGuard:Lcom/google/common/util/concurrent/Monitor$Guard;

.field unstartedServices:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation
.end field

.field unstoppedServices:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 2
    .parameter "numberOfServices"

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    new-instance v0, Lcom/google/common/util/concurrent/Monitor;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Monitor;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 388
    new-instance v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$1;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$1;-><init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Monitor;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthGuard:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 398
    new-instance v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;-><init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Monitor;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->stoppedGuard:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 405
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Ljava/util/List;

    .line 417
    invoke-static {}, Lcom/google/common/collect/Queues;->newConcurrentLinkedQueue()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->queuedListeners:Ljava/util/Queue;

    .line 421
    iput p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->numberOfServices:I

    .line 422
    iput p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->unstoppedServices:I

    .line 423
    iput p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->unstartedServices:I

    .line 424
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->executeListeners()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Service;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->serviceTerminated(Lcom/google/common/util/concurrent/Service;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Service;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->serviceFailed(Lcom/google/common/util/concurrent/Service;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Service;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 375
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->serviceFinishedStarting(Lcom/google/common/util/concurrent/Service;Z)V

    return-void
.end method

.method private executeListeners()V
    .locals 3

    .prologue
    .line 573
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->isOccupiedByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "It is incorrect to execute listeners with the monitor held."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 575
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->queuedListeners:Ljava/util/Queue;

    monitor-enter v2

    .line 577
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->queuedListeners:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .local v0, listener:Ljava/lang/Runnable;
    if-eqz v0, :cond_1

    .line 578
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 580
    .end local v0           #listener:Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 573
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 580
    .restart local v0       #listener:Ljava/lang/Runnable;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 581
    return-void
.end method

.method private serviceFailed(Lcom/google/common/util/concurrent/Service;)V
    .locals 4
    .parameter "service"
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .prologue
    .line 526
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;

    .line 527
    .local v1, pair:Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->queuedListeners:Ljava/util/Queue;

    new-instance v3, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4;-><init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;Lcom/google/common/util/concurrent/Service;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 537
    .end local v1           #pair:Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->serviceStopped(Lcom/google/common/util/concurrent/Service;)V

    .line 538
    return-void
.end method

.method private serviceFinishedStarting(Lcom/google/common/util/concurrent/Service;Z)V
    .locals 6
    .parameter "service"
    .parameter "currentlyHealthy"
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 487
    iget v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->unstartedServices:I

    if-lez v2, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "All services should have already finished starting but %s just finished."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v5, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 489
    iget v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->unstartedServices:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->unstartedServices:I

    .line 490
    if-eqz p2, :cond_1

    iget v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->unstartedServices:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->unstoppedServices:I

    iget v3, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->numberOfServices:I

    if-ne v2, v3, :cond_1

    .line 499
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;

    .line 500
    .local v1, pair:Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->queuedListeners:Ljava/util/Queue;

    new-instance v3, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$3;

    invoke-direct {v3, p0, v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$3;-><init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #pair:Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;
    :cond_0
    move v2, v4

    .line 487
    goto :goto_0

    .line 511
    :cond_1
    return-void
.end method

.method private serviceStopped(Lcom/google/common/util/concurrent/Service;)V
    .locals 7
    .parameter "service"
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 547
    iget v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->unstoppedServices:I

    if-lez v2, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "All services should have already stopped but %s just stopped."

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v4

    invoke-static {v2, v5, v6}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 549
    iget v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->unstoppedServices:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->unstoppedServices:I

    .line 550
    iget v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->unstoppedServices:I

    if-nez v2, :cond_3

    .line 551
    iget v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->unstartedServices:I

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    const-string v5, "All services are stopped but %d services haven\'t finished starting"

    new-array v3, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->unstartedServices:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v5, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 553
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;

    .line 554
    .local v1, pair:Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->queuedListeners:Ljava/util/Queue;

    new-instance v3, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$5;

    invoke-direct {v3, p0, v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$5;-><init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #pair:Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;
    :cond_0
    move v2, v4

    .line 547
    goto :goto_0

    :cond_1
    move v2, v4

    .line 551
    goto :goto_1

    .line 565
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 567
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private serviceTerminated(Lcom/google/common/util/concurrent/Service;)V
    .locals 0
    .parameter "service"
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->serviceStopped(Lcom/google/common/util/concurrent/Service;)V

    .line 519
    return-void
.end method


# virtual methods
.method addListener(Lcom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V
    .locals 2
    .parameter "listener"
    .parameter "executor"

    .prologue
    .line 427
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string v0, "executor"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 432
    :try_start_0
    iget v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->unstartedServices:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->unstoppedServices:I

    if-lez v0, :cond_1

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Ljava/util/List;

    new-instance v1, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;

    invoke-direct {v1, p1, p2}, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;-><init>(Lcom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 438
    return-void

    .line 436
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0
.end method

.method awaitHealthy()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthGuard:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 447
    return-void

    .line 445
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0
.end method

.method awaitHealthy(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .parameter "timeout"
    .parameter "unit"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthGuard:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    const/4 v0, 0x1

    .line 457
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    :goto_0
    return v0

    .line 455
    :cond_0
    const/4 v0, 0x0

    .line 457
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0
.end method

.method awaitStopped()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->stoppedGuard:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 468
    return-void

    .line 466
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0
.end method

.method awaitStopped(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .parameter "timeout"
    .parameter "unit"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->stoppedGuard:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 475
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0
.end method
