.class Lcom/x/google/masf/services/resume/WindowResumeService$Listener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/masf/protocol/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/google/masf/services/resume/WindowResumeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/x/google/masf/services/resume/WindowResumeService;


# direct methods
.method private constructor <init>(Lcom/x/google/masf/services/resume/WindowResumeService;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/masf/services/resume/WindowResumeService$Listener;->this$0:Lcom/x/google/masf/services/resume/WindowResumeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/x/google/masf/services/resume/WindowResumeService;Lcom/x/google/masf/services/resume/WindowResumeService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/x/google/masf/services/resume/WindowResumeService$Listener;-><init>(Lcom/x/google/masf/services/resume/WindowResumeService;)V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/x/google/masf/protocol/Request;Lcom/x/google/masf/protocol/Response;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Listener.requestCompleted("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/x/google/masf/services/resume/WindowResumeService;->debug(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/x/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    check-cast p1, Lcom/x/google/masf/services/resume/ResumeServiceRequest;

    :try_start_0
    const-string v0, "WindowResumeService.Listener.requestCompleted(): try block"

    #calls: Lcom/x/google/masf/services/resume/WindowResumeService;->debug(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/x/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    new-instance v0, Lcom/x/google/masf/services/resume/ResumeServiceResponse;

    invoke-direct {v0, p2}, Lcom/x/google/masf/services/resume/ResumeServiceResponse;-><init>(Lcom/x/google/masf/protocol/Response;)V

    invoke-virtual {p1, v0}, Lcom/x/google/masf/services/resume/ResumeServiceRequest;->setResponse(Lcom/x/google/masf/services/resume/ResumeServiceResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "WindowResumeService.Listener.requestCompleted(): finally block"

    #calls: Lcom/x/google/masf/services/resume/WindowResumeService;->debug(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/x/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService$Listener;->this$0:Lcom/x/google/masf/services/resume/WindowResumeService;

    #getter for: Lcom/x/google/masf/services/resume/WindowResumeService;->mainTask:Lcom/x/google/common/task/Task;
    invoke-static {v0}, Lcom/x/google/masf/services/resume/WindowResumeService;->access$900(Lcom/x/google/masf/services/resume/WindowResumeService;)Lcom/x/google/common/task/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/task/Task;->schedule()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "WindowResumeService.Listener.requestCompleted(): catch block"

    #calls: Lcom/x/google/masf/services/resume/WindowResumeService;->debug(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/x/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    new-instance v1, Lcom/x/google/masf/services/resume/ResumeServiceResponse;

    invoke-direct {v1, v0}, Lcom/x/google/masf/services/resume/ResumeServiceResponse;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p1, v1}, Lcom/x/google/masf/services/resume/ResumeServiceRequest;->setResponse(Lcom/x/google/masf/services/resume/ResumeServiceResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "WindowResumeService.Listener.requestCompleted(): finally block"

    #calls: Lcom/x/google/masf/services/resume/WindowResumeService;->debug(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/x/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService$Listener;->this$0:Lcom/x/google/masf/services/resume/WindowResumeService;

    #getter for: Lcom/x/google/masf/services/resume/WindowResumeService;->mainTask:Lcom/x/google/common/task/Task;
    invoke-static {v0}, Lcom/x/google/masf/services/resume/WindowResumeService;->access$900(Lcom/x/google/masf/services/resume/WindowResumeService;)Lcom/x/google/common/task/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/task/Task;->schedule()V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "WindowResumeService.Listener.requestCompleted(): finally block"

    #calls: Lcom/x/google/masf/services/resume/WindowResumeService;->debug(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/x/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/x/google/masf/services/resume/WindowResumeService$Listener;->this$0:Lcom/x/google/masf/services/resume/WindowResumeService;

    #getter for: Lcom/x/google/masf/services/resume/WindowResumeService;->mainTask:Lcom/x/google/common/task/Task;
    invoke-static {v1}, Lcom/x/google/masf/services/resume/WindowResumeService;->access$900(Lcom/x/google/masf/services/resume/WindowResumeService;)Lcom/x/google/common/task/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/x/google/common/task/Task;->schedule()V

    throw v0
.end method

.method public requestFailed(Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Listener.requestFailed("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/x/google/masf/services/resume/WindowResumeService;->debug(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/x/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "WindowResumeService.Listener.requestFailed(): try block"

    #calls: Lcom/x/google/masf/services/resume/WindowResumeService;->debug(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/x/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    check-cast p1, Lcom/x/google/masf/services/resume/ResumeServiceRequest;

    new-instance v0, Lcom/x/google/masf/services/resume/ResumeServiceResponse;

    invoke-direct {v0, p2}, Lcom/x/google/masf/services/resume/ResumeServiceResponse;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p1, v0}, Lcom/x/google/masf/services/resume/ResumeServiceRequest;->setResponse(Lcom/x/google/masf/services/resume/ResumeServiceResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "WindowResumeService.Listener.requestFailed(): finally block"

    #calls: Lcom/x/google/masf/services/resume/WindowResumeService;->debug(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/x/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService$Listener;->this$0:Lcom/x/google/masf/services/resume/WindowResumeService;

    #getter for: Lcom/x/google/masf/services/resume/WindowResumeService;->mainTask:Lcom/x/google/common/task/Task;
    invoke-static {v0}, Lcom/x/google/masf/services/resume/WindowResumeService;->access$900(Lcom/x/google/masf/services/resume/WindowResumeService;)Lcom/x/google/common/task/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/task/Task;->schedule()V

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "WindowResumeService.Listener.requestFailed(): finally block"

    #calls: Lcom/x/google/masf/services/resume/WindowResumeService;->debug(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/x/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/x/google/masf/services/resume/WindowResumeService$Listener;->this$0:Lcom/x/google/masf/services/resume/WindowResumeService;

    #getter for: Lcom/x/google/masf/services/resume/WindowResumeService;->mainTask:Lcom/x/google/common/task/Task;
    invoke-static {v1}, Lcom/x/google/masf/services/resume/WindowResumeService;->access$900(Lcom/x/google/masf/services/resume/WindowResumeService;)Lcom/x/google/common/task/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/x/google/common/task/Task;->schedule()V

    throw v0
.end method
