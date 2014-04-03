.class final Lcom/google/android/searchcommon/util/ConcurrentUtils$3;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "ConcurrentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/searchcommon/util/ConcurrentUtils;->createSafeScheduledExecutorService(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$MAX_EXPECTED_QUEUE_SIZE:I


# direct methods
.method constructor <init>(ILjava/util/concurrent/ThreadFactory;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 186
    iput p3, p0, Lcom/google/android/searchcommon/util/ConcurrentUtils$3;->val$MAX_EXPECTED_QUEUE_SIZE:I

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "r"
    .parameter "t"

    .prologue
    .line 212
    instance-of v3, p2, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_0

    .line 213
    check-cast p2, Ljava/lang/RuntimeException;

    .end local p2
    throw p2

    .line 216
    .restart local p2
    :cond_0
    instance-of v3, p1, Ljava/util/concurrent/Future;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 217
    check-cast v1, Ljava/util/concurrent/Future;

    .line 221
    .local v1, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    .end local v1           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 232
    return-void

    .line 224
    .restart local v1       #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    :catch_0
    move-exception v0

    .line 225
    .local v0, ee:Ljava/util/concurrent/ExecutionException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 226
    .end local v0           #ee:Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v2

    .line 227
    .local v2, ie:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 222
    .end local v2           #ie:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 5
    .parameter "r"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/android/searchcommon/util/ConcurrentUtils$3;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    .line 192
    .local v1, queueBefore:I
    invoke-super {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 194
    invoke-virtual {p0}, Lcom/google/android/searchcommon/util/ConcurrentUtils$3;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    .line 203
    .local v0, queueAfter:I
    iget v2, p0, Lcom/google/android/searchcommon/util/ConcurrentUtils$3;->val$MAX_EXPECTED_QUEUE_SIZE:I

    if-le v0, v2, :cond_0

    .line 204
    const-string v2, "Search.ConcurrentUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executor queue length is now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/searchcommon/util/ConcurrentUtils$3;->val$MAX_EXPECTED_QUEUE_SIZE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Perhaps some tasks are too long, or the pool is too small. ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    return-void
.end method
