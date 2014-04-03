.class final Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Lcom/google/common/util/concurrent/Service$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceListener"
.end annotation


# instance fields
.field final service:Lcom/google/common/util/concurrent/Service;

.field final state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

.field final watch:Lcom/google/common/base/Stopwatch;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "watch"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V
    .locals 1
    .parameter "service"
    .parameter "state"

    .prologue
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    new-instance v0, Lcom/google/common/base/Stopwatch;

    invoke-direct {v0}, Lcom/google/common/base/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    .line 601
    iput-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    .line 602
    iput-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    .line 603
    return-void
.end method


# virtual methods
.method public failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "from"
    .parameter "failure"

    .prologue
    .line 651
    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has failed in the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 653
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 655
    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_0

    .line 656
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->finishedStarting(Z)V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    #calls: Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->serviceFailed(Lcom/google/common/util/concurrent/Service;)V
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$300(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Service;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 661
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    #calls: Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->executeListeners()V
    invoke-static {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    .line 663
    return-void

    .line 660
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v1, v1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 661
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    #calls: Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->executeListeners()V
    invoke-static {v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    throw v0
.end method

.method finishedStarting(Z)V
    .locals 6
    .parameter "currentlyHealthy"
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .prologue
    .line 673
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    monitor-enter v1

    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->stop()Lcom/google/common/base/Stopwatch;

    .line 675
    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Started "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->startupTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 676
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    #calls: Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->serviceFinishedStarting(Lcom/google/common/util/concurrent/Service;Z)V
    invoke-static {v0, v1, p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$400(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Service;Z)V

    .line 678
    return-void

    .line 676
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public running()V
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 614
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->finishedStarting(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 617
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    #calls: Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->executeListeners()V
    invoke-static {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    .line 619
    return-void

    .line 616
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v1, v1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 617
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    #calls: Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->executeListeners()V
    invoke-static {v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    throw v0
.end method

.method start()V
    .locals 1

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->startTimer()V

    .line 682
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->start()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 683
    return-void
.end method

.method startTimer()V
    .locals 5

    .prologue
    .line 687
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    monitor-enter v1

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    .line 690
    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Starting {0}"

    iget-object v4, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 692
    :cond_0
    monitor-exit v1

    .line 693
    return-void

    .line 692
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public starting()V
    .locals 0

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->startTimer()V

    .line 609
    return-void
.end method

.method declared-synchronized startupTimeMillis()J
    .locals 4

    .prologue
    .line 697
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 698
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v2

    .line 699
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 697
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopping(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 2
    .parameter "from"

    .prologue
    .line 622
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 625
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->finishedStarting(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 628
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    #calls: Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->executeListeners()V
    invoke-static {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    .line 631
    :cond_0
    return-void

    .line 627
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v1, v1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 628
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    #calls: Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->executeListeners()V
    invoke-static {v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    throw v0
.end method

.method public terminated(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 3
    .parameter "from"

    .prologue
    .line 634
    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has terminated. Previous state was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 637
    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->startTimer()V

    .line 641
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->finishedStarting(Z)V

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    #calls: Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->serviceTerminated(Lcom/google/common/util/concurrent/Service;)V
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$200(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Service;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 646
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    #calls: Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->executeListeners()V
    invoke-static {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    .line 648
    return-void

    .line 645
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v1, v1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 646
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    #calls: Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->executeListeners()V
    invoke-static {v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$000(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    throw v0
.end method
