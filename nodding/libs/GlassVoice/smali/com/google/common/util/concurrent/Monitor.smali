.class public final Lcom/google/common/util/concurrent/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Monitor$Guard;
    }
.end annotation


# instance fields
.field private final activeGuards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/common/util/concurrent/Monitor$Guard;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final fair:Z

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Monitor;-><init>(Z)V

    .line 277
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "fair"

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Ljava/util/ArrayList;

    .line 286
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    .line 287
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 288
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/Monitor;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 2
    .parameter "guard"
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 813
    iget v1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    add-int/lit8 v0, v1, -0x1

    iput v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    .line 814
    .local v0, waiters:I
    if-nez v0, :cond_0

    .line 815
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 817
    :cond_0
    return-void
.end method

.method private incrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 2
    .parameter "guard"
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 805
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    .line 806
    .local v0, waiters:I
    if-nez v0, :cond_0

    .line 807
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    :cond_0
    return-void
.end method

.method private signalConditionsOfSatisfiedGuards(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 7
    .parameter "interruptedGuard"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 779
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Ljava/util/ArrayList;

    .line 780
    .local v2, guards:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/common/util/concurrent/Monitor$Guard;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 782
    .local v1, guardCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 783
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 784
    .local v0, guard:Lcom/google/common/util/concurrent/Monitor$Guard;
    if-ne v0, p1, :cond_1

    iget v5, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 782
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 789
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 790
    iget-object v5, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    .end local v0           #guard:Lcom/google/common/util/concurrent/Monitor$Guard;
    :cond_2
    return-void

    .line 794
    :catch_0
    move-exception v4

    .line 795
    .local v4, throwable:Ljava/lang/Throwable;
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 796
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 797
    .restart local v0       #guard:Lcom/google/common/util/concurrent/Monitor$Guard;
    iget-object v5, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 795
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 799
    .end local v0           #guard:Lcom/google/common/util/concurrent/Monitor$Guard;
    :cond_3
    invoke-static {v4}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method private waitInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    .locals 4
    .parameter "guard"
    .parameter "signalBeforeWaiting"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 822
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v3

    if-nez v3, :cond_2

    .line 823
    if-eqz p2, :cond_0

    .line 824
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/Monitor;->signalConditionsOfSatisfiedGuards(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 826
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->incrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 828
    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    .local v0, condition:Ljava/util/concurrent/locks/Condition;
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 841
    :try_start_2
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 843
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 846
    .end local v0           #condition:Ljava/util/concurrent/locks/Condition;
    :cond_2
    return-void

    .line 832
    .restart local v0       #condition:Ljava/util/concurrent/locks/Condition;
    :catch_0
    move-exception v1

    .line 834
    .local v1, interrupt:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->signalConditionsOfSatisfiedGuards(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 839
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 843
    .end local v0           #condition:Ljava/util/concurrent/locks/Condition;
    .end local v1           #interrupt:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    throw v3

    .line 835
    .restart local v0       #condition:Ljava/util/concurrent/locks/Condition;
    .restart local v1       #interrupt:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 836
    .local v2, throwable:Ljava/lang/Throwable;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 837
    invoke-static {v2}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private waitInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    .locals 5
    .parameter "guard"
    .parameter "remainingNanos"
    .parameter "signalBeforeWaiting"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 869
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v3

    if-nez v3, :cond_3

    .line 870
    if-eqz p4, :cond_0

    .line 871
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/Monitor;->signalConditionsOfSatisfiedGuards(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 873
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->incrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 875
    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    .local v0, condition:Ljava/util/concurrent/locks/Condition;
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gtz v3, :cond_2

    .line 878
    const/4 v3, 0x0

    .line 893
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 896
    .end local v0           #condition:Ljava/util/concurrent/locks/Condition;
    :goto_0
    return v3

    .line 881
    .restart local v0       #condition:Ljava/util/concurrent/locks/Condition;
    :cond_2
    :try_start_1
    invoke-interface {v0, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide p2

    .line 891
    :try_start_2
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 893
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 896
    .end local v0           #condition:Ljava/util/concurrent/locks/Condition;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 882
    .restart local v0       #condition:Ljava/util/concurrent/locks/Condition;
    :catch_0
    move-exception v1

    .line 884
    .local v1, interrupt:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->signalConditionsOfSatisfiedGuards(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 889
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 893
    .end local v0           #condition:Ljava/util/concurrent/locks/Condition;
    .end local v1           #interrupt:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    throw v3

    .line 885
    .restart local v0       #condition:Ljava/util/concurrent/locks/Condition;
    .restart local v1       #interrupt:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 886
    .local v2, throwable:Ljava/lang/Throwable;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 887
    invoke-static {v2}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private waitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    .locals 2
    .parameter "guard"
    .parameter "signalBeforeWaiting"
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 850
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v1

    if-nez v1, :cond_2

    .line 851
    if-eqz p2, :cond_0

    .line 852
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/Monitor;->signalConditionsOfSatisfiedGuards(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 854
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->incrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 856
    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    .line 858
    .local v0, condition:Ljava/util/concurrent/locks/Condition;
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 859
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 861
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 864
    .end local v0           #condition:Ljava/util/concurrent/locks/Condition;
    :cond_2
    return-void

    .line 861
    :catchall_0
    move-exception v1

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    throw v1
.end method

.method private waitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    .locals 10
    .parameter "guard"
    .parameter "timeoutNanos"
    .parameter "signalBeforeWaiting"
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 901
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v8

    if-nez v8, :cond_4

    .line 902
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 903
    .local v5, startNanos:J
    if-eqz p4, :cond_0

    .line 904
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/google/common/util/concurrent/Monitor;->signalConditionsOfSatisfiedGuards(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 906
    :cond_0
    const/4 v2, 0x0

    .line 908
    .local v2, interruptIgnored:Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->incrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 910
    :try_start_1
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 911
    .local v0, condition:Ljava/util/concurrent/locks/Condition;
    move-wide v3, p2

    .line 913
    .local v3, remainingNanos:J
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-gtz v8, :cond_3

    .line 914
    const/4 v8, 0x0

    .line 930
    :try_start_2
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 933
    if-eqz v2, :cond_2

    .line 934
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    .line 938
    .end local v0           #condition:Ljava/util/concurrent/locks/Condition;
    .end local v2           #interruptIgnored:Z
    .end local v3           #remainingNanos:J
    .end local v5           #startNanos:J
    :cond_2
    :goto_0
    return v8

    .line 917
    .restart local v0       #condition:Ljava/util/concurrent/locks/Condition;
    .restart local v2       #interruptIgnored:Z
    .restart local v3       #remainingNanos:J
    .restart local v5       #startNanos:J
    :cond_3
    :try_start_3
    invoke-interface {v0, v3, v4}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v3

    .line 928
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 930
    :try_start_5
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 933
    if-eqz v2, :cond_4

    .line 934
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 938
    .end local v0           #condition:Ljava/util/concurrent/locks/Condition;
    .end local v2           #interruptIgnored:Z
    .end local v3           #remainingNanos:J
    .end local v5           #startNanos:J
    :cond_4
    const/4 v8, 0x1

    goto :goto_0

    .line 918
    .restart local v0       #condition:Ljava/util/concurrent/locks/Condition;
    .restart local v2       #interruptIgnored:Z
    .restart local v3       #remainingNanos:J
    .restart local v5       #startNanos:J
    :catch_0
    move-exception v1

    .line 920
    .local v1, ignored:Ljava/lang/InterruptedException;
    :try_start_6
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->signalConditionsOfSatisfiedGuards(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 925
    const/4 v2, 0x1

    .line 926
    :try_start_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v5

    sub-long v3, p2, v8

    goto :goto_1

    .line 921
    :catch_1
    move-exception v7

    .line 922
    .local v7, throwable:Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 923
    invoke-static {v7}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 930
    .end local v0           #condition:Ljava/util/concurrent/locks/Condition;
    .end local v1           #ignored:Ljava/lang/InterruptedException;
    .end local v3           #remainingNanos:J
    .end local v7           #throwable:Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    :try_start_8
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->decrementWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 933
    :catchall_1
    move-exception v8

    if-eqz v2, :cond_5

    .line 934
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    throw v8
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 295
    return-void
.end method

.method public enter(JLjava/util/concurrent/TimeUnit;)Z
    .locals 11
    .parameter "time"
    .parameter "unit"

    .prologue
    .line 310
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 311
    .local v2, lock:Ljava/util/concurrent/locks/ReentrantLock;
    iget-boolean v9, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    if-nez v9, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 312
    const/4 v9, 0x1

    .line 329
    :cond_0
    :goto_0
    return v9

    .line 314
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 315
    .local v5, startNanos:J
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    .line 316
    .local v7, timeoutNanos:J
    move-wide v3, v7

    .line 317
    .local v3, remainingNanos:J
    const/4 v1, 0x0

    .line 321
    .local v1, interruptIgnored:Z
    :goto_1
    :try_start_0
    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v9}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 328
    if-eqz v1, :cond_0

    .line 329
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, ignored:Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 324
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v9

    sub-long/2addr v9, v5

    sub-long v3, v7, v9

    .line 325
    goto :goto_1

    .line 328
    .end local v0           #ignored:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v9

    if-eqz v1, :cond_2

    .line 329
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v9
.end method

.method public enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 3
    .parameter "guard"

    .prologue
    .line 488
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v2, p0, :cond_0

    .line 489
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 492
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 493
    const/4 v1, 0x0

    .line 495
    .local v1, satisfied:Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 497
    if-nez v1, :cond_1

    .line 498
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 501
    :cond_1
    return v1

    .line 497
    :catchall_0
    move-exception v2

    if-nez v1, :cond_2

    .line 498
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    throw v2
.end method

.method public enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .parameter "guard"
    .parameter "time"
    .parameter "unit"

    .prologue
    .line 534
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v2, p0, :cond_0

    .line 535
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 538
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->enter(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 539
    const/4 v1, 0x0

    .line 549
    :cond_1
    :goto_0
    return v1

    .line 541
    :cond_2
    const/4 v1, 0x0

    .line 543
    .local v1, satisfied:Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 545
    if-nez v1, :cond_1

    .line 546
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 545
    :catchall_0
    move-exception v2

    if-nez v1, :cond_3

    .line 546
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    throw v2
.end method

.method public enterIfInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 3
    .parameter "guard"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 511
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v2, p0, :cond_0

    .line 512
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 515
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 516
    const/4 v1, 0x0

    .line 518
    .local v1, satisfied:Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 520
    if-nez v1, :cond_1

    .line 521
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 524
    :cond_1
    return v1

    .line 520
    :catchall_0
    move-exception v2

    if-nez v1, :cond_2

    .line 521
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    throw v2
.end method

.method public enterIfInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .parameter "guard"
    .parameter "time"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 560
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v2, p0, :cond_0

    .line 561
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 564
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 565
    const/4 v1, 0x0

    .line 575
    :cond_1
    :goto_0
    return v1

    .line 567
    :cond_2
    const/4 v1, 0x0

    .line 569
    .local v1, satisfied:Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 571
    if-nez v1, :cond_1

    .line 572
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 571
    :catchall_0
    move-exception v2

    if-nez v1, :cond_3

    .line 572
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    throw v2
.end method

.method public enterInterruptibly()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 302
    return-void
.end method

.method public enterInterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .parameter "time"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public enterWhen(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 4
    .parameter "guard"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 358
    iget-object v3, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v3, p0, :cond_0

    .line 359
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 362
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    .line 363
    .local v1, reentrant:Z
    const/4 v2, 0x0

    .line 364
    .local v2, success:Z
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 366
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->waitInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    const/4 v2, 0x1

    .line 369
    if-nez v2, :cond_1

    .line 370
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 373
    :cond_1
    return-void

    .line 369
    :catchall_0
    move-exception v3

    if-nez v2, :cond_2

    .line 370
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    throw v3
.end method

.method public enterWhen(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 11
    .parameter "guard"
    .parameter "time"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 404
    iget-object v7, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v7, p0, :cond_0

    .line 405
    new-instance v7, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v7}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v7

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 408
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    .line 410
    .local v1, reentrant:Z
    iget-boolean v7, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    if-nez v7, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 411
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 419
    .local v2, remainingNanos:J
    :goto_0
    const/4 v4, 0x0

    .line 421
    .local v4, satisfied:Z
    :try_start_0
    invoke-direct {p0, p1, v2, v3, v1}, Lcom/google/common/util/concurrent/Monitor;->waitInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 423
    if-nez v4, :cond_1

    .line 424
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 427
    .end local v2           #remainingNanos:J
    .end local v4           #satisfied:Z
    :cond_1
    :goto_1
    return v4

    .line 413
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 414
    .local v5, startNanos:J
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 415
    const/4 v4, 0x0

    goto :goto_1

    .line 417
    :cond_3
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    sub-long v2, v7, v9

    .restart local v2       #remainingNanos:J
    goto :goto_0

    .line 423
    .end local v5           #startNanos:J
    .restart local v4       #satisfied:Z
    :catchall_0
    move-exception v7

    if-nez v4, :cond_4

    .line 424
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_4
    throw v7
.end method

.method public enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 4
    .parameter "guard"

    .prologue
    .line 379
    iget-object v3, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v3, p0, :cond_0

    .line 380
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 383
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    .line 384
    .local v1, reentrant:Z
    const/4 v2, 0x0

    .line 385
    .local v2, success:Z
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 387
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->waitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    const/4 v2, 0x1

    .line 390
    if-nez v2, :cond_1

    .line 391
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 394
    :cond_1
    return-void

    .line 390
    :catchall_0
    move-exception v3

    if-nez v2, :cond_2

    .line 391
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    throw v3
.end method

.method public enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 17
    .parameter "guard"
    .parameter "time"
    .parameter "unit"

    .prologue
    .line 437
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    move-object/from16 v0, p0

    if-eq v14, v0, :cond_0

    .line 438
    new-instance v14, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v14}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v14

    .line 440
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 441
    .local v5, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v6

    .line 442
    .local v6, reentrant:Z
    const/4 v4, 0x0

    .line 445
    .local v4, interruptIgnored:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    if-nez v14, :cond_3

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 446
    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v7

    .line 465
    .local v7, remainingNanos:J
    :goto_0
    const/4 v9, 0x0

    .line 467
    .local v9, satisfied:Z
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v8, v6}, Lcom/google/common/util/concurrent/Monitor;->waitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v9

    .line 469
    if-nez v9, :cond_1

    .line 470
    :try_start_2
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 475
    :cond_1
    if-eqz v4, :cond_2

    .line 476
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->interrupt()V

    .end local v9           #satisfied:Z
    :cond_2
    :goto_1
    return v9

    .line 448
    .end local v7           #remainingNanos:J
    :cond_3
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 449
    .local v10, startNanos:J
    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v12

    .line 450
    .local v12, timeoutNanos:J
    move-wide v7, v12

    .line 453
    .restart local v7       #remainingNanos:J
    :goto_2
    :try_start_4
    sget-object v14, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v7, v8, v14}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v14

    if-eqz v14, :cond_4

    .line 461
    :try_start_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long/2addr v14, v10

    sub-long v7, v12, v14

    goto :goto_0

    .line 456
    :cond_4
    const/4 v9, 0x0

    .line 461
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-wide v14

    sub-long/2addr v14, v10

    sub-long v7, v12, v14

    .line 475
    if-eqz v4, :cond_2

    .line 476
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 458
    :catch_0
    move-exception v3

    .line 459
    .local v3, ignored:Ljava/lang/InterruptedException;
    const/4 v4, 0x1

    .line 461
    :try_start_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long/2addr v14, v10

    sub-long v7, v12, v14

    .line 462
    goto :goto_2

    .line 461
    .end local v3           #ignored:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v14

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    sub-long/2addr v15, v10

    sub-long v7, v12, v15

    throw v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 475
    .end local v7           #remainingNanos:J
    .end local v10           #startNanos:J
    .end local v12           #timeoutNanos:J
    :catchall_1
    move-exception v14

    if-eqz v4, :cond_5

    .line 476
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    throw v14

    .line 469
    .restart local v7       #remainingNanos:J
    .restart local v9       #satisfied:Z
    :catchall_2
    move-exception v14

    if-nez v9, :cond_6

    .line 470
    :try_start_7
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_6
    throw v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public getOccupiedDepth()I
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    return v0
.end method

.method public getQueueLength()I
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v0

    return v0
.end method

.method public getWaitQueueLength(Lcom/google/common/util/concurrent/Monitor$Guard;)I
    .locals 2
    .parameter "guard"

    .prologue
    .line 766
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v0, p0, :cond_0

    .line 767
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 771
    :try_start_0
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public hasQueuedThread(Ljava/lang/Thread;)Z
    .locals 1
    .parameter "thread"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThread(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public hasQueuedThreads()Z
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public hasWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 2
    .parameter "guard"

    .prologue
    .line 748
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v0, p0, :cond_0

    .line 749
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 753
    :try_start_0
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 755
    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 753
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 755
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public isFair()Z
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isFair()Z

    move-result v0

    return v0
.end method

.method public isOccupied()Z
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    return v0
.end method

.method public isOccupiedByCurrentThread()Z
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public leave()V
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 670
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 671
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 674
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/Monitor;->signalConditionsOfSatisfiedGuards(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 678
    return-void

    .line 676
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public tryEnter()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    return v0
.end method

.method public tryEnterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 3
    .parameter "guard"

    .prologue
    .line 587
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v2, p0, :cond_0

    .line 588
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 591
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v2

    if-nez v2, :cond_2

    .line 592
    const/4 v1, 0x0

    .line 602
    :cond_1
    :goto_0
    return v1

    .line 594
    :cond_2
    const/4 v1, 0x0

    .line 596
    .local v1, satisfied:Z
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 598
    if-nez v1, :cond_1

    .line 599
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 598
    :catchall_0
    move-exception v2

    if-nez v1, :cond_3

    .line 599
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    throw v2
.end method

.method public waitFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 1
    .parameter "guard"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 610
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v0, p0, :cond_0

    .line 611
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 614
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 616
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/Monitor;->waitInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V

    .line 617
    return-void
.end method

.method public waitFor(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .parameter "guard"
    .parameter "time"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 640
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v0, p0, :cond_0

    .line 641
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 644
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 646
    :cond_1
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/common/util/concurrent/Monitor;->waitInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v0

    return v0
.end method

.method public waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 1
    .parameter "guard"

    .prologue
    .line 624
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v0, p0, :cond_0

    .line 625
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 628
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 630
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/Monitor;->waitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V

    .line 631
    return-void
.end method

.method public waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .parameter "guard"
    .parameter "time"
    .parameter "unit"

    .prologue
    .line 656
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-eq v0, p0, :cond_0

    .line 657
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 660
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 662
    :cond_1
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/common/util/concurrent/Monitor;->waitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v0

    return v0
.end method
