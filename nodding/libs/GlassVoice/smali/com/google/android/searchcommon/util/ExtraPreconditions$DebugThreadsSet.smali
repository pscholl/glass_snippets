.class Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugThreadsSet;
.super Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;
.source "ExtraPreconditions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/searchcommon/util/ExtraPreconditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugThreadsSet"
.end annotation


# instance fields
.field private final mThreadNames:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "threadNames"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugThreadsSet;->mThreadNames:[Ljava/lang/String;

    .line 118
    return-void
.end method


# virtual methods
.method public declared-synchronized check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;
    .locals 8

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, threadName:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugThreadsSet;->mThreadNames:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 124
    .local v4, threadPrefix:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 125
    monitor-exit p0

    return-object p0

    .line 123
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v4           #threadPrefix:Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal thread"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #threadName:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public check(Ljava/util/concurrent/Executor;)Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;
    .locals 1
    .parameter "executor"

    .prologue
    .line 134
    new-instance v0, Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugThreadsSet$1;

    invoke-direct {v0, p0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugThreadsSet$1;-><init>(Lcom/google/android/searchcommon/util/ExtraPreconditions$DebugThreadsSet;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 140
    return-object p0
.end method
