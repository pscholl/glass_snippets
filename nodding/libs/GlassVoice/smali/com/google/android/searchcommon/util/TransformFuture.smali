.class public Lcom/google/android/searchcommon/util/TransformFuture;
.super Ljava/lang/Object;
.source "TransformFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mFunction:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<TV;TT;>;"
        }
    .end annotation
.end field

.field private final mFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Lcom/google/common/base/Function;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<TV;>;",
            "Lcom/google/common/base/Function",
            "<TV;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, this:Lcom/google/android/searchcommon/util/TransformFuture;,"Lcom/google/android/searchcommon/util/TransformFuture<TV;TT;>;"
    .local p1, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TV;>;"
    .local p2, function:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<TV;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/searchcommon/util/TransformFuture;->mFuture:Ljava/util/concurrent/Future;

    .line 22
    iput-object p2, p0, Lcom/google/android/searchcommon/util/TransformFuture;->mFunction:Lcom/google/common/base/Function;

    .line 23
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 27
    .local p0, this:Lcom/google/android/searchcommon/util/TransformFuture;,"Lcom/google/android/searchcommon/util/TransformFuture<TV;TT;>;"
    iget-object v0, p0, Lcom/google/android/searchcommon/util/TransformFuture;->mFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 32
    .local p0, this:Lcom/google/android/searchcommon/util/TransformFuture;,"Lcom/google/android/searchcommon/util/TransformFuture<TV;TT;>;"
    iget-object v0, p0, Lcom/google/android/searchcommon/util/TransformFuture;->mFunction:Lcom/google/common/base/Function;

    iget-object v1, p0, Lcom/google/android/searchcommon/util/TransformFuture;->mFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
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
    .line 38
    .local p0, this:Lcom/google/android/searchcommon/util/TransformFuture;,"Lcom/google/android/searchcommon/util/TransformFuture<TV;TT;>;"
    iget-object v0, p0, Lcom/google/android/searchcommon/util/TransformFuture;->mFunction:Lcom/google/common/base/Function;

    iget-object v1, p0, Lcom/google/android/searchcommon/util/TransformFuture;->mFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 43
    .local p0, this:Lcom/google/android/searchcommon/util/TransformFuture;,"Lcom/google/android/searchcommon/util/TransformFuture<TV;TT;>;"
    iget-object v0, p0, Lcom/google/android/searchcommon/util/TransformFuture;->mFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 48
    .local p0, this:Lcom/google/android/searchcommon/util/TransformFuture;,"Lcom/google/android/searchcommon/util/TransformFuture<TV;TT;>;"
    iget-object v0, p0, Lcom/google/android/searchcommon/util/TransformFuture;->mFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    return v0
.end method
