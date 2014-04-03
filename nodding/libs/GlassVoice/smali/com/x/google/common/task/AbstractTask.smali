.class public abstract Lcom/x/google/common/task/AbstractTask;
.super Ljava/lang/Object;


# static fields
.field private static final EMPTY_TASK_ARRAY:[Lcom/x/google/common/task/AbstractTask; = null

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_PENDING:I = 0x4

.field public static final STATE_RUNNABLE:I = 0x2

.field public static final STATE_RUNNING:I = 0x3

.field public static final STATE_SLEEPING:I = 0x1


# instance fields
.field private finishTimestamp:J

.field private final name:Ljava/lang/String;

.field private runCounter:I

.field private runCounterLock:Ljava/lang/Object;

.field protected runnable:Ljava/lang/Runnable;

.field private runnableTimestamp:J

.field protected runner:Lcom/x/google/common/task/TaskRunner;

.field private scheduleTimestamp:J

.field private startTimestamp:J

.field private state:I

.field protected tasks:Ljava/util/Vector;

.field private final varzInsideQueue:Ljava/lang/String;

.field private final varzOutsideQueue:Ljava/lang/String;

.field private final varzTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/x/google/common/task/AbstractTask;

    sput-object v0, Lcom/x/google/common/task/AbstractTask;->EMPTY_TASK_ARRAY:[Lcom/x/google/common/task/AbstractTask;

    return-void
.end method

.method public constructor <init>(Lcom/x/google/common/task/TaskRunner;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/x/google/common/task/AbstractTask;-><init>(Lcom/x/google/common/task/TaskRunner;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/x/google/common/task/TaskRunner;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/x/google/common/task/AbstractTask;-><init>(Lcom/x/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/x/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/task/AbstractTask;->runCounterLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/x/google/common/task/AbstractTask;->runner:Lcom/x/google/common/task/TaskRunner;

    iput-object p2, p0, Lcom/x/google/common/task/AbstractTask;->runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/x/google/common/task/AbstractTask;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/x/google/common/task/AbstractTask;->varzOutsideQueue:Ljava/lang/String;

    iput-object v1, p0, Lcom/x/google/common/task/AbstractTask;->varzInsideQueue:Ljava/lang/String;

    iput-object v1, p0, Lcom/x/google/common/task/AbstractTask;->varzTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized addTask(Lcom/x/google/common/task/AbstractTask;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/x/google/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/x/google/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancel()I
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/task/AbstractTask;->runner:Lcom/x/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/x/google/common/task/TaskRunner;->cancelTask(Lcom/x/google/common/task/AbstractTask;)I

    move-result v0

    return v0
.end method

.method abstract cancelInternal()I
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/task/AbstractTask;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected getState()I
    .locals 1

    iget v0, p0, Lcom/x/google/common/task/AbstractTask;->state:I

    return v0
.end method

.method public getStateLabel()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/x/google/common/task/AbstractTask;->state:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/x/google/common/task/AbstractTask;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "None"

    goto :goto_0

    :pswitch_1
    const-string v0, "Sleeping"

    goto :goto_0

    :pswitch_2
    const-string v0, "Runnable"

    goto :goto_0

    :pswitch_3
    const-string v0, "Running"

    goto :goto_0

    :pswitch_4
    const-string v0, "Pending"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getTaskRunner()Lcom/x/google/common/task/TaskRunner;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/task/AbstractTask;->runner:Lcom/x/google/common/task/TaskRunner;

    return-object v0
.end method

.method protected getTasks()[Lcom/x/google/common/task/AbstractTask;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/x/google/common/task/AbstractTask;

    iget-object v1, p0, Lcom/x/google/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    sget-object v0, Lcom/x/google/common/task/AbstractTask;->EMPTY_TASK_ARRAY:[Lcom/x/google/common/task/AbstractTask;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized removeTask(Lcom/x/google/common/task/AbstractTask;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected run()V
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/task/AbstractTask;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/task/AbstractTask;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method runInternal()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/x/google/common/task/AbstractTask;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/x/google/common/task/AbstractTask;->runCounterLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v0, p0, Lcom/x/google/common/task/AbstractTask;->runCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/x/google/common/task/AbstractTask;->runCounter:I

    iget-object v0, p0, Lcom/x/google/common/task/AbstractTask;->runCounterLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/x/google/common/task/AbstractTask;->getTasks()[Lcom/x/google/common/task/AbstractTask;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/x/google/common/task/AbstractTask;->schedule()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runtime exception ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] thrown by runnable ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/x/google/common/task/AbstractTask;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/x/google/debug/Log;->logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method public schedule()V
    .locals 2

    iget-object v1, p0, Lcom/x/google/common/task/AbstractTask;->runCounterLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/x/google/common/task/AbstractTask;->runCounter:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/x/google/common/task/AbstractTask;->runner:Lcom/x/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/x/google/common/task/TaskRunner;->scheduleTask(Lcom/x/google/common/task/AbstractTask;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method abstract scheduleInternal()V
.end method

.method protected setState(I)V
    .locals 0

    iput p1, p0, Lcom/x/google/common/task/AbstractTask;->state:I

    return-void
.end method

.method updateFinishTimestamp()V
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/task/AbstractTask;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method updateRunnableTimestamp()V
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/task/AbstractTask;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method updateScheduleTimestamp()V
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/task/AbstractTask;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method updateStartTimestamp()V
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/task/AbstractTask;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public waitForRun()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/x/google/common/task/AbstractTask;->waitForRun(I)V

    return-void
.end method

.method public waitForRun(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v1, p0, Lcom/x/google/common/task/AbstractTask;->runCounterLock:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/x/google/common/task/AbstractTask;->runCounter:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/task/AbstractTask;->runCounterLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public declared-synchronized wrappedEqualsRunnable(Ljava/lang/Runnable;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/task/AbstractTask;->runnable:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
