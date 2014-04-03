.class Lcom/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask;
.super Lcom/x/google/common/task/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/google/common/async/AsyncHttpRequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatchdogTask"
.end annotation


# instance fields
.field request:Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;


# direct methods
.method constructor <init>(Lcom/x/google/common/task/TaskRunner;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/x/google/common/task/TimerTask;-><init>(Lcom/x/google/common/task/TaskRunner;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/x/google/debug/LogSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WatchdogTask.run(): request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->request:Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->request:Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;

    invoke-virtual {v0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogFired()V

    return-void
.end method

.method public setRequest(Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->request:Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;

    return-void
.end method
