.class Lcom/google/common/util/concurrent/Futures$CombinedFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CombinedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture",
        "<TC;>;"
    }
.end annotation


# instance fields
.field final allMustSucceed:Z

.field combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/Futures$FutureCombiner",
            "<TV;TC;>;"
        }
    .end annotation
.end field

.field futures:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;>;"
        }
    .end annotation
.end field

.field final remaining:Ljava/util/concurrent/atomic/AtomicInteger;

.field values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/base/Optional",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Lcom/google/common/util/concurrent/Futures$FutureCombiner;)V
    .locals 2
    .parameter
    .parameter "allMustSucceed"
    .parameter "listenerExecutor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/common/util/concurrent/Futures$FutureCombiner",
            "<TV;TC;>;)V"
        }
    .end annotation

    .prologue
    .line 1409
    .local p0, this:Lcom/google/common/util/concurrent/Futures$CombinedFuture;,"Lcom/google/common/util/concurrent/Futures$CombinedFuture<TV;TC;>;"
    .local p1, futures:Lcom/google/common/collect/ImmutableCollection;,"Lcom/google/common/collect/ImmutableCollection<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    .local p4, combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 1410
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    .line 1411
    iput-boolean p2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->allMustSucceed:Z

    .line 1412
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1413
    iput-object p4, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    .line 1414
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->values:Ljava/util/List;

    .line 1415
    invoke-virtual {p0, p3}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->init(Ljava/util/concurrent/Executor;)V

    .line 1416
    return-void
.end method

