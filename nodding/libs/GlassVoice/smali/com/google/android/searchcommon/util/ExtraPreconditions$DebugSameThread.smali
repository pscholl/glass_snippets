.class Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugSameThread;
.super Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;
.source "ExtraPreconditions.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/searchcommon/util/ExtraPreconditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DebugSameThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SameThread"


# instance fields
.field private mThread:Ljava/lang/Thread;

.field private mThrowable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;
    .locals 4

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 82
    .local v0, currentThread:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugSameThread;->mThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 83
    iput-object v0, p0, Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugSameThread;->mThread:Ljava/lang/Thread;

    .line 84
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugSameThread;->mThrowable:Ljava/lang/Throwable;

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugSameThread;->mThread:Ljava/lang/Thread;

    if-eq v1, v0, :cond_1

    .line 88
    const-string v1, "SameThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugSameThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugSameThread;->mThrowable:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    const-string v1, "SameThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Different threads"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .end local v0           #currentThread:Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 93
    .restart local v0       #currentThread:Ljava/lang/Thread;
    :cond_1
    monitor-exit p0

    return-object p0
.end method

.method public declared-synchronized check(Ljava/util/concurrent/Executor;)Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;
    .locals 1
    .parameter "executor"

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugSameThread$1;

    invoke-direct {v0, p0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugSameThread$1;-><init>(Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugSameThread;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-object p0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugSameThread;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
