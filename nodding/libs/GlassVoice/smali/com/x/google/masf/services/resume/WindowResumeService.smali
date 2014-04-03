.class public Lcom/x/google/masf/services/resume/WindowResumeService;
.super Lcom/x/google/masf/services/resume/ResumeService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/masf/services/resume/WindowResumeService$1;,
        Lcom/x/google/masf/services/resume/WindowResumeService$MainTask;,
        Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;,
        Lcom/x/google/masf/services/resume/WindowResumeService$Listener;,
        Lcom/x/google/masf/services/resume/WindowResumeService$Control;,
        Lcom/x/google/masf/services/resume/WindowResumeService$Chunk;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHUNK_SIZE:I = 0x4000

.field private static final MINIMUM_BANDWIDTH_TIME:I = 0x64

.field private static final MIN_CHUNK_SIZE:I = 0x1000

.field private static final RESPONSE_IGNORE_COUNT:I = 0x2

.field private static final RESPONSE_QUIET_COUNT:I = 0x4


# instance fields
.field private activeQueue:Ljava/util/Vector;

.field private chunkSize:I

.field private header:Lcom/x/google/masf/protocol/HeaderRequest;

.field private mainTask:Lcom/x/google/common/task/Task;

.field private mutex:Ljava/lang/Object;

.field private mux:Lcom/x/google/masf/MobileServiceMux;

.field private runner:Lcom/x/google/common/task/TaskRunner;


# direct methods
.method public constructor <init>(Lcom/x/google/masf/MobileServiceMux;Lcom/x/google/common/task/TaskRunner;Lcom/x/google/masf/protocol/HeaderRequest;)V
    .locals 3

    invoke-direct {p0}, Lcom/x/google/masf/services/resume/ResumeService;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->activeQueue:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->mutex:Ljava/lang/Object;

    const/16 v0, 0x4000

    iput v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->chunkSize:I

    iput-object p1, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->mux:Lcom/x/google/masf/MobileServiceMux;

    iput-object p2, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->runner:Lcom/x/google/common/task/TaskRunner;

    iput-object p3, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->header:Lcom/x/google/masf/protocol/HeaderRequest;

    new-instance v0, Lcom/x/google/common/task/Task;

    new-instance v1, Lcom/x/google/masf/services/resume/WindowResumeService$MainTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/x/google/masf/services/resume/WindowResumeService$MainTask;-><init>(Lcom/x/google/masf/services/resume/WindowResumeService;Lcom/x/google/masf/services/resume/WindowResumeService$1;)V

    invoke-direct {v0, p2, v1}, Lcom/x/google/common/task/Task;-><init>(Lcom/x/google/common/task/TaskRunner;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->mainTask:Lcom/x/google/common/task/Task;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/x/google/masf/services/resume/WindowResumeService;->debug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/x/google/masf/services/resume/WindowResumeService;)Lcom/x/google/masf/protocol/HeaderRequest;
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->header:Lcom/x/google/masf/protocol/HeaderRequest;

    return-object v0
.end method

.method static synthetic access$300(Lcom/x/google/masf/services/resume/WindowResumeService;)I
    .locals 1

    iget v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->chunkSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/x/google/masf/services/resume/WindowResumeService;)Lcom/x/google/masf/MobileServiceMux;
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->mux:Lcom/x/google/masf/MobileServiceMux;

    return-object v0
.end method

.method static synthetic access$600(Lcom/x/google/masf/services/resume/WindowResumeService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->mutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/x/google/masf/services/resume/WindowResumeService;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->activeQueue:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$800(Lcom/x/google/masf/services/resume/WindowResumeService;)Lcom/x/google/common/task/TaskRunner;
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->runner:Lcom/x/google/common/task/TaskRunner;

    return-object v0
.end method

.method static synthetic access$900(Lcom/x/google/masf/services/resume/WindowResumeService;)Lcom/x/google/common/task/Task;
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->mainTask:Lcom/x/google/common/task/Task;

    return-object v0
.end method

.method private static debug(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MASF"

    invoke-static {v0, p0}, Lcom/x/google/common/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelRequest(Lcom/x/google/masf/services/resume/ResumableRequest;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.cancelRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/masf/services/resume/WindowResumeService;->debug(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->mutex:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->activeQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->activeQueue:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/masf/services/resume/WindowResumeService$Control;

    iget-object v0, v0, Lcom/x/google/masf/services/resume/WindowResumeService$Control;->request:Lcom/x/google/masf/services/resume/ResumableRequest;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->activeQueue:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    new-instance v0, Lcom/x/google/common/task/Task;

    iget-object v1, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->runner:Lcom/x/google/common/task/TaskRunner;

    new-instance v3, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;

    invoke-direct {v3, p1}, Lcom/x/google/masf/services/resume/WindowResumeService$CallbackTask;-><init>(Lcom/x/google/masf/services/resume/ResumableRequest;)V

    invoke-direct {v0, v1, v3}, Lcom/x/google/common/task/Task;-><init>(Lcom/x/google/common/task/TaskRunner;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/x/google/common/task/Task;->schedule()V

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disposeRequest(Lcom/x/google/masf/services/resume/ResumableRequest;)V
    .locals 2

    invoke-virtual {p1}, Lcom/x/google/masf/services/resume/ResumableRequest;->getRequestType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/x/google/masf/services/resume/ResumableRequest;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/x/google/masf/services/resume/WindowResumeService;->removeClientTicket(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getChunkSize()I
    .locals 1

    iget v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->chunkSize:I

    return v0
.end method

.method public setChunkSize(I)V
    .locals 1

    add-int/lit8 v0, p1, -0x1

    div-int/lit16 v0, v0, 0x1000

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->chunkSize:I

    return-void
.end method

.method public submitRequest(Lcom/x/google/masf/services/resume/ResumableRequest;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.submitRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/masf/services/resume/WindowResumeService;->debug(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->mutex:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->activeQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->activeQueue:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/masf/services/resume/WindowResumeService$Control;

    iget-object v0, v0, Lcom/x/google/masf/services/resume/WindowResumeService$Control;->request:Lcom/x/google/masf/services/resume/ResumableRequest;

    if-ne v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request is already submitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->activeQueue:Ljava/util/Vector;

    new-instance v1, Lcom/x/google/masf/services/resume/WindowResumeService$Control;

    invoke-direct {v1, p0, p1}, Lcom/x/google/masf/services/resume/WindowResumeService$Control;-><init>(Lcom/x/google/masf/services/resume/WindowResumeService;Lcom/x/google/masf/services/resume/ResumableRequest;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/x/google/masf/services/resume/WindowResumeService;->mainTask:Lcom/x/google/common/task/Task;

    invoke-virtual {v0}, Lcom/x/google/common/task/Task;->schedule()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