.method static synthetic access$400(Lcom/google/common/util/concurrent/Futures$CombinedFuture;ILjava/util/concurrent/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1401
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->setOneValue(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method private setOneValue(ILjava/util/concurrent/Future;)V
    .locals 9
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future",
            "<+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/util/concurrent/Futures$CombinedFuture;,"Lcom/google/common/util/concurrent/Futures$CombinedFuture<TV;TC;>;"
    .local p2, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<+TV;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1482
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->values:Ljava/util/List;

    .line 1483
    .local v2, localValues:Ljava/util/List;,"Ljava/util/List<Lcom/google/common/base/Optional<TV;>;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->isDone()Z

    move-result v7

    if-nez v7, :cond_0

    if-nez v2, :cond_4

    .line 1487
    :cond_0
    iget-boolean v7, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->allMustSucceed:Z

    if-nez v7, :cond_1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    move v5, v6

    :cond_2
    const-string v6, "Future was done before all dependencies completed"

    invoke-static {v5, v6}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1529
    :cond_3
    :goto_0
    return-void

    .line 1493
    :cond_4
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v7

    const-string v8, "Tried to set value from future which is not done"

    invoke-static {v7, v8}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1494
    invoke-static {p2}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4

    .line 1495
    .local v4, returnValue:Ljava/lang/Object;,"TV;"
    invoke-static {v4}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v7

    invoke-interface {v2, p1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    .line 1518
    iget-object v7, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    .line 1519
    .local v3, newRemaining:I
    if-ltz v3, :cond_5

    :goto_1
    const-string v5, "Less than 0 remaining futures"

    invoke-static {v6, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1520
    if-nez v3, :cond_3

    .line 1521
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    .line 1522
    .local v1, localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    if-eqz v1, :cond_6

    .line 1523
    invoke-interface {v1, v2}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1           #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_5
    move v6, v5

    .line 1519
    goto :goto_1

    .line 1525
    .restart local v1       #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_6
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->isDone()Z

    move-result v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_0

    .line 1496
    .end local v1           #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    .end local v3           #newRemaining:I
    .end local v4           #returnValue:Ljava/lang/Object;,"TV;"
    :catch_0
    move-exception v0

    .line 1497
    .local v0, e:Ljava/util/concurrent/CancellationException;
    :try_start_1
    iget-boolean v7, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->allMustSucceed:Z

    if-eqz v7, :cond_7

    .line 1502
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1518
    :cond_7
    iget-object v7, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    .line 1519
    .restart local v3       #newRemaining:I
    if-ltz v3, :cond_8

    :goto_2
    const-string v5, "Less than 0 remaining futures"

    invoke-static {v6, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1520
    if-nez v3, :cond_3

    .line 1521
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    .line 1522
    .restart local v1       #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    if-eqz v1, :cond_9

    .line 1523
    invoke-interface {v1, v2}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1           #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_8
    move v6, v5

    .line 1519
    goto :goto_2

    .line 1525
    .restart local v1       #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_9
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->isDone()Z

    move-result v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_0

    .line 1504
    .end local v0           #e:Ljava/util/concurrent/CancellationException;
    .end local v1           #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    .end local v3           #newRemaining:I
    :catch_1
    move-exception v0

    .line 1505
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    :try_start_2
    iget-boolean v7, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->allMustSucceed:Z

    if-eqz v7, :cond_a

    .line 1508
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1518
    :cond_a
    iget-object v7, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    .line 1519
    .restart local v3       #newRemaining:I
    if-ltz v3, :cond_b

    :goto_3
    const-string v5, "Less than 0 remaining futures"

    invoke-static {v6, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1520
    if-nez v3, :cond_3

    .line 1521
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    .line 1522
    .restart local v1       #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    if-eqz v1, :cond_c

    .line 1523
    invoke-interface {v1, v2}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v1           #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_b
    move v6, v5

    .line 1519
    goto :goto_3

    .line 1525
    .restart local v1       #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_c
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->isDone()Z

    move-result v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto/16 :goto_0

    .line 1510
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    .end local v1           #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    .end local v3           #newRemaining:I
    :catch_2
    move-exception v0

    .line 1511
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    iget-boolean v7, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->allMustSucceed:Z

    if-eqz v7, :cond_d

    .line 1512
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1518
    :cond_d
    iget-object v7, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    .line 1519
    .restart local v3       #newRemaining:I
    if-ltz v3, :cond_e

    :goto_4
    const-string v5, "Less than 0 remaining futures"

    invoke-static {v6, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1520
    if-nez v3, :cond_3

    .line 1521
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    .line 1522
    .restart local v1       #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    if-eqz v1, :cond_f

    .line 1523
    invoke-interface {v1, v2}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v1           #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_e
    move v6, v5

    .line 1519
    goto :goto_4

    .line 1525
    .restart local v1       #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_f
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->isDone()Z

    move-result v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto/16 :goto_0

    .line 1514
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    .end local v3           #newRemaining:I
    :catch_3
    move-exception v0

    .line 1516
    .local v0, e:Ljava/lang/Error;
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1518
    iget-object v7, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    .line 1519
    .restart local v3       #newRemaining:I
    if-ltz v3, :cond_10

    :goto_5
    const-string v5, "Less than 0 remaining futures"

    invoke-static {v6, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1520
    if-nez v3, :cond_3

    .line 1521
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    .line 1522
    .restart local v1       #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    if-eqz v1, :cond_11

    .line 1523
    invoke-interface {v1, v2}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v1           #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_10
    move v6, v5

    .line 1519
    goto :goto_5

    .line 1525
    .restart local v1       #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_11
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->isDone()Z

    move-result v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto/16 :goto_0

    .line 1518
    .end local v0           #e:Ljava/lang/Error;
    .end local v1           #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    .end local v3           #newRemaining:I
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    .line 1519
    .restart local v3       #newRemaining:I
    if-ltz v3, :cond_13

    :goto_6
    const-string v5, "Less than 0 remaining futures"

    invoke-static {v6, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1520
    if-nez v3, :cond_12

    .line 1521
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    .line 1522
    .restart local v1       #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    if-eqz v1, :cond_14

    .line 1523
    invoke-interface {v1, v2}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->set(Ljava/lang/Object;)Z

    .line 1528
    .end local v1           #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_12
    :goto_7
    throw v7

    :cond_13
    move v6, v5

    .line 1519
    goto :goto_6

    .line 1525
    .restart local v1       #localCombiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;,"Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_14
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->isDone()Z

    move-result v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_7
.end method


# virtual methods
.method protected init(Ljava/util/concurrent/Executor;)V
    .locals 7
    .parameter "listenerExecutor"

    .prologue
    .line 1423
    .local p0, this:Lcom/google/common/util/concurrent/Futures$CombinedFuture;,"Lcom/google/common/util/concurrent/Futures$CombinedFuture<TV;TC;>;"
    new-instance v5, Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;

    invoke-direct {v5, p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;-><init>(Lcom/google/common/util/concurrent/Futures$CombinedFuture;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1448
    iget-object v5, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1449
    iget-object v5, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->set(Ljava/lang/Object;)Z

    .line 1476
    :cond_0
    return-void

    .line 1454
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 1455
    iget-object v5, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->values:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1454
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1466
    :cond_2
    const/4 v0, 0x0

    .line 1467
    iget-object v5, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1468
    .local v4, listenable:Lcom/google/common/util/concurrent/ListenableFuture;,"Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    move v3, v0

    .line 1469
    .local v3, index:I
    new-instance v5, Lcom/google/common/util/concurrent/Futures$CombinedFuture$2;

    invoke-direct {v5, p0, v3, v4}, Lcom/google/common/util/concurrent/Futures$CombinedFuture$2;-><init>(Lcom/google/common/util/concurrent/Futures$CombinedFuture;ILcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-interface {v4, v5, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v0, v1

    .line 1475
    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_1
.end method
