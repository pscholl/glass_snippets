.class public Lcom/x/google/common/task/TaskRunner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DEFAULT_PRIORITY:I = 0x7f

.field private static final DEFAULT_WORKER_COUNT:I = 0x1

.field private static final DEFAULT_WORKER_NAME:Ljava/lang/String; = "TaskRunner"

.field public static final MAX_PRIORITY:I = 0xff

.field public static final MIN_PRIORITY:I


# instance fields
.field protected final clock:Lcom/x/google/common/Clock;

.field private defaultPriority:I

.field protected factory:Lcom/x/google/common/lang/ThreadFactory;

.field private final logger:Lcom/x/google/debug/LogSource;

.field private maxPriority:I

.field private minPriority:I

.field protected mutex:Ljava/lang/Object;

.field protected name:Ljava/lang/String;

.field protected priorityTaskQueue:Ljava/util/Vector;

.field protected running:Z

.field private final runningTaskMap:Ljava/util/Hashtable;

.field private final taskMap:Ljava/util/Hashtable;

.field protected timerTaskQueue:Ljava/util/Vector;

.field protected workers:[Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/x/google/common/lang/ThreadFactory;)V
    .locals 2

    const-string v0, "TaskRunner"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/x/google/common/task/TaskRunner;-><init>(Lcom/x/google/common/lang/ThreadFactory;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/x/google/common/lang/ThreadFactory;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/x/google/common/task/TaskRunner;-><init>(Lcom/x/google/common/lang/ThreadFactory;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/x/google/common/lang/ThreadFactory;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    const/16 v0, 0x7f

    iput v0, p0, Lcom/x/google/common/task/TaskRunner;->defaultPriority:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/x/google/common/task/TaskRunner;->maxPriority:I

    iput v1, p0, Lcom/x/google/common/task/TaskRunner;->minPriority:I

    iput-boolean v1, p0, Lcom/x/google/common/task/TaskRunner;->running:Z

    iput-object p1, p0, Lcom/x/google/common/task/TaskRunner;->factory:Lcom/x/google/common/lang/ThreadFactory;

    iput-object p2, p0, Lcom/x/google/common/task/TaskRunner;->name:Ljava/lang/String;

    new-array v0, p3, [Ljava/lang/Thread;

    iput-object v0, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getClock()Lcom/x/google/common/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/task/TaskRunner;->clock:Lcom/x/google/common/Clock;

    iput-object v2, p0, Lcom/x/google/common/task/TaskRunner;->taskMap:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/x/google/common/task/TaskRunner;->runningTaskMap:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/debug/LogSource;->getLogSource(Ljava/lang/Class;)Lcom/x/google/debug/LogSource;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    return-void
.end method

.method private logFinishedTask(Lcom/x/google/common/task/AbstractTask;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method private logScheduleTask(Lcom/x/google/common/task/AbstractTask;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method private logStartingTask(Lcom/x/google/common/task/AbstractTask;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method private printTaskSources()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public cancelTask(Lcom/x/google/common/task/AbstractTask;)I
    .locals 2

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/x/google/common/task/AbstractTask;->cancelInternal()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method cancelTaskInternal(Lcom/x/google/common/task/AbstractTask;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Lcom/x/google/common/task/AbstractTask;->getState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    monitor-exit v2

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/x/google/common/task/AbstractTask;->setState(I)V

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/x/google/common/task/AbstractTask;->setState(I)V

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/x/google/common/task/AbstractTask;->setState(I)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method getDefaultPriority()I
    .locals 1

    iget v0, p0, Lcom/x/google/common/task/TaskRunner;->defaultPriority:I

    return v0
.end method

.method protected getLogInfo()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method getMaxPriority()I
    .locals 1

    iget v0, p0, Lcom/x/google/common/task/TaskRunner;->maxPriority:I

    return v0
.end method

.method getMinPriority()I
    .locals 1

    iget v0, p0, Lcom/x/google/common/task/TaskRunner;->minPriority:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected getNextTaskToRun()Lcom/x/google/common/task/Task;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-virtual {v0, v8}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextTaskToRun(): moving expired tasks @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/x/google/common/task/TaskRunner;->clock:Lcom/x/google/common/Clock;

    invoke-interface {v3}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextTaskToRun(): timer queue length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextTaskToRun(): priority queue length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/task/TimerTask;

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-virtual {v2, v8}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const-string v3, "getNextTaskToRun(): timerTask = "

    invoke-virtual {v2, v3, v0}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Lcom/x/google/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/x/google/common/task/TaskRunner;->clock:Lcom/x/google/common/Clock;

    invoke-interface {v4}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-virtual {v4, v8}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNextTaskToRun(): current = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/x/google/common/task/TaskRunner;->clock:Lcom/x/google/common/Clock;

    invoke-interface {v6}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNextTaskToRun(): scheduled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/x/google/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_4

    iget-object v4, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-virtual {v4, v8}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gettNextTaskToRun(): #2 delta = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_3
    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->removeElementAt(I)V

    invoke-virtual {p0, v0}, Lcom/x/google/common/task/TaskRunner;->schedulePriorityTaskInternal(Lcom/x/google/common/task/Task;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-virtual {v0, v8}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextTask(): getting available task @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/x/google/common/task/TaskRunner;->clock:Lcom/x/google/common/Clock;

    invoke-interface {v3}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/task/Task;

    invoke-virtual {v0, v8}, Lcom/x/google/common/task/Task;->setState(I)V

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v1, v9}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_1
    return-object v0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method public getPriorityQueueLength()I
    .locals 2

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTimerQueueLength()I
    .locals 2

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isWorker()Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v3

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    aget-object v4, v4, v1

    if-ne v2, v4, :cond_0

    const/4 v0, 0x1

    monitor-exit v3

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-virtual {v1, v5}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run(): loop [running="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/x/google/common/task/TaskRunner;->running:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const-string v3, "run(): clean up"

    invoke-virtual {v2, v3}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Lcom/x/google/common/task/Task;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/x/google/common/task/Task;->setState(I)V

    invoke-virtual {v0}, Lcom/x/google/common/task/Task;->scheduleInternal()V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/x/google/common/task/TaskRunner;->waitForSomethingToDo()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const-string v2, "run(): exiting loop"

    invoke-virtual {v0, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-virtual {v0, v5}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const-string v1, "run(): end "

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void

    :cond_6
    :try_start_1
    invoke-virtual {v0}, Lcom/x/google/common/task/Task;->getState()I

    move-result v2

    if-ne v2, v5, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/x/google/common/task/Task;->setState(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    :try_start_2
    invoke-virtual {p0}, Lcom/x/google/common/task/TaskRunner;->getNextTaskToRun()Lcom/x/google/common/task/Task;

    move-result-object v0

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-direct {p0, v0}, Lcom/x/google/common/task/TaskRunner;->logStartingTask(Lcom/x/google/common/task/AbstractTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_8
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-virtual {v1, v5}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run(): running task @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/x/google/common/task/TaskRunner;->clock:Lcom/x/google/common/Clock;

    invoke-interface {v3}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_9
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/x/google/common/task/Task;->updateStartTimestamp()V

    :try_start_3
    invoke-virtual {v0}, Lcom/x/google/common/task/Task;->runInternal()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-virtual {v1, v5}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-direct {p0, v0}, Lcom/x/google/common/task/TaskRunner;->logFinishedTask(Lcom/x/google/common/task/AbstractTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {v0}, Lcom/x/google/common/task/Task;->updateFinishTimestamp()V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runtime exception thrown by task ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/x/google/debug/LogSource;->severe(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method schedulePriorityTaskInternal(Lcom/x/google/common/task/Task;)V
    .locals 7

    iget-object v4, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p1}, Lcom/x/google/common/task/Task;->getPriority()I

    move-result v5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_0
    if-ge v3, v1, :cond_1

    add-int v0, v3, v1

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/task/Task;

    invoke-virtual {v0}, Lcom/x/google/common/task/Task;->getPriority()I

    move-result v0

    if-gt v5, v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_1
    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v2

    move v1, v3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Lcom/x/google/common/task/Task;->updateRunnableTimestamp()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/x/google/common/task/Task;->setState(I)V

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method scheduleTask(Lcom/x/google/common/task/AbstractTask;)V
    .locals 2

    invoke-virtual {p1}, Lcom/x/google/common/task/AbstractTask;->updateScheduleTimestamp()V

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/x/google/common/task/AbstractTask;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    monitor-exit v1

    return-void

    :pswitch_1
    invoke-virtual {p1}, Lcom/x/google/common/task/AbstractTask;->scheduleInternal()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_2
    const/4 v0, 0x4

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/x/google/common/task/AbstractTask;->setState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method scheduleTimerTaskInternal(Lcom/x/google/common/task/TimerTask;)V
    .locals 10

    iget-object v4, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p1}, Lcom/x/google/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_0
    if-ge v3, v1, :cond_1

    add-int v0, v3, v1

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/task/TimerTask;

    invoke-virtual {v0}, Lcom/x/google/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-ltz v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v9, v1

    move v1, v0

    move v0, v9

    :goto_1
    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v2

    move v1, v3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/x/google/common/task/TimerTask;->setState(I)V

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 6

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/x/google/common/task/TaskRunner;->running:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/x/google/common/task/TaskRunner;->running:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    iget-object v3, p0, Lcom/x/google/common/task/TaskRunner;->factory:Lcom/x/google/common/lang/ThreadFactory;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/x/google/common/task/TaskRunner;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p0}, Lcom/x/google/common/lang/ThreadFactory;->createThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/x/google/common/task/TaskRunner;->running:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/x/google/common/task/TaskRunner;->running:Z

    :goto_0
    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopAndWait()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const-string v2, "#stopAndWait"

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/x/google/common/task/TaskRunner;->running:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/x/google/common/task/TaskRunner;->running:Z

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const-string v2, "#stopAndWait - waiting for thread to die "

    iget-object v3, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const-string v1, "#stopAndWait - done"

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected waitForSomethingToDo()Z
    .locals 5

    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/x/google/common/task/TaskRunner;->running:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitForSomethingToDo(): task queue empty @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->clock:Lcom/x/google/common/Clock;

    invoke-interface {v2}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const-string v1, "waitForSomethingToDo(): timer task queue empty"

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/x/google/common/task/TaskRunner;->running:Z

    return v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/x/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/task/TimerTask;

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitForSomethingToDo(): scheduled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/x/google/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v0}, Lcom/x/google/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->clock:Lcom/x/google/common/Clock;

    invoke-interface {v2}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waitForSomethingToDo(): #1 delta = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/x/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/x/google/common/task/TaskRunner;->logger:Lcom/x/google/debug/LogSource;

    const-string v2, "exception thrown while waiting"

    invoke-virtual {v1, v2, v0}, Lcom/x/google/debug/LogSource;->severe(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
