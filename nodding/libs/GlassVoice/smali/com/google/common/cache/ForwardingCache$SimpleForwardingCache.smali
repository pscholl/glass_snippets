.class public abstract Lcom/google/common/cache/ForwardingCache$SimpleForwardingCache;
.super Lcom/google/common/cache/ForwardingCache;
.source "ForwardingCache.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/ForwardingCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleForwardingCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/ForwardingCache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/google/common/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/Cache",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/common/cache/Cache;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/Cache",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, this:Lcom/google/common/cache/ForwardingCache$SimpleForwardingCache;,"Lcom/google/common/cache/ForwardingCache$SimpleForwardingCache<TK;TV;>;"
    .local p1, delegate:Lcom/google/common/cache/Cache;,"Lcom/google/common/cache/Cache<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/cache/ForwardingCache;-><init>()V

    .line 132
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/Cache;

    iput-object v0, p0, Lcom/google/common/cache/ForwardingCache$SimpleForwardingCache;->delegate:Lcom/google/common/cache/Cache;

    .line 133
    return-void
.end method


# virtual methods
.method protected final delegate()Lcom/google/common/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/Cache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, this:Lcom/google/common/cache/ForwardingCache$SimpleForwardingCache;,"Lcom/google/common/cache/ForwardingCache$SimpleForwardingCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/ForwardingCache$SimpleForwardingCache;->delegate:Lcom/google/common/cache/Cache;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    .local p0, this:Lcom/google/common/cache/ForwardingCache$SimpleForwardingCache;,"Lcom/google/common/cache/ForwardingCache$SimpleForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache$SimpleForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object v0

    return-object v0
.end method
