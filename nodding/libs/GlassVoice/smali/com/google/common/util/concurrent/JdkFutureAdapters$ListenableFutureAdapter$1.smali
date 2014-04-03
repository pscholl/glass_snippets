.class Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter$1;
.super Ljava/lang/Object;
.source "JdkFutureAdapters.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    .local p0, this:Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter$1;,"Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter.1;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter$1;->this$0:Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    .local p0, this:Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter$1;,"Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter.1;"
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter$1;->this$0:Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;

    #getter for: Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->delegate:Ljava/util/concurrent/Future;
    invoke-static {v1}, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->access$000(Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter$1;->this$0:Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;

    #getter for: Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->executionList:Lcom/google/common/util/concurrent/ExecutionList;
    invoke-static {v1}, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->access$100(Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;)Lcom/google/common/util/concurrent/ExecutionList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/ExecutionList;->execute()V

    .line 169
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Error;
    throw v0

    .line 160
    .end local v0           #e:Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 163
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 164
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    goto :goto_0
.end method
