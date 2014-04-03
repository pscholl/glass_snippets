.class public Lcom/google/glass/util/DeferredContentLoader;
.super Ljava/lang/Object;
.source "DeferredContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/DeferredContentLoader$LoadingTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXECUTOR:Ljava/util/concurrent/Executor; = null

.field private static final MAX_DELAY_BASE:J = 0x96L

.field private static final MAX_DELAY_INCREMENT_PER_ACTIVE_TASK:J = 0x32L

.field private static final MAX_PENDING_TIME_BEFORE_FORCED_CANCEL:J = 0xbb8L

.field private static final MIN_ESTIMATED_TIME_TO_CANCEL:J = 0xfaL

.field static final SCROLL_WINDOW_SIZE:I = 0x5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = null

.field private static final TARGET_CONCURRENCY:I = 0x1

.field static final THREAD_COUNT:I = 0xa
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final executePendingRunnable:Ljava/lang/Runnable;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final mainThreadHandler:Landroid/os/Handler;

.field private static numActiveTasks:I

.field private static pendingTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static spareTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    const-class v0, Lcom/google/glass/util/DeferredContentLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/DeferredContentLoader;->TAG:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/google/glass/util/DeferredContentLoader;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/DeferredContentLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 53
    const/16 v0, 0xa

    new-instance v1, Lcom/google/glass/async/PriorityThreadFactory;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/glass/util/DeferredContentLoader;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/DeferredContentLoader;->EXECUTOR:Ljava/util/concurrent/Executor;

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/glass/util/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/glass/util/DeferredContentLoader;->spareTaskList:Ljava/util/List;

    .line 101
    const/4 v0, 0x0

    sput v0, Lcom/google/glass/util/DeferredContentLoader;->numActiveTasks:I

    .line 104
    new-instance v0, Lcom/google/glass/util/DeferredContentLoader$1;

    invoke-direct {v0}, Lcom/google/glass/util/DeferredContentLoader$1;-><init>()V

    sput-object v0, Lcom/google/glass/util/DeferredContentLoader;->executePendingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 35
    invoke-static {}, Lcom/google/glass/util/DeferredContentLoader;->executePendingTasks()V

    return-void
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/glass/util/DeferredContentLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/google/glass/util/DeferredContentLoader;->numActiveTasks:I

    return v0
.end method

.method static synthetic access$508()I
    .locals 2

    .prologue
    .line 35
    sget v0, Lcom/google/glass/util/DeferredContentLoader;->numActiveTasks:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/google/glass/util/DeferredContentLoader;->numActiveTasks:I

    return v0
.end method

.method static synthetic access$510()I
    .locals 2

    .prologue
    .line 35
    sget v0, Lcom/google/glass/util/DeferredContentLoader;->numActiveTasks:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/google/glass/util/DeferredContentLoader;->numActiveTasks:I

    return v0
.end method

.method static synthetic access$600()Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/glass/util/DeferredContentLoader;->executePendingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/glass/util/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static calculateTimeToCancel(IFFI)F
    .locals 6
    .parameter "anticipatedSettlePosition"
    .parameter "scrollPosition"
    .parameter "scrollVelocity"
    .parameter "scrollItemPosition"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/high16 v1, 0x7f80

    const/high16 v5, 0x447a

    const/high16 v4, 0x4020

    const/4 v2, 0x0

    .line 572
    if-ltz p3, :cond_0

    .line 573
    sub-int v3, p3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 575
    .local v0, distanceToAnticipatedCenter:I
    const/4 v3, 0x2

    if-gt v0, v3, :cond_1

    .line 599
    .end local v0           #distanceToAnticipatedCenter:I
    :cond_0
    :goto_0
    return v1

    .line 582
    .restart local v0       #distanceToAnticipatedCenter:I
    :cond_1
    cmpl-float v1, p2, v2

    if-lez v1, :cond_2

    .line 583
    int-to-float v1, p3

    add-float/2addr v1, v4

    sub-float/2addr v1, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v5

    div-float/2addr v1, p2

    goto :goto_0

    .line 586
    :cond_2
    cmpg-float v1, p2, v2

    if-gez v1, :cond_3

    .line 587
    int-to-float v1, p3

    sub-float/2addr v1, v4

    sub-float v1, p1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v5

    neg-float v2, p2

    div-float/2addr v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    .line 593
    goto :goto_0
.end method

