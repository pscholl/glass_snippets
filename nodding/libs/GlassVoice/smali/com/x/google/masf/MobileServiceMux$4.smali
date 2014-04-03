.class final Lcom/x/google/masf/MobileServiceMux$4;
.super Lcom/x/google/common/task/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/google/masf/MobileServiceMux;->sendMacroRequest(Ljava/util/Vector;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/x/google/masf/MobileServiceMux;

.field final synthetic val$contentLength:I

.field final synthetic val$macroRequest:Lcom/x/google/common/async/AsyncHttpRequest;

.field final synthetic val$requests:[Lcom/x/google/masf/protocol/Request;


# direct methods
.method constructor <init>(Lcom/x/google/masf/MobileServiceMux;Lcom/x/google/common/task/TaskRunner;Lcom/x/google/common/async/AsyncHttpRequest;[Lcom/x/google/masf/protocol/Request;I)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/masf/MobileServiceMux$4;->this$0:Lcom/x/google/masf/MobileServiceMux;

    iput-object p3, p0, Lcom/x/google/masf/MobileServiceMux$4;->val$macroRequest:Lcom/x/google/common/async/AsyncHttpRequest;

    iput-object p4, p0, Lcom/x/google/masf/MobileServiceMux$4;->val$requests:[Lcom/x/google/masf/protocol/Request;

    iput p5, p0, Lcom/x/google/masf/MobileServiceMux$4;->val$contentLength:I

    invoke-direct {p0, p2}, Lcom/x/google/common/task/Task;-><init>(Lcom/x/google/common/task/TaskRunner;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/x/google/masf/MobileServiceMux;->access$800()Lcom/x/google/debug/LogSource;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Macro response received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/x/google/masf/MobileServiceMux$4;->val$macroRequest:Lcom/x/google/common/async/AsyncHttpRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$4;->val$macroRequest:Lcom/x/google/common/async/AsyncHttpRequest;

    invoke-interface {v0}, Lcom/x/google/common/async/AsyncHttpRequest;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/x/google/masf/MobileServiceMux;->access$800()Lcom/x/google/debug/LogSource;

    move-result-object v0

    const-string v1, "Macro response received - running"

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$4;->this$0:Lcom/x/google/masf/MobileServiceMux;

    #getter for: Lcom/x/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/x/google/masf/MobileServiceMux;->access$700(Lcom/x/google/masf/MobileServiceMux;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/x/google/masf/MobileServiceMux$4;->val$requests:[Lcom/x/google/masf/protocol/Request;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/x/google/masf/MobileServiceMux$4;->val$requests:[Lcom/x/google/masf/protocol/Request;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/x/google/masf/MobileServiceMux$4;->val$macroRequest:Lcom/x/google/common/async/AsyncHttpRequest;

    invoke-interface {v3}, Lcom/x/google/common/async/AsyncHttpRequest;->getLastProgressTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/x/google/masf/protocol/Request;->updateProgress(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$4;->this$0:Lcom/x/google/masf/MobileServiceMux;

    #calls: Lcom/x/google/masf/MobileServiceMux;->scheduleDelayedFlush()V
    invoke-static {v0}, Lcom/x/google/masf/MobileServiceMux;->access$900(Lcom/x/google/masf/MobileServiceMux;)V

    monitor-exit v1

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$4;->val$macroRequest:Lcom/x/google/common/async/AsyncHttpRequest;

    invoke-interface {v0}, Lcom/x/google/common/async/AsyncHttpRequest;->isCompletedOrException()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$4;->val$macroRequest:Lcom/x/google/common/async/AsyncHttpRequest;

    invoke-interface {v0}, Lcom/x/google/common/async/AsyncHttpRequest;->hasException()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/x/google/masf/MobileServiceMux;->access$800()Lcom/x/google/debug/LogSource;

    move-result-object v0

    const-string v1, "Macro response received - exception"

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$4;->this$0:Lcom/x/google/masf/MobileServiceMux;

    iget-object v1, p0, Lcom/x/google/masf/MobileServiceMux$4;->val$requests:[Lcom/x/google/masf/protocol/Request;

    iget-object v2, p0, Lcom/x/google/masf/MobileServiceMux$4;->val$macroRequest:Lcom/x/google/common/async/AsyncHttpRequest;

    invoke-interface {v2}, Lcom/x/google/common/async/AsyncHttpRequest;->getException()Ljava/lang/Exception;

    move-result-object v2

    #calls: Lcom/x/google/masf/MobileServiceMux;->requeueOrFailRequests([Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V
    invoke-static {v0, v1, v2}, Lcom/x/google/masf/MobileServiceMux;->access$1000(Lcom/x/google/masf/MobileServiceMux;[Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V

    :goto_2
    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$4;->this$0:Lcom/x/google/masf/MobileServiceMux;

    iget-object v1, p0, Lcom/x/google/masf/MobileServiceMux$4;->val$requests:[Lcom/x/google/masf/protocol/Request;

    #calls: Lcom/x/google/masf/MobileServiceMux;->disposeRequests([Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/x/google/masf/MobileServiceMux;->access$1200(Lcom/x/google/masf/MobileServiceMux;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$4;->this$0:Lcom/x/google/masf/MobileServiceMux;

    iget v1, p0, Lcom/x/google/masf/MobileServiceMux$4;->val$contentLength:I

    invoke-static {v0, v1}, Lcom/x/google/masf/MobileServiceMux;->access$1312(Lcom/x/google/masf/MobileServiceMux;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$4;->this$0:Lcom/x/google/masf/MobileServiceMux;

    #calls: Lcom/x/google/masf/MobileServiceMux;->scheduleDelayedFlush()V
    invoke-static {v0}, Lcom/x/google/masf/MobileServiceMux;->access$900(Lcom/x/google/masf/MobileServiceMux;)V

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$4;->val$macroRequest:Lcom/x/google/common/async/AsyncHttpRequest;

    invoke-interface {v0}, Lcom/x/google/common/async/AsyncHttpRequest;->close()V

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-static {}, Lcom/x/google/masf/MobileServiceMux;->access$800()Lcom/x/google/debug/LogSource;

    move-result-object v0

    const-string v1, "Macro response received - complete"

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$4;->this$0:Lcom/x/google/masf/MobileServiceMux;

    iget-object v1, p0, Lcom/x/google/masf/MobileServiceMux$4;->val$macroRequest:Lcom/x/google/common/async/AsyncHttpRequest;

    iget-object v2, p0, Lcom/x/google/masf/MobileServiceMux$4;->val$requests:[Lcom/x/google/masf/protocol/Request;

    #calls: Lcom/x/google/masf/MobileServiceMux;->handleMacroResponse(Lcom/x/google/common/async/AsyncHttpRequest;[Lcom/x/google/masf/protocol/Request;)V
    invoke-static {v0, v1, v2}, Lcom/x/google/masf/MobileServiceMux;->access$1100(Lcom/x/google/masf/MobileServiceMux;Lcom/x/google/common/async/AsyncHttpRequest;[Lcom/x/google/masf/protocol/Request;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/x/google/masf/MobileServiceMux$4;->this$0:Lcom/x/google/masf/MobileServiceMux;

    #calls: Lcom/x/google/masf/MobileServiceMux;->scheduleDelayedFlush()V
    invoke-static {v1}, Lcom/x/google/masf/MobileServiceMux;->access$900(Lcom/x/google/masf/MobileServiceMux;)V

    iget-object v1, p0, Lcom/x/google/masf/MobileServiceMux$4;->val$macroRequest:Lcom/x/google/common/async/AsyncHttpRequest;

    invoke-interface {v1}, Lcom/x/google/common/async/AsyncHttpRequest;->close()V

    throw v0
.end method
