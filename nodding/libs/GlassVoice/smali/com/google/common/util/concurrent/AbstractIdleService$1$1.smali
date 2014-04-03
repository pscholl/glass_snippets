.class Lcom/google/common/util/concurrent/AbstractIdleService$1$1;
.super Ljava/lang/Object;
.source "AbstractIdleService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractIdleService$1;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/AbstractIdleService$1;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractIdleService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractIdleService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractIdleService$1;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractIdleService$1;->this$0:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractIdleService;->startUp()V

    .line 45
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractIdleService$1;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractIdleService$1;->notifyStarted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, t:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractIdleService$1;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractIdleService$1;->notifyFailed(Ljava/lang/Throwable;)V

    .line 48
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