.method public static cancel(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 689
    .local p0, task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 690
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->cancel(Z)V

    .line 691
    return-void
.end method

.method public static cancel(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 699
    .local p0, tasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 700
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 701
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->cancel(Z)V

    .line 700
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 703
    :cond_0
    return-void
.end method

.method private static executePendingTasks()V
    .locals 24

    .prologue
    .line 419
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_1

    .line 513
    .local v5, i:I
    .local v17, tmp:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;>;"
    :cond_0
    :goto_0
    return-void

    .line 424
    .end local v5           #i:I
    .end local v17           #tmp:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;>;"
    :cond_1
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->spareTaskList:Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    .line 425
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_1
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_4

    .line 426
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    .line 427
    .local v14, task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    invoke-virtual {v14}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->isCancelled()Z

    move-result v18

    if-nez v18, :cond_2

    #getter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollItemSubview:Landroid/view/View;
    invoke-static {v14}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$900(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 428
    #calls: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->prepareForScrollPrioritization()V
    invoke-static {v14}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$1000(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 430
    :cond_2
    invoke-virtual {v14}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->isCancelled()Z

    move-result v18

    if-nez v18, :cond_3

    .line 431
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->spareTaskList:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 434
    .end local v14           #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    :cond_4
    sget-object v17, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    .line 435
    .restart local v17       #tmp:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;>;"
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->spareTaskList:Ljava/util/List;

    sput-object v18, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    .line 436
    sput-object v17, Lcom/google/glass/util/DeferredContentLoader;->spareTaskList:Ljava/util/List;

    .line 437
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    if-eqz v18, :cond_0

    .line 442
    const/4 v13, 0x0

    .line 443
    .local v13, scrollView:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<**>;"
    const/4 v5, 0x0

    :goto_2
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_5

    .line 444
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    .line 445
    .restart local v14       #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    #getter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollView:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;
    invoke-static {v14}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$1100(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v18

    if-eqz v18, :cond_6

    .line 446
    #getter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollView:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;
    invoke-static {v14}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$1100(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v13

    .line 451
    .end local v14           #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    :cond_5
    const/4 v2, -0x1

    .line 452
    .local v2, anticipatedSettlePosition:I
    const/4 v11, 0x0

    .line 453
    .local v11, scrollPosition:F
    const/4 v12, 0x0

    .line 454
    .local v12, scrollVelocity:F
    if-eqz v13, :cond_7

    .line 456
    invoke-virtual {v13}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getScrollPosition()F

    move-result v11

    .line 457
    invoke-virtual {v13}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getScrollVelocity()F

    move-result v12

    .line 458
    invoke-virtual {v13}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getAnticipatedSettlePosition()I

    move-result v2

    .line 459
    const/4 v5, 0x0

    :goto_3
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_7

    .line 460
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    .line 461
    .restart local v14       #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    iget v0, v14, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollItemPosition:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v2, v11, v12, v0}, Lcom/google/glass/util/DeferredContentLoader;->calculateTimeToCancel(IFFI)F

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->estimatedTimeToCancel:F

    .line 459
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 443
    .end local v2           #anticipatedSettlePosition:I
    .end local v11           #scrollPosition:F
    .end local v12           #scrollVelocity:F
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 468
    .end local v14           #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    .restart local v2       #anticipatedSettlePosition:I
    .restart local v11       #scrollPosition:F
    .restart local v12       #scrollVelocity:F
    :cond_7
    sget v18, Lcom/google/glass/util/DeferredContentLoader;->numActiveTasks:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 469
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-static {v0, v2, v11, v12}, Lcom/google/glass/util/DeferredContentLoader;->startBestTask(Ljava/util/List;IFF)Z

    move-result v18

    if-nez v18, :cond_7

    .line 477
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 478
    .local v3, currentTime:J
    const/4 v5, 0x0

    :goto_4
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_a

    .line 479
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    .line 480
    .restart local v14       #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    #getter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->timeAddedToPendingList:J
    invoke-static {v14}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$1200(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)J

    move-result-wide v18

    sub-long v15, v3, v18

    .line 481
    .local v15, timePending:J
    iget v0, v14, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->estimatedTimeToCancel:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_9

    const-wide/16 v18, 0xbb8

    cmp-long v18, v15, v18

    if-lez v18, :cond_9

    .line 483
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "Cancelling LEAKED task %s pending for %s ms"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v14, v20, v21

    const/16 v21, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-interface/range {v18 .. v20}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->cancel(Z)V

    .line 485
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    add-int/lit8 v6, v5, -0x1

    .end local v5           #i:I
    .local v6, i:I
    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v5, v6

    .line 478
    .end local v6           #i:I
    .restart local v5       #i:I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 491
    .end local v14           #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    .end local v15           #timePending:J
    :cond_a
    const-wide/16 v18, 0x96

    sget v20, Lcom/google/glass/util/DeferredContentLoader;->numActiveTasks:I

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x32

    mul-long v20, v20, v22

    add-long v7, v18, v20

    .line 492
    .local v7, maxAdjustedDelay:J
    move-wide v9, v3

    .line 493
    .local v9, nextPendingTaskAddTime:J
    const/4 v5, 0x0

    :goto_5
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_d

    .line 494
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    .line 495
    .restart local v14       #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    #getter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->timeAddedToPendingList:J
    invoke-static {v14}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$1200(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)J

    move-result-wide v18

    sub-long v18, v3, v18

    cmp-long v18, v18, v7

    if-gez v18, :cond_c

    .line 496
    #getter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->timeAddedToPendingList:J
    invoke-static {v14}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$1200(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 493
    :cond_b
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 499
    :cond_c
    iget v0, v14, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->estimatedTimeToCancel:F

    move/from16 v18, v0

    const/high16 v19, 0x437a

    cmpg-float v18, v18, v19

    if-ltz v18, :cond_b

    .line 502
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->EXECUTOR:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v18

    #calls: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->start(Ljava/util/concurrent/Executor;)V
    invoke-static {v14, v0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$1300(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;Ljava/util/concurrent/Executor;)V

    .line 503
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    add-int/lit8 v6, v5, -0x1

    .end local v5           #i:I
    .restart local v6       #i:I
    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 504
    const-wide/16 v18, 0x32

    add-long v7, v7, v18

    move v5, v6

    .end local v6           #i:I
    .restart local v5       #i:I
    goto :goto_6

    .line 509
    .end local v14           #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    :cond_d
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_0

    .line 510
    sget-object v18, Lcom/google/glass/util/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    sget-object v19, Lcom/google/glass/util/DeferredContentLoader;->executePendingRunnable:Ljava/lang/Runnable;

    const-wide/16 v20, 0x0

    add-long v22, v9, v7

    sub-long v22, v22, v3

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public static load(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 609
    .local p0, task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 612
    invoke-virtual {p0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    :goto_0
    return-void

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->prepareContent()V

    .line 623
    invoke-virtual {p0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->notifyOnCompleted(Z)V

    goto :goto_0

    .line 629
    :cond_1
    sget-object v0, Lcom/google/glass/util/DeferredContentLoader;->pendingTasks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    #setter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->timeAddedToPendingList:J
    invoke-static {p0, v0, v1}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$1202(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;J)J

    .line 631
    sget-object v0, Lcom/google/glass/util/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    sget-object v1, Lcom/google/glass/util/DeferredContentLoader;->executePendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static loadForScrollItemSubview(Landroid/view/View;Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V
    .locals 0
    .parameter "itemSubview"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 657
    .local p1, task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 658
    #calls: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->enableScrollPrioritization(Landroid/view/View;)V
    invoke-static {p1, p0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$1400(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;Landroid/view/View;)V

    .line 659
    invoke-static {p1}, Lcom/google/glass/util/DeferredContentLoader;->load(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 660
    return-void
.end method

.method public static loadForScrollItemSubview(Landroid/view/View;Ljava/util/List;)V
    .locals 3
    .parameter "itemSubview"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 676
    .local p1, tasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 677
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 678
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    .line 679
    .local v2, task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    invoke-static {p0, v2}, Lcom/google/glass/util/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 677
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 681
    .end local v2           #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    :cond_0
    return-void
.end method

.method public static postLoadToUiThread(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 641
    .local p0, task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 642
    sget-object v0, Lcom/google/glass/util/DeferredContentLoader;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/util/DeferredContentLoader$2;

    invoke-direct {v1, p0}, Lcom/google/glass/util/DeferredContentLoader$2;-><init>(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 648
    return-void
.end method

.method static startBestTask(Ljava/util/List;IFF)Z
    .locals 7
    .parameter
    .parameter "anticipatedSettlePosition"
    .parameter "scrollPosition"
    .parameter "scrollVelocity"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;>;IFF)Z"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, pendingTasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;>;"
    const/4 v1, -0x1

    .line 520
    .local v1, bestTaskIndex:I
    const v0, 0x7fffffff

    .line 521
    .local v0, bestTaskDistanceToAnticipatedCenter:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 522
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    .line 523
    .local v4, task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    iget v5, v4, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->estimatedTimeToCancel:F

    const/high16 v6, 0x437a

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 521
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 535
    :cond_1
    const v2, 0x7fffffff

    .line 536
    .local v2, distanceToAnticipatedCenter:I
    iget v5, v4, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollItemPosition:I

    if-ltz v5, :cond_2

    .line 537
    iget v5, v4, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->scrollItemPosition:I

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 540
    :cond_2
    if-ltz v1, :cond_3

    if-ge v2, v0, :cond_0

    .line 542
    :cond_3
    move v0, v2

    .line 543
    move v1, v3

    goto :goto_1

    .line 546
    .end local v2           #distanceToAnticipatedCenter:I
    .end local v4           #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    :cond_4
    if-ltz v1, :cond_5

    .line 547
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    .line 548
    .restart local v4       #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    sget-object v5, Lcom/google/glass/util/DeferredContentLoader;->EXECUTOR:Ljava/util/concurrent/Executor;

    #calls: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->start(Ljava/util/concurrent/Executor;)V
    invoke-static {v4, v5}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$1300(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;Ljava/util/concurrent/Executor;)V

    .line 549
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 560
    const/4 v5, 0x1

    .line 562
    .end local v4           #task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    :goto_2
    return v5

    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method


# virtual methods
.method public startLoadForScrollItemSubview(Landroid/view/View;Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V
    .locals 0
    .parameter "itemSubview"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 666
    .local p2, task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    invoke-static {p1, p2}, Lcom/google/glass/util/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 667
    return-void
.end method
