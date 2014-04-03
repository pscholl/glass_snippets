.class public abstract Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;
.super Lcom/google/common/util/concurrent/ForwardingCheckedFuture;
.source "ForwardingCheckedFuture.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ForwardingCheckedFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleForwardingCheckedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Exception;",
        ">",
        "Lcom/google/common/util/concurrent/ForwardingCheckedFuture",
        "<TV;TX;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/google/common/util/concurrent/CheckedFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/CheckedFuture",
            "<TV;TX;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/common/util/concurrent/CheckedFuture;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/CheckedFuture",
            "<TV;TX;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, this:Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;,"Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture<TV;TX;>;"
    .local p1, delegate:Lcom/google/common/util/concurrent/CheckedFuture;,"Lcom/google/common/util/concurrent/CheckedFuture<TV;TX;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ForwardingCheckedFuture;-><init>()V

    .line 68
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/CheckedFuture;

    iput-object v0, p0, Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;->delegate:Lcom/google/common/util/concurrent/CheckedFuture;

    .line 69
    return-void
.end method


# virtual methods
.method protected final delegate()Lcom/google/common/util/concurrent/CheckedFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/CheckedFuture",
            "<TV;TX;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;,"Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture<TV;TX;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;->delegate:Lcom/google/common/util/concurrent/CheckedFuture;

    return-object v0
.end method

.method protected bridge synthetic delegate()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;,"Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture<TV;TX;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;->delegate()Lcom/google/common/util/concurrent/CheckedFuture;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;,"Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture<TV;TX;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;->delegate()Lcom/google/common/util/concurrent/CheckedFuture;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;,"Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture<TV;TX;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;->delegate()Lcom/google/common/util/concurrent/CheckedFuture;

    move-result-object v0

    return-object v0
.end method
