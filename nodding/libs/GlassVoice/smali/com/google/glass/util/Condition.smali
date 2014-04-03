.class public final Lcom/google/glass/util/Condition;
.super Ljava/lang/Object;
.source "Condition.java"


# instance fields
.field private onSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private state:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/Condition;->onSet:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized addCallback(Ljava/lang/Runnable;)Z
    .locals 1
    .parameter "run"

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/util/Condition;->state:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    const/4 v0, 0x1

    .line 45
    :goto_0
    monitor-exit p0

    return v0

    .line 44
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/util/Condition;->onSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    const/4 v0, 0x0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Z
    .locals 1

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/util/Condition;->state:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set()V
    .locals 3

    .prologue
    .line 18
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/glass/util/Condition;->state:Z

    if-nez v2, :cond_1

    .line 19
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/glass/util/Condition;->state:Z

    .line 20
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/google/glass/util/Condition;->onSet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 21
    iget-object v2, p0, Lcom/google/glass/util/Condition;->onSet:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    iget-object v2, p0, Lcom/google/glass/util/Condition;->onSet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_1
    monitor-exit p0

    return-void

    .line 18
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
