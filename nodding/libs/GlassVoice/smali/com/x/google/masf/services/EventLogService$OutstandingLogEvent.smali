.class Lcom/x/google/masf/services/EventLogService$OutstandingLogEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/masf/protocol/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/google/masf/services/EventLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutstandingLogEvent"
.end annotation


# instance fields
.field private final eventData:[B

.field private failed:Z

.field private sendAttempts:I


# direct methods
.method constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/x/google/masf/services/EventLogService$OutstandingLogEvent;->eventData:[B

    invoke-static {}, Lcom/x/google/masf/services/EventLogService;->access$000()Ljava/util/Hashtable;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/x/google/masf/services/EventLogService;->access$000()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getEventData()[B
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/services/EventLogService$OutstandingLogEvent;->eventData:[B

    return-object v0
.end method

.method public requestCompleted(Lcom/x/google/masf/protocol/Request;Lcom/x/google/masf/protocol/Response;)V
    .locals 2

    invoke-static {}, Lcom/x/google/masf/services/EventLogService;->access$000()Ljava/util/Hashtable;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/x/google/masf/services/EventLogService;->access$000()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestFailed(Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V
    .locals 3

    iget v0, p0, Lcom/x/google/masf/services/EventLogService$OutstandingLogEvent;->sendAttempts:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/x/google/masf/services/EventLogService$OutstandingLogEvent;->send()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/x/google/masf/services/EventLogService;->access$000()Ljava/util/Hashtable;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/x/google/masf/services/EventLogService$OutstandingLogEvent;->failed:Z

    invoke-static {}, Lcom/x/google/masf/services/EventLogService;->access$100()I

    move-result v0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/x/google/masf/services/EventLogService;->access$112(I)I

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/x/google/masf/services/EventLogService;->access$000()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method resendIfFailed()V
    .locals 2

    invoke-static {}, Lcom/x/google/masf/services/EventLogService;->access$000()Ljava/util/Hashtable;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/x/google/masf/services/EventLogService$OutstandingLogEvent;->failed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/masf/services/EventLogService$OutstandingLogEvent;->sendAttempts:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/x/google/masf/services/EventLogService$OutstandingLogEvent;->failed:Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/x/google/masf/services/EventLogService;->access$120(I)I

    invoke-virtual {p0}, Lcom/x/google/masf/services/EventLogService$OutstandingLogEvent;->send()V

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

.method send()V
    .locals 5

    invoke-static {}, Lcom/x/google/masf/MobileServiceMux;->getSingleton()Lcom/x/google/masf/MobileServiceMux;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/x/google/masf/services/EventLogService$OutstandingLogEvent;->sendAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/x/google/masf/services/EventLogService$OutstandingLogEvent;->sendAttempts:I

    new-instance v1, Lcom/x/google/masf/protocol/PlainRequest;

    const-string v2, "g:log:ev"

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/x/google/masf/services/EventLogService$OutstandingLogEvent;->getEventData()[B

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/x/google/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {v1, p0}, Lcom/x/google/masf/protocol/Request;->setListener(Lcom/x/google/masf/protocol/Request$Listener;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/x/google/masf/MobileServiceMux;->submitRequest(Lcom/x/google/masf/protocol/Request;Z)V

    goto :goto_0
.end method
