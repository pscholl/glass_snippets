.class Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;
.super Ljava/lang/Object;
.source "AbstractExecutionThreadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->startUp()V

    .line 49
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyStarted()V

    .line 51
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->isRunning()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    :try_start_1
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->shutDown()V

    .line 66
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyStopped()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 71
    return-void

    .line 54
    :catch_0
    move-exception v1

    .line 56
    .local v1, t:Ljava/lang/Throwable;
    :try_start_3
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->shutDown()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 61
    :goto_0
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 67
    .end local v1           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 68
    .restart local v1       #t:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v2, v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyFailed(Ljava/lang/Throwable;)V

    .line 69
    invoke-static {v1}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 57
    :catch_2
    move-exception v0

    .line 58
    .local v0, ignored:Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while attempting to shut down the service after failure."

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0
.end method
