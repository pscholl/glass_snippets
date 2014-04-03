.class final Lcom/x/google/masf/MobileServiceMux$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/google/masf/MobileServiceMux;-><init>(Lcom/x/google/masf/MobileServiceMux$Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/x/google/masf/MobileServiceMux;


# direct methods
.method constructor <init>(Lcom/x/google/masf/MobileServiceMux;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/masf/MobileServiceMux$1;->this$0:Lcom/x/google/masf/MobileServiceMux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$1;->this$0:Lcom/x/google/masf/MobileServiceMux;

    #getter for: Lcom/x/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/x/google/masf/MobileServiceMux;->access$700(Lcom/x/google/masf/MobileServiceMux;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/x/google/masf/MobileServiceMux;->access$800()Lcom/x/google/debug/LogSource;

    move-result-object v0

    const-string v2, "Running flush"

    invoke-virtual {v0, v2}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;)V

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getClock()Lcom/x/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$1;->this$0:Lcom/x/google/masf/MobileServiceMux;

    iget-wide v4, v0, Lcom/x/google/masf/MobileServiceMux;->nextFlush:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$1;->this$0:Lcom/x/google/masf/MobileServiceMux;

    iget-object v0, v0, Lcom/x/google/masf/MobileServiceMux;->flushTask:Lcom/x/google/common/task/TimerTask;

    iget-object v2, p0, Lcom/x/google/masf/MobileServiceMux$1;->this$0:Lcom/x/google/masf/MobileServiceMux;

    iget-wide v2, v2, Lcom/x/google/masf/MobileServiceMux;->nextFlush:J

    invoke-virtual {v0, v2, v3}, Lcom/x/google/common/task/TimerTask;->setDeadline(J)V

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$1;->this$0:Lcom/x/google/masf/MobileServiceMux;

    iget-object v0, v0, Lcom/x/google/masf/MobileServiceMux;->flushTask:Lcom/x/google/common/task/TimerTask;

    invoke-virtual {v0}, Lcom/x/google/common/task/TimerTask;->schedule()V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$1;->this$0:Lcom/x/google/masf/MobileServiceMux;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/x/google/masf/MobileServiceMux;->nextFlush:J

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$1;->this$0:Lcom/x/google/masf/MobileServiceMux;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/x/google/masf/MobileServiceMux;->hardDeadline:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$1;->this$0:Lcom/x/google/masf/MobileServiceMux;

    invoke-virtual {v0}, Lcom/x/google/masf/MobileServiceMux;->processRequests()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
