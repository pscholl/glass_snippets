.class public final Lcom/google/common/util/concurrent/MoreExecutors;
.super Ljava/lang/Object;
.source "MoreExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;,
        Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;,
        Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;,
        Lcom/google/common/util/concurrent/MoreExecutors$Application;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-static {p0}, Lcom/google/common/util/concurrent/MoreExecutors;->useDaemonThreadFactory(Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method public static addDelayedShutdownHook(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .parameter "service"
    .parameter "terminationTimeout"
    .parameter "timeUnit"
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$Application;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->addDelayedShutdownHook(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    .line 123
    return-void
.end method

.method public static getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter "executor"
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$Application;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter "executor"
    .parameter "terminationTimeout"
    .parameter "timeUnit"
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$Application;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .parameter "executor"
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 163
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$Application;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .parameter "executor"
    .parameter "terminationTimeout"
    .parameter "timeUnit"
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$Application;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method static invokeAnyImpl(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/Collection;ZJ)Ljava/lang/Object;
    .locals 20
    .parameter "executorService"
    .parameter
    .parameter "timed"
    .parameter "nanos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListeningExecutorService;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;ZJ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 511
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-static/range {p0 .. p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v16

    .line 513
    .local v16, ntasks:I
    if-lez v16, :cond_1

    const/16 v18, 0x1

    :goto_0
    invoke-static/range {v18 .. v18}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 514
    invoke-static/range {v16 .. v16}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 515
    .local v9, futures:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    invoke-static {}, Lcom/google/common/collect/Queues;->newLinkedBlockingQueue()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v8

    .line 526
    .local v8, futureQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v4, 0x0

    .line 527
    .local v4, ee:Ljava/util/concurrent/ExecutionException;
    if-eqz p2, :cond_2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 528
    .local v12, lastTime:J
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 530
    .local v11, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/concurrent/Callable;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Lcom/google/common/util/concurrent/MoreExecutors;->submitAndAddQueueListener(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    add-int/lit8 v16, v16, -0x1

    .line 532
    const/4 v3, 0x1

    .local v3, active:I
    move-object v5, v4

    .line 535
    .end local v4           #ee:Ljava/util/concurrent/ExecutionException;
    .local v5, ee:Ljava/util/concurrent/ExecutionException;
    :goto_2
    :try_start_1
    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Future;

    .line 536
    .local v7, f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    if-nez v7, :cond_0

    .line 537
    if-lez v16, :cond_3

    .line 538
    add-int/lit8 v16, v16, -0x1

    .line 539
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/concurrent/Callable;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Lcom/google/common/util/concurrent/MoreExecutors;->submitAndAddQueueListener(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 540
    add-int/lit8 v3, v3, 0x1

    .line 555
    :cond_0
    :goto_3
    if-eqz v7, :cond_a

    .line 556
    add-int/lit8 v3, v3, -0x1

    .line 558
    :try_start_2
    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v18

    .line 572
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .end local v7           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    check-cast v7, Ljava/util/concurrent/Future;

    .line 573
    .restart local v7       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_4

    .line 513
    .end local v3           #active:I
    .end local v5           #ee:Ljava/util/concurrent/ExecutionException;
    .end local v7           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v8           #futureQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/util/concurrent/Future<TT;>;>;"
    .end local v9           #futures:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v12           #lastTime:J
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 527
    .restart local v4       #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v8       #futureQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/util/concurrent/Future<TT;>;>;"
    .restart local v9       #futures:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    :cond_2
    const-wide/16 v12, 0x0

    goto :goto_1

    .line 541
    .end local v4           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v3       #active:I
    .restart local v5       #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v7       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .restart local v11       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local v12       #lastTime:J
    :cond_3
    if-nez v3, :cond_4

    .line 567
    if-nez v5, :cond_9

    .line 568
    :try_start_3
    new-instance v4, Ljava/util/concurrent/ExecutionException;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 570
    .end local v5           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v4       #ee:Ljava/util/concurrent/ExecutionException;
    :goto_5
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 572
    .end local v3           #active:I
    .end local v7           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v11           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v12           #lastTime:J
    :catchall_0
    move-exception v18

    :goto_6
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Future;

    .line 573
    .restart local v7       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_7

    .line 543
    .end local v4           #ee:Ljava/util/concurrent/ExecutionException;
    .end local v10           #i$:Ljava/util/Iterator;
    .restart local v3       #active:I
    .restart local v5       #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v11       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local v12       #lastTime:J
    :cond_4
    if-eqz p2, :cond_6

    .line 544
    :try_start_5
    sget-object v18, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p3

    move-object/from16 v2, v18

    invoke-interface {v8, v0, v1, v2}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    check-cast v7, Ljava/util/concurrent/Future;

    .line 545
    .restart local v7       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    if-nez v7, :cond_5

    .line 546
    new-instance v18, Ljava/util/concurrent/TimeoutException;

    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v18

    .line 572
    .end local v7           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :catchall_1
    move-exception v18

    move-object v4, v5

    .end local v5           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v4       #ee:Ljava/util/concurrent/ExecutionException;
    goto :goto_6

    .line 548
    .end local v4           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v5       #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v7       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 549
    .local v14, now:J
    sub-long v18, v14, v12

    sub-long p3, p3, v18

    .line 550
    move-wide v12, v14

    .line 551
    goto :goto_3

    .line 552
    .end local v14           #now:J
    :cond_6
    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v7

    .end local v7           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    check-cast v7, Ljava/util/concurrent/Future;

    .restart local v7       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    goto :goto_3

    .line 559
    :catch_0
    move-exception v6

    .line 560
    .local v6, eex:Ljava/util/concurrent/ExecutionException;
    move-object v4, v6

    .end local v5           #ee:Ljava/util/concurrent/ExecutionException;
    .end local v6           #eex:Ljava/util/concurrent/ExecutionException;
    .restart local v4       #ee:Ljava/util/concurrent/ExecutionException;
    :goto_8
    move-object v5, v4

    .line 565
    .end local v4           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v5       #ee:Ljava/util/concurrent/ExecutionException;
    goto/16 :goto_2

    .line 561
    :catch_1
    move-exception v17

    .line 562
    .local v17, rex:Ljava/lang/RuntimeException;
    new-instance v4, Ljava/util/concurrent/ExecutionException;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v5           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v4       #ee:Ljava/util/concurrent/ExecutionException;
    goto :goto_8

    .line 573
    .end local v3           #active:I
    .end local v7           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v11           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v12           #lastTime:J
    .end local v17           #rex:Ljava/lang/RuntimeException;
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_7
    throw v18

    .end local v4           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v3       #active:I
    .restart local v5       #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v7       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .restart local v11       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local v12       #lastTime:J
    :cond_8
    return-object v18

    .end local v10           #i$:Ljava/util/Iterator;
    :cond_9
    move-object v4, v5

    .end local v5           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v4       #ee:Ljava/util/concurrent/ExecutionException;
    goto :goto_5

    .end local v4           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v5       #ee:Ljava/util/concurrent/ExecutionException;
    :cond_a
    move-object v4, v5

    .end local v5           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v4       #ee:Ljava/util/concurrent/ExecutionException;
    goto :goto_8
.end method

.method private static isAppEngine()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 621
    const-string v2, "com.google.appengine.runtime.environment"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 639
    :cond_0
    :goto_0
    return v1

    .line 626
    :cond_1
    :try_start_0
    const-string v2, "com.google.apphosting.api.ApiProxy"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getCurrentEnvironment"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 628
    :catch_0
    move-exception v0

    .line 630
    .local v0, e:Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 631
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 633
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 634
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 636
    .local v0, e:Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 637
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 639
    .local v0, e:Ljava/lang/NoSuchMethodException;
    goto :goto_0
.end method

.method public static listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;
    .locals 1
    .parameter "delegate"

    .prologue
    .line 401
    instance-of v0, p0, Lcom/google/common/util/concurrent/ListeningExecutorService;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/util/concurrent/ListeningExecutorService;

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    .end local p0
    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    move-object p0, v0

    goto :goto_0

    .restart local p0
    :cond_1
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;-><init>(Ljava/util/concurrent/ExecutorService;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static listeningDecorator(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;
    .locals 1
    .parameter "delegate"

    .prologue
    .line 427
    instance-of v0, p0, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    move-object p0, v0

    goto :goto_0
.end method

.method static newThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .parameter "name"
    .parameter "runnable"

    .prologue
    .line 648
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->platformThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 652
    .local v0, result:Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :goto_0
    return-object v0

    .line 653
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static platformThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 4
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 603
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->isAppEngine()Z

    move-result v1

    if-nez v1, :cond_0

    .line 604
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    .line 607
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v1, "com.google.appengine.api.ThreadManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentRequestThreadFactory"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadFactory;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t invoke ThreadManager.currentRequestThreadFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 611
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 612
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t invoke ThreadManager.currentRequestThreadFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 613
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v0

    .line 614
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t invoke ThreadManager.currentRequestThreadFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 615
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 616
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;-><init>(Lcom/google/common/util/concurrent/MoreExecutors$1;)V

    return-object v0
.end method

.method private static submitAndAddQueueListener(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .parameter "executorService"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListeningExecutorService;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 584
    .local p1, task:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    .local p2, queue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/util/concurrent/Future<TT;>;>;"
    invoke-interface {p0, p1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 585
    .local v0, future:Lcom/google/common/util/concurrent/ListenableFuture;,"Lcom/google/common/util/concurrent/ListenableFuture<TT;>;"
    new-instance v1, Lcom/google/common/util/concurrent/MoreExecutors$1;

    invoke-direct {v1, p2, v0}, Lcom/google/common/util/concurrent/MoreExecutors$1;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 590
    return-object v0
.end method

.method private static useDaemonThreadFactory(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2
    .parameter "executor"

    .prologue
    .line 224
    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setDaemon(Z)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 226
    return-void
.end method
