.class public Lcom/google/android/searchcommon/util/FutureList;
.super Ljava/lang/Object;
.source "FutureList.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/searchcommon/util/FutureList$1;,
        Lcom/google/android/searchcommon/util/FutureList$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<",
        "Ljava/util/List",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private final mListOfFuture:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private mMode:Lcom/google/android/searchcommon/util/FutureList$Mode;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/android/searchcommon/util/FutureList$Mode;)V
    .locals 0
    .parameter
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TV;>;>;",
            "Lcom/google/android/searchcommon/util/FutureList$Mode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, this:Lcom/google/android/searchcommon/util/FutureList;,"Lcom/google/android/searchcommon/util/FutureList<TV;>;"
    .local p1, listOfFutures:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/Future<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/searchcommon/util/FutureList;->mListOfFuture:Ljava/util/List;

    .line 27
    iput-object p2, p0, Lcom/google/android/searchcommon/util/FutureList;->mMode:Lcom/google/android/searchcommon/util/FutureList$Mode;

    .line 28
    return-void
.end method

.method private getValue(Ljava/util/concurrent/Future;J)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<TV;>;J)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/searchcommon/util/FutureList;,"Lcom/google/android/searchcommon/util/FutureList<TV;>;"
    .local p1, f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TV;>;"
    const/4 v1, 0x0

    .line 65
    sget-object v2, Lcom/google/android/searchcommon/util/FutureList$1;->$SwitchMap$com$google$android$searchcommon$util$FutureList$Mode:[I

    iget-object v3, p0, Lcom/google/android/searchcommon/util/FutureList;->mMode:Lcom/google/android/searchcommon/util/FutureList$Mode;

    invoke-virtual {v3}, Lcom/google/android/searchcommon/util/FutureList$Mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 79
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/searchcommon/util/FutureList;->mMode:Lcom/google/android/searchcommon/util/FutureList$Mode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :pswitch_0
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p3, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 76
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/util/concurrent/TimeoutException;
    goto :goto_0

    .line 71
    .end local v0           #e:Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 72
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    goto :goto_0

    .line 76
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :pswitch_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 4
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 32
    .local p0, this:Lcom/google/android/searchcommon/util/FutureList;,"Lcom/google/android/searchcommon/util/FutureList<TV;>;"
    const/4 v2, 0x1

    .line 33
    .local v2, result:Z
    iget-object v3, p0, Lcom/google/android/searchcommon/util/FutureList;->mListOfFuture:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 34
    .local v0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TV;>;"
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v3

    and-int/2addr v2, v3

    goto :goto_0

    .line 36
    .end local v0           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TV;>;"
    :cond_0
    return v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 15
    .local p0, this:Lcom/google/android/searchcommon/util/FutureList;,"Lcom/google/android/searchcommon/util/FutureList<TV;>;"
    invoke-virtual {p0}, Lcom/google/android/searchcommon/util/FutureList;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 15
    .local p0, this:Lcom/google/android/searchcommon/util/FutureList;,"Lcom/google/android/searchcommon/util/FutureList<TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/searchcommon/util/FutureList;->get(JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/google/android/searchcommon/util/FutureList;,"Lcom/google/android/searchcommon/util/FutureList<TV;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 44
    .local v2, resultList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    iget-object v3, p0, Lcom/google/android/searchcommon/util/FutureList;->mListOfFuture:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 45
    .local v0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TV;>;"
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    .end local v0           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TV;>;"
    :cond_0
    return-object v2
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 7
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lcom/google/android/searchcommon/util/FutureList;,"Lcom/google/android/searchcommon/util/FutureList<TV;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 55
    .local v2, resultList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TV;>;"
    iget-object v3, p0, Lcom/google/android/searchcommon/util/FutureList;->mListOfFuture:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 56
    .local v0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TV;>;"
    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-direct {p0, v0, v3, v4}, Lcom/google/android/searchcommon/util/FutureList;->getValue(Ljava/util/concurrent/Future;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v0           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TV;>;"
    :cond_0
    return-object v2
.end method

.method public isCancelled()Z
    .locals 3

    .prologue
    .line 86
    .local p0, this:Lcom/google/android/searchcommon/util/FutureList;,"Lcom/google/android/searchcommon/util/FutureList<TV;>;"
    iget-object v2, p0, Lcom/google/android/searchcommon/util/FutureList;->mListOfFuture:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 87
    .local v0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TV;>;"
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    const/4 v2, 0x0

    .line 91
    .end local v0           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TV;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isDone()Z
    .locals 3

    .prologue
    .line 96
    .local p0, this:Lcom/google/android/searchcommon/util/FutureList;,"Lcom/google/android/searchcommon/util/FutureList<TV;>;"
    iget-object v2, p0, Lcom/google/android/searchcommon/util/FutureList;->mListOfFuture:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 97
    .local v0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TV;>;"
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    const/4 v2, 0x0

    .line 101
    .end local v0           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TV;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    .local p0, this:Lcom/google/android/searchcommon/util/FutureList;,"Lcom/google/android/searchcommon/util/FutureList<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FutureList("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/searchcommon/util/FutureList;->mListOfFuture:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/searchcommon/util/FutureList;->mListOfFuture:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
