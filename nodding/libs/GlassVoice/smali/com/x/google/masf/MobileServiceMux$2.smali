.class final Lcom/x/google/masf/MobileServiceMux$2;
.super Lcom/x/google/common/task/TimerTask;


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
.method constructor <init>(Lcom/x/google/masf/MobileServiceMux;Lcom/x/google/common/task/TaskRunner;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/masf/MobileServiceMux$2;->this$0:Lcom/x/google/masf/MobileServiceMux;

    invoke-direct {p0, p2}, Lcom/x/google/common/task/TimerTask;-><init>(Lcom/x/google/common/task/TaskRunner;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/x/google/masf/MobileServiceMux;->access$800()Lcom/x/google/debug/LogSource;

    move-result-object v0

    const-string v1, "Running delayed flush"

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$2;->this$0:Lcom/x/google/masf/MobileServiceMux;

    #getter for: Lcom/x/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/x/google/masf/MobileServiceMux;->access$700(Lcom/x/google/masf/MobileServiceMux;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$2;->this$0:Lcom/x/google/masf/MobileServiceMux;

    invoke-virtual {v0}, Lcom/x/google/masf/MobileServiceMux;->scheduleFlush()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
